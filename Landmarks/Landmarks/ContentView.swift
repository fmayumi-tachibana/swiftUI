//
//  ContentView.swift
//  Landmarks
//
//  Created by Fernanda Tachibana on 16/10/23.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack {
            MapView()
                .frame(height: 300)
            CircleImage()
                .offset(y: -130)
                .padding(.bottom, -130)
            VStack(alignment: .leading, content: {
                Text("Turtle rock")
                    .font(.headline)
                .foregroundColor(Color.orange)
                HStack {
                    Text("Joshua Tree National Park")
                        .font(.subheadline)
                    Spacer()
                    Text("California")
                        .font(.subheadline)
                }
                .font(.subheadline)
                .foregroundStyle(.secondary)
                
                Divider()
                
                Text("About Turtle Rock")
                    .font(.title2)
                Text("Descriptive text goes here.")
            })
            .padding()
            
            Spacer()
        }
    }
}

#Preview {
    ContentView()
}
