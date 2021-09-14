//
//  WebView.swift
//  TechNews
//
//  Created by Rohan Tyagi on 14/09/21.
//

import Foundation
import WebKit
import SwiftUI

struct WebView : UIViewRepresentable {
    
    typealias UIViewType = WKWebView
    
    let urlString: String?
    
    func makeUIView(context: Context) -> UIViewType {
        
        return WKWebView()
        
    }
    
    func updateUIView(_ uiView: UIViewType, context: Context) {
        
        
        
        if let safeURL = urlString {
            
            if let url = URL(string: safeURL) {
                
                let request = URLRequest(url: url)
                
                uiView.load(request)
                
            }
            
        }
        
    }
    
}
