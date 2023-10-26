//
//  newitemview.swift
//  ToDoList2
//
//  Created by Rahul Verma on 14/07/23.
//

import SwiftUI

struct newitemview: View {
    
    @StateObject var viemodel = newitemviewviewmodel()
    var body: some View {
        VStack {
            Text("New Item")
                .font(.system(size: 32))
                .bold()
            
            Form {
                //title
                TextField("Title", text: $viemodel.title)
                    .textFieldStyle(DefaultTextFieldStyle())
                
                //duedate
                DatePicker("due date", selection: $viemodel.duedate)
                    .datePickerStyle(GraphicalDatePickerStyle())
                
                //button
                Button{
                    
                } label: {
                    ZStack{
                        RoundedRectangle(cornerRadius: 10)
                            .foregroundColor(Color.pink)
                        Text("Save")
                            .bold()
                            .foregroundColor(Color.white)
                    }
                }
            }
        }
    }
    
    struct newitemview_Previews: PreviewProvider {
        static var previews: some View {
            newitemview()
        }
    }
}
