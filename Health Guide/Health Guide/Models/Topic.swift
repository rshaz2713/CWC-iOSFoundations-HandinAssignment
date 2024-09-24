//
//  Topic.swift
//  Health Guide
//
//  Created by Rumman Shahzad on 9/23/24.
//

import Foundation

struct Topic: Identifiable, Decodable {
    
    let id: UUID = UUID()
    
    var title: String
    var description: String
    var iconImage: String
    
    var overview: String
    var goodHabits: String
    var badHabits: String
    var innerImage: String
}
