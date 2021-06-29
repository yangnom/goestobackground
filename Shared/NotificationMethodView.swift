//
//  ContentView.swift
//  Shared
//
//  Created by ynom on 6/28/21.
//

import SwiftUI

struct NotificationMethodView: View {
  static let tag: String? = "notification"
 @State var color: Color = .red
    
    var body: some View {
        VStack {
        Text("Object will change")
            .onReceive(NotificationCenter.default.publisher(for: UIApplication.willResignActiveNotification), perform: willResign)
        Rectangle()
                .frame(minWidth: 50, maxWidth: 100, minHeight: 50, maxHeight: 100)
                .foregroundColor(color)
        }
        .padding()
    }
    
    func willResign(_: Notification) {
        
        print("App is background")
        
        if color == .red {
            color = .green
        } else {
            color = .red
        }
    }
}

struct NotificationMethodView_Previews: PreviewProvider {
    static var previews: some View {
        NotificationMethodView()
    }
}
