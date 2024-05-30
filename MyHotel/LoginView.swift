//
//  LoginView.swift
//  MyHotel
//
//  Created by Matthew Collins on 5/27/24.
//

import SwiftUI

extension Color {
    static let navyBlue = Color(red: 0.11764706 , green: 0.1607843, blue: 0.28235295)
}

struct LoginView: View {
    
    @State private var email: String = ""
    @State private var password: String = ""
    @State private var signUp = true
    @State private var forgotPassword = true
    
    var body: some View {
        ZStack{
            Color.navyBlue
            VStack{
                Image(.myHotel)
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame(width: 300, height: 300)
                Text("Welcome To MyHotel")
                    .font(.system(size: 40))
                    .padding(.horizontal, 10)
                TextField("Room Number", text: $email)
                    .padding(.horizontal, 20)
                TextField("Last Name", text: $password)
                    .padding(.horizontal, 20)
                
                Button(action: {}, label: {
                    Text("Log In")
                })
                .foregroundStyle(.black)
                .frame(width:350, height:40)
                .background(.pink)
                .cornerRadius(7.0)
                
            }
            .textFieldStyle(.roundedBorder)
            .frame(maxWidth: .infinity, maxHeight: .infinity)
            
        }
        .ignoresSafeArea()
    }
}

#Preview {
    LoginView()
}
