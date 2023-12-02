//
//  User.swift
//  InstagramTutorial
//
//  Created by Kambiz on 2023-11-18.
//

import Foundation

struct User: Identifiable, Codable, Hashable {
    let id: String
    var username: String
    var profileImageUrl: String?
    var fullname: String?
    var bio: String?
    let email: String
}

extension User {
    static var Mock_Users : [User] = [
        .init(id: NSUUID().uuidString, username: "kambizvb6", profileImageUrl: "Kambiz", fullname: nil, bio: "iOS Developer", email: "Kambizvb6@gmail.com"),
        .init(id: NSUUID().uuidString, username: "it.ahdi", profileImageUrl: "Ahdi", fullname: "Ahdi Moradi", bio: "Personal Bloger", email: "Ahdi@gmail.com"),
        .init(id: NSUUID().uuidString, username: "victor.rozairo", profileImageUrl: "Victor", fullname: "Victor.C.Rozario", bio: "Computer Eng", email: "Victor@gmail.com"),
        .init(id: NSUUID().uuidString, username: "antara", profileImageUrl: "Antara", fullname: "Antara Zamani", bio: "Ui,UX Designer", email: "Antara@gmail.com"),
        .init(id: NSUUID().uuidString, username: "Beni1999", profileImageUrl: "Beni", fullname: "Benyamin Zamani", bio: "Mobil gas station manager", email: "Benyamin.Zamani1999@gmail.com")
    ]
}
