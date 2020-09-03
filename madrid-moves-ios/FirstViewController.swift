//
//  FirstViewController.swift
//  madrid-moves-ios
//
//  Created by David Guerrero on 11/04/2020.
//  Copyright © 2020 David Guerrero. All rights reserved.
//

import UIKit

class FirstViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        let linesRepository = LinesRepository(remoteService: EmtRemoteService())
        linesRepository.getLines()
    }

    

}

