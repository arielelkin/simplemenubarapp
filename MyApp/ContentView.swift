//
//  ContentView.swift
//  MyApp
//
//  Created by Ariel Elkin on 20/02/2023.
//

import SwiftUI

struct ContentView: View {

    @State var someText = ""
    var body: some View {
        VStack {
            Image(systemName: "globe")
                .imageScale(.large)
                .foregroundColor(.accentColor)
            Text("Hello, world!")
            TextField("input some text", text: $someText)
        }
        .padding()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
