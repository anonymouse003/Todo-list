//
//  profileview.swift
//  ToDoList2
//
//  Created by Rahul Verma on 14/07/23.
//

import SwiftUI

struct profileview: View {
    @StateObject var viewmodel = todolistviewviewmodel()
    
    
    var body: some View {
        NavigationView{
            VStack{
                
            }
            .navigationTitle("Profile")
        }
    }
}

struct profileview_Previews: PreviewProvider {
    static var previews: some View {
        profileview()
    }
}

