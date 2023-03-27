//
//  ViewController.swift
//  ColorApp
//
//  Created by Nadezhda Popova on 2023/03/27.
//

import UIKit

final class ViewController: UIViewController {
    @IBOutlet var colorDisplay: UIView!
    @IBOutlet var redLabel: UILabel!
    @IBOutlet var greenLabel: UILabel!
    @IBOutlet var blueLabel: UILabel!
    
    @IBOutlet var redSlider: UISlider!
    @IBOutlet var greenSlider: UISlider!
    @IBOutlet var blueSlider: UISlider!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        colorDisplay.layer.cornerRadius = 20
        colorDisplay.backgroundColor = UIColor(red: CGFloat(redSlider.value), green: CGFloat(greenSlider.value), blue: CGFloat(blueSlider.value), alpha: 1.0)
    }

    @IBAction func redSliderAction() {
        redLabel.text = redSlider.value.formatted(.number.precision(.fractionLength(1)))
    }
    
    @IBAction func greenSliderAction() {
        greenLabel.text = greenSlider.value.formatted(.number.precision(.fractionLength(1)))
    }
    
    @IBAction func blueSliderAction() {
        blueLabel.text = blueSlider.value.formatted(.number.precision(.fractionLength(1)))
    }
    

}

