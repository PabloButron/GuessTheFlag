//
//  ContentView.swift
//  GuessTheFlag
//
//  Created by Pablo Butron on 3/10/21.
//

import SwiftUI

struct ContentView: View {
    @State private var showingScore = false
    @State private var scoreTittle = ""
    @State private var countries = ["Estonia" , "France", "Germany", "Ireland", "Italy", "Nigeria", "Poland", "Russia", "US", "Spain", "UK" ].shuffled()
    @State private var correctAnswer = Int.random(in: 0...2)
    
    var body: some View {
        ZStack {
            LinearGradient(gradient: Gradient (colors: [.blue, .black]), startPoint: .top, endPoint: .bottom).edgesIgnoringSafeArea(.all)
            //Color.blue.edgesIgnoringSafeArea(.all)
            VStack (spacing: 30) {
                VStack  {
                    Text ("Tap the flag of")
                        .foregroundColor(.white)
                    Text (countries[correctAnswer])
                        .foregroundColor(.white)
                        .font(.largeTitle)
                        .fontWeight(.black)
                }
                
                ForEach (0 ..< 3){ number in
                    Button (action: {
                        self.flagTapped(number)
                    }){
                        Image(self.countries[number])
                            .renderingMode(.original)
                            .clipShape(Capsule())
                            .overlay(Capsule().stroke(Color.black,lineWidth: 1))
                            .shadow(color: .black, radius: 2)                    }
                }
                Spacer ()
                
            }

            
            
        }
    
        .alert(isPresented: $showingScore){
            Alert(title: Text (scoreTittle), message: Text("Your Score is ??? "), dismissButton: .default(Text( "Continue") ) {
                self.askQuestion()
            })
        }
        
}
    
    func flagTapped (_ number: Int){
        if number == correctAnswer {
            scoreTittle = "Correct"
        } else {
            scoreTittle = "Wrong"
        }
        showingScore = true
    }
    
    func askQuestion (){
        countries.shuffle()
        correctAnswer = Int.random(in: 0...2)
    }
    
}



struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}


