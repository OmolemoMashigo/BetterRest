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
            Text(Date.now, format: .dateTime.hour().minute().second())
            
            Text(Date.now, format: .dateTime.day().month().year())
            
            Text(Date.now.formatted(date: .long, time: .shortened))
            
            Stepper("\(sleepAmount.formatted()) hours", value: $sleepAmount, in: 4...12, step: 0.5)
            .padding()
            
            DatePicker("Enter a date", selection: $wakeUp, in: Date.now...)
        }
        
        
    }
    
    func dateExamples(){
        let tomorrow = Date.now.addingTimeInterval(86400)
        let range = Date.now...tomorrow //date range from present time to tomorrow
        
        var components1 = DateComponents()
        components1.hour = 8
        components1.minute = 0
        
        let components2 = Calendar.current.dateComponents([.hour, .minute], from: .now)
        let hour = components2.hour ?? 0 //should there not be an hour returned
        let minute = components2.minute ?? 0 //should there not be a minute returned
    }
}

#Preview {
    ContentView()
}
