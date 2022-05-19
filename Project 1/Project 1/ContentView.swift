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
    
    let students = ["Harry", "Hermione", "Ron"]
    @State private var selectedStudent = "Harry"
    
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
            Text("Your name is \(name)")
        }
        
        NavigationView {
            Form {
                Picker("Select your student", selection: $selectedStudent) {
                    ForEach(students, id: \.self) {
                        Text($0)
                    }
                }
            }
        }
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
