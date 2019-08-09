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
}

struct ContentView: View {
   var people = [Person(name: "Alphonso", job: "Engineer"),Person(name: "Chelsea", job: "VP"),Person(name: "Danielle", job: "Marketing Manager")]
    
    var body: some View {
        List(people) { item in
            HStack {
                Image("placeholder")
                VStack {
                    Text(item.name)
                    Text(item.job)
                }
            }
            
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
