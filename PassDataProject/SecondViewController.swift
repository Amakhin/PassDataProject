//
//  SecondViewController.swift
//  PassDataProject
//
//  Created by Amakhin Ruslan on 24.11.2019.
//  Copyright © 2019 Amakhin Ruslan. All rights reserved.
//

import UIKit

class SecondViewController: UIViewController {
    
    var login: String!

    @IBOutlet weak var label: UILabel!
    
    @IBAction func sendPressed(button: UIButton) {
        performSegue(withIdentifier: "unwindSegue", sender: nil)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        guard let login = login else { return }
        label.text = "Hello, \(login)"
    }
}
