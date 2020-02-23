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
    @State var tapCount = 0;
    
    var body: some View {
//        NavigationView {
//            Form {
//                Section {
//                    Text("Hello, World!")
//                }
//            }.navigationBarTitle(Text("SwiftUI"))
//        }
        Button("Tap Count \(tapCount)"){
            self.tapCount += 1
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
