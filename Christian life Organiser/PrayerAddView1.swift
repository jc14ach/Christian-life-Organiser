//
//  PrayerAddView1.swift
//  Christian life Organiser
//
//  Created by Macbook Air on 18/03/2017.
//  Copyright © 2017 jc14ach. All rights reserved.
//

import UIKit

class PrayerAddView1: UIViewController {
    
    
    
    @IBOutlet weak var prayerText1: UITextField!
    @IBAction func prayerButton1(_ sender: Any) {
        
        list1.append(prayerText1.text!)
        
        prayerText1.text = ""
        

    }
    
}
