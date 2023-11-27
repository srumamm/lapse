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
                    // Gray Box and Text
                    RoundedRectangle(cornerRadius: 20)
                        .fill(Color.gray)
                        .frame(width: 400, height: 300)
                        .overlay(
                            VStack(spacing: 0) {
                                Text("Sruthy")
                                    .font(.largeTitle)
                                    .fontWeight(.bold)
                                    .padding(.top, 20)
                                    .padding(.leading, 10)
                                    .padding(.bottom, 10)
                                    .frame(maxWidth: .infinity, alignment: .leading)

                                Text("i <3 sunset pics")
                                    .font(.system(size: 14))
                                    .fontWeight(.light)
                                    .padding(.leading, 10)
                                    .frame(maxWidth: .infinity, alignment: .leading)

                                HStack(spacing: 10) {
                                    BadgeView(text: "Gemini", emoji: "♊️")
                                    BadgeView(text: "19", emoji: "🎂")
                                    BadgeView(text: "UNC Chapel Hill", emoji: nil)
                                }
                                .padding(.top, 10)
                                .padding(.trailing,120)
                            
                                
                                HStack {
                                    // Edit Details Button
                                    Button(action: {
                                        // Add your action for the "Edit Details" button
                                    }) {
                                        CustomButton(text: "Edit Details")
                                    }
                                    

                                    // Share Journal Button
                                    Button(action: {
                                        // Add your action for the "Share Journal" button
                                    }) {
                                        ShareJournalButton()
                                    }
                                }
                                .padding(.top, 10)
                            }
                            .foregroundColor(.white)
                        )
                        .offset(y: -250)

                    // Profile Picture
                    Image("pfpasf")
                        .resizable()
                        .aspectRatio(contentMode: .fill)
                        .frame(width: 150, height: 160)
                        .clipShape(Circle())
                        .overlay(
                            Circle().stroke(Color.white, lineWidth: 2)
                        )
                        .offset(y: -300)
                }
            }
        }
    }
}

struct BadgeView: View {
    let text: String
    let emoji: String?

    var body: some View {
        ZStack {
            RoundedRectangle(cornerRadius: 30)
                .fill(Color.black)
                .frame(width: emoji != nil ? 70 : 100, height: 30)
            HStack(spacing: 2) {
                Text(text)
                    .font(.system(size: 10))
                    .fontWeight(.bold)
                    .foregroundColor(.white)
                if let emoji = emoji {
                    Text(emoji)
                        .font(.system(size: 12))
                        .foregroundColor(.white)
                }
            }
        }
    }
}

struct CustomButton: View {
    let text: String

    var body: some View {
        ZStack {
            RoundedRectangle(cornerRadius: 10)
                .fill(Color.black)
                .frame(width: 170, height: 50)
            Text(text)
                .font(.system(size: 14))
                .fontWeight(.bold)
                .foregroundColor(.white)
        }
    }
}

struct ShareJournalButton: View {
    var body: some View {
        ZStack {
            RoundedRectangle(cornerRadius: 10)
                .fill(Color.black)
                .frame(width: 200, height: 50)
            HStack {
                Text("Share Journal")
                    .font(.system(size: 14))
                    .fontWeight(.bold)
                    .foregroundColor(.blue)
                Image(systemName: "arrow.right.circle") // You can customize the arrow icon
                    .foregroundColor(.blue)
            }
        }
    }
}



struct LapseProfile_Previews: PreviewProvider {
    static var previews: some View {
        LapseProfile()
    }
}

