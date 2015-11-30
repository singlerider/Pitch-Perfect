//
//  PlaySoundsViewController.swift
//  Pitch Perfect
//
//  Created by Shane E on 11/30/15.
//  Copyright © 2015 Shane E. All rights reserved.
//

import UIKit
import AVFoundation

class PlaySoundsViewController: UIViewController {

    var audioPlayer:AVAudioPlayer!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        if let filePath = NSBundle.mainBundle().pathForResource("people013", ofType: "wav"){
            let filePathURL = NSURL.fileURLWithPath(filePath)
            audioPlayer = try!AVAudioPlayer(contentsOfURL: filePathURL)
            audioPlayer.enableRate = true
        }else {
            print("file not found")
        }

        // Do any additional setup after loading the view.
    }
    @IBAction func stopAudio(sender: UIButton) {
        audioPlayer.stop()
        audioPlayer.currentTime = 0.0
    }
    
    @IBAction func playFastAudio(sender: UIButton) {
        audioPlayer.stop()
        audioPlayer.rate = 1.5
        audioPlayer.play()
        //stopAudio.enabled
    }
    
    @IBAction func playSlowAudio(sender: AnyObject) {
        audioPlayer.stop()
        audioPlayer.rate = 0.5
        audioPlayer.play()
    }


    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
