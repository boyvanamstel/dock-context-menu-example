//
//  TwitchMenuController.swift
//  Twitch Menu
//
//  Created by Boy van Amstel on 22/01/2018.
//  Copyright © 2018 Danger Cove. All rights reserved.
//

import Cocoa

class TwitchMenuController {

    public let menu: NSMenu
    
    init() {
        menu = NSMenu(title: "Twitch")
        
        // Top level item
        menu.addItem(openTwitchItem)
        
        // Submenu
        menu.addItem(submenuItem)
        menu.setSubmenu(submenu, for: submenuItem)
    }
    
    // MARK: Open Twitch item
    
    private lazy var openTwitchItem: NSMenuItem = {
        let menuItem = NSMenuItem()
        menuItem.title = "Open Twitch"
        menuItem.target = self
        menuItem.action = #selector(openTwitch(menuItem:))
        
        return menuItem
    }()
    
    @objc private func openTwitch(menuItem: NSMenuItem) {
        guard let url = URL(string: "https://twitch.tv") else { return }

        NSWorkspace.shared.open(url)
    }
    
    // MARK: Submenu
    
    private lazy var submenuItem: NSMenuItem = {
        let menuItem = NSMenuItem()
        menuItem.title = "Channel Actions"
        
        return menuItem
    }()
    
    private lazy var submenu: NSMenu = {
       let menu = NSMenu(title: "Actions")
        
        menu.addItem(openChannelItem)
        
        return  menu
    }()
    
    // MARK: Open channel item
    
    private lazy var openChannelItem: NSMenuItem = {
        let menuItem = NSMenuItem()
        menuItem.title = "Open Channel"
        menuItem.target = self
        menuItem.action = #selector(openChannel(menuItem:))
        
        return menuItem
    }()
    
    @objc private func openChannel(menuItem: NSMenuItem) {
        guard let url = URL(string: "http://dekijkersthuis.tv") else { return }
        
        NSWorkspace.shared.open(url)
    }
    
}
