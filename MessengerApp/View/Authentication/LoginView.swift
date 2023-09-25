//
//  LoginView.swift
//  MessengerApp
//
//  Created by Zachary Rasmussen on 9/25/23.
//

import SwiftUI

struct LoginView: View {
    var body: some View {
        NavigationView {
            VStack(alignment: .leading) {
                HStack { Spacer() }
                
                Text("Hello.")
                    .font(.largeTitle)
                    .bold()
                
                Text("Welcome Back")
                    .font(.largeTitle)
                    .bold()
                    .foregroundColor(.blue)
                
                VStack {
                    
                }
                
                Spacer()
            }
            .padding()
        }    }
}

struct LoginView_Previews: PreviewProvider {
    static var previews: some View {
        LoginView()
    }
}
