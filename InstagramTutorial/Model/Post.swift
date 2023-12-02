//
//  Post.swift
//  InstagramTutorial
//
//  Created by Kambiz on 2023-11-18.
//

import Foundation

struct Post: Identifiable, Hashable, Codable {
    let id: String
    
    let ownerUid: String
    let caption: String
    var like: Int
    let imageUrl: String
    let timeStamp: Data
    var user: User?
}

extension Post {
    
    static var Mock_Post: [Post] = [
        .init(
            id: NSUUID().uuidString,
            ownerUid: NSUUID().uuidString,
            caption: "How to work with swiftui in first day",
            like: 200, imageUrl: "Kambiz",
            timeStamp: Data(),
            user: User.Mock_Users[0]
        ),
        .init(
            id: NSUUID().uuidString,
            ownerUid: NSUUID().uuidString,
            caption: "Hello Hello Hello",
            like: 200, imageUrl: "Ahdi",
            timeStamp: Data(),
            user: User.Mock_Users[1]
        ),
        .init(
            id: NSUUID().uuidString,
            ownerUid: NSUUID().uuidString,
            caption: "Look at the Amazing Code :D",
            like: 200, imageUrl: "Victor",
            timeStamp: Data(),
            user: User.Mock_Users[2]
        ),
        .init(
            id: NSUUID().uuidString,
            ownerUid: NSUUID().uuidString,
            caption: "My First Design :)",
            like: 200, imageUrl: "Antara",
            timeStamp: Data(),
            user: User.Mock_Users[3]
        ),
        .init(
            id: NSUUID().uuidString,
            ownerUid: NSUUID().uuidString,
            caption: "Fire in Mobil gas station :(",
            like: 200, imageUrl: "Beni",
            timeStamp: Data(),
            user: User.Mock_Users[4]
        ),
        .init(
            id: NSUUID().uuidString,
            ownerUid: NSUUID().uuidString,
            caption: "Head office come to see what happed in the albert station!",
            like: 200, imageUrl: "fire-mobil",
            timeStamp: Data(),
            user: User.Mock_Users[4]
        ),
    ]
}
