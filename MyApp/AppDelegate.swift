//
//  AppDelegate.swift
//  Resizer
//
//  Created by Ariel Elkin on 07/06/2022.
//

import Cocoa
import SwiftUI

class AppDelegate: NSObject, NSApplicationDelegate {

    var popover: NSPopover!
    var statusBarItem: NSStatusItem!

    func applicationDidFinishLaunching(_ aNotification: Notification) {

        NSApp.setActivationPolicy(.accessory)

        NSApplication.shared.windows.first?.close() // don't open separate empty window in Ventura

        let popover = NSPopover()
        let contentView = ContentView()
        popover.contentViewController = NSHostingController(rootView: contentView)
        self.popover = popover

        self.statusBarItem = NSStatusBar.system.statusItem(withLength: NSStatusItem.squareLength)
        let button = self.statusBarItem.button!
        button.image = NSImage(systemSymbolName: "pencil.circle", accessibilityDescription: "task bar button")

        DispatchQueue.main.asyncAfter(deadline: .now() + 0.5) { // won't show otherwise
            popover.show(relativeTo: button.bounds, of: button, preferredEdge: .minY)
        }
    }
}
