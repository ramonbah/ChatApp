const UserModel = require('../models/userModel');
const UserDeviceModel = require('../models/userDeviceModel');
const RoomUserModel = require('../models/roomUserModel');
const RoomModel = require('../models/roomModel');
const InvitationModel = require('../models/invitationModel');
const MessageModel = require('../models/messageModel');
const UserController = require('../controllers/userController');
const ImageHelper = require('../utils/imageHelper');
const NotificationController = require('../controllers/notificationController');

class InvitationController {
    constructor(database) {
        this.invitationModel = new InvitationModel(database);
        this.userModel = new UserModel(database);
        this.roomUserModel = new RoomUserModel(database);
        this.roomModel = new RoomModel(database);
        this.messageModel = new MessageModel(database);
    }

    async getAll(req, res) {
        try {
            const accessToken = req.headers['authorization'];
            let tokenCheck = await this.userController.getAccessTokenError(accessToken)
            if (tokenCheck.error != null) {
                return res.status(401).json(tokenCheck);
            }
            let userId = tokenCheck.result.user_id;

            const invitations = await InvitationModel.findAll({ where: {
                user_id: userId,
                is_invalid: 0
            }});

            var formattedInvitations = [];
                
            for await (const invitation of invitations) {
                const user = await UserModel.findOne({ where: { id: invitation.created_by }});
                const room = await RoomModel.findOne({ where: { room_id: invitation.room_id }});
                formattedInvitations.push({
                    chat_name: room.room_name, // Room name as chat_name
                    chat_image_url: ImageHelper.getImagePath(req, user.image_url),
                    inviter_name: user.display_name, // Inviter's display name
                    room_id: invitation.room_id, // Room ID
                    invitation_id: invitation.invitation_id
                }); 
            }    
           
            res.status(200).json({
                success: 1,
                invitations: formattedInvitations
            });
        } catch (err) {
            res.status(500).json({
                success: 0,
                error: {
                    code: "500",
                    message: "Failed to fetch invitations"
                }
            });
        }
    }

    // Send a new invitation
    async send(req, res, device_token) {
        try {
            const accessToken = req.headers['authorization'];
            let tokenCheck = await this.userController.getAccessTokenError(accessToken)
            if (tokenCheck.error != null) {
                return res.status(401).json(tokenCheck);
            }
            let userId = tokenCheck.result.user_id;

            const { invitee_user_id, room_id } = req.body;

            let existingInvitation = await InvitationModel.findAll({ where: {
                user_id: invitee_user_id,
                room_id: room_id
            } });

            if (existingInvitation.length > 0) {
                return res.status(409).json({
                    success: 0,
                    error: {
                        code: "409",
                        message: "Invitation already exists."
                    }
                });
            }
            
            const result = await InvitationModel.create({
                user_id: invitee_user_id,
                room_id: room_id,
                created_by: userId
            });
            
            if (result) {
                res.json({
                    success: 1,
                    error: {
                        code: "000",
                        message: ""
                    }
                });
            } else {
                res.status(500).json({
                    success: 0,
                    error: {
                        code: "500",
                        message: "Failed to send invitation"
                    }
                });
            }
        } catch (err) {
            res.status(500).json({
                success: 0,
                error: {
                    code: "500",
                    message: "Failed to send invitation"
                }
            });
        }
    }

    async accept(req, res) {
        try {
            const accessToken = req.headers['authorization'];
            let tokenCheck = await this.userController.getAccessTokenError(accessToken)
            if (tokenCheck.error != null) {
                return res.status(401).json(tokenCheck);
            }
            let userId = tokenCheck.result.user_id;

            const { invitation_id, room_id } = req.body;

            // Check if the user has an invitation for the room
            const invitation = await InvitationModel.findOne({
                where: { room_id: room_id, user_id: userId }
            });
            if (invitation) {
                // If invitation exists, set it to invalid

                const result = await InvitationModel.update({ is_invalid: 1 }, { where: { invitation_id: invitation_id } } );
                if (!result) {
                    return res.status(500).json({
                        success: 0,
                        error: {
                            code: "500",
                            message: "Failed to set the invitation as invalid.",
                        },
                    });
                }
                let roomUserResult = await RoomUserModel.create({
                    room_id: room_id,
                    user_id: userId
                });
                if (!roomUserResult) { throw new Error("Failed to create room"); } 
            
                const members = await RoomUserModel.findAll({ where: {
                    room_id: room_id
                }});
    
                var memberDetails = [];
                
                for await (const member of members) {
                    const user = await UserModel.findOne({ where: { id: member.user_id }});
                    memberDetails.push({
                        name: user.display_name,  
                        is_admin: member.is_admin == 1,
                        user_image_url: ImageHelper.getImagePath(req, user.image_url),  
                        room_user_id: member.room_user_id
                    });
                }    
    
                const roomResult = await RoomModel.findOne({ where: {
                    room_id: room_id
                }});
                const creator = await UserModel.findOne({ where: { id: roomResult.creator_id }});
                const creatorName = creator.display_name;
    
                const currentUser = members.find(member => member.user_id === userId);
                const roomUserId = currentUser?.room_user_id || null;
    
                let previewResult = null;
                let lastMessage = null;
                
                var preview = "Say hello...";
                if (lastMessage != undefined && lastMessage.display_name != undefined && lastMessage.content != undefined) {
                    preview = lastMessage.display_name + " : " + lastMessage.content;
                }
    
                const chatRoom = {
                    room_id: room_id,
                    author_id: roomResult.creator_id,  
                    author_name: creatorName || "Unknown", 
                    preview: preview,
                    is_joined: roomUserId != null,
                    current_room_user_id: roomUserId,
                    has_password: roomResult.password != null,
                    chat_name: roomResult.room_name,
                    chat_image_url: ImageHelper.getImagePath(req, roomResult.image_url),
                    member_details: memberDetails
                };
        
                let response = {
                    chat_room: chatRoom,
                    success: 1,
                    error: {
                        code: "000",
                        message: ""
                    }
                }
                return res.status(200).json(response);
            } else {
                // If no invitation exists
                return res.status(404).json({
                    success: 0,
                    error: {
                        code: "404",
                        message: "No invitation found for the user and room.",
                    },
                });
            }
        } catch (err) {
            return res.status(500).json({
                success: 0,
                error: {
                    code: "500",
                    message: "An error occurred while invalidating the invitation.",
                },
            });
        }
    }

}

module.exports = InvitationController;
