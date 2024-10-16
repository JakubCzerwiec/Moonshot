//
//  HorizontalScroll.swift
//  Moonshot
//
//  Created by Mój Maczek on 16/10/2024.
//
import Foundation
import SwiftUI

struct HorizontalScroll: View {
    struct CrewMemeber {
        let role: String
        let astronaut: Astronaut
    }
    
    let mission: Mission
    let crew: [CrewMemeber]
    
    var body: some View {
        HStack {
            ForEach(crew, id: \.role) { CrewMemeber in
                NavigationLink {
                    AstronautView(astronaut: CrewMemeber.astronaut)
                } label: {
                    HStack {
                        Image(CrewMemeber.astronaut.id)
                            .resizable()
                            .frame(width: 104, height: 72)
                            .clipShape(.capsule)
                            .overlay(
                                Capsule()
                                    .strokeBorder(.white, lineWidth: 1)
                            )
                        
                        VStack(alignment: .leading) {
                            Text(CrewMemeber.astronaut.name)
                                .foregroundStyle(.white)
                                .font(.headline)
                            
                            Text(CrewMemeber.role)
                                .foregroundStyle(.white.opacity(0.5))
                        }
                    }
                    .padding(.horizontal)
                }
            }
        }
    }
}

#Preview {
    let missions: [Mission] = Bundle.main.decode("missions.json")
    let astronauts: [String: Astronaut] = Bundle.main.decode("astronauts.json")
    return MissionView(mission: missions[0], astronauts: astronauts)
        .preferredColorScheme(.dark)
}
