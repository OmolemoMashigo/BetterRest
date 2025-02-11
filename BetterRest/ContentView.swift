//
//  ContentView.swift
//  BetterRest
//
//  Created by Omolemo Mashigo on 2025/02/11.
//

import SwiftUI

struct ContentView: View {
    @State private var sleepAmount = 8.0
    var body: some View {
        Stepper("\(sleepAmount.formatted()) hours", value: $sleepAmount, in: 4...12, step: 0.5)
        .padding()
    }
}

#Preview {
    ContentView()
}
