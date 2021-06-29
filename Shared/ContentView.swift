//
//  ContentView.swift
//  ObjectWillChange
//
//  Created by ynom on 6/28/21.
//

import SwiftUI


struct ContentView: View {
    
    @SceneStorage("selectedView") var selectedView: String?
    
    var body: some View {
        TabView(selection: $selectedView) {
            NotificationMethodView()
                .tag(NotificationMethodView.tag)
                .tabItem {
                    Image(systemName: "house")
                    Text("Home")
                }
            
            ScenePhaseMethod()
                .tag(ScenePhaseMethod.tag)
                .tabItem {
                    Image(systemName: "list.bullet")
                    Text("Open")
                }
            
       }
    }
}


struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
