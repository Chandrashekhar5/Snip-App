//
//  ThirdViewController.swift
//  Snip App
//
//  Created by Chandu .. on 11/21/24.
//

import UIKit

class ThirdViewController: UIViewController {
    var recievedData: String?

    @IBOutlet weak var titleLabel: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Do any additional setup after loading the view.
        guard let value = recievedData else { return }
        titleLabel.text = "Hi \(value). Good Morning. How are you"
    }
}
