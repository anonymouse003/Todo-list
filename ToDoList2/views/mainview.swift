//
//  mainview.swift
//  ToDoList2
//
//  Created by Rahul Verma on 14/07/23.
//

import SwiftUI

struct mainview: View {
    @StateObject var viewmodel = mainviewviewmodel()
    
    var body: some View {
        if viewmodel.isSingedIn, !viewmodel.currentUserId.isEmpty {
            
        } else{
            loginview()
        }
        }
    
    @ViewBuilder
    var acoountview : some View {
        TabView{
            todolistview(userId: viewmodel.currentUserId)
                .tabItem{
                    Label("Home", systemImage: "house")
                    
                }
            
            profileview()
                .tabItem{
                    Label("profile", systemImage: "person.circle")
                    
                }
        }
    }
    }


struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        mainview()
    }
}
