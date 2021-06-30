//
//  ViewController.swift
//  SwiftPulseAnimation
//
//  Created by developerZain on 06/30/2021.
//  Copyright (c) 2021 developerZain. All rights reserved.
//

import UIKit
import SwiftPulseAnimation

class ViewController: UIViewController {

    @IBOutlet weak var imgAvatar: UIImageView!
    @IBOutlet weak var outletStartPulse: UIButton!
    
    var timer: Timer?
    var pulsing = false {
        didSet {
            outletStartPulse.setTitle(pulsing ? "Stop Pulse" : "Start Pulse", for: .normal)
            pulsing ? startTimer() : stopTimer()
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        setupUI()
    }

    private func setupUI() {
        imgAvatar.layer.cornerRadius = imgAvatar.frame.height / 2
        imgAvatar.isUserInteractionEnabled = true
        outletStartPulse.layer.borderWidth = 2
        outletStartPulse.layer.cornerRadius = 8
        outletStartPulse.layer.borderColor = UIColor.systemBlue.cgColor
        
        let tap = UITapGestureRecognizer(target: self, action: #selector(createPulse))
        imgAvatar.addGestureRecognizer(tap)
    }

    @objc fileprivate func createPulse() {
        let pulse = Pulsing(numberOfPulses: 1, radius: self.imgAvatar.frame.width + 10, position: self.imgAvatar.center, duration: 0.9, pulseColor: .blue)
        self.view.layer.insertSublayer(pulse, below: imgAvatar.layer)
    }
    
    fileprivate func startTimer() {
        timer?.invalidate()
        timer = Timer.scheduledTimer(withTimeInterval: 1, repeats: true, block: { _ in
            self.createPulse()
        })
    }
    
    fileprivate func stopTimer() {
        timer?.invalidate()
        timer = nil
    }
    
    @IBAction func actionStartPulse(_ sender: Any) {
        pulsing.toggle()
    }
    
}

