//
//  ContentView.swift
//  Magic
//
//  Created by Ehsan Rahimi on 2/17/24.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        ZStack {
            Image(.image1)
                .resizable()
                .aspectRatio(contentMode: .fill)
                .frame(height: 300)
                .clipShape(RoundedRectangle(cornerRadius: 20, style: .continuous))
            VStack {
                Text("modern architecture, an isometric tiny house, cute illustration, minimalist, vector art, night view")
                    .font(.subheadline)

                HStack(spacing: 8.0) {
                    VStack(alignment: .leading) {
                        Text("Size")
                            .foregroundStyle(Color.secondary)

                        Text("1024*1024")
                    }
                    .font(.subheadline)
                    .fontWeight(.semibold)
                    Divider()
                    VStack(alignment: .leading) {
                        Text("Type")
                            .foregroundStyle(Color.secondary)

                        Text("Upscale")
                    }
                    .font(.subheadline)
                    .fontWeight(.semibold)
                    Divider()
                    VStack(alignment: .leading) {
                        Text("Date")
                            .foregroundStyle(Color.secondary)

                        Text("Today 5:19")
                    }
                    .font(.subheadline)
                    .fontWeight(.semibold)
                } //: HSTACK
                .frame(height: 44)

                HStack {
                    HStack {
                        Image(systemName: "ellipsis")
                        Divider()
                        Image(systemName: "sparkle.magnifyingglass")
                        Divider()
                        Image(systemName: "face.smiling")
                    }
                    .padding()
                    .frame(height: 44)
                    .offset(x: -20, y: 20)

                    Spacer()

                    Image(systemName: "square.and.arrow.down")
                        .padding()
                        .frame(height: 44)
                        .offset(x: 20, y: 20)
                }
            } //: VSTACK
            .padding(20)
            .background(.ultraThinMaterial)
            .clipShape(RoundedRectangle(cornerRadius: 20, style: .continuous))
            .padding(20)
            .offset(y: 80)
        }
        .frame(maxWidth: 400)
        .padding(20)
        .dynamicTypeSize(.xSmall ... .xxLarge)
    }
}

#Preview {
    ContentView()
}
