//
//  DetailInformationViewController.swift
//  Contacts
//
//  Created by SubZero on 17.04.2022.
//

import UIKit

class DetailInformationViewController: UIViewController {
    
    //MARK: - IBOutlets
    
    @IBOutlet var emailLabel: UILabel!
    @IBOutlet var phoneNumberLabel: UILabel!
    
    //MARK: Public properties
    var person: Person!

    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        title = person.fullName

        emailLabel.text = person.email
        phoneNumberLabel.text = person.phoneNumber
    }
    


}
