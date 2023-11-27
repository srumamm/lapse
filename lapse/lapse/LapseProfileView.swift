//
//  LapseProfileView.swift
//  lapse
//
//  Created by Sruthy Mammen on 11/29/23.
//

import Foundation

import SwiftUI

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
                Image(systemName: "arrow.right.circle")
                    .foregroundColor(.blue)
            }
        }
    }
}

struct Friend {
    let name: String
    let imageName: String?
}
