//
//  CountdownView.swift
//  Pomodoro Flow
//
//  Created by DarkBringer on 23.08.2021.
//

import SwiftUI

struct CountdownView: View {
    
    @State private var work = true
    @State private var started = true
    @State private var counting = true
    var body: some View {
        VStack{
            Text(work ? "Work" : "Break")
                .font(.title)
                .fontWeight(.semibold)
                .padding()
            Text("45:00")
                .font(.title3)
                .fontWeight(.medium)
                .padding()
//                Image(systemName: counting ? "pause" : "play")
//                Image(systemName: counting ? "backward" : "")
                if started == true {
                    HStack{
                        Button(action: {
                            // Pause funciton goes here
                            counting.toggle()
                        }, label: {
                            Image(systemName: counting ? "pause" : "play")
                        })
                        .padding(.horizontal, 5)
                        Button(action: {
                            // Reset function goes here
                            started = false
                            counting = false
                        }, label: {
                            Image(systemName: "backward")
                        })
                        .padding(.horizontal, 5)
                        
                        
                    }
                    .padding()
                } else {
                    Button(action: {
                        // Start function goes here
                        started = true
                        counting = true
                    }, label: {
                        Image(systemName: "play")
                    })
                        .padding()
                }
            
            
            
        }
        .foregroundColor(.primary)
    }
}

struct CountdownView_Previews: PreviewProvider {
    static var previews: some View {
        CountdownView()
    }
}
