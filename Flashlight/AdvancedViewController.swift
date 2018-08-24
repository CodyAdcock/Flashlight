//
//  AdvancedViewController.swift
//  Flashlight
//
//  Created by Cody on 8/20/18.
//  Copyright © 2018 Cody Adcock. All rights reserved.
//

import UIKit

class AdvancedViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    //Label declaration
    @IBOutlet weak var instructionLabel: UILabel!
    
    //swiping up turns the light on
    @IBAction func swipeUp(_ sender: UISwipeGestureRecognizer) {
        if sender.state == .ended{
            view.backgroundColor = .white
            instructionLabel.textColor = .black
            instructionLabel.text = "Swipe Down For Off"
            print("the thing is off \(sender.direction)")
            
            //change nav bar color
            UINavigationBar.appearance().barTintColor = .white
            UINavigationBar.appearance().backgroundColor = .black
            UINavigationBar.appearance().tintColor = .black
            
            
        }
    }
    //swiping down turns the light off
    @IBAction func swipeDown(_ sender: UISwipeGestureRecognizer) {
        if sender.state == .ended{
            view.backgroundColor = .black
            instructionLabel.textColor = .white
            instructionLabel.text = "Swipe Up For On"
            print("the thing is on \(sender.direction) ")
            
            //change navbar color
            UINavigationBar.appearance().barTintColor = .black
            UINavigationBar.appearance().backgroundColor = .white
            UINavigationBar.appearance().tintColor = .white
            
        }
    }
    
}
