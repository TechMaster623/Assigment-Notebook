//
//  AssignmentList.swift
//  Assigment Notebook
//
//  Created by Faiz Ali on 2/3/23.
class AssignmentList: ObservableObject {
@Published var items : [AssigmentItem] {
    didSet {
        let encoder = JSONEncoder()
        if let encoded = try? encoder.encode(items) {
            UserDefaults.standard.set(encoded, forKey: "data")
        }
    }
}
init() {
    if let items = UserDefaults.standard.data(forKey: "data") {
        let decoder = JSONDecoder()
        if let decoded = try? decoder.decode([AssigmentItem].self, from: items) {
            self.items = decoded
            return
        }
    }
    items = []
}
}

    //[AssigmentItem(course: "Math", description: "Math Test", dueDate: Date()),
    //AssigmentItem(course: "English", description: "Essay", dueDate: Date()),
    //AssigmentItem(course: "History", description: "Read Text Book", dueDate: Date()),
                           //]

import Foundation
