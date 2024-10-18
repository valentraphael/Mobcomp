//
//  ContentView.swift
//  Random Emoji Gam
//
//  Created by student on 18/10/24.
//

import SwiftUI

struct ContentView: View {
    @State private var currentFlag = "🏳️" // Default flag
    @State private var isAnimating = false

    let flags = [
        "🇺🇸", "🇬🇧", "🇨🇦", "🇦🇺", "🇩🇪",
        "🇫🇷", "🇯🇵", "🇧🇷", "🇮🇹", "🇷🇺",
        "🇨🇭", "🇸🇪", "🇳🇱", "🇪🇸", "🇮🇳",
        "🇦🇷", "🇲🇽", "🇰🇷", "🇹🇷", "🇿🇦"
    ]
    
    var body: some View {
        VStack {
            Text(currentFlag)
                .font(.system(size: 100))
                .scaleEffect(isAnimating ? 1.2 : 1.0)
                .animation(.easeInOut(duration: 1.0), value: isAnimating)
            
            Button(action: {
                isAnimating = true
                
                // Display 10 random flags quickly
                for i in 0..<20 {
                    DispatchQueue.main.asyncAfter(deadline: .now() + 0.1 * Double(i)) {
                        currentFlag = flags.randomElement() ?? "🏳️"
                    }
                }

                // Final flag display after 1 second
                DispatchQueue.main.asyncAfter(deadline: .now() + 1.0) {
                    currentFlag = flags.randomElement() ?? "🏳️"
                    isAnimating = false
                }
            }) {
                Text("Go!")
                    .font(.title)
                    .padding()
                    .background(Color.blue)
                    .foregroundColor(.white)
                    .cornerRadius(10)
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
