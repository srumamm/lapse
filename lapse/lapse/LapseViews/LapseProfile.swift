//
//  LapseProfile.swift
//  lapse
//
//  Created by Sruthy Mammen on 11/27/23.
//

import SwiftUI

struct LapseProfile: View {
    let customColor = Color(red: 42/255.0, green: 44/255.0, blue: 47/255.0)
    
    var body: some View {
        ScrollView {
            VStack(spacing: 20) {
                Image("pfpasf")
                    .resizable()
                    .scaledToFill()
                    .frame(width: 150, height: 160)
                    .clipShape(Circle())
                    .overlay(
                        Circle().stroke(Color.white, lineWidth: 2)
                    )
                    .padding(.bottom,20)
                    .offset(y:100)
                    .zIndex(1.0)
                
                
                RoundedRectangle(cornerRadius: 20)
                    .fill(customColor)
                    .frame(width: 400, height: 250)
                    .overlay(
                        VStack(spacing: 10) {
                            Text("Sruthy")
                                .font(.largeTitle)
                                .fontWeight(.bold)
                                .padding(.trailing, 250 )
                            Text("i <3 sunset pics")
                                .font(.system(size: 14))
                                .fontWeight(.light)
                                .padding(.trailing, 250 )
                            HStack(spacing: 10) {
                                BadgeView(text: "Gemini", emoji: "♊️")
                                BadgeView(text: "19", emoji: "🎂")
                                BadgeView(text: "UNC Chapel Hill", emoji: nil)
                                    .padding(.trailing, 100 )
                            }
                            HStack {
                                // Edit Details Button
                                Button(action: {}) {
                                    CustomButton(text: "Edit Details")
                                }
                                // Share Journal Button
                                Button(action: {}) {
                                    ShareJournalButton()
                                }
                            }
                        }
                            .foregroundColor(.white)
                            .padding(.all, 10)
                        
                    )
                
                FriendsView()
                AlbumView()
                SeeMonthView()
            }
            .padding(.all, 10)
        }
        .background(Color.black)
        .edgesIgnoringSafeArea(.all)
    }
}



#Preview {
    LapseProfile()
}

