//
//  prayerAdd3.swift
//  Christian life Organiser
//
//  Created by Macbook Air on 19/03/2017.
//  Copyright © 2017 jc14ach. All rights reserved.
//


import UIKit

class PrayerAdd3: UIViewController {
    
    
    @IBOutlet weak var prayerText3: UITextField!
    
    @IBAction func prayerButton3(_ sender: Any) {
        list3.append(prayerText3.text!)
        
        prayerText3.text = ""

    }
    
    
    
}
