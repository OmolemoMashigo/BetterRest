//
//  ContentView.swift
//  BetterRest
//
//  Created by Omolemo Mashigo on 2025/02/11.
//

import SwiftUI

struct ContentView: View {
    
    @State private var wakeUp = Date.now
    @State private var sleepAmount = 8.0
    @State private var coffeeAmount = 1
   
    var body: some View {
        NavigationStack{
            VStack{
                
                Text("when do u wake up?")
                    .font(.headline)
                
                DatePicker("Enter a time", selection: $wakeUp, displayedComponents: .hourAndMinute)
                    .labelsHidden()
                
                Text("Desired amount of sleep:")
                
                Stepper("\(sleepAmount.formatted())", value: $sleepAmount, in: 4...12, step: 0.5)
                
                Text("Daily coffee intake")
                    .font(.headline)
                
                Stepper("\(coffeeAmount) cup(s)", value: $coffeeAmount, in: 1...20)
                .padding()
                
                
            }
            .navigationTitle("BetterRest")
            .toolbar{
                Button("Calculate", action: calculateBedTime)
            }
        }
        
    }
    
    func calculateBedTime(){
        
    }
    
}

#Preview {
    ContentView()
}
