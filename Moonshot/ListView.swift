//
//  ListView.swift
//  Moonshot
//
//  Created by Mój Maczek on 17/10/2024.
//

import SwiftUI

struct ListView: View {
    let astronauts: [String: Astronaut] = Bundle.main.decode("astronauts.json")
    let mission: [Mission] = Bundle.main.decode("missions.json")
    
    @State private var showingGrid = false

    var body: some View {
        NavigationStack {
                        List {
                            ForEach(mission) { mission in
                                NavigationLink {
                                    MissionView(mission: mission, astronauts: astronauts)
                                } label: {
                                    HStack {
                                        Image(mission.image)
                                            .resizable()
                                            .scaledToFit()
                                            .frame(width: 80, height: 80)
                                        VStack {
                                            Text(mission.displayName)
                                                .font(.title)
                                                .fontWeight(.bold)
                                                .foregroundStyle(.white)
                                            
                                            Text(mission.formattedLaunchDate)
                                                .font(.headline)
                                                .foregroundStyle(.gray)
                                        }
                                        .padding(.horizontal)
                                        .frame(maxWidth: .infinity)
                                    }
                                }
                                .listRowBackground(Color.darkBackground)
                                .listRowSeparator(.hidden)
                                .padding(.horizontal)
                            }
            }
            .navigationTitle("Moonshot")
            .listStyle(.plain)
            .background(.darkBackground)
            .preferredColorScheme(.dark)

        }
    }    
}

#Preview {
    ListView()
}
