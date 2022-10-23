//
//  ViewController.swift
//  SecondAmpel
//
//  Created by Oxyenniu on 23.10.2022.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet var redLightView: UIView!
    
    @IBOutlet var yellowLightView: UIView!
    
    @IBOutlet var greenLightView: UIView!
    
    @IBOutlet var startButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        startButton.layer.cornerRadius = 10
    }
    
    override func viewWillLayoutSubviews() {
        
        let resizeView = redLightView.frame.width / 2
        
        redLightView.layer.cornerRadius = resizeView
        yellowLightView.layer.cornerRadius = resizeView
        greenLightView.layer.cornerRadius = resizeView
    }


    @IBAction func startButtonTap() {
        
        if redLightView.alpha == 0.3 && yellowLightView.alpha == 0.3 && greenLightView.alpha == 0.3 {
            startButton.setTitle("START", for: .normal)
        } else {
            startButton.setTitle("NEXT", for: .normal)
        }
       
        
        if round(redLightView.alpha * 10) / 10 == 0.3 && round(yellowLightView.alpha * 10) / 10 == 0.3 && round(greenLightView.alpha * 10) / 10 == 0.3 {
            redLightView.alpha = 1
        } else if redLightView.alpha == 1 {
            redLightView.alpha = 0.3
            yellowLightView.alpha = 1
        } else if yellowLightView.alpha == 1 {
            yellowLightView.alpha = 0.3
            greenLightView.alpha = 1
        } else if greenLightView.alpha == 1 {
            greenLightView.alpha = 0.3
            redLightView.alpha = 1
        }
        }
}


