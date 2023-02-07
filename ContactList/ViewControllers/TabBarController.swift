//
//  ViewController.swift
//  ContactList
//
//  Created by Елена Логинова on 06.02.2023.
//

import UIKit

final class TabBarController: UITabBarController {
    
    override func viewDidLoad() {
        let contactList = Person.getContactList()
        
        if let firstTV = viewControllers?.first as? FirstTableViewController {
            firstTV.contactList = contactList
        } else if let secondTV = viewControllers?.last as? SecondTableViewController {
            secondTV.contactList = contactList
        }
    }
    
}

