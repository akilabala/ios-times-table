//
//  ViewController.swift
//  Times Tables
//
//  Created by Akila Balasubramanian on 11/17/15.
//  Copyright © 2015 Fun App. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDelegate {
    
    @IBOutlet var sliderValue: UISlider!
    
    @IBOutlet var table: UITableView!
    
    @IBAction func sliderMoved(sender: AnyObject) {
        table.reloadData()
    }
    
    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 12
    }
    
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        
        let cell = UITableViewCell(style: .Default, reuseIdentifier: "Cell")
        
        let timeTable = Int(sliderValue.value * 20)
        
        cell.textLabel?.text = String(timeTable * (indexPath.row + 1))
        
        return cell
        
    }
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

