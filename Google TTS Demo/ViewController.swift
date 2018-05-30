//
//  ViewController.swift
//  Google TTS Demo
//
//  Created by Alejandro Cotilla on 5/30/18.
//  Copyright © 2018 Alejandro Cotilla. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var textView: UITextView!
    @IBOutlet weak var speakButton: UIButton!
    
    @IBOutlet weak var voiceCategoryControl: UISegmentedControl!
    @IBOutlet weak var voiceGenderControl: UISegmentedControl!
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }

    @IBAction func didPressSpeakButton(_ sender: Any) {        
        speakButton.setTitle("Speaking...", for: .normal)
        speakButton.isEnabled = false
        speakButton.alpha = 0.6
        
        var voiceType: VoiceType = .undefined
        let category = voiceCategoryControl.titleForSegment(at: voiceCategoryControl.selectedSegmentIndex)
        let gender = voiceGenderControl.titleForSegment(at: voiceGenderControl.selectedSegmentIndex)
        if category == "WaveNet" && gender == "Female" {
            voiceType = .waveNetFemale
        }
        else if category == "WaveNet" && gender == "Male" {
            voiceType = .waveNetMale
        }
        else if category == "Standard" && gender == "Female" {
            voiceType = .standardFemale
        }
        else if category == "Standard" && gender == "Male" {
            voiceType = .standardMale
        }
            
        SpeechService.shared.speak(text: textView.text, voiceType: voiceType) {
            self.speakButton.setTitle("Speak", for: .normal)
            self.speakButton.isEnabled = true
            self.speakButton.alpha = 1
        }
    }
}

