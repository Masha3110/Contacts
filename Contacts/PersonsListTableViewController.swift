//
//  PersonsListTableViewController.swift
//  Contacts
//
//  Created by SubZero on 17.04.2022.
//

import UIKit

class PersonsListTableViewController: UITableViewController {
    
    var persons: [Person] = []


    // MARK: - Table view data source

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return persons.count
    }
    
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = tableView.dequeueReusableCell(withIdentifier: "Cell", for: indexPath)
        
        let person = persons[indexPath.row]
        cell.textLabel?.text = person.fullName
        
        return cell
    }
    
    // MARK: - Navigation
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if  let IndexPath = tableView.indexPathForSelectedRow {
            let detailInformationVC = segue.destination as! DetailInformationViewController
            detailInformationVC.person = persons[IndexPath.row]
        }
    }

    
}
