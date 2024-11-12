//
//  ViewController.swift
//  Snip App
//
//  Created by Chandu .. on 11/11/24.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var loginButton: UIButton!
    @IBOutlet weak var registerButton: UIButton!
    @IBOutlet weak var logoImageView: UIImageView!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        
        // Start with logo hidden
        logoImageView.alpha = 0.0
        
        // Animate fade-in
        UIView.animate(withDuration: 4.0) {
            self.logoImageView.alpha = 3.0
        }
        
        UIView.animate(withDuration: 0.5, delay: 0.3, options: .curveEaseOut, animations: {
                self.loginButton.transform = CGAffineTransform.identity
                self.registerButton.transform = CGAffineTransform.identity
            })
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        
        // Start with buttons off-screen
        loginButton.transform = CGAffineTransform(translationX: 0, y: self.view.bounds.height)
        registerButton.transform = CGAffineTransform(translationX: 0, y: self.view.bounds.height)
    }
    
    func animateButton(_ button: UIButton) {
        UIView.animate(withDuration: 2.0,
                       animations: {
                        button.transform = CGAffineTransform(scaleX: 0.95, y: 0.95)
                       }) { (_) in
                           UIView.animate(withDuration: 2.0) {
                button.transform = CGAffineTransform.identity
            }
        }
    }
    @IBAction func loginButtonTapped(_ sender: UIButton) {
        animateButton(sender)
    }
    
    @IBAction func registerButtonTapped(_ sender: UIButton) {
        animateButton(sender)
    }
    
}

