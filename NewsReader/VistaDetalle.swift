//
//  VistaDetalle.swift
//  NewsReader
//
//  Created by Fernando on 20/02/2020.
//  Copyright © 2020 Fernando Salvador. All rights reserved.
//

import UIKit
import WebKit

class VistaDetalle: UIViewController {

    @IBOutlet weak var webPeriodico: WKWebView!
    @IBOutlet weak var activity: UIActivityIndicatorView!
    
    var web:String = String()
    var titulo:String = String()
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        
        let recuest = URLRequest(url: URL (string: web)!)
        self.webPeriodico.load(recuest)
        
        webPeriodico.addSubview(activity)
        activity.startAnimating()
        webPeriodico.navigationDelegate = self
        activity.hidesWhenStopped = true
        navigationItem.title = titulo
        navigationController?.isToolbarHidden = false
        
    }
    
     @IBAction func back(_ sender: UIBarButtonItem) {
            
            if webPeriodico.canGoBack {
                webPeriodico.goBack()
                activity.startAnimating()
                activity.hidesWhenStopped = true
            }
            
        }
        
        @IBAction func foward(_ sender: UIBarButtonItem) {
            
            if webPeriodico.canGoForward {
                webPeriodico.goForward()
                activity.startAnimating()
                activity.hidesWhenStopped = true
            }
            
        }
        
        @IBAction func refresh(_ sender: UIBarButtonItem) {
            
            webPeriodico.reload()
            activity.startAnimating()
            activity.hidesWhenStopped = true
            
        }
        
        @IBAction func stop(_ sender: UIBarButtonItem) {
            
            webPeriodico.stopLoading()
            activity.stopAnimating()
            activity.hidesWhenStopped = true
            
        }
        

    }

    extension VistaDetalle: WKNavigationDelegate {
        
      func webView(_ webView: WKWebView, didFinish navigation: WKNavigation!) {
            activity.stopAnimating()
        }
        
        func webView(_ webView: WKWebView, didFail navigation: WKNavigation!, withError error: Error) {
            activity.stopAnimating()
        }
        
    }

