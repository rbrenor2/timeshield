//
//  DeviceMonitoringExtension.swift
//  timeshield
//
//  Created by Breno R R on 02/07/2024.
//
import DeviceActivity
import ManagedSettings

class ShieldMonitor: DeviceActivityMonitor {
    let database = DatabaseService.shared
    
//    override func intervalDidStart(for activity: DeviceActivityName) {
//        super.intervalDidStart(for: activity)
//        let socialStore = ManagedSettingsStore(named: .social)
//        socialStore.clearAllSettings()
//    }
//    
//    override func intervalDidEnd(for activity: DeviceActivityName) {
//        super.intervalDidEnd(for: activity)
//        let socialStore = ManagedSettingsStore(named: .social)
//        let socialCategory = database.socialCategoryToken
//        socialStore.shield.applicationCategories = .specific([socialCategory])
//        socialStore.shield.webDomainCategories = .specific([socialCategory])
//    }
}

extension DeviceActivityName {
    static let daily = Self("daily")
}

extension ManagedSettingsStore.Name {
    static let social = Self("social")
}


