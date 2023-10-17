//
//  LandmarkDetail.swift
//  Landmarks
//
//  Created by Fernanda Tachibana on 16/10/23.
//

import SwiftUI

struct LandmarkDetail: View {
    var landmark: Landmark
    
    var body: some View {
        GeometryReader { geometry in
            ScrollView {
                VStack {
                    MapView(coordinate: landmark.locationCoordinate)
                        .frame(height: 300)
                    CircleImage(image: landmark.image)
                        .offset(y: -130)
                        .padding(.bottom, -130)
                    VStack(alignment: .leading, content: {
                        Text(landmark.name)
                            .font(.title)
                        .foregroundColor(Color.orange)
                        HStack {
                            Text(landmark.park)
                                .font(.subheadline)
                            Spacer()
                            Text(landmark.state)
                                .font(.subheadline)
                        }
                        .font(.subheadline)
                        .foregroundStyle(.secondary)
                        
                        Divider()
                        
                        Text("About \(landmark.name)")
                            .font(.title2)
                        Text(landmark.description)
                    })
                    .padding()
                }
                .frame(width: geometry.size.width)
                .navigationTitle(landmark.name)
                .navigationBarTitleDisplayMode(.inline)
            }
        }
    }
}

#Preview {
    LandmarkDetail(landmark: landmarks[0])
}
