//
//  CircleImage.swift
//  Landmarks
//
//  Created by Fernanda Tachibana on 16/10/23.
//

import SwiftUI

struct CircleImage: View {
    var body: some View {
        Image("turtle-rock")
            .clipShape(Circle())
            .overlay {
                Circle().stroke(.white, lineWidth: 4)
            }
            .shadow(radius: 7)
    }
}

#Preview {
    CircleImage()
}
