//
//  LinesData.swift
//  madrid-moves-ios
//
//  Created by David Guerrero on 27/04/2021.
//  Copyright © 2021 David Guerrero. All rights reserved.
//

import Foundation


// MARK: - LinesData
struct LinesData: Codable {
    let code, linesDataDescription: String
    let data: [Datum]

    enum CodingKeys: String, CodingKey {
        case code
        case linesDataDescription = "description"
        case data
    }
    
    // MARK: - Datum
    struct Datum: Codable {
        let line, label, nameA, nameB: String
        let group, startDate, endDate: String
        let longLine1, longLine2, order: Int
        let color: String
    }
}


