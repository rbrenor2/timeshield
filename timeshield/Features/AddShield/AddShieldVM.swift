//
//  AddShieldVM.swift
//  timeshield
//
//  Created by Breno R R on 02/07/2024.
//
import Combine
import FamilyControls

extension AddShieldScreen {
    class ViewModel: ObservableObject {
        @Published var appPickerIsPresented: Bool = false
        @Published var selectedApp: FamilyActivitySelection = FamilyActivitySelection()
        @Published var maxTime: Int = 0
        @Published var minTime: Int = 120
        
        func save() {
            print("Save")
        }
    }
}
