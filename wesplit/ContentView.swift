//
//  ContentView.swift
//  wesplit
//
//  Created by Mochamad Lucky Pradana on 23/02/20.
//  Copyright © 2020 Mochamad Lucky Pradana. All rights reserved.
//

import SwiftUI

// [struct] is immutable
struct ContentView: View {
    @State private var checkAmount = ""
    @State private var numberOfPeople = 2
    @State private var tipPercentage = 2
    
    let tipPercentages = [10, 15, 20, 25, 0]
    
    var body: some View {
        NavigationView {
            Form {
                Section {
                    TextField("Amount", text: $checkAmount)
                        .keyboardType(.numberPad)
                    
                    Picker("Number of People", selection: $numberOfPeople) {
                        ForEach (2 ..< 100) {
                            Text("\($0) people")
                        }
                    }
                    
                }
                
                Section {
                    Text("$\(checkAmount)")
                }
            }.navigationBarTitle("WeSplit")
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
