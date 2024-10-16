//
//  CrewView.swift
//  Moonshot
//
//  Created by Mój Maczek on 17/10/2024.
//

import SwiftUI

struct CrewView: View {
                // from which view and what to import
        let crew: [MissionView.CrewMemeber]
        var body: some View {
            ScrollView(.horizontal, showsIndicators: false) {
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
    
}

#Preview {
    CrewView(crew: [])
}
