//
//  TabBarViewController.swift
//  Contacts
//
//  Created by SubZero on 17.04.2022.
//

import UIKit

class TabBarViewController: UITabBarController {
    
    let persons = Person.getContactList()

    override func viewDidLoad() {
        super.viewDidLoad()
        setupViewControllers(with: persons)

    }
    
    private func setupViewControllers(with persons: [Person]) {
        let personsListVC = viewControllers?.first as! PersonsListTableViewController
        let sectionVC = viewControllers?.last as! SectionTableViewController
        
        personsListVC.persons = persons
        sectionVC.persons = persons
    }

}
