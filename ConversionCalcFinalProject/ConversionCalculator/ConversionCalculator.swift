//
//  ConversionCalculator.swift
//  ConversionCalculator
//
//  Created by Zach Hogan on 12/7/17.
//  Copyright © 2017 Tech Innovator. All rights reserved.
//

import UIKit

class ConversionCalculator: UIViewController {

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
    
    func clearInputOutput(_: outputDisplay,_: inputDisplay) {
     outputDisplay = "°C"
     inputDisplay = "°F"
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
