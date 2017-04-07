//
//  SoulSurvivor.swift
//  Christian life Organiser
//
//  Created by Macbook Air on 07/04/2017.
//  Copyright © 2017 jc14ach. All rights reserved.
//

import UIKit

class SoulSurvivor: UIViewController {
    
    
    var favSoul = ["Soul Survivor"]
    
    @IBAction func wellspringSwitch(_ sender: UISwitch) {
        
        
        
        
        
        if(sender.isOn == true){
            favSoul[0] = "Soul Survivor"
            favChurchList.append(favSoul[0])
            
            
        }
        else{
            
            //let i = bibleList.index(of: "James 1")
            favChurchList.remove(at: favChurchList.index(of: "Soul Survivor")!)
            //james[0] = ""
            
        }
        
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        favSoul[0] = "Soul Survivor"
        favChurchList.append(favSoul[0])
    }
}

