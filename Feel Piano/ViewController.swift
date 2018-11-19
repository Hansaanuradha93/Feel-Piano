//
//  ViewController.swift
//  Feel Piano
//
//  Created by Hansa Anuradha on 11/17/18.
//  Copyright © 2018 Hansa Anuradha. All rights reserved.
//

import UIKit
import AVFoundation

class ViewController: UIViewController {
    
    var player: AVAudioPlayer?
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    
    @IBAction func notePressed(_ sender: UIButton) {
        
        if sender.tag == 1 {
            // Play note1
            playSound(fileName: "note1")
        } else if sender.tag == 2 {
            // Play note2
            playSound(fileName: "note2")
        } else if sender.tag == 3 {
            // Play note3
            playSound(fileName: "note3")
        } else if sender.tag == 4 {
            // Play note4
            playSound(fileName: "note4")
        } else if sender.tag == 5 {
            // Play note5
            playSound(fileName: "note5")
        } else if sender.tag == 6 {
            // Play note6
            playSound(fileName: "note6")
        } else if sender.tag == 7 {
            // Play note7
            playSound(fileName: "note7")
        }
    }
    
    func playSound(fileName : String){
        let url = Bundle.main.url(forResource: fileName, withExtension: "wav")!
        
        do {
            let sound = try AVAudioPlayer(contentsOf: url)
            self.player = sound
            sound.numberOfLoops = 1
            sound.prepareToPlay()
            sound.play()
        } catch let error as Error{
            // couldn't load file
            print(error.localizedDescription)
            
        }
    }
    

}

