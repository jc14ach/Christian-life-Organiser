//
//  ChristFirst.swift
//  Christian life Organiser
//
//  Created by Macbook Air on 06/04/2017.
//  Copyright © 2017 jc14ach. All rights reserved.
//

import UIKit

class ChristFirst: UIViewController {
    
    
    var favChristFIrst = ["Christ First"]
    
    @IBAction func ChristFirstSwitch(_ sender: UISwitch) {
    
        
        
        if(sender.isOn == true){
            favChristFIrst[0] = "Christ First"
            favChurchList.append(favChristFIrst[0])
            
            
        }
        else{
            
            //let i = bibleList.index(of: "James 1")
            favChurchList.remove(at: favChurchList.index(of: "Christ First")!)
            //james[0] = ""
            
        }
        
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        favChristFIrst[0] = "Christ First"
        favChurchList.append(favChristFIrst[0])
    }
}
