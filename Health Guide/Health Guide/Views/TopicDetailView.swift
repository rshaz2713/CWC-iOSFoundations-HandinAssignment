//
//  TopicView.swift
//  Health Guide
//
//  Created by Rumman Shahzad on 9/23/24.
//

import SwiftUI

struct TopicDetailView: View {
    
    var topic: Topic
    @State var sections: [String] = [String]()
    
    var body: some View {
        
        VStack {
            
            Image(topic.innerImage)
                .resizable()
                .aspectRatio(contentMode: .fill)
                .frame(height: 300)
            
            ScrollView (showsIndicators: false) {
                
                VStack (alignment: .leading, spacing: 20) {
                    
                    // Title
                    Text(topic.title)
                        .font(.largeTitle)
                        .bold()
                    
                    // Overview, Good Habits, and Habits to Avoid
                    ForEach (sections, id: \.self) { sec in
                        
                        VStack (alignment: .leading) {
                            Text(getSectionTitle(section: sec) ?? "Section Title")
                                .font(.title2)
                                .fontWeight(.semibold)
                                .padding(.bottom, 1)
                            
                            Text(sec)
                        }
                        
                    }
                }
            }
            .padding()
        }
        .ignoresSafeArea(edges: [.horizontal, .top])
        .onAppear {
            sections = [topic.overview, topic.goodHabits, topic.badHabits]
        }
        
    }
    
    private func getSectionTitle(section: String) -> String? {
        switch (section) {
            case topic.overview:
                return "Overview"
            case topic.goodHabits:
                return "Good Habits"
            case topic.badHabits:
                return "Habits to Avoid"
            default:
                return nil
        }
    }
    
}

#Preview {
    // Dummy data: instance of Topic Nutrition
    TopicDetailView(topic: DataService().getData()[0])
}
