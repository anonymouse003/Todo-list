//
//  mainviewviewmodel.swift
//  ToDoList2
//
//  Created by Rahul Verma on 14/07/23.
//

import FirebaseAuth
import Foundation

class mainviewviewmodel : ObservableObject{
    @Published var currentUserId: String = ""
    private var handler: AuthStateDidChangeListenerHandle?
    
    init() {
        self.handler = Auth.auth().addStateDidChangeListener{ [weak self] _, user in
            DispatchQueue.main.async {
                self?.currentUserId = user?.uid ?? ""
            }
            
            
        }
    }
    public var isSingedIn : Bool {
        return Auth.auth().currentUser !=  nil
    }
}
