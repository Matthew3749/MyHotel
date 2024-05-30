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
    @State private var cardSize: CGSize = .zero

    var body: some View {
        ZStack {
            VStack {
                VStack(spacing: 5) {
                    Text("MyHotel")
                        .font(.mhFont(size: 45, weight: .semiBold))
                        .multilineTextAlignment(.center)
                        .foregroundStyle(.mhText)
                        .padding(.top, 20)
                    
                    Image(.myHotel)
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        .frame(width: 280, height: 280)
                }
                .frame(height: UIScreen.main.bounds.height - cardSize.height - Device.safeAreaVertical)
                
                Spacer()
            }
            .ignoresSafeArea(.keyboard)
            
            VStack {
                Spacer()
                
                VStack {
                    Text("The Modern Day Hotel")
                        .font(.mhFont(size: 25))
                        .multilineTextAlignment(.center)
                        .foregroundStyle(.mhSubtext)
                        .padding(.top, 20)
                        .padding(.bottom, 40)

                    VStack(spacing: 30) {
                        HStack(spacing: 20) {
                            Image(systemName: "door.right.hand.closed")
                                .resizable()
                                .aspectRatio(contentMode: .fit)
                                .frame(width: 26, height: 26)
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
                                    .opacity(showRoomNumberOverlay ? 1 : 0)
                                    .offset(x: 2)
                            }
                        }
                        .font(.mhFont(size: 17))
                        .foregroundStyle(.mhText)
                        .padding(.leading, 30)
                        .padding(.trailing, 9)
                        .padding(.vertical, 13)
                        .background {
                            RoundedRectangle(cornerRadius: 15)
                                .fill(.mhNavyBlue)
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
                                .frame(width: 26, height: 26)
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
                                    .opacity(showLastNameOverlay ? 1 : 0)
                                    .offset(x: 2)
                                
                            }
                        }
                        .font(.mhFont(size: 17))
                        .foregroundStyle(.mhText)
                        .padding(.leading, 30)
                        .padding(.trailing, 9)
                        .padding(.vertical, 13)
                        .background {
                            RoundedRectangle(cornerRadius: 15)
                                .fill(.mhNavyBlue)
                                .stroke(.mhGold.opacity(0.8), lineWidth: 2)
                        }
                        .contentShape(Capsule())
                        .onTapGesture {
                            focusedField = .lastName
                        }
                    }
                    .padding(.horizontal, 15)
                    .padding(.bottom, 20)
                    
                    Button(action: {}, label: {
                        Text("Check In")
                            .foregroundStyle(.black)
                            .frame(height: 40)
                            .frame(maxWidth: .infinity)
                            .background {
                                RoundedRectangle(cornerRadius: 7.0)
                                    .fill(.mhGold)
                            }
                    })
                    .padding(.horizontal)
                    .padding(.bottom, 25)
                    .padding(.top, 20)
                }
                .frame(maxWidth: .infinity)
                .padding(.horizontal, 30)
                .padding(.vertical, 20)
                .background {
                    RoundedRectangle(cornerRadius: 35.0)
                        .fill(.mhNavyBlueSecondary)
                        .shadow(color: Color.black.opacity(0.15), radius: 30)
                }
                .padding(.horizontal, 20)
                .padding(.top, 15)
                .background(
                    GeometryReader { proxy in
                        HStack {}
                            .onAppear {
                                withAnimation(.bouncy) {
                                    cardSize = proxy.size
                                }
                            }
                    }
                )
            }
        }
        .frame(maxWidth: .infinity, maxHeight: .infinity)
        .background {
            Color.mhNavyBlue
                .ignoresSafeArea(.all)
        }
    }
}

#Preview {
    LoginView()
}
