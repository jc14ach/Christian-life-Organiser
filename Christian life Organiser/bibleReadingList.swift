//
//  bibleReadingList.swift
//  Christian life Organiser
//
//  Created by Macbook Air on 05/04/2017.
//  Copyright © 2017 jc14ach. All rights reserved.
//

import UIKit
var bibleList = [""]

class bibleReadingList: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    
    
    
    @IBOutlet weak var jamesCount: UILabel!
    @IBOutlet weak var bibleTV: UITableView!
    
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int
    {
            return (bibleList.count)
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell
        
    {
        let  readingList = UITableViewCell(style: UITableViewCellStyle.default , reuseIdentifier: "readingList")
        readingList.textLabel?.text = bibleList[indexPath.row]
        return(readingList)
    }
    
    override func viewDidAppear(_ animated: Bool) {
        bibleTV.reloadData()
    }
    func countProgress(){
    var count = 0
    jamesCount.text = ("James chapters" + String(count) + "/5")
    }
}
