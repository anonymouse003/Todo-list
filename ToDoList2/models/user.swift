//
//  user.swift
//  ToDoList2
//
//  Created by Rahul Verma on 14/07/23.
//

import Foundation
struct User: Codable{
    let id : String
    let name: String
    let email: String
    let joined : TimeInterval
}
