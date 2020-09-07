//
//  ViewController.swift
//  You Are Awesome!
//
//  Created by Morgan Prime on 9/7/20.
//  Copyright © 2020 Morgan Prime. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var messageLabel: UILabel!
    @IBOutlet weak var imageView: UIImageView!
    override func viewDidLoad() {
        super.viewDidLoad()
        messageLabel.text = ""
       print("👍 viewDidLoad has run!")
        messageLabel.text = "Fabulous, Thats You!!!"
    }


    @IBAction func messageButtonPressed(_ sender: UIButton) {
        print("😎 The message button was pressed!")
        messageLabel.text = "You Are Awesome!"
        imageView.image = UIImage(named: "image4")
        
    }
}


