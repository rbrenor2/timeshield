//
//  ContentView.swift
//  timeshield
//
//  Created by Breno R R on 02/07/2024.
//
import SwiftUI
import FamilyControls

struct HomeScreen: View {
    let vm = ViewModel()
    
    let apps: [AppInfo] = [
        AppInfo(id: UUID(),name: "Instagram", openCount: 2, timeSpent: 120, appImageName: "camera.on.rectangle"),
        AppInfo(id: UUID(),name: "Facebook", openCount: 0, timeSpent: 0, appImageName: "photo.on.rectangle"),
        AppInfo(id: UUID(),name: "Reddit", openCount: 1, timeSpent: 20, appImageName: "antenna.radiowaves.left.and.right")]
    
    let columns = [GridItem(.flexible()), GridItem(.flexible())]
    
    var body: some View {
        NavigationStack {
            ScrollView {
                LazyVGrid(columns: columns) {
                    AddAppTileView()
                    ForEach(apps) { app in
                        AppTileView(app: app)
                    }
                }
            }
            .navigationTitle("Time Shield")
//            .toolbar {
//                ToolbarItem(placement: .topBarLeading) {
//                    Text("Time Shield")
//                        .font(.title)
//                        .bold()
//                }
//                ToolbarItem(placement: .confirmationAction) {
//                    NavigationLink {
//                        AddShieldScreen(timeInMinutes: 120)
//                    } label: {
//                        Image(systemName: "plus")
//                            .padding(5)
//                            .background(.yellow)
//                            .cornerRadius(10.0)
//                            .foregroundColor(.white)
//                    }
//                }
//              }
        }.padding(.horizontal)
            .onAppear {
                vm.requestMonitoringAuthorization()
            }
    }
}

#Preview {
    HomeScreen()
}
