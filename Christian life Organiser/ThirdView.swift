//
//  ThirdView.swift
//  Christian life Organiser
//
//  Created by jc14ach on 13/02/2017.
//  Copyright © 2017 jc14ach. All rights reserved.
//

import UIKit
import UserNotifications

class ThirdView: UIViewController {
    
    
    var verses: [String] = ["1 Thessalonians 5:11 Therefore encourage one another and build each other up, just as in fact you are doing.","Proverbs 18:10 The name of the LORD is a fortified tower; the righteous run to it and are safe.","2 Timothy1:7 For the Spirit God gave us does not make us timid, but gives us power, love and self-discipline.","Psalm 55:22 Cast your cares on the LORD and he will sustain you; he will never let the righteous be shaken.","Psalm 120:1 I call on the LORD in my distress, and he answers me."]
    var randomNumber = Int(arc4random_uniform(5))
    
    @IBOutlet weak var dailyVerse: UITextView!
    
    
  override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    dailyVerse.text = verses[randomNumber]
    let date = Date()
    let calender = Calendar.current
    
    let hour = calender.component(.hour, from: date)
    func changeLabel(){
        if(hour == 00){
            dailyVerse.text = verses[randomNumber]
        }
    }
    }
    

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
    
    @IBOutlet weak var datePickerBile: UIDatePicker!
    
    
    @IBAction func bibleReminder(_ sender: UIButton) {
    
       

        
    }
    
    
    

}

