//
//  ContentView.swift
//  SwiftUITableView
//
//  Created by user on 8/8/19.
//  Copyright © 2019 Alphonso Sensley II. All rights reserved.
//

import SwiftUI

struct Person: Identifiable {
    var id = UUID()
    var name: String
    var job: String
    var image: String {return "person.crop.circle"}
}

struct ContentView: View {
    var peopleArray = [Person(name: "Alphonso", job: "Engineer"),Person(name: "Chelsea", job: "VP"),Person(name: "Danielle", job: "Manager"),Person(name: "Joseph", job: "Social"),Person(name: "Aaron", job: "Director"),Person(name: "Ashley", job: "Educator"),Person(name: "Thomas", job: "Financial Investor"),Person(name: "Kathy", job: "Teacher"),Person(name: "Alphonso Sr.", job: "Manager"),Person(name: "Dianna", job: "Real Estate Agent")]
    
    
    
    var body: some View {
        NavigationView() {
            
            List(peopleArray) { item in
                Image(systemName: "person.crop.circle").resizable().frame(width: 32.0, height: 32.0, alignment: .leading)
                    .foregroundColor(.blue)
                
                VStack(alignment:.leading) {
                    Text(item.name)
                        .font(.title)
                        
                    Text(item.job)
                        .foregroundColor(.gray)
                        .font(.subheadline)
                        .multilineTextAlignment(.leading)
                        
                }
                
            }.navigationBarTitle("Family")
        }
    }
}

#if DEBUG
struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
#endif
