//
//  ViewController.swift
//  Messenger
//
//  Created by Ferdi Kızıltoprak on 30/05/15.
//  Copyright (c) 2015 Ferdi Kızıltoprak. All rights reserved.
//

import Cocoa
import WebKit

class ViewController: NSViewController {

    
    @IBOutlet var myWebview: WebView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        myWebview.mainFrame.frameView.allowsScrolling = false
        let url = NSURL(string: "http://messenger.com")
        let request = NSURLRequest(URL: url!)
        myWebview.mainFrame.loadRequest(request)
    }

    override var representedObject: AnyObject? {
        didSet {
        // Update the view, if already loaded.
        }
    }


}
class WindowDelegate: NSObject, NSWindowDelegate {
    func windowWillClose(notification: NSNotification) {
        NSApplication.sharedApplication().terminate(0)
    }
}
