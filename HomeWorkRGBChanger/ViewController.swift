//
//  ViewController.swift
//  HomeWorkRGBChanger
//
//  Created by Алишер Маликов on 30.10.2022.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet var viewWindow: UIView!
    @IBOutlet var redLabel: UILabel!
    @IBOutlet var greenLabel: UILabel!
    @IBOutlet var blueLabel: UILabel!
    @IBOutlet var redGraph: UILabel!
    @IBOutlet var greenGraph: UILabel!
    @IBOutlet var blueGraph: UILabel!
    @IBOutlet var redSlider: UISlider!
    @IBOutlet var greenSlider: UISlider!
    @IBOutlet var blueSlider: UISlider!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        redLabel.text = "Red:"
        greenLabel.text = "Green:"
        blueLabel.text = "Blue:"
        
        setupGraphForColor()
        setupSliders()
//        changeColor()
        
    }
    

    @IBAction func redSliderAction() {
        var sliderValue = round(redSlider.value * 100) / 100
        redGraph.text = sliderValue.formatted()
        changeColor()
    }
    
    @IBAction func greenSliderAction() {
        var sliderValue = round(greenSlider.value * 100) / 100
        greenGraph.text = sliderValue.formatted()
        changeColor()
    }
    
    @IBAction func blueSliderAction() {
        var sliderValue = round(blueSlider.value * 100) / 100
        blueGraph.text = sliderValue.formatted()
        changeColor()
    }
    
    //MARK: Private methods
    private func changeColor () {
        viewWindow.backgroundColor = UIColor(red: CGFloat(redSlider.value), green: CGFloat(greenSlider.value), blue: CGFloat(blueSlider.value), alpha: 1)
    }
    
    
    private func setupGraphForColor() {
        redGraph.text = redSlider.value.formatted()
        greenGraph.text = greenSlider.value.formatted()
        blueGraph.text = blueSlider.value.formatted()
    }
    
    private func setupSliders() {
        redSlider.minimumTrackTintColor = .red
        redSlider.minimumValue = 0
        redSlider.maximumValue = 1
        
        greenSlider.minimumTrackTintColor = .green
        greenSlider.minimumValue = 0
        greenSlider.maximumValue = 1
        
        blueSlider.minimumTrackTintColor = .blue
        blueSlider.minimumValue = 0
        blueSlider.maximumValue = 1
    }
}

