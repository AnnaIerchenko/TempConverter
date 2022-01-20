//
//  ViewController.swift
//  TempConverter
//
//  Created by Ierchenko Anna  on 1/20/22.
//

import UIKit

class ViewController: UIViewController {


    @IBOutlet weak var celsiusLabel: UILabel!
    @IBOutlet weak var farengeitLabel: UILabel!
    @IBOutlet weak var slider: UISlider! {
        didSet {
            slider.maximumValue = 100
            slider.minimumValue = 0
            slider.value = 0
        }
    }
    

    @IBAction func sliderChanged(_ sender: UISlider) {
        let temperatureCelcius = Int(round(sender.value))
        celsiusLabel.text = "\(temperatureCelcius)ºC"
        let farenheitTemperature = Int(round((sender.value * 9 / 5) + 32))
        farengeitLabel.text = "\(farenheitTemperature)ºF"
    
    }
}

