//
//  ContentView.swift
//  login&signUp
//
//  Created by Reenad gh on 14/12/1443 AH.
//

import SwiftUI




struct ContentView: View {
    
    @State var showSignUpView : Bool = true
    var body: some View {
        
        
        
        ZStack {
            // MARK: - log in CARD
            
            VStack(alignment: .leading){
                // MARK: - log in HEADER
                
                HStack {
                    Text("Log in")
                        .font(.system(size: 40 , design: .rounded))
                        .fontWeight(.heavy)
                        .foregroundColor(.white)
                        .padding()
                    Spacer()
                }
                Spacer()
            }//VSTACK
            .frame(width: 500, height: 650)
            .background(
                LinearGradient(colors: [.blue , .pink], startPoint: .topLeading, endPoint: .bottomTrailing)
            )
            .cornerRadius(30)
            .scaledToFit()
            .offset(x :showSignUpView ? 275 : 245)
            .cornerRadius(13)
            .scaleEffect( showSignUpView ?  1 : 1.09)
            .animation(.linear, value:showSignUpView)
            .shadow(color: .blue.opacity(0.3), radius: 15, x:9 , y: 9 )
            .onTapGesture {

                showSignUpView = false
                
            }
            
            
            
            
            // MARK: - sign up CARD
            VStack(alignment: .trailing){
                // MARK: - sign up HEADER
                HStack {
                    Spacer()
                    
                    Text("Sign up")
                        .font(.system(size: 40 , design: .rounded))
                        .fontWeight(.heavy)
                        .foregroundColor(.white)
                        .padding()
                }
                Spacer()
            }//VSTACK
            .frame(width: 500, height: 650)
            .background(
                LinearGradient(colors: [.blue , .pink], startPoint: .topLeading, endPoint: .bottomTrailing)
            )
            .cornerRadius(30)
            .scaledToFit()
            .offset(x :showSignUpView ?  -245: -275)
            .cornerRadius(13)
            .scaleEffect( showSignUpView ?  1.09 : 1)
            .shadow(color: .blue.opacity(0.3), radius: 15, x:9 , y: 9 )
            .animation(.linear, value:showSignUpView)
            
            .onTapGesture {
                showSignUpView = true
                
            }
            
            // MARK: - Triangle arrow
            VStack{
                if(showSignUpView){
                    SignInView()
                        .padding(.horizontal , 60)
                        .offset(y : 20)
                }else{
                    LogInView()
                        .padding(.horizontal , 60)
                        .offset(y : -34)
                }
            }//VSTACK
            
            
        }//ZSTACK
        
        
        // MARK: - Triangle arrow
        .overlay(alignment : .center){
            Triangle()
                .frame(width: 75, height: 50)
                .foregroundColor(.white)
                .offset(x: showSignUpView ?  -100 : 100 ,  y: -215 )
                .animation(.linear, value:showSignUpView)
        }
        
        
        .onAppear(perform: {
            
            withAnimation(.linear){
                showSignUpView = false
                
            }
        })
   
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
