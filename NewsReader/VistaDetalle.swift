//
//  VistaDetalle.swift
//  NewsReader
//
//  Created by Fernando on 25/11/2019.
//  Copyright © 2019 Fernando Salvador. All rights reserved.
//

import UIKit
import WebKit

class VistaDetalle: UIViewController {
    
    @IBOutlet weak var webPeriodico: WKWebView!
    @IBOutlet weak var activityIndicator: UIActivityIndicatorView!
    
    
    var web = ""
    var titulo = ""
  
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.navigationItem.title = titulo
        self.navigationItem.backBarButtonItem?.title = "Inicio"
       
        let miUrl = URL(string: web)!
        
        let request: URLRequest = URLRequest(url: miUrl)
        
        webPeriodico.load(request)
        
        webPeriodico.addSubview(activityIndicator)
        activityIndicator.startAnimating()
        
        webPeriodico.navigationDelegate = self
        activityIndicator.hidesWhenStopped = true
        
        // Do any additional setup after loading the view.
    }
   
    @IBAction func back(_ sender: UIBarButtonItem) {
        
        if webPeriodico.canGoBack {
            webPeriodico.goBack()
            activityIndicator.startAnimating()
            activityIndicator.hidesWhenStopped = true
        }
        
    }
    
    @IBAction func foward(_ sender: UIBarButtonItem) {
        
        if webPeriodico.canGoForward {
            webPeriodico.goForward()
            activityIndicator.startAnimating()
            activityIndicator.hidesWhenStopped = true
        }
        
    }
    
    @IBAction func refresh(_ sender: UIBarButtonItem) {
        
        webPeriodico.reload()
        activityIndicator.startAnimating()
        activityIndicator.hidesWhenStopped = true
        
    }
    
    @IBAction func stop(_ sender: UIBarButtonItem) {
        
        webPeriodico.stopLoading()
        activityIndicator.stopAnimating()
        activityIndicator.hidesWhenStopped = true
        
    }
    

}

extension VistaDetalle: WKNavigationDelegate {
    
  func webView(_ webView: WKWebView, didFinish navigation: WKNavigation!) {
        activityIndicator.stopAnimating()
    }
    
    func webView(_ webView: WKWebView, didFail navigation: WKNavigation!, withError error: Error) {
        activityIndicator.stopAnimating()
    }
    
}
