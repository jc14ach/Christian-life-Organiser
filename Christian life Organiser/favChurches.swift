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
    
    override func viewDidAppear(_ animated: Bool) {
        favChurchesTV.reloadData()
    }


}
