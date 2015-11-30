//
//  ViewController.swift
//  Pitch Perfect
//
//  Created by Shane E on 11/30/15.
//  Copyright © 2015 Shane E. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var stopButton: UIButton!
    @IBOutlet weak var recordingInProgress: UILabel!
    @IBOutlet weak var recordButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    override func viewWillAppear(animated: Bool) {
        // Hide the stop button
        stopButton.hidden = true
        recordButton.enabled = true
    }

    @IBAction func recordAudio(sender: UIButton) {
        recordButton.enabled = false
        stopButton.hidden = false
        recordingInProgress.hidden = false
        //TODO: Record the user's voice
        print("in recordAudio")
    }

    @IBAction func stopRecording(sender: UIButton) {
        recordingInProgress.hidden = true
        stopButton.hidden = true
    }
}

