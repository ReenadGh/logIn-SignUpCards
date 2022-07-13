//
//  LogInView.swift
//  login&signUp
//
//  Created by Reenad gh on 14/12/1443 AH.
//

import SwiftUI

struct LogInView: View {
    
    @State var userName :String = ""
    @State var password :String = ""

    var body: some View {
        ZStack {
            VStack (spacing : 20){
                
                HStack() {
                    Text("Log In")
                        .font(.largeTitle)
                        .foregroundColor(.blue)
                        .fontWeight(.heavy)
                    Spacer()
                }
                .padding(.horizontal , 10)
                TextField("User Name", text: $userName)
                    .padding()
                    .background(
                        Color(UIColor.systemGray5)
                    )
                    .cornerRadius(13)
                
                TextField("Password", text: $password)
                    .padding()
                    .background(
                        Color(UIColor.systemGray5)
                    )
                    .cornerRadius(13)
                
                
                Button (action: {
                    
                }, label: {
                    
                    Text("forget your password ? ")
                     
                    
                })
                
            }
                   .padding(.horizontal , 14)
                   .padding(.vertical , 20)
                   .padding(.bottom, 50)
                   .background(Color.white)
                   .cornerRadius(20)
 
            Button (action: {
                
            }, label: {
                
                Text("Log in ")
                    .frame(width: 270, height: 60)
                    .foregroundColor(.white)
                    .background(
                        LinearGradient(colors: [.blue , .pink], startPoint: .topLeading, endPoint: .bottomTrailing)
                    )
                    .cornerRadius(20)
                    .offset(y: 160)
            })
       
        }
        .padding()
   
        .shadow(color: Color.black.opacity(0.2), radius: 12, x: 10, y: 10)
        
}
    
}

struct LogInView_Previews: PreviewProvider {
    static var previews: some View {
        LogInView()
    }
}
