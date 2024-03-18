//
//  ViewController.swift
//  ColorizedApp
//
//  Created by abd ul’Karim 📚 on 17.03.2024.
//

import UIKit

final class ViewController: UIViewController {
    
    @IBOutlet var displayColor: UIView!
    
    @IBOutlet var redLabel: UILabel!
    @IBOutlet var greenLabel: UILabel!
    @IBOutlet var blueLabel: UILabel!
    
    @IBOutlet var redSlider: UISlider!
    @IBOutlet var greenSlider: UISlider!
    @IBOutlet var blueSlider: UISlider!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        displayColor.layer.cornerRadius = 13
        
        setupDisplayColor()
        
        setupValue()
    }
    
    @IBAction func changeValues() {
        setupDisplayColor()
        setupValue()
    }
    
    private func setupDisplayColor() {
        displayColor.backgroundColor = UIColor(
            red: CGFloat(redSlider.value),
            green: CGFloat(greenSlider.value),
            blue: CGFloat(blueSlider.value),
            alpha: 1
        )
    }
    
    private func setupValue() {
        redLabel.text = String(format: "%.2f", redSlider.value)
        greenLabel.text = String(format: "%.2f", greenSlider.value)
        blueLabel.text = String(format: "%.2f", blueSlider.value)
    }
    
}
