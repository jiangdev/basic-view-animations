//
//  PuppyTableViewController.swift
//  PuppyAnimation
//
//  Created by JIANG, DARREL [AG/1000] on 10/11/17.
//  Copyright © 2017 JIANG, DARREL [AG/1000]. All rights reserved.
//

import UIKit

class PuppyTableViewController: UITableViewController {
    override func viewDidLoad() {
        super.viewDidLoad()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    // MARK: - Table view data source

    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        self.animateTable()
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return 10
    }

    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "Puppy Cell", for: indexPath)
        cell.textLabel?.text = "Puppy \(indexPath.row+1)"

        return cell
    }
 
    func animateTable() {
        tableView.reloadData()
        
        let cells = tableView.visibleCells
        let tableHeight: CGFloat = tableView.bounds.size.height
        
        var index = 0
        
        for cell in cells {
            let cell: UITableViewCell = cell as UITableViewCell
            UIView.animate(withDuration: 1.5, delay: 0.05 * Double(index), usingSpringWithDamping: 0.8, initialSpringVelocity: 0, options:[.allowUserInteraction], animations: {
                cell.transform = CGAffineTransform(translationX: 0, y: -tableHeight)
            }, completion: nil)
            index += 1
        }
    }
    
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {

    }
}