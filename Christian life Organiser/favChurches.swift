//
//  favChurches.swift
//  Christian life Organiser
//
//  Created by Macbook Air on 05/04/2017.
//  Copyright © 2017 jc14ach. All rights reserved.
//

import UIKit
var favChurchList = [""]

class favChurches: UIViewController, UITableViewDelegate, UITableViewDataSource {
    override func viewDidLoad() {
        super.viewDidLoad()
        
        favChurchList = Array(Set(favChurchList))
    }
    override func viewDidAppear(_ animated: Bool) {
        favChurchesTV.reloadData()
        favChurchList = Array(Set(favChurchList))
    }


    @IBOutlet weak var favChurchesTV: UITableView!
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int
    {
        return (favChurchList.count)
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell
        
    {
        let  favCell = UITableViewCell(style: UITableViewCellStyle.default , reuseIdentifier: "favCell")
        favCell.textLabel?.text = favChurchList[indexPath.row]
        return(favCell)
    }
    
  
    // delete button
    func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCellEditingStyle, forRowAt indexPath: IndexPath)
    {
        if editingStyle == UITableViewCellEditingStyle.delete
        {
            favChurchList.remove(at: indexPath.row)
            favChurchesTV.reloadData()
            
            
        }
    }
}
