//
//  HomeViewModel.swift
//  timeshield
//
//  Created by Breno R R on 02/07/2024.
//
import FamilyControls
import DeviceActivity

extension HomeScreen {
    class ViewModel {
        let center = AuthorizationCenter.shared
        let deviceActivityCenter = DeviceActivityCenter()
        
        func requestMonitoringAuthorization() -> Void {
            Task {
                do {
                    try await center.requestAuthorization(for: .individual)
                } catch(let error) {
                    print("Failed to authorize: \(error)")
                }
            }
        }
    }
}
