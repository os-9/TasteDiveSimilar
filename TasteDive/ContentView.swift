//
//  ContentView.swift
//  TasteDive
//
//  Created by Osama Chatbi on 10/10/23.
//

import SwiftUI

struct ContentView: View {
    @State private var name: String = ""
    @State private var selectedPlanet: Categories = .allCategories
    var body: some View {
        VStack {
            Text("Check for Similar taste").bold()
            ResearchCardView()
        }
    }
}


struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
