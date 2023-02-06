//
//  ViewController.swift
//  ContactList
//
//  Created by Елена Логинова on 06.02.2023.
//

import UIKit

class TabBarController: UITabBarController {
    
    let contactList = Person.getContactList()
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard let navigationVS = segue.destination as? UINavigationController else {
            return
        }
        if let firstTV = navigationVS.topViewController as? FirstTableViewController {
            firstTV.contactList = contactList
        } else if let secondTV = navigationVS.topViewController as? SecondTableViewController {
            secondTV.contactList = contactList
        }
    }


}

