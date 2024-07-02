//
//  DatabaseService.swift
//  timeshield
//
//  Created by Breno R R on 02/07/2024.
//
import Foundation

struct DatabaseService {
    static let shared = DatabaseService()
    
    let socialCategoryToken = "socialCategoryToken"
    
    private init () {}
    
    func save(key: String, data: String) {
        if let encoded = try? JSONEncoder().encode<T>(data) {
            UserDefaults.standard.set(encoded, forKey: key)
        }
    }
    
    func load(key: String) -> String? {
        if let data = UserDefaults.standard.data(forKey: key) {
            if let decoded = try? JSONDecoder().decode(String.self, from: data) {
                return decoded
            }
            return nil
        }
        return nil
    }
}
