//
//  ViewController.swift
//  Reactinator
//
//  Created by John Stuart on 4/18/16.
//  Copyright © 2016 John Stuart. All rights reserved.
//

import UIKit
import AVFoundation

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
    }
    @IBOutlet weak var logo_image: UIImageView!
    
    @IBOutlet weak var background_image: UIImageView!
    
    @IBOutlet weak var Reactinator_label: UILabel!
    
    //@IBOutlet weak var dead_image: UIImageView!
    
    @IBAction func snore_sound(sender: UIButton) {
        playSound("snore")
    }
    @IBAction func whistle_sound(sender: UIButton) {
        playSound("whistle")
    }
    @IBAction func boo_sound(sender: UIButton) {
        playSound("boo")
    }
    @IBAction func ahh_sound(sender: UIButton) {
        playSound("ahh")
    }
    @IBAction func sad_sound(sender: UIButton) {
        playSound("sad")
    }
    @IBAction func yay_sound(sender: UIButton) {
        playSound("yay")
    }
    @IBAction func noo_sound(sender: UIButton) {
        playSound("noo")
    }
    @IBAction func mmm_sound(sender: UIButton) {
        playSound("mmm")
    }
    @IBAction func aww_sound(sender: UIButton) {
        playSound("aww")
    }
    @IBAction func maniacal_sound(sender: UIButton) {
        playSound("hah")
    }
    
    
    //sound function
    
    var audioPlayer = AVAudioPlayer()
    
    func playSound(soundName: String)
    {
        
        let sound = NSURL(fileURLWithPath:NSBundle.mainBundle().pathForResource(soundName, ofType:"wav")!)
        do{
            audioPlayer = try AVAudioPlayer(contentsOfURL:sound)
            audioPlayer.prepareToPlay()
            audioPlayer.play()
        }catch {
            print("Error getting the audio file")
        }
    }
    


}

