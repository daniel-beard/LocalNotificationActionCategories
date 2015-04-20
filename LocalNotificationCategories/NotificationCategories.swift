//
//  NotificationCategories.swift
//  LocalNotificationCategories
//
//  Created by Daniel Beard on 4/16/15.
//  Copyright (c) 2015 DanielBeard. All rights reserved.
//

import Foundation
import UIKit

public class NotificationCategories {
    
    public class func categories() -> Set<UIMutableUserNotificationCategory> {
      
        var categories = Set<UIMutableUserNotificationCategory>()
        
        //============ ACTIONS ============//
        let viewAction = UIMutableUserNotificationAction()
        viewAction.title = NSLocalizedString("View", comment: "View notification")
        viewAction.identifier = "view"
        viewAction.activationMode = .Foreground
        viewAction.authenticationRequired = false
        
        let acceptAction = UIMutableUserNotificationAction()
        acceptAction.title = NSLocalizedString("Accept", comment: "Accept invitation")
        acceptAction.identifier = "accept"
        acceptAction.activationMode = .Background
        acceptAction.authenticationRequired = false
        
        let declineAction = UIMutableUserNotificationAction()
        declineAction.title = NSLocalizedString("Decline", comment: "Decline invitation")
        declineAction.identifier = "decline"
        declineAction.activationMode = .Background
        declineAction.authenticationRequired = false
        
       
        //============ CATEGORIES ============//
        let viewCategory = UIMutableUserNotificationCategory()
        viewCategory.identifier = "viewCategory"
        viewCategory.setActions([viewAction], forContext: .Default)
        
        let inviteCategory = UIMutableUserNotificationCategory()
        inviteCategory.identifier = "inviteCategory"
        inviteCategory.setActions([declineAction, acceptAction], forContext: .Default)
        
        categories.insert(viewCategory)
        categories.insert(inviteCategory)
        
        return categories
    }
    
}