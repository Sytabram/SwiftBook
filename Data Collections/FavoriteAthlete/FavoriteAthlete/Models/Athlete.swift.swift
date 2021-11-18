//
//  Athlete.swift.swift
//  FavoriteAthlete
//
//  Created by Bryan Zweiacker on 17.11.21.
//

import Foundation

struct Athlete : CustomStringConvertible {
    var name: String
    var age: Int
    var league: String
    var team: String
    
    var description: String {
        return "\(name) is \(age) years old and plays for the \(team) in the \(league)."
    }
}
