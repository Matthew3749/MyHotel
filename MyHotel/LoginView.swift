//
//  LoginView.swift
//  MyHotel
//
//  Created by Matthew Collins on 5/27/24.
//

import SwiftUI

struct LoginView: View {
    
    enum FocusedField {
        case roomNumber
        case lastName
    }
    
    @FocusState private var focusedField: FocusedField?
    @State private var roomNumber: String = ""
    @State private var lastname: String = ""
    @State private var showRoomNumberOverlay = true
    @State private var showLastNameOverlay = true

    var body: some View {
        VStack(spacing: 0) {
            Image(.myHotel)
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(width: 280, height: 280)
                .padding(.top, 30)
            
            Text("MyHotel")
                .font(.mhFont(size: 45, weight: .semiBold))
                .multilineTextAlignment(.center)
                .foregroundStyle(.mhText)
                .padding(.bottom, 4)
            
            Text("The Modern Day Hotel")
                .font(.mhFont(size: 23))
                .multilineTextAlignment(.center)
                .foregroundStyle(.mhSubtext)
                .padding(.bottom, 60)
            
            VStack(spacing: 30) {
                HStack(spacing: 20) {
                    Image(systemName: "door.right.hand.closed")
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        .frame(width: 28, height: 28)
                        .foregroundStyle(.mhText)
                    
                    ZStack {
                        TextField("", text: $roomNumber)
                            .focused($focusedField, equals: .roomNumber)
                            .textFieldStyle(.plain)
                            .onChange(of: roomNumber) { _, newValue in
                                withAnimation(.linear(duration: 0.1)) {
                                    showRoomNumberOverlay = newValue.isEmpty
                                }
                            }
                        
                        Text("Room Number")
                            .frame(maxWidth: .infinity, alignment: .leading)
                            .font(.mhFont(size: 20))
                            .opacity(showRoomNumberOverlay ? 1 : 0)
                            .offset(x: 2)
                    }
                }
                .foregroundStyle(.mhText)
                .padding(.leading, 30)
                .padding(.trailing, 10)
                .padding(.vertical, 15)
                .background {
                    Capsule()
                        .fill(.mhNavyBlueSecondary)
                        .stroke(.mhGold.opacity(0.8), lineWidth: 2)
                }
                .contentShape(Capsule())
                .onTapGesture {
                    focusedField = .roomNumber
                }
                
                HStack(spacing: 20) {
                    Image(systemName: "person.circle.fill")
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        .frame(width: 28, height: 28)
                        .foregroundStyle(.mhText)
                    
                    ZStack {
                        TextField("", text: $lastname)
                            .focused($focusedField, equals: .lastName)
                            .textFieldStyle(.plain)
                            .onChange(of: lastname) { _, newValue in
                                withAnimation(.linear(duration: 0.1)) {
                                    showLastNameOverlay = newValue.isEmpty
                                }
                            }
                        
                        Text("Last Name")
                            .frame(maxWidth: .infinity, alignment: .leading)
                            .font(.mhFont(size: 20))
                            .opacity(showLastNameOverlay ? 1 : 0)
                            .offset(x: 2)
                        
                    }
                }
                .foregroundStyle(.mhText)
                .padding(.leading, 30)
                .padding(.trailing, 10)
                .padding(.vertical, 15)
                .background {
                    Capsule()
                        .fill(.mhNavyBlueSecondary)
                        .stroke(.mhGold.opacity(0.8), lineWidth: 2)
                }
                .contentShape(Capsule())
                .onTapGesture {
                    focusedField = .lastName
                }
            }
            .padding(.horizontal, 25)
            .padding(.bottom, 50)

            Button(action: {}, label: {
                Text("Log In")
            })
            .foregroundStyle(.black)
            .frame(width:350, height:40)
            .background(.mhGold)
            .cornerRadius(7.0)
            
            Spacer()
        }
        .textFieldStyle(.roundedBorder)
        .frame(maxWidth: .infinity, maxHeight: .infinity)
        .background(Color.mhNavyBlue)
    }
}

#Preview {
    LoginView()
}
