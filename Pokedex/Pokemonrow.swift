//
//  Pokemonrow.swift
//  Pokedex
//
//  Created by Zechariah on 4/27/21.
//

import SwiftUI

struct Pokemonrow: View {
    var pokemon: Pokemon
    
    var body: some View {
        HStack(spacing:30){
            Image(Utility.shared.getImageName(pokemon.id))
                .resizable()
                .frame(width: 48, height: 48,alignment: .leading).padding()
            VStack(alignment: .leading) {
                Text(pokemon.name.english)
                .font(/*@START_MENU_TOKEN@*/.title/*@END_MENU_TOKEN@*/)
                    .foregroundColor(.black)
                Text("Type: \(pokemon.types.joined(separator: ", "))")
                .font(.subheadline)
                    .foregroundColor(.black)
              }
            Spacer(minLength: 10)
            Image(systemName: "chevron.right")
                .scaleEffect(0.70)
                        .font(Font.title.weight(.medium))

           }
       }
    
    }

struct Pokemonrow_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            Pokemonrow(pokemon: pokedex[0])
                .previewLayout(.fixed(width: 300, height: 70))

        }
    }
}
