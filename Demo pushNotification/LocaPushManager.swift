//
//  locatification.swift
//  Demo pushNotification
//
//  Created by Anh vũ on 6/19/19.
//  Copyright © 2019 anh vu. All rights reserved.
//

import Foundation
import UserNotifications

class LocaPushManager: NSObject {
    static let shared = LocaPushManager()
    let center = UNUserNotificationCenter.current()
    func requestAuthorization() {
        center.requestAuthorization(options: [.alert, .sound]) { (granted, error) in
            if error == nil {
                print("error")
            }
        }
    }
    func sendloadPush(in time: TimeInterval) {
        let content = UNMutableNotificationContent()
        content.title = NSString.localizedUserNotificationString(forKey: "Message", arguments: nil)
        content.body = NSString.localizedUserNotificationString(forKey: "Bạn có 1 tin nhắn mới", arguments: nil)
//        kich hoat day thong bao
        let trigger = UNTimeIntervalNotificationTrigger(timeInterval: time, repeats: false)
        let request = UNNotificationRequest(identifier: "Timer", content: content, trigger: trigger)
        
        center.add(request) { (error) in
            if error == nil {
                print("schedule push succeed")
            }
        }
    }
}
