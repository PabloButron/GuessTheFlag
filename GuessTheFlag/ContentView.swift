//
//  ContentView.swift
//  GuessTheFlag
//
//  Created by Pablo Butron on 3/10/21.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        Button (action: {
            print("Edit button was taped ")
        }) {
            
            HStack (spacing:10 ) {
            Image (systemName: "pencil")
            Text ("Edit")
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
