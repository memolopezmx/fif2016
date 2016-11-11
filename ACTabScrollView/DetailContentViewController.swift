//
//  DetailContentViewController.swift
//  ACTabScrollView
//
//  Created by ginppian on 09/11/16.
//  Copyright © 2016 AzureChen. All rights reserved.
//

import UIKit

class DetailContentViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {

    @IBOutlet weak var tableView: UITableView!
    var algo = String()
    
    override func viewDidLoad() {
        super.viewDidLoad()

    }
    public func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int{
        return 1
    }
    public func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell{
        
        let cell = tableView.dequeueReusableCell(withIdentifier: "cellIdentifier", for: indexPath) as! DetailTableViewCell
        cell.labelEvento.text = "hola mundo"
        
        return cell
        
    }
    
}
