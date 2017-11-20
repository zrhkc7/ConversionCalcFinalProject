//
//  ConverterViewController.swift
//  ConversionCalculator
//
//  Created by Zach Hogan on 11/7/17.
//  Copyright © 2017 Tech Innovator. All rights reserved.
//

import UIKit

class ConverterViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBOutlet weak var outputDisplay: UITextField!
    @IBOutlet weak var inputDisplay: UITextField!
    
    var numberOnInput:Double = 0;
    var numberOnOutput:Double = 0;
    
    @IBAction func numbers(_ sender: UIButton) {
        
        inputDisplay.text = inputDisplay.text! + String(sender.tag-1)
        numberOnInput = Double(inputDisplay.text!)!
    }
    
    @IBAction func buttons(_ sender: UIButton) {
        
        if inputDisplay.text != "" && sender.tag != 11{
            if sender.tag == 12 //Subraction Sign
            {
                inputDisplay.text = "-" + inputDisplay.text!
                numberOnInput = Double(inputDisplay.text!)!
            }
            else if sender.tag == 13 // Decimal Point
            {
                inputDisplay.text = inputDisplay.text! + "."
                numberOnInput = Double(inputDisplay.text!)!
            }
        }
        if sender.tag == 11 {
            outputDisplay.text = ""
            inputDisplay.text = ""
        }
    }
    
    func convertFahrenheitToCelcius(_ fahrenheit: Double) -> Double {
        return (fahrenheit-32) * (5/9)
    }
    func convertCelciusToFahrenheit(_ celcius: Double) -> Double {
        return (celcius * (9/5)) + 32
    }
    func convertMilesToKilometers(_ miles: Double) -> Double {
        return miles * 1.60934
    }
    func convertKilometersToMiles(_ kilometers: Double) -> Double {
        return kilometers / 1.60934
    }

    @IBAction func converterDisplay(_ sender: Any) {
        
        let alert = UIAlertController(title: "Converter", message: "Choose what you want to convert.", preferredStyle: UIAlertControllerStyle.actionSheet)
        alert.addAction(UIAlertAction(title: "fahrenheit to celcius", style: UIAlertActionStyle.default, handler: {
            (alertAction) -> Void in
            self.inputDisplay.text = self.inputDisplay.text! + "°F"
            self.outputDisplay.text = String(self.convertFahrenheitToCelcius(self.numberOnInput)) + "°C"
        }))
        alert.addAction(UIAlertAction(title: "celcius to fahrenheit", style: UIAlertActionStyle.default, handler: {
            (alertAction) -> Void in
           
            self.inputDisplay.text = self.inputDisplay.text! + "°C"
            self.outputDisplay.text = String(self.convertCelciusToFahrenheit(self.numberOnInput)) + "°F"
        }))
        alert.addAction(UIAlertAction(title: "miles to kilometers", style: UIAlertActionStyle.default, handler: {
            (alertAction) -> Void in
        
            self.inputDisplay.text = self.inputDisplay.text! + "mi"
            self.outputDisplay.text = String(self.convertMilesToKilometers(self.numberOnInput)) + "km"
        }))
        alert.addAction(UIAlertAction(title: "kilometers to miles", style: UIAlertActionStyle.default, handler: {
            (alertAction) -> Void in
          
            self.inputDisplay.text = self.inputDisplay.text! + "km"
            self.outputDisplay.text = String(self.convertKilometersToMiles(self.numberOnInput)) + "mi"
        }))
        self.present(alert, animated: true, completion: nil)
        
    }
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
