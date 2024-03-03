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
            Image(systemName: "globe")
                .imageScale(.large)
                .foregroundStyle(.tint)
            Text("Hello, world!")
            Text(#stringify(1 + 2).1)
        }
        .padding()
    }
}

#Preview {
    ContentView()
}
