//
//  ViewController.swift
//  NSTableView
//
//  Created by sycf_ios on 2016/12/1.
//  Copyright © 2016年 sycf_ios. All rights reserved.
//

import Cocoa

class ViewController: NSViewController ,NSTableViewDataSource{
    //tableView
    @IBOutlet weak var tableView: NSTableView!
    let person = Person()
    var data : [Person] = Array()
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    override var representedObject: Any? {
        didSet {
        // Update the view, if already loaded.
        }
    }
    //添加
    @IBAction func add(_ sender: Any) {
        data.append(person)
        tableView.reloadData()
    }
    //MARK: NSTalbeViewDatasource
    func numberOfRows(in tableView: NSTableView) -> Int {
        return data.count
    }
    func tableView(_ tableView: NSTableView, objectValueFor tableColumn: NSTableColumn?, row: Int) -> Any? {
        return data[row]
    }
}

