//
//  LinesApiData.swift
//  madrid-moves-ios
//
//  Created by David Guerrero on 10/05/2020.
//  Copyright © 2020 David Guerrero. All rights reserved.
//

import Foundation

// MARK: - Welcome
struct LinesApiData: Codable {
    let code, description: String
    let data: [Datum]

    struct Datum: Codable {
        let line, label, nameA, nameB, group, startDate, endDate: String
    }
}

// MARK: - Datum
