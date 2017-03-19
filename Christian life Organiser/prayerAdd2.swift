//
//  prayerAdd2.swift
//  Christian life Organiser
//
//  Created by Macbook Air on 19/03/2017.
//  Copyright © 2017 jc14ach. All rights reserved.
//

import UIKit

class PrayerAdd2: UIViewController {


    @IBOutlet weak var prayerText2: UITextField!

    @IBAction func prayerButton2(_ sender: Any) {
        
        list2.append(prayerText2.text!)
        
        prayerText2.text = ""
    }

}
