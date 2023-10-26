//
//  registerviewviewmodel.swift
//  ToDoList2
//
//  Created by Rahul Verma on 14/07/23.
//

import FirebaseAuth
import FirebaseFirestore
import Foundation
class registerviewviewmodel : ObservableObject{
    @Published var email=""
    @Published var password=""
    @Published var name=""
    
    init(){}
    
    func register (){
        guard validate() else{
            return
        }
        Auth.auth().createUser(withEmail: email, password: password){[weak self] result, error in
            guard let userId = result?.user.uid else{
                return
            }
            self?.insertUserRecord(id: userId)
            
        }
        
    }
    private func insertUserRecord(id: String){
        let newUser = User(id: id,
                         name : name,
                         email: email,
                         joined: Date().timeIntervalSince1970)
        
        let db = Firestore.firestore()
        db.collection("users")
            .document(id)
            .setData(newUser.asDictionary())
            
            
        
    }
    
    private func validate () -> Bool{
        guard !name.trimmingCharacters(in: .whitespaces).isEmpty,
              !email.trimmingCharacters(in: .whitespaces).isEmpty,
              !password.trimmingCharacters(in: .whitespaces).isEmpty else {
            return false
        }
        
        guard email.contains("@") && email.contains(".com") else {
            return false
        }
        
        guard password.count>=8 else {
            return false
        }
        return true
    }
}

