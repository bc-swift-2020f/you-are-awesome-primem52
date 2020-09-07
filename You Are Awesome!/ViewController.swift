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
    
    var imageNumber = 0
    var messageNumber = 0
    let totalNumberOfImages = 9
    
    override func viewDidLoad() {
        super.viewDidLoad()
        //messageLabel.text = ""
       //print("👍 viewDidLoad has run!")
        //messageLabel.text = "Fabulous, Thats You!!!"
    }
    @IBAction func messageButtonPressed(_ sender: UIButton) {
        let messages = ["Ya Awesome", "Ya Great", "You Fantastic", "Fab? thats You","When the genius bar needs help they call you","Another good message"]
        messageLabel.text = messages[Int.random(in: 0...messages.count-1)]
            imageView.image = UIImage(named: "image\(Int.random(in: 0...totalNumberOfImages))")
    //    messageLabel.text = messages[messageNumber]
      //  messageNumber += 1
       // if messageNumber == messages.count{
         //   messageNumber = 0
        //}
        
        //let imageName = "image" + String(imageNumber)
  //      let imageName = "image\(imageNumber)"
   //     imageView.image = UIImage(named: imageName)
   //     imageNumber = imageNumber + 1
    //    if imageNumber == 10 {
    //        imageNumber = 0
        }
        
        //let awesomeMessage = "You Are Fantastic"
        //let greatMessage = "You are Great"
       // let bombMessage = "You da bomb"
        
        //if messageLabel.text == awesomeMessage {
         //   messageLabel.text = greatMessage
        //    imageView.image = UIImage(named:"image1")
        //}
        //else if messageLabel.text == greatMessage {
         //   messageLabel.text = bombMessage
           // imageView.image = UIImage(named: "image2")
        //}
        //else {
         //   messageLabel.text = awesomeMessage
          //  imageView.image = UIImage(named:"image4")
        //}


    //@IBAction func messageButtonPressed(_ sender: UIButton) {
      //  print("😎 The message button was pressed!")
      //  messageLabel.text = "You Are Awesome!"
      //  imageView.image = UIImage(named: "image4")
        
}



