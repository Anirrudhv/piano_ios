//
//  ViewController.swift
//  Xylophone
//
//  Created by Angela Yu on 27/01/2016.
//  Copyright © 2016 London App Brewery. All rights reserved.
//

import UIKit
import AVFoundation

class ViewController: UIViewController, AVAudioPlayerDelegate{
    
    var audioplayer : AVAudioPlayer!
    let sound_array  = ["note1","note2","note3","note4","note5","note6","note7"]

    override func viewDidLoad() {
        super.viewDidLoad()
    }



    @IBAction func notePressed(_ sender: UIButton) {
        
        playsound(pressed : sound_array[sender.tag - 1])
        
    }
    func playsound(pressed : String){
        let url = Bundle.main.url(forResource: pressed, withExtension: "wav")!
        do {
            audioplayer = try AVAudioPlayer(contentsOf: url)
        }
        catch {
            print(error)
        }
        audioplayer.play()
        
    }
    override func motionEnded(_ motion: UIEventSubtype, with event: UIEvent?) {
        let url = Bundle.main.url(forResource: "note7", withExtension: "wav")!
        do {
            audioplayer = try AVAudioPlayer(contentsOf: url)
        }
        catch {
            print(error)
        }
        audioplayer.play()
    }
  

}

