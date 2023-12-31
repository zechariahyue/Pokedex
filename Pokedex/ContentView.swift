//
//  ContentView.swift
//  Pokedex
//
//  Created by Zechariah on 4/27/21.
// Reference: https://www.youtube.com/watch?v=uv5L2HQqDPU
// Json file and thumbnail image https://github.com/fanzeyi/pokemon.json

import SwiftUI

struct ContentView: View {
    @State private var searchText: String = ""
    @State private var isEditing = false
    
    var body: some View {
        NavigationView {
            VStack{
                HStack {
                    // Search Bar
                    TextField("Search ...", text: $searchText)
                        .padding(7)
                        .padding(.horizontal, 25)
                        .background(Color(.systemGray6))
                        .cornerRadius(8)
                        .overlay(
                            HStack {
                                Image(systemName: "magnifyingglass")
                                    .foregroundColor(.gray)
                                    .frame(minWidth: 0, maxWidth: .infinity, alignment: .leading)
                                    .padding(.leading, 8)
                                
                                if isEditing {
                                    Button(action: {
                                        self.searchText = ""
                                        
                                    }) {
                                        Image(systemName: "multiply.circle.fill")
                                            .foregroundColor(.gray)
                                            .padding(.trailing, 8)
                                    }
                                }
                            }
                        )
                        .padding(.horizontal, 10)
                        .onTapGesture {
                            self.isEditing = true
                        }
                    
                    if isEditing {
                        Button(action: {
                            self.isEditing = false
                            self.searchText = ""
                            
                            // Dismiss the keyboard
                            UIApplication.shared.sendAction(#selector(UIResponder.resignFirstResponder), to: nil, from: nil, for: nil)
                        }) {
                            Text("Cancel")
                        }
                        .padding(.trailing, 10)
                        .transition(.move(edge: .trailing))
                        .animation(.default)
                        .navigationBarHidden(self.isEditing)
                    }
                }
            
            // Scroll View
            ScrollView(.vertical, showsIndicators: false){
                LazyVStack(spacing:0){
                ForEach(pokedex.filter({ searchText.isEmpty ? true : Int(searchText) != nil ? String($0.id).contains(searchText) : $0.name.english.contains(searchText) })){pokemon in
                    NavigationLink(destination: Pokemondetail(pokemon: pokemon)){
                           Pokemonrow(pokemon: pokemon)
                    }
                }
            }.navigationTitle("Pokedex")
        }
        .background(Color.clear)
    }
}.navigationViewStyle(StackNavigationViewStyle())
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
