//
//  ViewController.swift
//  LocalNotificationCategories
//
//  Created by Daniel Beard on 4/16/15.
//  Copyright (c) 2015 DanielBeard. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    func presentNotificationWithDelay(delay: NSTimeInterval, category: String) {
        let notification = UILocalNotification()
        notification.alertTitle = "Title"
        notification.alertBody = "Message body"
        notification.category = category
        notification.fireDate = NSDate().dateByAddingTimeInterval(delay)
        UIApplication.sharedApplication().scheduleLocalNotification(notification)
    }

    @IBAction func showDelayedInviteNotification(sender: UIButton) {
        self.presentNotificationWithDelay(5, category: "inviteCategory")
    }

    @IBAction func showDelayedViewNotification(sender: UIButton) {
        self.presentNotificationWithDelay(5, category: "viewCategory")
    }
}

