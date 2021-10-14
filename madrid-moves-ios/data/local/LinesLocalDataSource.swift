//
//  LinesLocalDataSource.swift
//  madrid-moves-ios
//
//  Created by David Guerrero on 20/04/2021.
//  Copyright © 2021 David Guerrero. All rights reserved.
//

import Foundation
import os

class LinesLocalDataSource {
    
    public func readLines() -> Array<Line> {
        var lines: Array<Line> = Array()
        
        do {
            if let bundlePath = Bundle.main.path(forResource: "all_lines_emt", ofType: "json") {
                let jsonData = try String(contentsOfFile: bundlePath).data(using: .utf8)
                let decoder = JSONDecoder()
                do {
                    let linesData = try decoder.decode(LinesData.self, from: jsonData!)
                    for line in linesData.data {
                        lines.append(Line(code: line.line, label: line.label, nameA: line.nameA, nameB: line.nameB))
                    }
                }
            }
        } catch {
            os_log("error loading local lines data", type: .error)
        }
        return lines
    }
}
