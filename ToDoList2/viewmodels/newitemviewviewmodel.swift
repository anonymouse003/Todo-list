//
//  newitemviewviewmodel.swift
//  ToDoList2
//
//  Created by Rahul Verma on 14/07/23.
//

import Foundation

class newitemviewviewmodel : ObservableObject {
    
    @Published var title = ""
    @Published var duedate = Date()
    
    init() {}
}
