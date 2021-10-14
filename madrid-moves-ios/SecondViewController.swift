//
//  SecondViewController.swift
//  madrid-moves-ios
//
//  Created by David Guerrero on 11/04/2020.
//  Copyright © 2020 David Guerrero. All rights reserved.
//

import UIKit

class SecondViewController: UITableViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 50
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "linecell", for: indexPath) as UITableViewCell
        cell.textLabel?.text = "test"
        return cell
    }
}

