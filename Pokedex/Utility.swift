//
//  Utility.swift
//  Pokedex
//
//  Created by Zechariah on 4/28/21.
//

import Foundation

class Utility{
    static let shared = Utility()
    
    func getImageName(_ id:Int) -> String {
           if id < 10 {
                  return "00\(id)"
            }else if id < 100 {
                  return "0\(id)"
             }else{
                  return "\(id)"
        }
    }

}
