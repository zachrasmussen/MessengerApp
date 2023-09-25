//
//  RegistrationView.swift
//  MessengerApp
//
//  Created by Zachary Rasmussen on 9/25/23.
//

import SwiftUI

struct RegistrationView: View {
    var body: some View {
        VStack(alignment: .leading) {
            Text("Hello.")
                .font(.largeTitle)
                .bold()
            
            Text("Welcome Back")
                .font(.largeTitle)
                .bold()
                .foregroundColor(.blue)
        }
    }
}

struct RegistrationView_Previews: PreviewProvider {
    static var previews: some View {
        RegistrationView()
    }
}
