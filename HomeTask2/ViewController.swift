//
//  ViewController.swift
//  HomeTask2
//
//  Created by Дмитрий Процак on 15.07.2022.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet var mainView: UIView!
    
    
    @IBOutlet var redLabel: UILabel!
    @IBOutlet var greenLabel: UILabel!
    @IBOutlet var blueLabel: UILabel!
    
    @IBOutlet var redSlider: UISlider!
    @IBOutlet var greenSlider: UISlider!
    @IBOutlet var blueSlider: UISlider!
    
    
    
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        mainView.layer.cornerRadius = 10
        mainView.backgroundColor = .black
        
        redSlider.minimumTrackTintColor = .red
        greenSlider.minimumTrackTintColor = .green
    
        //MARK: Slider
        redSlider.value = 0
        greenSlider.value = 0
        blueSlider.value = 0
        
        
       
    }

  
    @IBAction func SliderAction(_ sender: Any) {
        
        
        self.mainView.backgroundColor = UIColor(red:CGFloat(redSlider.value)/255 , green: CGFloat(greenSlider.value)/255, blue: CGFloat(blueSlider.value)/255, alpha: 1)
        
        redLabel.text = String(Int(redSlider.value))
        greenLabel.text = String(Int(greenSlider.value))
        blueLabel.text = String(Int(blueSlider.value))
        
    }
    

}

