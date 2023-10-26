//
//  registerview.swift
//  ToDoList2
//
//  Created by Rahul Verma on 14/07/23.
//

import SwiftUI

struct registerview: View {
    @StateObject var viewmodel = registerviewviewmodel()
    
    var body: some View {
        VStack{
            //header
            ZStack{
                RoundedRectangle(cornerRadius: 0)
                //                    .foregroundColor(Color.pink)
                    .fill(
                        LinearGradient(colors: [Color.orange,Color.pink], startPoint: .top, endPoint: .bottom)
                    )
                    .rotationEffect(Angle(degrees: -15))
                
                
                VStack{
                    Text("Register")
                        .font(.system(size: 60))
                        .bold()
                        .foregroundColor(Color.white)
                    
                    Text("Start Organizing your tasks")
                        .font(.system(size: 20))
                        .bold()
                        .foregroundColor(Color.white)
                }
                .padding(.top,40)
            }
            .frame(width:UIScreen.main.bounds.width*4,
                   height:300)
            .offset(y:-130)
            
            //register form
            Form{
                TextField("Your name", text:$viewmodel.name)
                    .textFieldStyle(RoundedBorderTextFieldStyle())
                TextField("Email Address", text:$viewmodel.email)
                    .textFieldStyle(RoundedBorderTextFieldStyle())
                SecureField("Password", text:$viewmodel.password)
                    .textFieldStyle(RoundedBorderTextFieldStyle())
                    
                
                
                Button{
                    viewmodel.register()
                } label: {
                    ZStack{
                        RoundedRectangle(cornerRadius: 10)
                            .foregroundColor(Color.green)
                        
                        Text("Create Account")
                            .bold()
                            .foregroundColor(Color.white)
                    }
                    .padding()
                }
                
            }
            Spacer()
        }
    }
    
    struct registerview_Previews: PreviewProvider {
        static var previews: some View {
            registerview()
        }
    }
}
