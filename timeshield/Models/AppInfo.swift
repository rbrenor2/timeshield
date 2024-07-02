//
//  AppInfo.swift
//  timeshield
//
//  Created by Breno R R on 02/07/2024.
//
import Foundation

struct AppInfo: Identifiable {
    let id: UUID
    let name: String
    let openCount: Int
    let timeSpent: Int
    let appImageName: String
}
