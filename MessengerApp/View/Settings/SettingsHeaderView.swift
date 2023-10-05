//
//  SettingsHeaderView.swift
//  MessengerApp
//
//  Created by Zachary Rasmussen on 10/3/23.
//

import SwiftUI

struct SettingsHeaderView: View {
    var body: some View {
        HStack {
            Image("shp-1")
                .resizable()
                .scaledToFill()
                .frame(width: 64, height: 64)
                .clipShape(Circle())
                .padding(.leading)
            
            VStack(alignment: .leading, spacing: 4) {
                Text("Monkey d Luffy")
                    .font(.system(size: 18))
                    .foregroundColor(.black)
                
                Text("Available")
                    .foregroundColor(.gray)
                    .font(.system(size: 14))
            }
            Spacer()
        }
        .frame(height: 80)
        .background(Color.white)
    }
}
