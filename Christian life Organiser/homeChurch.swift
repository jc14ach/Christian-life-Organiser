//
//  homeChurch.swift
//  Christian life Organiser
//
//  Created by Macbook Air on 06/04/2017.
//  Copyright © 2017 jc14ach. All rights reserved.
//

import UIKit

class homeChurch: UIViewController {
    
    
    var favHome = ["Home Church"]
   
    
    @IBAction func homeSwitch(_ sender: UISwitch) {
        
        if(sender.isOn == true){
            favHome[0] = "Home Church"
            favChurchList.append(favHome[0])
            
            
        }
        else{
            
            //let i = bibleList.index(of: "James 1")
            favChurchList.remove(at: favChurchList.index(of: "Home Church")!)
            //james[0] = ""
            
        }

    
    
        
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        favHome[0] = "Home Church"
        favChurchList.append(favHome[0])
    }
    
}
