//
//  ContentView.swift
//  lapse
//
//  Created by Sruthy Mammen on 11/27/23.
//

import SwiftUI


struct ContentView: View {
    var body: some View {
        TabView {
            LapseProfile()
                .tabItem {
                    Image (systemName: "person.crop.circle")
                        .foregroundColor(.black)
                }

            CameraView()
                .tabItem {
                    Image(systemName: "camera.fill")
                }

            SeeMonthView()
                .tabItem {
                    Image(systemName: "3.square.fill")
                }
        }
        .background(.black)
    }
}

#Preview {
    ContentView()
}
