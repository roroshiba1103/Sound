//
//  ViewController.swift
//  Sound
//
//  Created by 安部瞳 on 2023/04/28.
//

import UIKit
import AVFoundation

class ViewController: UIViewController {
    
    @IBOutlet var drumButton: UIButton!
    
    let drumSoundPlayer = try!AVAudioPlayer(data: NSDataAsset(name: "drumSound")!.data)

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    @IBAction func touchDownDrumButton(){
        
        drumButton.setImage(UIImage(named: "drumPlayingImage"), for: .normal)
        
        drumSoundPlayer.currentTime = 0
        
        drumSoundPlayer.play()
        
    }
    
    @IBAction func touchUpDrumBotton(){
        
        drumButton.setImage(UIImage(named: "drumImage"), for: .normal)
    }


}

