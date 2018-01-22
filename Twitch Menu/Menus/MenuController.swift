//
//  MenuController.swift
//  Twitch Menu
//
//  Created by Boy van Amstel on 22/01/2018.
//  Copyright © 2018 Danger Cove. All rights reserved.
//

import Cocoa

class MenuController {

    // MARK: Twitch

    private let twitchMenuController = TwitchMenuController()
    
    public lazy var twitchMenu: NSMenu = {
        return twitchMenuController.menu
    }()

    public func addTwitchMenu(to menu: NSMenu) {
        add(twitchMenuController.menu, to: menu)
    }
    
    // MARK: Convenience
    
    private func add(_ menu: NSMenu, to parentMenu: NSMenu) {
        let menuItem = NSMenuItem()
        parentMenu.addItem(menuItem)
        parentMenu.setSubmenu(menu, for: menuItem)
    }

}
