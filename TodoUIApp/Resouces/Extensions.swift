//
//  Extensions.swift
//  TodoUIApp
//
//  Created by 野澤拓己 on 2020/11/05.
//

import UIKit

extension UIView {
    
    public var fullWidth : CGFloat {
        return frame.size.width
    }
    
    public var fullHeight : CGFloat {
        return frame.size.height
    }
    
    public var top : CGFloat {
        return frame.origin.y
    }
    
    public var left : CGFloat {
        return frame.origin.x
    }
    
    public var bottom : CGFloat {
        return top + fullHeight
    }
    
    public var right : CGFloat {
        return left + fullWidth
    }
    
}
