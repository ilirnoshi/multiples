//
//  ViewController.swift
//  multiples
//
//  Created by Ilir Camaj on 1/15/16.
//  Copyright © 2016 Ilir Camaj. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    // Properties
    let maxAmount: Int = 50
    var currentAmount: Int = 0
    var multiplier: Int = 0
    
    // Outlets
    @IBOutlet weak var logoImg: UIImageView!
    @IBOutlet weak var playBtn: UIButton!
    @IBOutlet weak var theMltpl: UITextField!
    @IBOutlet weak var addBtn: UIButton!
    @IBOutlet weak var addLbl: UILabel!
    
    @IBAction func playButtonPressed (sender: UIButton!) {
        if theMltpl.text != nil && theMltpl.text != "" {
            logoImg.hidden = true
            playBtn.hidden = true
            theMltpl.hidden = true
            addBtn.hidden = false
            addLbl.hidden = false
            
            multiplier = Int(theMltpl.text!)!
            currentAmount = 0
            addLbl.text = "Press add to add!"
        }
    }
    
    @IBAction func addButtonPressed (sender: UIButton!) {
        addLbl.text = "\(currentAmount) + \(multiplier) = \(currentAmount+multiplier)"
        currentAmount = currentAmount + multiplier
        if isGameOver() {
            logoImg.hidden = false
            playBtn.hidden = false
            theMltpl.hidden = false
            addBtn.hidden = true
            addLbl.hidden = true
            theMltpl.text = ""
        }
    }
    
    func isGameOver() -> Bool {
        if currentAmount > maxAmount {
            return true
        } else {
            return false
        }
    }
    

}

