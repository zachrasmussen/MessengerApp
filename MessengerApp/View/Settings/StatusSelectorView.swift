//
//  StatusSelectorView.swift
//  MessengerApp
//
//  Created by Zachary Rasmussen on 10/3/23.
//

import SwiftUI

struct StatusSelectorView: View {
    @ObservedObject var viewModel = StatusViewModel()
   
    var body: some View {
        ZStack {
            Color(.systemGroupedBackground)
                .ignoresSafeArea()
            
            ScrollView {
                VStack(alignment: .leading) {
                    Text("CURRENTLY SET TO")
                        .foregroundColor(.gray)
                        .padding()
                    
                    StatusCell(status: viewModel.status)
                    
                    Text("SELECT YOUR STATUS")
                        .foregroundColor(.gray)
                        .padding()
                    
                    ForEach(UserStatus.allCases.filter({ $0 != .notConfigured }),
                            id: \.self) { status in
                        Button(action: {
                            viewModel.updateStatus(status)
                        }, label: {
                            StatusCell(status: status)
                        })                    }
                }
            }
        }
    }
}

#Preview {
    StatusSelectorView()
}

struct StatusCell: View {
    let status: UserStatus
    
    var body: some View {
        HStack {
            Text(status.title)
                .foregroundColor(.black)
            Spacer()
        }
        .frame(height: 56)
        .padding(.horizontal)
        .background(Color.white)
    }
}
