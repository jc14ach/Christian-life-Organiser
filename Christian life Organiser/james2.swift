//
//  james2.swift
//  Christian life Organiser
//
//  Created by Macbook Air on 05/04/2017.
//  Copyright © 2017 jc14ach. All rights reserved.
//

import UIKit

class james2: UIViewController {
    var james2 = ["James 2"]
    @IBAction func james2Switch(_ sender: UISwitch) {
        
        if(sender.isOn == true){
            james2[0] = "James 2"
            bibleList.append(james2[0])
            
            
        }
        else{
            
            //let i = bibleList.index(of: "James 1")
            bibleList.remove(at: bibleList.index(of: "James 2")!)
            //james[0] = ""
        
        }
        
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        james2[0] = "James 2"
        bibleList.append(james2[0])
    }
    }

    
