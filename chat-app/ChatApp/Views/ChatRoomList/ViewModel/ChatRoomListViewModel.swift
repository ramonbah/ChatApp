//
//  ChatRoomListViewModel.swift
//  ChatApp
//
//  Created by William Rena on 8/19/24.
//

import Foundation

final class ChatRoomListViewModel {
    enum Section: Int, Hashable, Comparable  {
        static func < (lhs: Self, rhs: Self) -> Bool {
            lhs.rawValue < rhs.rawValue
        }

        case myRooms = 0
        case otherRooms
        case whole
    }

    enum Item: Hashable {
        case noData
        case room(ItemInfo)
    }

    struct ItemInfo: Hashable, Codable {
        static func == (lhs: ItemInfo, rhs: ItemInfo) -> Bool {
            lhs.hashValue == rhs.hashValue
        }

        var roomId: Int
        var name: String
        var preview: String
        var hasPassword: Bool
    }

    @Published var items: [Section: [Item]] = [:]

    private var chatInfos: [ChatInfo] = []

    func load() async {
        guard let chatRooms = try? await GetChatRoomListEntity().run().chatRooms else {
            await loadEmptyRooms()
            return
        }

        let groupedItems = Dictionary(
            grouping: chatRooms,
            by: { $0.isJoined ? Section.myRooms : Section.otherRooms }
        )

        chatInfos = chatRooms.map {
            ChatInfo(name: $0.chatName, roomId: $0.roomId, memberDetails: $0.memberDetails.map({ detail in
                MemberInfo(name: detail.name, isAdmin: detail.isAdmin, roomUserId: detail.roomUserId)
            }))
        }

        items = [
            .myRooms: groupedItems[.myRooms]?.compactMap { room in
                Item.room(ItemInfo(
                    roomId: room.roomId, name: room.chatName, preview: room.preview, hasPassword: false
                ))
            } ?? [],
            .otherRooms: groupedItems[.otherRooms]?.compactMap { room in
                Item.room(ItemInfo(
                    roomId: room.roomId, name: room.chatName, preview: room.preview, hasPassword: room.hasPassword
                ))
            } ?? []
        ]
    }

    private func loadEmptyRooms() async {
        items = [
            .whole: [.noData]
        ]
    }

    func joinChatRoom(roomId: Int, deviceId: String, password: String?) async throws -> ChatRoomEntity? {
        guard let chatRoom = try await JoinChatRoomEntity(
            roomId: roomId, deviceId: deviceId, password: password
        ).run().chatroom else { return nil }

        return chatRoom
    }
    
    func details(for itemInfo: ItemInfo) -> ChatInfo? {
        chatInfos.first(where: { $0.roomId == itemInfo.roomId })
    }
}

struct ChatInfo {
    let name: String
    let roomId: Int
    let memberDetails: [MemberInfo]
}

struct MemberInfo {
    let name: String
    let isAdmin: Bool
    let roomUserId: Int
}

