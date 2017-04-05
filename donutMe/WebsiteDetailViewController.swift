//
//  WebsiteDetailViewController.swift
//  donutMe
//
//  Created by Josh & Erica on 3/29/17.
//  Copyright © 2017 Josh McDonald. All rights reserved.
//

import UIKit

class WebsiteDetailViewController: UIViewController, UIWebViewDelegate {
    
   // @IBOutlet weak var Active: UIActivityIndicatorView!
    @IBOutlet weak var webView: UIWebView!
    
    
    var website: Website?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        updateViews()
        websiteViews()
    }
    
//    func webViewDidStartLoad(_ webView: UIWebView) {
//        Active.startAnimating()
//        Active.color = UIColor(red: 155.0, green: 196.0, blue: 243.0, alpha: 100.0)
//    }
//    
//    func webViewDidFinishLoad(_ webView: UIWebView) {
//        Active.stopAnimating()
//        Active.color = UIColor(red: 155.0, green: 196.0, blue: 243.0, alpha: 100.0)
//    }
    
    func updateViews() {
        guard let website = website, self.isViewLoaded else { return }
        
        title = website.name

    }
    
    func websiteViews() {
        
        guard let website = website?.websiteName else { return }
        guard let url = URL(string: website) else { return }
        
        UIWebView.loadRequest(webView)(NSURLRequest(url: url) as URLRequest)
        
    }
    
}

    
