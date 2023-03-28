//
//  ViewController.swift
//  ColorApp
//
//  Created by Nadezhda Popova on 2023/03/27.
//

import UIKit

final class ViewController: UIViewController {
    
    // MARK: - IB Outlets
    @IBOutlet var colorDisplay: UIView!
    @IBOutlet var redLabel: UILabel!
    @IBOutlet var greenLabel: UILabel!
    @IBOutlet var blueLabel: UILabel!
    
    @IBOutlet var redSlider: UISlider!
    @IBOutlet var greenSlider: UISlider!
    @IBOutlet var blueSlider: UISlider!
    
    // MARK: - View Life Cycle
    override func viewDidLoad() {
        super.viewDidLoad()
        colorChanging()
        colorDisplay.layer.cornerRadius = 20
    }

    // MARK: - IB Actions
    @IBAction func redSliderAction() {
        redLabel.text = redSlider.value
            .formatted(.number.precision(.fractionLength(2)))
        colorChanging()
    }
    
    @IBAction func greenSliderAction() {
        greenLabel.text = greenSlider.value
            .formatted(.number.precision(.fractionLength(2)))
        colorChanging()
    }
    
    @IBAction func blueSliderAction() {
        blueLabel.text = blueSlider.value
            .formatted(.number.precision(.fractionLength(2)))
        colorChanging()
    }
    
    // MARK: - Private Methods
    private func colorChanging() {
        colorDisplay.backgroundColor = UIColor(
            red: CGFloat(redSlider.value),
            green: CGFloat(greenSlider.value),
            blue: CGFloat(blueSlider.value),
            alpha: 1
        )
    }

}

