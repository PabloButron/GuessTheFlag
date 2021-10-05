//
//  ContentView.swift
//  GuessTheFlag
//
//  Created by Pablo Butron on 3/10/21.
//

import SwiftUI

struct ContentView: View {
    @State private var showingAlert = false
    
    var body: some View {
       
        Button ("Show Alert"){
            self.showingAlert = true
        }
        .alert(isPresented: $showingAlert) {
            Alert (title: Text("Heello There"), message: Text("Just another content alert in text form"), dismissButton: .default(Text("OK")))
        }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
}

