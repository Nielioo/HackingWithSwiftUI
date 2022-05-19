//
//  ContentView.swift
//  Project 2
//
//  Created by MacBook Pro on 19/05/22.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        //        ZStack {
        //            VStack(spacing: 0) {
        //                Color.red
        //                Color.blue
        //            }
        //
        //            Text("Your content")
        //                .foregroundColor(.secondary)
        //                .padding(50)
        //                .background(.ultraThinMaterial)
        //        }
        //        .ignoresSafeArea()
        
        //        LinearGradient(gradient: Gradient(stops: [
        //            .init(color: .white, location: 0.45),
        //            .init(color: .black, location: 0.55),
        //        ]), startPoint: .top, endPoint: .bottom)
        //
        //        RadialGradient(gradient: Gradient(colors: [.blue, .black]), center: .center, startRadius: 20, endRadius: 200)
        //
        //        AngularGradient(gradient: Gradient(colors: [.red, .yellow, .green, .blue, .purple, .red]), center: .center)
        
        VStack{
            Button("Delete selection", role: .destructive, action: executeDelete)
            
            Spacer()
            
            Button("Button 1") { }
                .buttonStyle(.bordered)
            Button("Button 2", role: .destructive) { }
                .buttonStyle(.bordered)
            Button("Button 3") { }
                .buttonStyle(.borderedProminent)
//                .tint(.mint)
            Button("Button 4", role: .destructive) { }
                .buttonStyle(.borderedProminent)
            
            Spacer()
            
            Button {
                print("Button was tapped")
            } label: {
                Text("Tap me!")
                    .padding()
                    .foregroundColor(.white)
                    .background(.red)
            }
            
            Spacer()
            
            Button {
                print("Edit button was tapped")
            } label: {
                Label("Edit", systemImage: "pencil")
            }
            
//            Spacer()
        }
        
    }
    
    func executeDelete() {
        print("Now deleting…")
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
