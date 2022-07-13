//
//  SignInView.swift
//  login&signUp
//
//  Created by Reenad gh on 14/12/1443 AH.
//

import SwiftUI

struct SignInView: View {
    
    @State var userName :String = ""
    @State var password :String = ""
    @State var mail :String = ""
    @State var confirmPassword :String = ""
    var body: some View {
        ZStack {
            VStack (spacing : 20){
                
                HStack() {
                    Text("Sign Up")
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
                
                TextField("Email address", text: $confirmPassword)
                    .padding()
                    .background(
                        Color(UIColor.systemGray5)
                    )
                    .cornerRadius(13)
                
                
                TextField("Passwoed", text: $password)
                    .padding()
                    .background(
                        Color(UIColor.systemGray5)
                    )
                    .cornerRadius(13)
                
                TextField("Confirm password", text: $mail)
                    .padding()
                    .background(
                        Color(UIColor.systemGray5)
                    )
                    .cornerRadius(13)
            }
            
                   .padding(.horizontal , 14)
                   .padding(.vertical , 20)
                   .padding(.bottom, 50)
                   .background(Color.white)
                   .cornerRadius(20)
    
            
            
            Button (action: {
                
            }, label: {
                
                Text("Sign Up ")
                    .frame(width: 270, height: 60)
                    .foregroundColor(.white)
                    .background(
                        LinearGradient(colors: [.blue , .pink], startPoint: .topLeading, endPoint: .bottomTrailing)
                    )
                    .cornerRadius(20)
                    .offset(y: 210)
            })
        }
        .padding()
   
        .shadow(color: Color.black.opacity(0.2), radius: 12, x: 10, y: 10)
        
}
}

struct SignInView_Previews: PreviewProvider {
    static var previews: some View {
        SignInView()
    }
}
