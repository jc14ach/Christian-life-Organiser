//
//  james1.swift
//  Christian life Organiser
//
//  Created by Macbook Air on 05/04/2017.
//  Copyright © 2017 jc14ach. All rights reserved.
//


import UIKit

class james1: UIViewController {
    
    
    var james = ["",""]
    
    //@IBAction func test(_ sender: Any) {
        //bibleList.append("james")
   // }
    
    
    @IBAction func james1Switch(_ sender: UISwitch) {
        
       
        
        if(sender.isOn == true){
            james[0] = "James 1"
            bibleList.append(james[0])
            
            
            }
        else{
            if(james[0] == ""){
                
            }
            else{
                bibleList = Array(Set(bibleList))
            //let i = bibleList.index(of: "James 1")
            bibleList.remove(at: bibleList.index(of: "James 1")!)
            //james[0] = ""
            
            }
            
        }
    //override func viewDidLoad() {
        //super.viewDidLoad()
        //james[0] = ""
        //bibleList.append(james[0])
   // }

}
    
}
