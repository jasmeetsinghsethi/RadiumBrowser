//
//  WKWebViewExtensions.swift
//  RadiumBrowser
//
//  Created by Bradley Slayter on 11/7/17.
//  Copyright © 2017 bslayter. All rights reserved.
//

import Foundation
import WebKit

extension WKWebView {
    func screenshot() -> UIImage? {
        UIGraphicsBeginImageContextWithOptions(self.bounds.size, true, 0)
        scrollView.drawHierarchy(in: self.bounds, afterScreenUpdates: true)
        let img = UIGraphicsGetImageFromCurrentImageContext()
        UIGraphicsEndImageContext()
        return img
    }
}
