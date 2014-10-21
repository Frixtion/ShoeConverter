//
//  ViewController.swift
//  Shoe Converter
//
//  Created by Donny Benfield on 10/18/14.
//  Copyright (c) 2014 Donny Benfield. All rights reserved.
//

import UIKit

class ViewController: UIViewController {


    @IBOutlet weak var mensShoeSizeTextField: UITextField!
    
    
    @IBOutlet weak var mensConvertedShoeSizeLabel: UILabel!
    
    
    @IBOutlet weak var womensShoeSizeTextField: UITextField!
    
    
    @IBOutlet weak var womensConvertedShoeSizeLabel: UILabel!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func convertButtonPressed(sender: AnyObject) {
       
       //Mens Shoe Size Converter
        
        let sizeFromTextField = mensShoeSizeTextField.text.toInt()!
        mensConvertedShoeSizeLabel.hidden = false
        
        let conversionConstant = 30
        mensConvertedShoeSizeLabel.text = "\(sizeFromTextField + conversionConstant)" + " In European Shoe Size"
        
    }
    
    
    
       @IBAction func convertWomensShoeSizePressed(sender: UIButton) {
        
        
        let sizeFromTextField = Double((womensShoeSizeTextField.text as NSString).doubleValue)
        let conversionConstant = 30.5
        womensConvertedShoeSizeLabel.hidden = false
        womensConvertedShoeSizeLabel.text = "\(sizeFromTextField + conversionConstant)" + " In European Shoe Size"
        
        
        
        
        
    }
    
}

