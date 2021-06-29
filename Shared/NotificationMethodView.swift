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
        //        .navigationTitle("Notification Method")
        .onReceive(NotificationCenter.default.publisher(for: UIApplication.willResignActiveNotification), perform: willResign)
    }
    
    func willResign(notification: Notification) {
        notificationString.append("At \(Date().dateTimeString()) notification was: \(notification.name)")
    }
}

struct NotificationMethodView_Previews: PreviewProvider {
    static var previews: some View {
        NotificationMethodView()
    }
}
