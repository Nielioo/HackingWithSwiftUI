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
        
        LinearGradient(gradient: Gradient(stops: [
            .init(color: .white, location: 0.45),
            .init(color: .black, location: 0.55),
        ]), startPoint: .top, endPoint: .bottom)
        
        RadialGradient(gradient: Gradient(colors: [.blue, .black]), center: .center, startRadius: 20, endRadius: 200)
        
        AngularGradient(gradient: Gradient(colors: [.red, .yellow, .green, .blue, .purple, .red]), center: .center)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
