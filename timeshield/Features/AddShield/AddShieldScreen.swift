//
//  AddShieldScreen.swift
//  timeshield
//
//  Created by Breno R R on 02/07/2024.
//

import SwiftUI
import FamilyControls

struct AddShieldScreen: View {
    @ObservedObject var vm = ViewModel()
    
    let onAdd: () -> Void
    
    var body: some View {
            Form {
                
                Button {
                    vm.appPickerIsPresented = true
                } label: {
                    Text("Selected app")
                }.familyActivityPicker(isPresented: $vm.appPickerIsPresented, selection: $vm.selectedApp)
                    .onChange(of: vm.selectedApp) {
                        print(vm.selectedApp.applications.count)
                    }
                Section("Shields") {
                    Picker("Max time", selection: $vm.maxTime) {
                            ForEach(2..<200) {
                                Text("\($0) minutes")
                            }
                        }
                    Picker("Min time", selection: $vm.minTime) {
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


#Preview {
    AddShieldScreen {
        print("On save")
    }
}
