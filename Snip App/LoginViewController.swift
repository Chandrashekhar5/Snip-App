//
//  LoginViewController.swift
//  Snip App
//
//  Created by Chandu .. on 11/12/24.
//

import UIKit

class LoginViewController: UIViewController {

    @IBOutlet weak var credentialsCheckLabel: UILabel!
    @IBOutlet weak var userNameField: UITextField!
    @IBOutlet weak var passwordField: UITextField!
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        credentialsCheckLabel.text = ""
    }
    override func viewWillDisappear(_ animated: Bool) {
        credentialsCheckLabel.text = ""
    }

    @IBAction func loginButtonTapped(_ sender: UIButton) {
        guard let thirdViewController = self.storyboard?.instantiateViewController(identifier: "ThirdViewController") as? ThirdViewController else { return }
        if isValidCredentials(username: userNameField.text!, password: passwordField.text!) {
            navigationController?.pushViewController(thirdViewController, animated: true)
            thirdViewController.recievedData = userNameField.text
        } else {
            credentialsCheckLabel.text = "Wrong Username or Password Try Again"
        }
    }
    
    func isValidCredentials(username: String, password: String) -> Bool {
        return username == "chandra" && password == "k"
    }
}
