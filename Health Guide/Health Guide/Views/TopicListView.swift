//
//  ContentView.swift
//  Health Guide
//
//  Created by Rumman Shahzad on 9/23/24.
//

import SwiftUI

struct TopicListView: View {
    
    @State var topics: [Topic] = [Topic]()
    
    var body: some View {
        
        NavigationStack {
            
            VStack (alignment: .leading) {
                
                ScrollView(showsIndicators: false) {
                    
                    ForEach (topics) { topic in
                        
                        NavigationLink {
                            TopicDetailView(topic: topic)
                        }
                        label: {
                            TopicListRow(topic: topic)
                        }
                        .buttonStyle(.plain)
                    }
                }
            }
            .navigationTitle("Basic Health Guide")
            .padding()
            
            VStack (alignment: .leading) {
                Text("DISCLAIMER:")
                    .font(.headline)
                    .bold()
                
                Text("This app is solely for practicing app development. The information in this app is general purpose and each person's individual needs may differ. Do not rely on this app for medical advice.")
                    .font(.callout)
            }
            .padding()
            
        }
        .onAppear {
            topics = DataService().getData()
        }
    }
}

#Preview {
    TopicListView()
}
