//
//  StatusViewModel.swift
//  MessengerApp
//
//  Created by Zachary Rasmussen on 10/3/23.
//

import SwiftUI

class StatusViewModel: ObservableObject {
    @Published var status: UserStatus = .notConfigured
    
    func updateStatus(_ status: UserStatus) {
        self.status = status
    }
}

enum UserStatus: Int, CaseIterable {
    case notConfigured
    case available
    case busy
    case school
    case movies
    case work
    case batteryLow
    case meeting
    case gym
    case sleeping
    case urgentCallsOnly
    
    var title: String {
        switch self {
            
        case .notConfigured: return "Click here to update your stats"
        case .available: return "Available"
        case .busy: return "Busy"
        case .school: return "At School"
        case .movies: return "At The Movies"
        case .work: return "At Work"
        case .batteryLow: return "Battery Low"
        case .meeting: return "In A Meeting"
        case .gym: return "At The Gym"
        case .sleeping: return "Sleeping"
        case .urgentCallsOnly: return "Urgent Calls Only"
            
        }
    }
}
