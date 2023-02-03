//
//  AddAssignmentView.swift
//  Assigment Notebook
//
//  Created by Faiz Ali on 2/3/23.
//

import SwiftUI

struct AddAssignmentView: View {
    @ObservedObject var assignmentList: AssignmentList
    @State private var course = ""
    @State private var description = ""
    @State private var dueDate = Date()
    @Environment(\.presentationMode) var presentationMode
    static let courses = ["Math","History","English"]
    var body: some View {
        NavigationView {
            Form {
                Picker("Course", selection: $course) {
                    ForEach(AddAssignmentView.courses, id: \.self) {
                        course in Text(course)
                    }
                }
            }
        }
    }
    
    
    
    struct AddAssignmentView_Previews: PreviewProvider {
        static var previews: some View {
            AddAssignmentView(assignmentList: AssignmentList())
        }
    }
    
}
