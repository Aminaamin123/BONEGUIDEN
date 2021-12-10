//
//  Webview.swift
//  BONEGUIDEN
//
//  Created by Amina Amin on 2021-07-17.
//

import Foundation
import WebKit
import SwiftUI


struct Webview: UIViewRepresentable {
    
    var url: String
    
    func makeUIView(context: Context) -> WKWebView {
        guard let url = URL(string: self.url) else{
            return WKWebView()
        }
        let request = URLRequest(url: url)
        let wkWebview = WKWebView()
        wkWebview.load(request)
        return wkWebview
        }
    
    func updateUIView(_ uiView: WKWebView, context: UIViewRepresentableContext<Webview>) {
        var hej: String
    }
    
    
    }


    
