//
//  SettingsView.swift
//  MessengerApp
//
//  Created by Zachary Rasmussen on 9/28/23.
//

import SwiftUI

struct SettingsView: View {
    var body: some View {
        ZStack {
            Color(.systemGroupedBackground)
                .ignoresSafeArea()
            
            VStack(spacing: 32) {
                NavigationLink(
                    destination: EditProfileView(),
                    label: { SettingsHeaderView() })
                            .padding(.top)
                
                VStack(spacing: 1) {
                    ForEach(SettingsCellViewModel.allCases, id: \.self) { viewModel in
                        SettingsCell(viewModel: viewModel)
                    }
                }
                
                Button(action: /*@START_MENU_TOKEN@*/{}/*@END_MENU_TOKEN@*/, label: {
                    Text("Log Out")
                        .foregroundColor(.red)
                        .font(.system(size: 16, weight: .semibold))
                        .frame(width: UIScreen.main.bounds.width, height: 50)
                        .background(Color.white)
                })
            
                Spacer()
            }
        }
        
    }
}

#Preview {
    SettingsView()
}


