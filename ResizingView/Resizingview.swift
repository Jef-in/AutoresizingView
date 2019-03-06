//
//  Resizingview.swift
//  ResizingView
//
//  Created by Jefin on 06/03/19.
//  Copyright © 2019 jefin. All rights reserved.
//

import UIKit

class Resizingview: UIView {



static var kResizeThumbSize:CGFloat = 44.0
private typealias `Self` = Resizingview

var imageView = UIImageView()

var isResizingLeftEdge:Bool = false
var isResizingRightEdge:Bool = false
var isResizingTopEdge:Bool = false
var isResizingBottomEdge:Bool = false

var isResizingBottomRightCorner:Bool = false
var isResizingLeftCorner:Bool = false
var isResizingRightCorner:Bool = false
var isResizingBottomLeftCorner:Bool = false


//Define your initialisers here

override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
    if let touch = touches.first {
        let currentPoint = touch.location(in: self)
        
        isResizingBottomRightCorner = (self.bounds.size.width - currentPoint.x < Self.kResizeThumbSize && self.bounds.size.height - currentPoint.y < Self.kResizeThumbSize);
        isResizingLeftCorner = (currentPoint.x < Self.kResizeThumbSize && currentPoint.y < Self.kResizeThumbSize);
        isResizingRightCorner = (self.bounds.size.width-currentPoint.x < Self.kResizeThumbSize && currentPoint.y < Self.kResizeThumbSize);
        isResizingBottomLeftCorner = (currentPoint.x < Self.kResizeThumbSize && self.bounds.size.height - currentPoint.y < Self.kResizeThumbSize);
        
        isResizingLeftEdge = (currentPoint.x < Self.kResizeThumbSize)
        isResizingTopEdge = (currentPoint.y < Self.kResizeThumbSize)
        isResizingRightEdge = (self.bounds.size.width - currentPoint.x < Self.kResizeThumbSize)
        
        isResizingBottomEdge = (self.bounds.size.height - currentPoint.y < Self.kResizeThumbSize)
        
        // do something with your currentPoint
        
    }
}

override func touchesMoved(_ touches: Set<UITouch>, with event: UIEvent?) {
    if let touch = touches.first {
        let currentPoint = touch.location(in: self)
        // do something with your currentPoint
    }
}

override func touchesEnded(_ touches: Set<UITouch>, with event: UIEvent?) {
    if let touch = touches.first {
        let currentPoint = touch.location(in: self)
        // do something with your currentPoint
        
        
        isResizingLeftEdge = false
        isResizingRightEdge = false
        isResizingTopEdge = false
        isResizingBottomEdge = false
        
        isResizingBottomRightCorner = false
        isResizingLeftCorner = false
        isResizingRightCorner = false
        isResizingBottomLeftCorner = false
        
    }

}
}
