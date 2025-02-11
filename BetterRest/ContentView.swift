//
//  ContentView.swift
//  BetterRest
//
//  Created by Omolemo Mashigo on 2025/02/11.
//

import SwiftUI

struct ContentView: View {
    @State private var sleepAmount = 8.0
    
    @State private var wakeUp = Date.now
    var body: some View {
        VStack{
            Stepper("\(sleepAmount.formatted()) hours", value: $sleepAmount, in: 4...12, step: 0.5)
            .padding()
            
            DatePicker("Enter a date", selection: $wakeUp, in: Date.now...)
        }
        
        
    }
    
    func dateExamples(){
        let tomorrow = Date.now.addingTimeInterval(86400)
        let range = Date.now...tomorrow //date range from present time to tomorrow
    }
}

#Preview {
    ContentView()
}
