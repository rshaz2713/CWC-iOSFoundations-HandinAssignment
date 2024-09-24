//
//  DataService.swift
//  Health Guide
//
//  Created by Rumman Shahzad on 9/23/24.
//

import Foundation

struct DataService {
    
    func getData() -> [Topic] {
        
        // Get URL to JSON file
        if let url: URL = Bundle.main.url(forResource: "Data", withExtension: "json") {
            
            do {
                // Read the file and turn it into data
                let data: Data = try Data(contentsOf: url)
                
                // Parse data and turn it into Swift instances
                let decoder: JSONDecoder = JSONDecoder()
                
                do {
                    return try decoder.decode([Topic].self, from: data) // Success
                }
                catch {
                    // Error parsing JSON
                    print("Couldn't parse the JSON file: \(error)")
                }
            }
            catch {
                // Error reading the file
                print("Couldn't read the JSON file: \(error)")
            }
        }
        
        // Unsuccessful
        return [Topic]()
    }
    
}
