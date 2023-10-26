//
//  loginview.swift
//  ToDoList2
//
//  Created by Rahul Verma on 14/07/23.
//

import SwiftUI


struct loginview: View {
    @StateObject var viewmodel = loginviewviewmodel()
    var body: some View {
        NavigationView {
            VStack{
                //header
                ZStack{
                    RoundedRectangle(cornerRadius: 0)
                    //                    .foregroundColor(Color.pink)
                        .fill(
                            LinearGradient(colors: [Color.blue,Color.pink], startPoint: .top, endPoint: .bottom)
                        )
                        .rotationEffect(Angle(degrees: 15))
                    
                    
                    VStack{
                        Text("To Do List")
                            .font(.system(size: 60))
                            .bold()
                            .foregroundColor(Color.white)
                        
                        Text("Get Things Done")
                            .font(.system(size: 30))
                            .bold()
                            .foregroundColor(Color.white)
                    }
                    .padding(.top,40)
                }
                .frame(width:UIScreen.main.bounds.width*3,
                       height:300)
                .offset(y:-100)
                
                //login form
                Form{
                    
                    if !viewmodel.errormessage.isEmpty {
                        Text(viewmodel.errormessage)
                            .foregroundColor(Color.red)
                        
                    }
                    TextField("Email Address", text:$viewmodel.email)
                        .textFieldStyle(RoundedBorderTextFieldStyle())
                    SecureField("Password", text:$viewmodel.password)
                        .textFieldStyle(RoundedBorderTextFieldStyle())
                    
                    
                    Button{
                        viewmodel.login()
                        
                    } label: {
                        ZStack{
                            RoundedRectangle(cornerRadius: 10)
                                .foregroundColor(Color.blue)
                            
                            Text("Log In")
                                .bold()
                                .foregroundColor(Color.white)
                            
                        }
                    }
                    
                }
                
                
                
                
                
                
                //create an account
                VStack{
                    Text("New user?")
                    
                        
                    NavigationLink("Create An Account", destination: registerview())
                        

                    
                }
                .padding(.bottom,50)
                Spacer()
            }
        }
        
    }
}
struct loginview_Previews: PreviewProvider {
    static var previews: some View {
        loginview()
    }
}

