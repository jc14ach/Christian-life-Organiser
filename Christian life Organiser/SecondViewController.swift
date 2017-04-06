//
//  SecondViewController.swift
//  Christian life Organiser
//
//  Created by jc14ach on 13/02/2017.
//  Copyright © 2017 jc14ach. All rights reserved.
//

import UIKit
import UserNotifications
var list1 = [""]
var list2 = [""]
var list3 = [""]
class SecondViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
  
   
    // set the notification
    @IBAction func reminder(_ sender: UISwitch) {
        
        if(sender.isOn == true){
            
            
            
            let content = UNMutableNotificationContent()
            content.title = "Prayer Reminder"
            content.body = "Reminder to pray today"
            
            let trigger = UNTimeIntervalNotificationTrigger(timeInterval: 86400, repeats: true)
            let request = UNNotificationRequest(identifier: "timer done", content: content, trigger: trigger)
            UNUserNotificationCenter.current().add(request, withCompletionHandler: nil)
            
            
        }
        
    }
    
    
    @IBOutlet weak var prayer1TV: UITableView!
    @IBOutlet weak var prayer2TV: UITableView!
    @IBOutlet weak var prayer3TV: UITableView!
    //var timer = Timer()
    
    
    override func viewDidAppear(_ animated: Bool) {
        prayer1TV.reloadData()
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.prayer1TV.delegate = self
        self.prayer1TV.dataSource = self
        self.prayer2TV.delegate = self
        self.prayer2TV.dataSource = self
        self.prayer3TV.delegate = self
        self.prayer3TV.dataSource = self
        
        //timer = Timer.scheduledTimer(timeInterval: 1.0, target: self, selector: Selector("notification"), userInfo: nil, repeats: true)
        
       
            UNUserNotificationCenter.current().requestAuthorization(options: [.alert, .badge], completionHandler: {didAllow, error in})
       
        
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int
    {
        if tableView == self.prayer1TV{
        return(list1.count)
        }
        if tableView == self.prayer3TV{
            return(list3.count)
        }
        else{
            return(list2.count)
        }
    }
    
    
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell
    
    {
        if tableView == self.prayer1TV{
        let prayer1 = UITableViewCell(style: UITableViewCellStyle.default , reuseIdentifier: "prayer1")
        prayer1.textLabel?.text = list1[indexPath.row]
        return(prayer1)
        }
        if tableView == self.prayer3TV{
            let prayer3 = UITableViewCell(style: UITableViewCellStyle.default , reuseIdentifier: "prayer3")
            prayer3.textLabel?.text = list3[indexPath.row]
            return(prayer3)
        }
        else{
            let prayer2 = UITableViewCell(style: UITableViewCellStyle.default , reuseIdentifier: "prayer2")
                prayer2.textLabel?.text = list2[indexPath.row]
                return(prayer2)
            }
        
        
    }
    
    
    // delete button
    func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCellEditingStyle, forRowAt indexPath: IndexPath)
    {
        if editingStyle == UITableViewCellEditingStyle.delete && tableView == self.prayer1TV
        {
            list1.remove(at: indexPath.row)
            prayer1TV.reloadData()
            
            
        }
        if editingStyle == UITableViewCellEditingStyle.delete && tableView == self.prayer2TV
        {
            list2.remove(at: indexPath.row)
            self.prayer2TV.reloadData()
            
        }
        if editingStyle == UITableViewCellEditingStyle.delete && tableView == self.prayer3TV
        {
            list3.remove(at: indexPath.row)
            self.prayer3TV.reloadData()
            
        }
    }
    
    
    // reminder code
    /**
    var time = 30
   
    func notification(){
        
        time -= 1
        if(time == 0){
        let notification = UILocalNotification()
        
        notification.alertAction = "Back to app"
        notification.fireDate = Date(timeIntervalSinceNow: 0)
        
        UIApplication.shared.scheduleLocalNotification(notification)
            
            timer.invalidate()
    }
    }
    */
    
    
    
    
    
    
}

