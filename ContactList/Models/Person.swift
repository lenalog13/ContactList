//
//  Contact.swift
//  ContactList
//
//  Created by Елена Логинова on 06.02.2023.
//

struct Person {
    let name: String
    let surname: String
    let phoneNumber: String
    let email: String
    
    var fullName: String {
        "\(name) \(surname)"
    }
}

extension Person {
    static func getContactList() -> [Person] {
        var data = DataStore()
        var contactList = [Person]()
        for _ in 1...data.names.count {
            let contact: Person
            (contact, data) = Person.getPerson(from: data)
            contactList.append(contact)
        }
        return contactList
    }
    
   static func getPerson(from data: DataStore) -> (Person, DataStore) {
        var newData = data
        let person = Person(
            name: newData.names.remove(at: Int.random(in: 0...newData.names.count-1)),
            surname: newData.surnames.remove(at: Int.random(in: 0...newData.surnames.count-1)),
            phoneNumber: newData.phoneNumbers.remove(at: Int.random(in: 0...newData.phoneNumbers.count-1)),
            email: newData.emails.remove(at: Int.random(in: 0...newData.emails.count-1))
        )
        
        return (person, newData)
    }
}

