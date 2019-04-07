//
//  ViewController.swift
//  Hello World
//
//  Created by Tony Braasch on 4/6/19.
//  Copyright © 2019 Tony Braasch. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    
    @IBOutlet weak var pressMeButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.helloWorldLabel.alpha = 0.0
        // Do any additional setup after loading the view.
        
    }
    
    
    @IBOutlet weak var helloWorldLabel: UILabel!
    
    @IBAction func pressMeButtonPressed(_ sender: UIButton) {
        UIView.animate(withDuration: 1.5, animations: {
        self.helloWorldLabel.alpha = 1.0
        })
        pressMeButton.setTitle("shake me", for: .normal)
        pressMeButton.isEnabled = false
    }
    
    override func motionEnded(_ motion: UIEvent.EventSubtype, with event: UIEvent?) {
        UIView.animate(withDuration: 0.1, animations: {
            self.helloWorldLabel.alpha = 0.0
        })
        pressMeButton.setTitle("press me", for: .normal)
        pressMeButton.isEnabled = true
    }
    
}

