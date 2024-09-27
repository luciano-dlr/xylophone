//
//  ViewController.swift
//  xylophone
//
//  Created by Luciano de la Rubia on 20/09/2024.
//
import AVFoundation
import UIKit

class ViewController: UIViewController {
    
    var player: AVAudioPlayer!

    override func viewDidLoad() {
        super.viewDidLoad()
    }

    @IBAction func keyPressed(_ sender: UIButton) {
//        playSound()
//        print(sender.currentTitle)
        
        playSound(titeButton: sender.currentTitle ?? "")
    }
    
    func playSound(titeButton: String) {
        let url = Bundle.main.url(forResource: titeButton, withExtension: "wav")
        player = try! AVAudioPlayer(contentsOf: url!)
        player.play()
                
    }
}
