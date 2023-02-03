//
//  AssignmentList.swift
//  Assigment Notebook
//
//  Created by Faiz Ali on 2/3/23.
//
class AssignmentList: ObservableObject {
    @Published var items =
    [AssigmentItem(course: "Math", description: "Math Test", dueDate: Date()),
    AssigmentItem(course: "English", description: "Essay", dueDate: Date()),
    AssigmentItem(course: "History", description: "Read Text Book", dueDate: Date()),
                           ]
}
import Foundation
