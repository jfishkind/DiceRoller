//
//  ContentView.swift
//  DiceRoller
//
//  Created by Jake Fishkind on 10/17/23.
//

import SwiftUI

struct ContentView: View {
    @State private var dieValue = 0
    @State private var die = Die(NumberOfSides: 6)
    @State private var selectedDie = Die(NumberOfSides: 6)
    @State private var dice = [Die(NumberOfSides: 2),Die(NumberOfSides: 4),Die(NumberOfSides: 6),Die(NumberOfSides: 8),Die(NumberOfSides: 10),Die(NumberOfSides: 12),Die(NumberOfSides: 20)]
    var body: some View {
        VStack {
            Text("\(dieValue)")
                .font(.largeTitle)
                .padding()

            Button(action: {
                dieValue = selectedDie.RollDie()
            }) {
                Text("Roll")
                    .font(.title)
                    .padding()
                    .background(Color.blue)
                    .foregroundColor(.white)
                    .cornerRadius(10)
            }
            
            Picker("Select a Die", selection: $selectedDie) {
                            ForEach(dice, id: \.NumberOfSides) { die in
                                Text("\(die.NumberOfSides)-sided").tag(die)
                            }
                        }
                        .pickerStyle(MenuPickerStyle())
                        .padding()
        }
        .padding()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}


