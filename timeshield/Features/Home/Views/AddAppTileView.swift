//
//  AddAppTileView.swift
//  timeshield
//
//  Created by Breno R R on 02/07/2024.
//

import SwiftUI

struct AddAppTileView: View {
    var body: some View {
        NavigationLink(destination:
        AddShieldScreen(onAdd: {
            print("On save")
        })
        ) {
            VStack {
                Image(systemName: "plus")
                    .resizable()
                    .scaledToFit()
                    .frame(width: 50, height: 50)
                    .padding(.top)
                Text("Add new app")
                    .bold()
                    .font(.title2)
                    .padding(.top, 5)
            }
            .frame(maxWidth: .infinity, maxHeight: .infinity)
            .background(.yellow)
            .cornerRadius(50)
        }.buttonStyle(.plain)
            .foregroundColor(.white)
    }
}

#Preview {
    AddAppTileView()
}
