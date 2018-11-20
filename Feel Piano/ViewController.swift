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
    let soundFilesArray = ["note1", "note2", "note3", "note4", "note5", "note6", "note7"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    
    @IBAction func notePressed(_ sender: UIButton) {
        // Get the sound file name
        var selectedSoundFileName: String = soundFilesArray[sender.tag - 1]
        print(selectedSoundFileName)

        // Play Sound
        playSound(fileName: selectedSoundFileName)
    }
    
    func playSound(fileName: String){
        
        let url = Bundle.main.url(forResource: fileName, withExtension: "wav")!
        
        do {
            let sound = try AVAudioPlayer(contentsOf: url)
            self.player = sound
            sound.numberOfLoops = 1
            sound.prepareToPlay()
            sound.play()
        } catch {
            // couldn't load file
            print(error)
            
        }
    }
    

}

