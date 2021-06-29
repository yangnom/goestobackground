//
//  ScenePhaseMethod.swift
//  ObjectWillChange
//
//  Created by ynom on 6/28/21.
//

import SwiftUI


struct ScenePhaseMethod: View {
    static let tag: String? = "scene"
    @Environment(\.scenePhase) var scenePhase
    @State var events: [String] = []
    
    var body: some View {
        NavigationView {
            List {
                ForEach(events.reversed(), id: \.self) {
                    Text("\($0)")
                }
            }
            .navigationTitle("Scene Phase")
        }
        .onChange(of: scenePhase ) {value in
            addState(phase: value)
        }
    }
    
    func addState(phase: ScenePhase) {
        events.append("At \(Date().dateTimeString()) scenephase was \(phase)")
    }
}

struct ScenePhaseMethod_Previews: PreviewProvider {
    static var previews: some View {
        ScenePhaseMethod()
    }
}
