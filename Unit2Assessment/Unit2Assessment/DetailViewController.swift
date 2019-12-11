//
//  ViewController.swift
//  Unit2Assessment
//
//  Created by Ahad Islam on 11/10/19.
//  Copyright © 2019 Ahad Islam. All rights reserved.
//

import UIKit

class DetailViewController: UIViewController {
    
    var crayon: Crayon!
    @IBOutlet weak var titleLabel: UILabel!
    @IBOutlet weak var redLabel: UILabel!
    @IBOutlet weak var greenLabel: UILabel!
    @IBOutlet weak var blueLabel: UILabel!
    @IBOutlet weak var alphaLabel: UILabel!
    @IBOutlet weak var redSlider: UISlider!
    @IBOutlet weak var greenSlider: UISlider!
    @IBOutlet weak var blueSlider: UISlider!
    @IBOutlet weak var alphaStepper: UIStepper!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        setColortoCrayon()
    }
    
    fileprivate func setColortoCrayon() {
        titleLabel.text = crayon.name
        redLabel.text = "Red \(crayon.red)"
        greenLabel.text = "Green \(crayon.green)"
        blueLabel.text = "Blue \(crayon.blue)"
        alphaLabel.text = "Alpha \(1.0)"
        
        redSlider.value = Float(crayon.red)
        greenSlider.value = Float(crayon.green)
        blueSlider.value = Float(crayon.blue)
        alphaStepper.value = 1.0
        
        view.backgroundColor = UIColor(displayP3Red: CGFloat(crayon.red / 255), green: CGFloat(crayon.green / 255), blue: CGFloat(crayon.blue) / 255, alpha: 1)
    }
    
    @IBAction func sliderChange(_ sender: UISlider) {
        redLabel.text = "Red \(String(format: "%.1f", redSlider.value))"
        greenLabel.text = "Green \(String(format: "%.1f", greenSlider.value))"
        blueLabel.text = "Blue \(String(format: "%.1f", blueSlider.value))"
        view.backgroundColor = UIColor(displayP3Red: CGFloat(redSlider.value / 255), green: CGFloat(blueSlider.value / 255), blue: CGFloat(greenSlider.value) / 255, alpha: CGFloat(alphaStepper.value))
        
    }
    
    @IBAction func alphaStepChange(_ sender: UIStepper) {
        alphaLabel.text = "Alpha \(String(format: "%.1f", sender.value))"
        view.backgroundColor = UIColor(displayP3Red: CGFloat(redSlider.value / 255), green: CGFloat(blueSlider.value / 255), blue: CGFloat(greenSlider.value) / 255, alpha: CGFloat(alphaStepper.value))
    }
    
    @IBAction func resetBackgroundColor(_ sender: UIButton) {
        setColortoCrayon()
    }
    
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
