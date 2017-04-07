//
//  wellspring.swift
//  Christian life Organiser
//
//  Created by Macbook Air on 06/04/2017.
//  Copyright © 2017 jc14ach. All rights reserved.
//
import UIKit

class wellspring: UIViewController {
    
    
    var favWellspring = ["Wellspring Church"]
    
    @IBAction func wellspringSwitch(_ sender: UISwitch) {
    
    
        
        
        
        if(sender.isOn == true){
            favWellspring[0] = "Wellspring Church"
            favChurchList.append(favWellspring[0])
            
            
        }
        else{
            
            //let i = bibleList.index(of: "James 1")
            favChurchList.remove(at: favChurchList.index(of: "Wellspring Church")!)
            //james[0] = ""
            
        }
        
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        favWellspring[0] = "Wellspring Church"
        favChurchList.append(favWellspring[0])
    }
}
