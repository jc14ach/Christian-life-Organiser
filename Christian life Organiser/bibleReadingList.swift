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
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        bibleList = Array(Set(bibleList))
    }
    
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
        bibleList = Array(Set(bibleList))
        bibleTV.reloadData()
        var count = bibleList.count
        jamesCount.text = ("James chapters" + String(count-1) + "/5")

    }
    func countProgress(){
    var count = bibleList.count
    jamesCount.text = ("James chapters" + String(count) + "/5")
    }


    // delete button
    func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCellEditingStyle, forRowAt indexPath: IndexPath)
    {
        if editingStyle == UITableViewCellEditingStyle.delete
        {
            bibleList.remove(at: indexPath.row)
            bibleTV.reloadData()
            
            
        }
    }

}

