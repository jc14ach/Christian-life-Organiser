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
    
    
    
    
    
  override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    
    }
    

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
    
    @IBOutlet weak var datePickerBile: UIDatePicker!
    
    
    @IBAction func bibleReminder(_ sender: UIButton) {
    
        // 1
        let notification = UILocalNotification()
        // 2
        notification.fireDate = datePickerBile.date
        // 3
        notification.alertBody = "reminder: read the bible"
        
            
        
        // 4
        notification.timeZone = NSTimeZone.default
        // 5
        notification.repeatInterval = NSCalendar.Unit.month
        // 6
        notification.applicationIconBadgeNumber = 1
       
       func updateUI(){
        let currentSettings = UIApplication.shared.scheduleLocalNotification(notification)
        }

        
    }
    
    

}

