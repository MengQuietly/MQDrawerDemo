//
//  MQTableMainController.swift
//  MQDrawerDemo
//
//  Created by mengmeng on 16/8/1.
//  Copyright © 2016年 mengQuietly. All rights reserved.
//

import UIKit

class MQTableMainController: UITableViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }

    // MARK: - Table view data source
    override func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 15
    }

    
    override func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        let ID = "Cell"
        let cell = tableView.dequeueReusableCellWithIdentifier(ID) ?? UITableViewCell(style: UITableViewCellStyle.Default, reuseIdentifier: ID)
        cell.textLabel?.text = "我是 \(indexPath.row)"
        return cell
    }
}
