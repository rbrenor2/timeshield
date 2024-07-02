//
//  AddShieldScreen.swift
//  timeshield
//
//  Created by Breno R R on 02/07/2024.
//

import SwiftUI

struct AddShieldScreen: View {
    let onAdd: () -> Void
    @State var timeInMinutes: Int
    
    var body: some View {
        VStack {
            Form {
            Picker("Selected app", selection: $timeInMinutes) {
                    ForEach(2..<200) {
                        Text("\($0) minutes")
                    }
                }
            .pickerStyle(.navigationLink)
                Section("Shields") {
                    Picker("Max time", selection: $timeInMinutes) {
                            ForEach(2..<200) {
                                Text("\($0) minutes")
                            }
                        }
                    Picker("Min time", selection: $timeInMinutes) {
                            ForEach(2..<200) {
                                Text("\($0) minutes")
                            }
                        }
                }
            }.navigationTitle("Add app")
                .navigationBarTitleDisplayMode(.inline)
                .toolbarRole(.editor)
                .toolbar {
                    ToolbarItem(placement: .confirmationAction) {
                        Button(action: {
                            print("Added tapped")
                        }) {
                            Text("Add")
                        }
                    }
                }
        }
    }
}

#Preview {
    AddShieldScreen(onAdd: {
        print("Added tapped")
    }, timeInMinutes: 120)
}
