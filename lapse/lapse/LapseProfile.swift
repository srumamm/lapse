//
//  LapseProfile.swift
//  lapse
//
//  Created by Sruthy Mammen on 11/27/23.
//

import SwiftUI


struct LapseProfile: View {
    @State private var selectedTab = 0
    private let imageNames = ["frands 1", "delta", "baes 1", "retreat"]

    var body: some View {
        ZStack {
            Color.black.edgesIgnoringSafeArea(.all)

            VStack {
                // Carousel of Images
                TabView(selection: $selectedTab) {
                    ForEach(imageNames.indices, id: \.self) { index in
                        Image(imageNames[index])
                            .resizable()
                            .aspectRatio(contentMode: .fill)
                            .frame(width: 400, height: 300)
                    }
                }
                .tabViewStyle(PageTabViewStyle(indexDisplayMode: .never))
                .frame(height: 200)
                .onAppear {
                    withAnimation(.easeInOut(duration: 1.0)) {
                        selectedTab = 0
                    }
                }

                Spacer()

                // Profile Picture with Gray Box and Text
                ZStack(alignment: .top) {
                    // Profile Picture
                    Image("pfpasf")
                        .resizable()
                        .aspectRatio(contentMode: .fill)
                        .frame(width: 200, height: 200)
                        .clipShape(Circle())
                        .overlay(
                            Circle().stroke(Color.white, lineWidth: 2)
                        )

                    // Gray Box with Text
                    VStack(alignment: .leading, spacing: 5) {
                        ZStack {
                            Color.gray.opacity(0.7)
                                .frame(height: 50)
                                .cornerRadius(10)
                                .padding(.horizontal, 20)
                        }

                        HStack {
                            Text("Sruthy")
                                .font(.headline)
                                .foregroundColor(.white)
                                .padding(.leading, 10)
                            Spacer()
                            Text("UNC")
                                .font(.subheadline)
                                .foregroundColor(.white)
                                .padding(.trailing, 10)
                        }
                    }
                    .padding(.top, -150) // Adjust this value to move the gray box closer to the carousel
                }
            }
        }
    }
}

struct LapseProfile_Previews: PreviewProvider {
    static var previews: some View {
        LapseProfile()
    }
}

