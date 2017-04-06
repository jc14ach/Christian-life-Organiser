//
//  forestTown.swift
//  Christian life Organiser
//
//  Created by Macbook Air on 06/04/2017.
//  Copyright © 2017 jc14ach. All rights reserved.
//

import UIKit

class forestTown: UIViewController {
    
    
    var favForest = ["Forest Town Church"]
    
    @IBAction func forestSwitch(_ sender: UISwitch) {
        
        if(sender.isOn == true){
            favForest[0] = "Forest Town Church"
            favChurchList.append(favForest[0])
            
            
        }
        else{
            
            //let i = bibleList.index(of: "James 1")
            favChurchList.remove(at: favChurchList.index(of: "Forest Town Church")!)
            //james[0] = ""
            
        }
        
        
        
        
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        favForest[0] = "Forest Town Church"
        favChurchList.append(favForest[0])
    }
    }
    
    
