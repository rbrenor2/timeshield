//
//  ShieldMonitorService.swift
//  timeshield
//
//  Created by Breno R R on 02/07/2024.
//

import Foundation
import DeviceActivity

struct ShieldMonitorService {
    init() {
        let schedule = DeviceActivitySchedule(intervalStart: DateComponents(hour: 0, minute: 0), intervalEnd: DateComponents(hour: 23, minute: 59), repeats: true)

        let center = DeviceActivityCenter()
        
        do {
            try center.startMonitoring(.daily, during: schedule)
        } catch(let error) {
            print(error.localizedDescription)
        }
    }
}
