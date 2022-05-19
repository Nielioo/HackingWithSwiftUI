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
    
    @State private var checkAmount = 0.0
    @State private var numberOfPeople = 2
    @State private var tipPercentage = 10
    let tipPercentages = [0, 10, 15, 20, 25]
    
    var body: some View {
        
        Group {
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
        }
        
        Group {
            Button("Tap Count: \(tapCount)") {
                self.tapCount += 1
            }
        }
        
        Group {
            Form {
                TextField("Enter your name", text: $name)
                Text("Your name is \(name)")
            }
        }
        
        Group {
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
        
        VStack{
            NavigationView {
                Form {
                    Section {
                        TextField("Amount", value: $checkAmount, format: .currency(code: Locale.current.currencyCode ?? "USD")).keyboardType(.decimalPad)
                        
                        Picker("Number of people", selection: $numberOfPeople) {
                            ForEach(2 ..< 100) {
                                Text("\($0) people")
                            }
                        }
                    }
                    
                    Section{
                        Picker("Tip Percentage", selection: $tipPercentage){
                            ForEach(tipPercentages, id: \.self){
                                Text($0, format: .percent)
                            }
                        }
                        .pickerStyle(.segmented)
                    } header: {
                        Text("How much tip do you want to leave?")
                    }
                    
                    Section {
                        Text(checkAmount, format: .currency(code: Locale.current.currencyCode ?? "USD"))
                    }
                }
                .navigationTitle("We Split")
            }
        }
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
