//
//  ViewController.swift
//  Login
//
//  Created by Bryan Zweiacker on 23.09.21.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var username: UITextField!
    @IBOutlet weak var forgotUserNameButton: UIButton!
    @IBOutlet weak var forgotPasswordButton: UIButton!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        
        guard let sender = sender as? UIButton else {return}
         
        if sender == forgotPasswordButton {
            segue.destination.navigationItem.title = "Forgot Password"
        } else if sender == forgotUserNameButton {
            segue.destination.navigationItem.title = "Forgot Username"
        } else {
            segue.destination.navigationItem.title = username.text
        }
    }
    @IBAction func forgotUserNamePushed(_ sender: Any) {
        performSegue(withIdentifier: "ForgottenUsernameOrPassword",
           sender: sender)
    }
    @IBAction func forgotPasswordPushed(_ sender: Any) {
        performSegue(withIdentifier: "ForgottenUsernameOrPassword",
           sender: sender)
    }
    

    
}

