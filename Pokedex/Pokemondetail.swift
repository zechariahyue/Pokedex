//
//  Pokemondetail.swift
//  Pokedex
//
//  Created by Zechariah on 4/27/21.
//

import SwiftUI

struct Pokemondetail: View {
    var pokemon: Pokemon
    var body: some View {

    VStack(spacing:0) {
          Image(Utility.shared.getImageName(pokemon.id)).resizable()
            .frame(minWidth: 133, maxWidth: 200, minHeight: 133, maxHeight: 200,alignment: .top)
            
          Text("Names in different languages")
              .font(/*@START_MENU_TOKEN@*/.title/*@END_MENU_TOKEN@*/).foregroundColor(.black).frame(maxWidth: .infinity, alignment: .leading).padding()
        
           VStack(alignment: .leading, spacing: 10) {
                Text("English: \(pokemon.name.english)")
                    .font(.title2).foregroundColor(.black)
                Text("Japanese: \(pokemon.name.japanese)")
                    .font(.title2).foregroundColor(.black)
                Text("Chinese: \(pokemon.name.chinese)")
                    .font(.title2).foregroundColor(.black)
                Text("French: \(pokemon.name.french)")
                    .font(.title2).foregroundColor(.black)
          }
        
            Text("Base States")
                .font(/*@START_MENU_TOKEN@*/.title/*@END_MENU_TOKEN@*/).foregroundColor(.black).frame(maxWidth: .infinity, alignment: .leading).padding()
        
            VStack(alignment: .leading, spacing: 10) {
                  Text("Hp: \(pokemon.base.hp)")
                     .font(.title2).foregroundColor(.black)
                  Text("Attack: \(pokemon.base.attack)")
                     .font(.title2).foregroundColor(.black)
                  Text("Defense: \(pokemon.base.defense)")
                     .font(.title2).foregroundColor(.black)
                  Text("Special Attack: \(pokemon.base.spAttack)")
                     .font(.title2).foregroundColor(.black)
                  Text("Special Defense: \(pokemon.base.spDefense)")
                     .font(.title2).foregroundColor(.black)
                  Text("Speed: \(pokemon.base.speed)")
                     .font(.title2).foregroundColor(.black)
          }
    }
        .navigationBarTitle(Text(pokemon.name.english), displayMode: .inline)
    }
}



struct Pokemondetail_Previews: PreviewProvider {
    static var previews: some View {
        Pokemondetail(pokemon: pokedex[1])
    }
}
