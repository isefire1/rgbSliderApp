//
//  ViewController.swift
//  rgbSliderApp
//
//  Created by Alex on 17.10.2020.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet var mainView: UIView!
    
    @IBOutlet var rSlider: UISlider!
    @IBOutlet var gSlider: UISlider!
    @IBOutlet var bSlider: UISlider!
    
    @IBOutlet var rValueSlider: UILabel!
    @IBOutlet var gValueSlider: UILabel!
    @IBOutlet var bValueSlider: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        mainView.layer.cornerRadius = 10
        
        rSlider.minimumTrackTintColor = .red
        gSlider.minimumTrackTintColor = .green
        
        rValueSlider.text = showValue(from: rSlider)
        gValueSlider.text = showValue(from: gSlider)
        bValueSlider.text = showValue(from: bSlider)
        
        collorChanged()
        
    }
    
    @IBAction func rgbSliderAction() {
        rValueSlider.text = showValue(from: rSlider)
        gValueSlider.text = showValue(from: gSlider)
        bValueSlider.text = showValue(from: bSlider)
        
        collorChanged()
    }
    
    private func collorChanged() {
        mainView.backgroundColor = UIColor(red: CGFloat(rSlider.value),
                                           green: CGFloat(gSlider.value),
                                           blue: CGFloat(bSlider.value),
                                           alpha: 1)
    }
    
    private func showValue(from slider: UISlider) -> String {
        String(format: "%.2f", slider.value)
    }
}


