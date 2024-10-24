//
//  Astronaut.swift
//  Moonshot
//
//  Created by Mój Maczek on 13/10/2024.
//

import Foundation

// Creating Astronauts struct
struct Astronaut: Codable, Identifiable {
    let id: String
    let name: String
    let description: String
}
