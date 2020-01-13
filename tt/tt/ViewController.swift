//
//  ViewController.swift
//  tt
//
//  Created by Serhii Demianenko on 9/20/19.
//  Copyright © 2019 Serhii Demianenko. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var CelsiusLabel: UILabel!
    @IBOutlet weak var FahrenheitLabel: UILabel!
    @IBOutlet weak var slider: UISlider! {
        didSet {
            slider.maximumValue = 100
            slider.minimumValue = 0
            slider.value = 0
        }
    }
    
    @IBAction func SliderValueChanged(_ sender: UISlider) {
        let temperetureCelsius = Int(round(sender.value))
        CelsiusLabel.text = "\(temperetureCelsius)ºC"
        
        let temperatureFahrenheit = Int(round(sender.value * 9 / 5) + 32)
        FahrenheitLabel.text = "\(temperatureFahrenheit)ºF"
        
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    

}

