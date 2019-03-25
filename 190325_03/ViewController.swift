//
//  ViewController.swift
//  190325_03
//
//  Created by SWUCOMPUTER on 25/03/2019.
//  Copyright © 2019 SWUCOMPUTER. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet var pizzaChicken: UISegmentedControl!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "toOrderView" {
            let destVC = segue.destination as! OrderViewController
            
            let varLabel = pizzaChicken.titleForSegment(at: pizzaChicken.selectedSegmentIndex)!
            
            destVC.title = varLabel
            
            var varLabel2: String! = "감사합니다\n 주문내역: <"
            varLabel2 += varLabel
            varLabel2 += ">, 맞나요?"
            
            destVC.info = varLabel2
        
        }
    }

}

