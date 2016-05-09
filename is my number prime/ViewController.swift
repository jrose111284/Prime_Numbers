//
//  ViewController.swift
//  is my number prime
//
//  Created by Jamie Rose on 09/05/2016.
//  Copyright © 2016 Jamie Rose. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var answe: UITextView!
    
    @IBOutlet weak var number: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func click(sender: AnyObject) {
//        var number = 2
        var numberInt = Int(number.text!)
        
        if numberInt != nil {
            var isPrime = true
            
            if numberInt == 1 {
                isPrime = false
            }
            
            if numberInt != 2 && numberInt != 1{
                
                for var i = 2; i < numberInt; i++ {
                    if numberInt! % i == 0 {
                        isPrime = false
                    }
                }
            }
            
            if isPrime == true {
                answe.text = "\(numberInt!) is prime"
            } else {
                answe.text = "\(numberInt!) is not prime"
            }

        } else {
            answe.text = "please enter a number"
        }
        
        
    }

}

