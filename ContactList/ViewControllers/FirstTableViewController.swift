//
//  FirstTableViewController.swift
//  ContactList
//
//  Created by Елена Логинова on 06.02.2023.
//

import UIKit

final class FirstTableViewController: UITableViewController {
    
    
    var contactList: [Person]!

    override func viewDidLoad() {
        super.viewDidLoad()

    }

    // MARK: - Table view data source


    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        contactList.count
    }

    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "showDetails", for: indexPath)
        let person = contactList[indexPath.row]
        var content = cell.defaultContentConfiguration()
        content.text = person.fullName
        cell.contentConfiguration = content
        return cell
    }
    


    // MARK: - Navigation


    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if let indexPath = tableView.indexPathForSelectedRow {
            guard
                let detailVS = segue.destination as? DetailViewController else { return }
            detailVS.person = contactList[indexPath.row]
        }
    }

}
