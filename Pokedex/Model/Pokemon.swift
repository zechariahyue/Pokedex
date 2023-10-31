//
//  Pokemon.swift
//  Pokedex
//
//  Created by Zechariah on 4/27/21.
//

import Foundation

import SwiftUI

struct Name: Hashable, Codable {
    var english: String
    var japanese: String
    var chinese: String
    var french: String
}

struct Base: Hashable, Codable {
    var hp: Int
    var attack: Int
    var defense: Int
    var spAttack: Int
    var spDefense: Int
    var speed: Int
    
    enum CodingKeys: String, CodingKey {
        case hp = "HP"
        case attack = "Attack"
        case defense = "Defense"
        case spAttack = "Sp. Attack"
        case spDefense = "Sp. Defense"
        case speed = "Speed"
    }
}

struct Pokemon: Hashable, Codable, Identifiable {
    var id: Int
    var name: Name
    var types: [String]
    var base: Base
    
    enum CodingKeys: String, CodingKey {
        case id
        case name
        case base
        case types = "type"
    }
}
