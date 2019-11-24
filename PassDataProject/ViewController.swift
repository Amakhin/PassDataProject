//
//  ViewController.swift
//  PassDataProject
//
//  Created by Amakhin Ruslan on 24.11.2019.
//  Copyright © 2019 Amakhin Ruslan. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var loginTextField: UITextField!
    @IBOutlet weak var passwordTextField: UITextField!
    
    @IBAction func sendPressed(button: UIButton) {
        performSegue(withIdentifier: "detailSegue", sender: nil)
    }

    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        
        guard let dvc = segue.destination as? SecondViewController else { return }
        dvc.login = loginTextField.text
        
    }
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        self.view.endEditing(true)
    }


}

