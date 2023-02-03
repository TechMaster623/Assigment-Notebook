//
//  ContentView.swift
//  Assigment Notebook
//
//  Created by Faiz Ali on 2/2/23.
//

import SwiftUI

struct ContentView: View {
    @ObservedObject var assignmentList = AssignmentList()
    var body: some View {
        NavigationView {
            List {
                ForEach(assignmentList.items) {
                    item in Text(item.description)
                    HStack {
                        VStack(alignment: .leading) {
                            Text(item.course)
                                .font(.headline)
                            Text(item.description)
                        }
                        Spacer()
                        Text(item.dueDate, style: .date)
                    }
                }
                .onMove { indices, newOffset in assignmentList.items.move(fromOffsets: indices, toOffset: newOffset)
                    }
                .onDelete { indexSet in assignmentList.items.remove(atOffsets: indexSet)
                }
                .navigationBarItems(leading: EditButton())
                }
            }
        }
        
    }

struct AssigmentItem: Identifiable {
    var id = UUID()
    var course = String()
    var description = String()
    var dueDate = Date()
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

