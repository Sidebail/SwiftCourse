//
//  TableViewController.swift
//  TableViewCustomCell
//
//  Created by Sujeet Lohan on 2019-07-17.
//  Copyright © 2019 Sujeet Lohan. All rights reserved.
//

import UIKit

var watches = ["apple", "fitbit", "samsung"]
var watchDesc = ["Apple wearable watch", "Fitbit fitness watch", "Samsung tracking watch"]
var myIndex = 0

class TableViewController: UITableViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

    }

    // MARK: - Table view data source


    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return watches.count
    }


    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath)
         cell.textLabel?.text = watches[indexPath.row]
        
        return cell

    } // end func

    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        myIndex = indexPath.row
        performSegue(withIdentifier: "segue", sender: self)
    }
    
}
