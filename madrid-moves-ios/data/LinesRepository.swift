//
//  LinesRepository.swift
//  madrid-moves-ios
//
//  Created by David Guerrero on 26/04/2020.
//  Copyright © 2020 David Guerrero. All rights reserved.
//

import Foundation

class LinesRepository {
    
    let remoteService: EmtRemoteService
    
    init(remoteService: EmtRemoteService) {
        self.remoteService = remoteService
    }
    
    func getLines() -> Array<Line> {
        var lines = Array<Line>()
        
        remoteService.login(email: "david.guerrero@quoders.com", pass: "oisi28Emt$")
        //remoteService.getLines(token: "")
        
        return lines
    }
}
