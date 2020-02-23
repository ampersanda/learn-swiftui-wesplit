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
    let students = ["Harry", "Ron"]
    @State private var selectedStudent = "Ron"
    
    var body: some View {
        Picker("Select your student", selection: $selectedStudent) {
            ForEach(0 ..< students.count) {
                Text(self.students[$0])
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
