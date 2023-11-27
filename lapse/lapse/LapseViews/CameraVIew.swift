//
//  CameraVIew.swift
//  lapse
//
//  Created by Sruthy Mammen on 11/30/23.
//

import SwiftUI

struct CameraView: View {
    var body: some View {
        VStack {
            Image("cameraview")
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(maxWidth: .infinity, maxHeight: .infinity)
        }
        .background(Color.black)
        .edgesIgnoringSafeArea(.all)
    }
}

#Preview {
    CameraView()
}
