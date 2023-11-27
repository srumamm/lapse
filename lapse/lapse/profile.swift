//
//  profile.swift
//  lapse
//
//  Created by Sruthy Mammen on 11/27/23.
//

import Foundation

struct ProfileView: View {
    var body: some View {
        ZStack {
            // Black background
            Color.black.edgesIgnoringSafeArea(.all)

            // Profile picture in the middle
            VStack {
                Spacer()
                Image("your_profile_picture_filename")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame(width: 200, height: 200) // Adjust size as needed
                    .clipShape(Circle())
                    .overlay(
                        Circle().stroke(Color.white, lineWidth: 2)
                    )
                Spacer()
            }
        }
    }
}

struct ProfileView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
