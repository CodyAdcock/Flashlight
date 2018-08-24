//
//  ViewController.swift
//  Flashlight
//
//  Created by Cody on 8/20/18.
//  Copyright © 2018 Cody Adcock. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    //initialize a bool for whether the light is on or off
    var isOn: Bool = true
    
    //initialize the button name so we can change it
    @IBOutlet weak var powerButton: UIButton!
    
    //function for when button is tapped
    @IBAction func buttonTapped(_ sender: Any) {
        //check to see if on or off
        //if on turn off
        if isOn == true{
            //change bool value
            isOn = false
            //change background color
            view.backgroundColor = .black
            //change text color to white and saying on
            powerButton.setTitleColor(.white, for: .normal)
            powerButton.setTitle("ON", for: .normal)
            
            //just help
            print("turned on")
        }
            //if off turn on
        else if isOn == false {
            isOn = true
            //change background to white
            view.backgroundColor = .white
            //change text to black and off
            powerButton.setTitleColor(.black, for: .normal)
            powerButton.setTitle("OFF", for: .normal)

            //just help
            print("turned off")
        }
    }

}

