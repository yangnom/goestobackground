//
//  ContentView.swift
//  Shared
//
//  Created by ynom on 6/28/21.
//

import SwiftUI

struct NotificationMethodView: View {
    static let tag: String? = "notification"
    @State var notificationString: [String] = []
    
    var body: some View {
        NavigationView {
            List{
                ForEach(notificationString, id: \.self) {
                    Text("\($0)")
                }
                .navigationBarTitle("Notifications")
            }
        }
        .onReceive(NotificationCenter.default.publisher(for: UIApplication.willResignActiveNotification), perform: willChange)
        .onReceive(NotificationCenter.default.publisher(for: UIApplication.willEnterForegroundNotification), perform: willChange)
    }
    
    func willChange(notification: Notification) {
        notificationString.append("At \(Date().dateTimeString()) notification was: \(notification.name)")
    }

}

struct NotificationMethodView_Previews: PreviewProvider {
    static var previews: some View {
        NotificationMethodView()
    }
}
