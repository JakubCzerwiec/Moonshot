//
//  Test.swift
//  Moonshot
//
//  Created by Mój Maczek on 17/10/2024.
//

import SwiftUI

struct Test: View {
    let astronauts: [String: Astronaut] = Bundle.main.decode("astronauts.json")
    let mission: [Mission] = Bundle.main.decode("missions.json")

    let columns = [
        GridItem(.adaptive(minimum: 150))
    ]
    
    @State private var showingGrid = true
    
    var body: some View {
        NavigationStack {
            if showingGrid {
                GridView()
                    .toolbar {
                        Toggle(isOn: $showingGrid, label: {
                            Text(showingGrid ? "List View" : "Grid View")
                        }
                            )
                        .toggleStyle(.switch)
                    }
            } else {
                ListView()
                    .toolbar {
                        Toggle(isOn: $showingGrid, label: {
                            Text(showingGrid ? "List View" : "Grid View")
                        }
                            )
                        .toggleStyle(.switch)
                    }
            }
        }
    }
}

#Preview {
    Test()
}
