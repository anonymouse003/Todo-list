//
//  todolistitemview.swift
//  ToDoList2
//
//  Created by Rahul Verma on 14/07/23.
//

import SwiftUI

struct todolistview: View {
    @StateObject var viewmodel = todolistviewviewmodel()
     
    private let userId: String
    
    init(userId: String) {
        self.userId = userId
        
    }
    
    
    var body: some View {
        NavigationView{
            VStack{
                
            }
            .navigationTitle("To Do List")
            .toolbar {
                Button {
                    //action
                } label: {
                    Image(systemName: "plus")
                }
            }
            .sheet(isPresented: $viewmodel.showingnewiteview){
                newitemview()
            }
        }
    }
}

struct todolistitemsview_Previews: PreviewProvider {
    static var previews: some View {
        todolistview(userId: "")
    }
}
