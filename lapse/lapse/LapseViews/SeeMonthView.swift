//
//  SeeMonthView.swift
//  lapse
//
//  Created by Sruthy Mammen on 11/30/23.
//

import SwiftUI


struct SeeMonthView: View {

    var body: some View {
        ZStack(alignment: .bottomTrailing) {
            Image("domfike")
                .resizable()
                .aspectRatio(contentMode: .fit)
                .cornerRadius(55)
                .frame(width: 500, height: 500)


            Text("November")
                .font(.custom("Zapfino", size: 30))
                .foregroundColor(.white)
                .padding(.trailing, 80)
        }
    }
}

#Preview {
    SeeMonthView()
}


