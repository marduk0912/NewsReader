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
  
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let miUrl = URL(string: web)!
        
        let request: URLRequest = URLRequest(url: miUrl)
        
        webPeriodico.load(request)
 
        self.webPeriodico.addObserver(self, forKeyPath: #keyPath(WKWebView.isLoading), options: .new, context: nil)

        // Do any additional setup after loading the view.
    }
    
    
    override func observeValue(forKeyPath keyPath: String?, of object: Any?, change: [NSKeyValueChangeKey : Any]?, context: UnsafeMutableRawPointer?) {
        
        if keyPath == "loading" {
            
            if webPeriodico.isLoading {
                
                activityIndicator.startAnimating()
                activityIndicator.isHidden = false
                
            }else {
                
                activityIndicator.stopAnimating()
                activityIndicator.isHidden = true
                
            }
            
        }
        
    }
    
    
   

}
