//
//  ViewController.swift
//  multiplier
//
//  Created by Evan Laird on 2/4/16.
//  Copyright © 2016 Evan Laird. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    //variables
    var addNumber = 0
    var addTaps = 0
    var sumNumber = 0
    var sumAddNumber = 0
    var maxNumber = 100

  //Outlets

    @IBOutlet weak var multiplyThisBitch: UIImageView!
    @IBOutlet weak var multipleTextField: UITextField!
    @IBOutlet weak var playButton: UIButton!
    
    @IBOutlet weak var pressLabel: UILabel!
    
    @IBOutlet weak var addButton: UIButton!
    
    @IBOutlet weak var mathLabel: UILabel!
    
    @IBAction func pressedPlayButton(sender: UIButton!) {
        
        if multipleTextField.text != nil && multipleTextField.text != "" {
        
        multiplyThisBitch.hidden = true
        multipleTextField.hidden = true
        playButton.hidden = true
        
        pressLabel.hidden = false
        addButton.hidden = false
            
        addNumber = Int(multipleTextField.text!)!
        
        }
        }
    
    @IBAction func pressedAddButton(sender: UIButton!) {
        pressLabel.hidden = true
        
        mathLabel.hidden = false
        
        addTaps++
        
        sumNumber = addTaps * addNumber
        
        sumAddNumber = sumNumber + addNumber
        
        mathLabel.text = "\(sumNumber) + \(addNumber) = \(sumAddNumber)"
        if gameIsOver(){
            restartApp()
        }
    }
    func restartApp() {
            multipleTextField.text = ""
            addNumber = 0
            addTaps = 0
            
            multiplyThisBitch.hidden = false
            multipleTextField.hidden = false
            playButton.hidden = false
            
            pressLabel.hidden = true
            addButton.hidden = true
            
            mathLabel.hidden = true
        }
        
        func gameIsOver() ->Bool {
            if sumAddNumber >= maxNumber {
                return true
            } else {
                return false
            }
            
            }
        }
    

    
    
    


