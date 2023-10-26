//
//  loginviewviewmodel.swift
//  ToDoList2
//
//  Created by Rahul Verma on 14/07/23.
//

import FirebaseAuth
import Foundation

class loginviewviewmodel: ObservableObject {
    @Published var email=""
    @Published var password=""
    @Published var errormessage=""
    
    init(){}
    func login(){
        guard validate() else{
            return
        }
        
        Auth.auth().signIn(withEmail: email, password: password)
    }
   private func validate()-> Bool{
        errormessage = ""
        guard !email.trimmingCharacters(in: .whitespaces).isEmpty, !password.trimmingCharacters(in: .whitespaces).isEmpty else{
            
            errormessage = "please fill all the required fields "
            
            return false
        }
        
        guard email.contains("@") && email.contains(".com") else{
            errormessage = "please enter a valid email"
            return false
        }
       
       return true
    }
     
}
