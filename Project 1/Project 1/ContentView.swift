//
//  ContentView.swift
//  Project 1
//
//  Created by MacBook Pro on 19/05/22.
//

import SwiftUI

struct ContentView: View {
    
    @State var tapCount = 0
    @State private var name = ""
    
    var body: some View {
        NavigationView{
            // Creating a form
            Form {
                Section {
                    Text("Hello, world!")
                }
                
                Section {
                    Text("Hello, world!")
                    Text("Hello, world!")
                }
            }
            .navigationTitle("SwiftUI")
            // Navigation title size
            .navigationBarTitleDisplayMode(.inline)
        }
        
        Button("Tap Count: \(tapCount)") {
            self.tapCount += 1
        }
        
        Form {
            TextField("Enter your name", text: $name)
            Text("Hello, world!")
        }
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
