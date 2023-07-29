//
//  ViewController.swift
//  sayaclar
//
//  Created by İbrahim Halid Bayrak on 29.07.2023.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var butonutku: UIButton!
    @IBOutlet weak var label: UILabel!
    
    var timer = Timer()
    var kalanZaman = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        kalanZaman = 3
        label.text = "Zaman: \(kalanZaman)"
        
    }
    @IBAction func baslatTiklandi(_ sender: Any) {
        
        timer = Timer.scheduledTimer(timeInterval: 1, target: self, selector: #selector(timerFonksiyonu), userInfo: nil, repeats: true)
        
    }
    
    
    @objc func timerFonksiyonu(){
        
        butonutku.isEnabled = false
        label.text = "Zaman: \(kalanZaman)"
        kalanZaman = kalanZaman - 1
        if kalanZaman == 0 {
            label.text = "Süre Bitti!"
            timer.invalidate()
            kalanZaman = 3
            butonutku.isEnabled = true
            
            
        }
        
    }
    
    
}

    
    

