//
//  DetailViewController.swift
//  ContactList
//
//  Created by Елена Логинова on 07.02.2023.
//

import UIKit

final class DetailViewController: UIViewController {
    
    @IBOutlet var phoneLabel: UILabel?
    @IBOutlet var emailLabel: UILabel?
    
    var person: Person!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        title = person.fullName
        phoneLabel?.text = "Phone: \(person.phoneNumber)"
        emailLabel?.text = "E-mail: \(person.email)"
    }
    
    
    
    
}
