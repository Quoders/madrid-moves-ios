//
//  LoginApiData.swift
//  madrid-moves-ios
//
//  Created by David Guerrero on 29/04/2020.
//  Copyright © 2020 David Guerrero. All rights reserved.
//

import Foundation

// MARK: - LoginAPIData
struct LoginApiData: Codable {
    let code, description, datetime: String
    let data: [Datum]
}

// MARK: - Datum
struct Datum: Codable {
    let nameApp: String
    let levelApp: Int
    let updatedAt, userName: String
    let lastUpdate: LastUpdate
    let idUser, priv: String
    let tokenSECExpiration: Int
    let email: String
    let tokenDTEExpiration: LastUpdate
    let flagAdvise: Bool
    let accessToken: String
    let apiCounter: APICounter
    let username: String

    enum CodingKeys: String, CodingKey {
        case nameApp, levelApp, updatedAt, userName, lastUpdate, idUser, priv
        case tokenSECExpiration = "tokenSecExpiration"
        case email
        case tokenDTEExpiration = "tokenDteExpiration"
        case flagAdvise, accessToken, apiCounter, username
    }
}

// MARK: - APICounter
struct APICounter: Codable {
    let current, dailyUse, owner: Int
    let licenceUse, aboutUses: String
}

// MARK: - LastUpdate
struct LastUpdate: Codable {
    let date: Int

    enum CodingKeys: String, CodingKey {
        case date = "$date"
    }
}
