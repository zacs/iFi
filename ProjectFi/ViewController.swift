//
//  ViewController.swift
//  ProjectFi
//
//  Created by Zac Schellhardt on 9/24/16.
//  Copyright © 2016 Zac Schellhardt. All rights reserved.
//

import UIKit
import WebKit

class ViewController: UIViewController {

    @IBOutlet var webView: WKWebView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        // Disable bouncing in webview
        webView.scrollView.bounces = false
        
        // Set user-agent to look like a Nexus 5X on Nougat. Setting is for all webviews in app.
        // Note: This doesn't actually help anything, currently. Doesn't hurt to specify at this point though, since Fi site is non-responsive anyway.
        // UserDefaults.standard.register(defaults: ["UserAgent":"Mozilla/5.0 (Linux; Android 7.0; Nexus 5X Build/NRD90R) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/52.0.2743.98 Mobile Safari/537.36"])

        // Load saved cookie/session details
        
        // Load web view
        let url = URL(string: "https://fi.google.com")
        let request = URLRequest(url: url!)
        webView.load(request)
    }
    
    override var preferredStatusBarStyle: UIStatusBarStyle {
        return .lightContent
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

