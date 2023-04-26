//
//  ViewController.swift
//  CardWorkOutGame
//
//  Created by Joseph on 4/24/23.
//

import UIKit

class CardSelectionViewController: UIViewController {
    
    
    @IBOutlet var cardImageView: UIImageView!
    
    var timer: Timer!
    
    var allCardImages = AppImages.cardImages
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        startTimer()
        
        // Do any additional setup after loading the view.
        
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        
        timer.invalidate()
    }
    
    
    func startTimer(){
        timer = Timer.scheduledTimer(timeInterval: 0.5, target: self, selector: #selector(randomlyShuffleImages), userInfo: nil, repeats: true)
    }
    
    @objc func randomlyShuffleImages(){
        
        cardImageView.image = allCardImages.randomElement()!!
        
    }
    
    
    @IBAction func stopButtonOnTap(_ sender: UIButton) {
        timer.invalidate()
    }
    
    @IBAction func restartButtonOnTap(_ sender: UIButton) {
        timer.invalidate()
        startTimer()
        
    }
    
    @IBAction func rulesButtonOnTap(_ sender: Any) {
        timer.invalidate()
        
        performSegue(withIdentifier: IdentifierConstants.cardRulesScreenSegue, sender: nil)
    }
    
    
}

