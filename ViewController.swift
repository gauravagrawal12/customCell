//
//  ViewController.swift
//  Day16customcell
//
//  Created by Felix 09 on 29/08/19.
//  Copyright © 2019 Felix. All rights reserved.
//

import UIKit

class ViewController: UIViewController,UITableViewDataSource {
    
    var startarray = ["math","science","english","hindi","biology"]
    var endarray = ["100","200","300","400","510"]
    

    
    @IBAction func show(_ sender: UIButton) {
        //let cellForword = storyboard?.instantiateInitialViewController(withidentifier: "NextViewController") as! NextViewController
       // navigationController?.pushViewController(next as! UIViewController, animated: true)
    }
    
    
    @IBAction func totalshow(_ sender: UIButton) {
    }
    
   
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return startarray.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell") as! TableViewCell
        cell.firstNameLabel.text = startarray[indexPath.row]
        cell.lastNameLabel.text = endarray[indexPath.row]
        return cell
    }
    
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

