//
//  Contact.swift
//  ContactList
//
//  Created by Елена Логинова on 06.02.2023.
//

struct Contact {
    let name: String
    let surname: String
    let phoneNumber: Int
    let email: String
    
    var fullName: String {
        "\(name) \(surname)"
    }
}

extension Contact {
    static func getContactList(to quantity: Int) -> [Contact] {
        var contactList = [Contact]()
        for _ in 1...quantity {
            contactList.append(Contact.getContact())
        }
        return contactList
    }
    
    static func getContact() -> Contact {
        Contact(
            name: names[Int.random(in: 0...names.count-1)],
            surname: surnames[Int.random(in: 0...surnames.count-1)],
            phoneNumber: phoneNumbers[Int.random(in: 0...phoneNumbers.count-1)],
            email: emails[Int.random(in: 0...emails.count-1)]
        )
    }
}

