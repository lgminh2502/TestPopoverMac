//
//  ContentView.swift
//  TestPopoverMac
//
//  Created by Admin on 29/09/2023.
//

import SwiftUI

struct ContentView: View {
    @State var showingPanel = false

    var body: some View {
        VStack {
            Image(systemName: "globe")
                .imageScale(.large)
                .foregroundStyle(.tint)
            Text("Hello, world!")
            Button("ABC") {
                print("zzz")
                showingPanel.toggle()
            }
            .frame(width: 50, height: 22)
            .floatingPanel(isPresented: $showingPanel, content: {
                ZStack {
                    Rectangle()
                        .fill(.white)
                    Text("I'm a floating panel. Click anywhere to dismiss me.")
                        .foregroundStyle(Color.black)
                }
                .frame(width: 200)
                .fixedSize()
            })
        }
        .padding()
    }
}

#Preview {
    ContentView()
}
