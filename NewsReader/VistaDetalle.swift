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
    
    var city: String = String()
    var indice: Int = Int()
    
   
    /*var webView: WKWebView!
    
    override func loadView() {
        let webConfiguration = WKWebViewConfiguration()
        webView = WKWebView(frame: .zero, configuration: webConfiguration)
        webView.uiDelegate = self
        view = webView
    }*/
 
  
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let web = ModeloDatos().webSeleccionada(ciudad: city, diario: indice)
        
        let miUrl = URL(string: web)!
        
        let request: URLRequest = URLRequest(url: miUrl)
        
        webPeriodico.load(request)
 
    
        
      //  webPeriodico.uiDelegate = self as! WKUIDelegate

        // Do any additional setup after loading the view.
    }
    
    
   

}
