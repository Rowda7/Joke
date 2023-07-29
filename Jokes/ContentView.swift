//
//  ContentView.swift
//  Jokes
//
//  Created by Rowdah Alshehhi on 10/07/2023.
//

import SwiftUI

struct ContentView: View {
     
    var jokes = [
        
        Joke(setup: "Why coundn't the bicycle stand up?", punchline: "It was two tired!"),
        Joke(setup: "why did the chicken cross the road?", punchline: "To get to the other side!"),
        Joke(setup: "Is this pool safe for diving?", punchline: "It deep ends"),
        Joke(setup: "Did you hear about the cheese factory that exploded in france?", punchline: "There was nothing left but de brie"),
        Joke(setup: "Dad, can you put my shoes on?", punchline: "I don't think they'll fit me")
    
        
    ]
    @State private var showPunchline = false
    @State private var currentJokeIndex = 0
    
    var body: some View {
        VStack {
        
            Text(jokes[currentJokeIndex].setup)
                .padding()
                .font(.largeTitle)
                .multilineTextAlignment(.center)
            Button {
                print("Shows the joke")
                showPunchline = true
            } label: {
                Text("*why*? **I want to know!**")
                    .padding()
                    .background(Color.accentColor)
                    .foregroundColor(.white)
                    .cornerRadius(10)
            }
            .padding(20)
            
            if showPunchline {
                Text(jokes[currentJokeIndex].punchline)
                    .padding()
                    .font(.largeTitle)
                    .multilineTextAlignment(.center)
                Text("Tp to countinue")
                    .font(.caption2)
                    .italic()
                    .padding()
                
                
                
            }
            
        }
        .padding()
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
