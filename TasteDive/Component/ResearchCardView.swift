//
//  ResearchCardView.swift
//  TasteDive
//
//  Created by Osama Chatbi on 17/10/23.
//

import SwiftUI

struct ResearchCardView: View {
    @State private var name: String = ""
    @State private var selectedPlanet: Categories = .allCategories
        var body: some View {
            VStack {
                
                VStack {
                    TextField("ex: Daft Punk",text: $name){
                        
                    }.padding(.all, 10)
                        .background(ZStack {
                            RoundedRectangle(
                                cornerRadius: 20,
                                style: .continuous
                            )
                            .fill(Color(UIColor.systemGray6))
                            RoundedRectangle(
                                cornerRadius: 20,
                                style: .continuous
                            )
                            .stroke(.indigo, lineWidth: 1)
                        })
                    
                    
                    
                    
                    Picker("Filter By:", selection: $selectedPlanet){
                        ForEach(Categories.allCases) { planet in
                                            Text(planet.rawValue.capitalized)
                                        }
                    }.pickerStyle(.automatic)
                        .accentColor(.black)
                        .cornerRadius(10)
                        .background(ZStack {
                            RoundedRectangle(
                                cornerRadius: 20,
                                style: .continuous
                            )
                            .fill(Color(UIColor.systemGray6))
                            RoundedRectangle(
                                cornerRadius: 20,
                                style: .continuous
                            )
                            .stroke(.indigo, lineWidth: 1)
                        })
                        .padding(.top)
                }
                .padding()
                .background(Rectangle().fill(Color.white))
                .cornerRadius(10)
                .shadow(color: .gray, radius: 3, x: 2, y: 2)
                .frame(minWidth: 0, maxWidth: .infinity, minHeight: 0, maxHeight: .infinity, alignment: .top)
            }.padding(8)
        }
}

enum Categories: String, CaseIterable, Identifiable {
        case allCategories, music, movies, TV, books, games, podcasts, people
        var id: Self { self }
    }

struct ResearchCardView_Previews: PreviewProvider {
    static var previews: some View {
        ResearchCardView()
    }
}
