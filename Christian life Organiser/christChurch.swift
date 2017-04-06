//
//  christChurch.swift
//  Christian life Organiser
//
//  Created by Macbook Air on 06/04/2017.
//  Copyright © 2017 jc14ach. All rights reserved.
//

import UIKit

class christChurch: UIViewController {
    
    
    var favChrist = ["Christ Church"]
    
    @IBAction func christSwitch(_ sender: UISwitch) {
        
        
        if(sender.isOn == true){
            favChrist[0] = "Christ Church"
            favChurchList.append(favChrist[0])
            
            
        }
        else{
            
            //let i = bibleList.index(of: "James 1")
            favChurchList.remove(at: favChurchList.index(of: "Christ Church")!)
            //james[0] = ""
            
        }
        
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        favChrist[0] = "Christ Church"
        favChurchList.append(favChrist[0])
    }
}
