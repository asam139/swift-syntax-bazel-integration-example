//
//  ContentView.swift
//  MacrosApp
//
//  Created by Saúl Abril on 3/3/24.
//

import SwiftUI
import Macros

struct ContentView: View {
    var body: some View {
        VStack {
            AsyncImage(url: #URL("https://picsum.photos/200")) { image in
                image
                    .resizable()
                    .aspectRatio(contentMode: .fit)
            } placeholder: {
                ProgressView()
            }
            HStack(spacing: 8) {
                Image(systemName: "globe")
                    .imageScale(.large)
                    .foregroundStyle(.tint)
                Text("Hello, world!")
            }
            Text(#Stringify(1 + 2).text)
        }
        .padding()
    }
}

#Preview {
    ContentView()
}
