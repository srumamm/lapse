//
//  AlbumView.swift
//  lapse
//
//  Created by Sruthy Mammen on 11/30/23.
//

import SwiftUI

struct AlbumView: View {
    
    let customColor = Color(red: 42/255.0, green: 44/255.0, blue: 47/255.0)


    var body: some View {
        VStack {
            RoundedRectangle(cornerRadius: 20)
                .fill(customColor)
                .frame(width: 400, height: 200)
                .overlay(
                    VStack(alignment: .leading) {
                        Text("2 albums")
                            .font(.headline)
                            .padding(.top)
                            .frame(maxWidth: .infinity, alignment: .leading)
                            .padding(.leading, 15)
                            .foregroundColor(.white)
                        
                        HStack {
                            VStack(alignment: .leading) {
                                Image("") 
                                    .resizable()
                                    .scaledToFit()
                                    .frame(width: 100, height: 100)
                                Text("unc 🩵")
                                    .foregroundColor(.white)
                                    .font(.headline)
                                    .padding(.leading, 15)
                            }
                            .padding(.leading, 15)

                            VStack(alignment: .leading) {
                                Image("")
                                    .resizable()
                                    .scaledToFit()
                                    .frame(width: 100, height: 100)
                                Text("late nights 🌆")
                                    .foregroundColor(.white)
                                    .font(.headline)
                                    .padding(.leading, 15)
                            }
                        }
                    }
                    .padding([.leading, .top], 5)
                )
        }
    }
}
                

#Preview {
    AlbumView()
}
