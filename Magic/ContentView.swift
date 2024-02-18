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
            VStack {
                Image(systemName: "sparkles")
                    .imageScale(.large)
                    .foregroundStyle(.tint)
                Text("modern architecture, an isometric tiny house, cute illustration, minimalist, vector art, night view")
                    .font(.subheadline)

                HStack(spacing: 12.0) {
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
            } //: VSTACK
            .padding(20)
            .background(.regularMaterial)
        .clipShape(RoundedRectangle(cornerRadius: 20,style: .continuous))
        }
    }
}

#Preview {
    ContentView()
}
