//
//  friendstes.swift
//  lapse
//
//  Created by Sruthy Mammen on 11/29/23.
//

import SwiftUI


struct FriendsView: View {
    let friends: [Friend] = [
        Friend(name: "Jennifer", imageName: "jennifer"),
        Friend (name: "Lucia", imageName: "lucia"),
        Friend (name: "Shreeya", imageName: "IMG_8384"),
        Friend (name: "Ellie", imageName: "ellie"), 
        Friend (name: "Haj", imageName: "hajar"),
        Friend (name: "Tiya", imageName: "tiya"),
        Friend (name: "Sarayu", imageName: "sarayu"),
        Friend (name: "Alison", imageName: "alison"),
        Friend (name: "Srinidhi", imageName: "srinidhi")
    ]
    let customColor = Color(red: 42/255.0, green: 44/255.0, blue: 47/255.0)

    var body: some View {
        RoundedRectangle(cornerRadius: 24)
            .fill(customColor)
            .frame(width: 400, height: 150)
            .overlay(
                VStack {
                    Text("25 friends")
                        .font(.headline)
                        .padding(.top)
                        .frame(maxWidth: .infinity, alignment: .leading)
                        .padding(.leading, 15)
                        .foregroundColor(.white)

                    ScrollView(.horizontal, showsIndicators: false) {
                        HStack(spacing: 15) {
                            ForEach(friends, id: \.name) { friend in
                                VStack {
                                    Image(friend.imageName!)
                                        .resizable()
                                        .scaledToFill()
                                        .frame(width: 70, height: 70)
                                        .clipShape(Circle())
                                    Text(friend.name)
                                        .font(.caption)
                                        .foregroundColor(.white)
                                }
                            }
                        }
                        .padding(.horizontal)
                    }
                }
            )
            .padding(.horizontal)
    }
}



#Preview {
    FriendsView()
}

