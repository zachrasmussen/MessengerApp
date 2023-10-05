//
//  EditProfileView.swift
//  MessengerApp
//
//  Created by Zachary Rasmussen on 10/3/23.
//

import SwiftUI

struct EditProfileView: View {
    @State private var fullname = "Monkey d Luffy"
    
    var body: some View {
        ZStack {
            Color(.systemGroupedBackground)
                .ignoresSafeArea()
            
            VStack(alignment: .leading, spacing: 44) {
                
                VStack {
                    // area for the profile img, edit button and text
                    HStack {
                        // this is for the profile img and edit button
                        VStack {
                            Image("shp-1")
                                .resizable()
                                .scaledToFill()
                                .frame(width: 64, height: 64)
                                .clipShape(Circle())
                            
                            Button(action: {
                                print("Change profile img here")
                            }, label: {
                                Text("Edit")
                            })
                        }
                        
                        Text("Enter your name or change your profile image")
                            .font(.system(size: 16))
                            .foregroundColor(.gray)
                            .padding([.bottom, .horizontal])
                    }
                    
                    Divider()
                        .padding(.horizontal)
                    
                    TextField("", text: $fullname)
                        .padding(8)
                }
                .padding()
                .background(Color.white)
                
                VStack(alignment: .leading) {
                    
                    Text("Status")
                        .padding()
                        .foregroundColor(.gray)
                    
                   NavigationLink(
                    destination: Text("Edit Status"),
                    label: {
                        HStack {
                            Text("At the movies")
                            
                            Spacer()
                            
                            Image(systemName: "chevron.right")
                                .foregroundColor(.gray)
                        }
                        .padding()
                        .background(Color.white)
                    })
                }
                
                Spacer()
            }
            .padding(.top)
        }
        .navigationBarTitleDisplayMode(.inline)
        .navigationTitle("Edit Profile")
    }
}

#Preview {
    EditProfileView()
}
