//
//  pokemonlist.swift
//  Pokedex
//
//  Created by Zechariah on 4/27/21.
//

import SwiftUI

struct pokemonlist: View {
    var body: some View {
        NavigationView {
            List(pokedex) { pokemon in
                NavigationLink(destination:Pokemondetail(pokemon: pokemon)) {
                Pokemonrow(pokemon: pokemon)
                }
            }
            .navigationBarTitle(Text("Pokedex"))
        }
    }
}

struct pokemonlist_Previews: PreviewProvider {
    static var previews: some View {
        pokemonlist()
    }
}
