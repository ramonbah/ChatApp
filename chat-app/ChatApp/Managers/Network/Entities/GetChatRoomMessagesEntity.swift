//
//  GetChatRoomMessagesEntity.swift
//  ChatApp
//
//  Created by Niño Castorico on 8/21/24.
//

import Foundation

class GetChatRoomMessagesEntity: RequestableApiEntity {
    typealias ResponseEntity = GetChatRoomMessagesRespondableEntity

    static var method: BaseNetworkOperation.Method { .get }
    var path: String { "messages?device_id=\(deviceId)&room_id=\(roomId)" }

    var deviceId: String
    var roomId: Int
    var lastMessageId: String?

    init(deviceId: String, roomId: Int, lastMessageId: String? = nil) {
        self.deviceId = deviceId
        self.roomId = roomId
        self.lastMessageId = lastMessageId
    }
}

// MARK: Defining response
struct GetChatRoomMessagesRespondableEntity: RespondableApiEntity {
    static var decoder: JSONDecoder {
        let decoder = JSONDecoder()
        decoder.keyDecodingStrategy = .convertFromSnakeCase
        let formatter = Date.utcDateFormatter
        formatter.dateFormat = "yyyy-MM-dd HH:mm:ss"
        decoder.dateDecodingStrategy = .formatted(formatter)
        return decoder
    }

    var success: Int
    var error: ErrorMessage?
    var messages: [MessageEntity]
}

struct MessageEntity: Codable {
    var messageId: Int
    var authorId: Int
    var content: String
    var createdAt: Date
    var updatedAt: Date
    var isCurrentUser: Bool?
}
