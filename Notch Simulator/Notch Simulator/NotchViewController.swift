//
//  NotchViewController.swift
//  Notch Simulator
//
//  Created by Jinyu Meng on 2021/10/19.
//

import Cocoa

class NotchViewController: NSViewController {
    
    @IBOutlet weak var quitButton: NSButton!
    var mouseTracking: NSTrackingArea?

    override func viewDidLoad() {
        super.viewDidLoad()

        // Old Codes
//        view.wantsLayer = true
//        view.layer?.backgroundColor = .black
//        view.layer?.cornerRadius = 10
//        view.layer?.maskedCorners = [.layerMinXMinYCorner, .layerMaxXMinYCorner]
        
        startMouseTracking()
        
    }
    
    override func mouseEntered(with event: NSEvent) {
        super.mouseEntered(with: event)
        quitButton.isHidden = false
    }
    
    override func mouseExited(with event: NSEvent) {
        super.mouseExited(with: event)
        quitButton.isHidden = true
    }
    
    func startMouseTracking(options: NSTrackingArea.Options = [.activeAlways, .mouseEnteredAndExited]) {
        let tracking = NSTrackingArea(rect: view.bounds, options: options, owner: self, userInfo: nil)
        view.addTrackingArea(tracking)
        mouseTracking = tracking
    }
    
    @IBAction func quit(_ sender: Any) {
        NSApplication.shared.terminate(self)
    }
    
    
}
