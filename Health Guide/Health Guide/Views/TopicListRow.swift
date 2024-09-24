//
//  TopicListRow.swift
//  Health Guide
//
//  Created by Rumman Shahzad on 9/23/24.
//

import SwiftUI

struct TopicListRow: View {
    
    var topic: Topic
    
    var body: some View {
        
        HStack (spacing: 30) {
            
            Image(topic.iconImage)
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(width: 100, height: 100)
            
            VStack (alignment: .leading) {
                
                Text(topic.title)
                    .font(.headline)
                    .bold()
                
                Text(topic.description)
                    .font(.footnote)
                
            }
            .frame(maxWidth: .infinity, alignment: .leading)
            
        }
    }
}

#Preview {
    // Dummy data: Instance of Topic Nutrition
    TopicListRow(topic: DataService().getData()[0])
}
