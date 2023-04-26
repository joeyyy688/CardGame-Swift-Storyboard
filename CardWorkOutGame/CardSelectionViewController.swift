//
//  ViewController.swift
//  CardWorkOutGame
//
//  Created by Joseph on 4/24/23.
//

import UIKit

class CardSelectionViewController: UIViewController {
    
    
    @IBOutlet var cardImageView: UIImageView!
    
    @IBOutlet var buttons: [UIButton]!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        for button in buttons{
            button.layer.cornerRadius = 8
        }
        
    }
    
    
    @IBAction func stopButtonOnTap(_ sender: UIButton) {
        
    }
    
    @IBAction func restartButtonOnTap(_ sender: UIButton) {
        
    }
    
    @IBAction func rulesButtonOnTap(_ sender: Any) {
        
    }
    
    
}

