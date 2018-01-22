//
//  AppDelegate.swift
//  Twitch Menu
//
//  Created by Boy van Amstel on 22/01/2018.
//  Copyright © 2018 Danger Cove. All rights reserved.
//

import Cocoa

@NSApplicationMain
class AppDelegate: NSObject, NSApplicationDelegate {

    func applicationDidFinishLaunching(_ aNotification: Notification) {
        setupMenubarMenu()
    }
    
    // MARK: Menu controller
    
    private let menuController = MenuController()

    // MARK: Dock menu

    func applicationDockMenu(_ sender: NSApplication) -> NSMenu? {
        return menuController.twitchMenu
    }
    
    // MARK: Menu bar menu
    
    private func setupMenubarMenu() {
        guard let menu = NSApplication.shared.menu else { return }
        
        menuController.addTwitchMenu(to: menu)
    }

}
