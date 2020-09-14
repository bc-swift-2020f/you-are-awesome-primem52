//
//  ViewController.swift
//  You Are Awesome!
//
//  Created by Morgan Prime on 9/7/20.
//  Copyright © 2020 Morgan Prime. All rights reserved.
//

import UIKit
import AVFoundation

class ViewController: UIViewController {

    @IBOutlet weak var messageLabel: UILabel!
    @IBOutlet weak var imageView: UIImageView!
    
    var imageNumber = -1
    var messageNumber = -1
   var soundNumber = -1
   var totalNumberOfSounds = 3
    let totalNumberOfImages = 9
   var audioPlayer : AVAudioPlayer!
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
   func playSound(name: String){
      if let sound = NSDataAsset(name: name){
         do {
            try audioPlayer = AVAudioPlayer(data: sound.data)
            audioPlayer.play()
         }
         catch {
            print("ERROR: \(error.localizedDescription) Could not intitialize AVAUDIOPLAYER object")
         }
      }
      else {
         print("could not read data from file sound0")
      }
   }
   
    @IBAction func messageButtonPressed(_ sender: UIButton) {
        let messages = ["Ya Awesome", "Ya Great", "You Fantastic", "Fab? thats You","When the genius bar needs help they call you","Another good message"]
        var newMessageNumber : Int
        repeat{
            newMessageNumber = Int.random(in: 0...messages.count-1)
        }
            while messageNumber == newMessageNumber
        messageNumber = newMessageNumber
        messageLabel.text = messages[messageNumber]
        
        var newImageNumber: Int
        repeat{
            newImageNumber = Int.random(in: 0...totalNumberOfImages)
        }
            while messageNumber == newMessageNumber
        imageNumber = newImageNumber
        imageView.image = UIImage(named: "image\(imageNumber)")
      
      var newSoundNumber: Int
      repeat{
         newSoundNumber = Int.random(in: 0...totalNumberOfSounds-1)
      }
      while soundNumber == newSoundNumber
      soundNumber = newSoundNumber
      print("*** the new sound number is \(soundNumber)")
      playSound(name: "sound\(soundNumber)")
   }
}

            



