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
        
        correctValue(for: rValueSlider, gValueSlider, bValueSlider)
        
        collorChanged()
        
    }
    
    @IBAction func rgbSliderAction(_ sender: UISlider) {
        collorChanged()
        
        switch sender.tag {
        case 0: rValueSlider.text = showValue(from: sender)
        case 1: gValueSlider.text = showValue(from: sender)
        case 2: bValueSlider.text = showValue(from: sender)
        default: break
        }

    }
    
    private func collorChanged() {
        mainView.backgroundColor = UIColor(red: CGFloat(rSlider.value),
                                           green: CGFloat(gSlider.value),
                                           blue: CGFloat(bSlider.value),
                                           alpha: 1)
    }

    private func correctValue(for labels: UILabel...) {
            labels.forEach { label in
                switch label.tag {
                case 0: rValueSlider.text = showValue(from: rSlider)
                case 1: gValueSlider.text = showValue(from: gSlider)
                case 2: bValueSlider.text = showValue(from: bSlider)
                default: break
                }
            }
        }
    
    private func showValue(from slider: UISlider) -> String {
        String(format: "%.2f", slider.value)
    }
}



