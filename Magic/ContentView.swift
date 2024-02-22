//
//  ContentView.swift
//  Magic
//
//  Created by Ehsan Rahimi on 2/17/24.
//

import SwiftUI

struct ContentView: View {
    @State var isTapped = false
    @State var time = Date.now
    @State var isActive = false
    let timer = Timer.publish(every: 1, on: .main, in: .common).autoconnect()

    var body: some View {
        ZStack {
            // MARK: - Background Image

            Image(.image1)
                .resizable()
                .aspectRatio(contentMode: .fill)
                .frame(height: isTapped ? 600 : 300)
                .frame(width: isTapped ? 393 : 363)
                .clipShape(RoundedRectangle(cornerRadius: isTapped ? 0 : 20, style: .continuous))
                .offset(y: isTapped ? -200 : 0)

            // MARK: - The diologe box

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
                            .symbolEffect(.pulse)
                        Divider()
                        Image(systemName: "sparkle.magnifyingglass")
                            .symbolEffect(.scale.up, isActive: isActive)

                        Divider()
                        Image(systemName: "face.smiling")
                            .symbolEffect(.appear, isActive: isActive)
                    }
                    .padding()
                    .frame(height: 44)
                    .overlay {
                        UnevenRoundedRectangle(cornerRadii: RectangleCornerRadii(topLeading: 0, bottomLeading: 20, bottomTrailing: 0, topTrailing: 20))
                            .strokeBorder(linerGradient)
                    }
                    .offset(x: -20, y: 20)

                    Spacer()

                    Image(systemName: "square.and.arrow.down")
                        .padding()
                        .frame(height: 44)
                        .overlay {
                            UnevenRoundedRectangle(cornerRadii: RectangleCornerRadii(topLeading: 20, bottomLeading: 0, bottomTrailing: 20, topTrailing: 0))
                                .strokeBorder(linerGradient)
                        }
                        .offset(x: 20, y: 20)
                }
            } //: VSTACK
            .padding(20)
            .background(.ultraThinMaterial)
            .overlay {
                RoundedRectangle(cornerRadius: 20)
                    .strokeBorder(linerGradient)
            }
            .clipShape(RoundedRectangle(cornerRadius: 20, style: .continuous))
            .padding(20)
            .offset(y: isTapped ? 220 : 80)

            // MARK: - Buttons

            HStack(spacing: 30) {
                Image(systemName: "wand.and.rays")
                    .frame(width: 44)
                    .symbolEffect(.variableColor.iterative.reversing, options: .speed(0.3))
                    .symbolEffect(.bounce, value: isTapped)
                    .opacity(isTapped ? 1 : 0)
                    .blur(radius: isTapped ? 0 : 20)

                Image(systemName: isTapped ? "pause.fill" : "play.fill")
                    .frame(width: 44)
                    .contentTransition(.symbolEffect(.replace))
                    .onTapGesture { _ in
                        withAnimation {
                            isTapped.toggle()
                        }
                    }

                Image(systemName: "bell.and.waves.left.and.right.fill")
                    .frame(width: 44)
                    .symbolEffect(.bounce, options: .speed(3).repeat(3), value: time)
                    .opacity(isTapped ? 1 : 0)
                    .blur(radius: isTapped ? 0 : 20)
                    .onReceive(timer) { value in
                        time = value
                        isActive.toggle()
                    }
            }
            .frame(width: isTapped ? 220 : 80)
            .foregroundStyle(.primary, .white)
            .font(.largeTitle)
            .padding(20)
            .background(.ultraThinMaterial)
            .overlay {
                RoundedRectangle(cornerRadius: 20)
                    .strokeBorder(linerGradient)
            }
            .clipShape(RoundedRectangle(cornerRadius: 20))
            .offset(y: isTapped ? 40 : -44)
        }
        .frame(maxWidth: 400)
        .padding(20)
        .dynamicTypeSize(.xSmall ... .xxLarge)
    }

    var linerGradient: LinearGradient {
        LinearGradient(colors: [.clear, .primary.opacity(0.3), .clear], startPoint: .topLeading, endPoint: .bottomTrailing)
    }
}

#Preview {
    ContentView()
}
