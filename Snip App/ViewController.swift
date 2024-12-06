//
//  ViewController.swift
//  Snip App
//
//  Created by Chandu .. on 11/11/24.
//

import UIKit

protocol requirements {
    func animateButton(_ button: UIButton)
}

class ViewController: UIViewController, requirements {
    @IBOutlet weak var loginButton: UIButton!
    @IBOutlet weak var registerButton: UIButton!
    @IBOutlet weak var logoImageView: UIImageView!
    @IBOutlet weak var tableViewButton: UIButton!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        logoImageView.alpha = 0.0
    }
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        // Animate fade-in
        guard let logoImageView = logoImageView else {
            print("Error: logoImageView is nil in viewDidAppear")
            return
        }
        UIView.animate(withDuration: 4.0) {
            self.logoImageView.alpha = 1.0
        }
        
        UIView.animate(withDuration: 0.5, delay: 0.3, options: .curveEaseOut, animations: {
            self.loginButton.transform = CGAffineTransform.identity
            self.registerButton.transform = CGAffineTransform.identity
            self.tableViewButton.transform = CGAffineTransform.identity
        })
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        
        // Safely unwrap the buttons before applying transformations
        if let loginButton = loginButton {
            loginButton.transform = CGAffineTransform(translationX: 0, y: self.view.bounds.height)
        } else {
            print("Warning: loginButton is nil")
        }
        
        if let registerButton = registerButton {
            registerButton.transform = CGAffineTransform(translationX: 0, y: self.view.bounds.height)
        } else {
            print("Warning: registerButton is nil")
        }
        
        if let tableViewButton = tableViewButton {
            tableViewButton.transform = CGAffineTransform(translationX: 0, y: self.view.bounds.height)
        } else {
            print("Warning: tableViewButton is nil")
        }
    }
    
    
    @IBAction func tableViewButtonTapped(_ sender: UIButton) {
        animateButton(sender)
        guard let counterVC = self.storyboard?.instantiateViewController(identifier: "CounterVC") as? CounterVC else {
            print("Error: Could not find CounterVC in storyboard.")
            return
        }
        navigationController?.pushViewController(counterVC, animated: true)
    }
    @IBAction func loginButtonTapped(_ sender: UIButton) {
        animateButton(sender)
        let loginViewController = self.storyboard?.instantiateViewController(withIdentifier: "LoginViewController") as? LoginViewController
        if let safeValue = loginViewController {
            self.navigationController?.pushViewController(safeValue, animated: true)
        }
    }
    
    @IBAction func registerButtonTapped(_ sender: UIButton) {
        animateButton(sender)
    }
    
}

extension requirements {
    func animateButton(_ button: UIButton) {
        UIView.animate(withDuration: 2.0,animations: {
            button.transform = CGAffineTransform(scaleX: 0.95, y: 0.95) }) { (_) in
                UIView.animate(withDuration: 2.0) {
                    button.transform = CGAffineTransform.identity
                }
            }
    }
}
