//
//  AppTileView.swift
//  timeshield
//
//  Created by Breno R R on 02/07/2024.
//
import SwiftUI

struct AppTileView: View {
    let app: AppInfo
    
    var body: some View {
        NavigationLink(destination: Text(app.name)) {
            VStack {
                Image(systemName: app.appImageName)
                    .resizable()
                    .scaledToFit()
                    .frame(width: 50, height: 50)
                    .padding(.top)
                Text(app.name)
                    .bold()
                    .font(.title2)
                    .padding(.top, 5)
                Text("Opened \(app.openCount)x times")
                    .font(.subheadline)
                    .padding(.top, 1)
                Text("and spent \(app.timeSpent) mins")
                    .font(.subheadline)
                    .padding(.bottom)
            }
            .frame(maxWidth: .infinity, maxHeight: .infinity)
            .background(Color.gray)
            .cornerRadius(20)
        }.buttonStyle(.plain)
            .foregroundColor(.white)
    }
}

#Preview {
    AppTileView(app: AppInfo(id: UUID(), name: "Instagram", openCount: 10, timeSpent: 230, appImageName: "camera"))
}
