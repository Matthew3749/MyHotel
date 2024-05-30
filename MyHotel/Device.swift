//
//  Device.swift
//  MyHotel
//
//  Created by Rehan Chaudhry on 5/30/24.
//

import Foundation
import UIKit

class Device {
    
    static public var width: CGFloat {
        UIScreen.main.bounds.width
    }
    
    static public var height: CGFloat {
        UIScreen.main.bounds.height
    }
    
    static public var safeAreaTop: CGFloat {
        UIApplication.shared.windows.filter {$0.isKeyWindow}.first?.safeAreaInsets.top ?? 0
    }
    
    static public var safeAreaBottom: CGFloat {
        UIApplication.shared.windows.filter {$0.isKeyWindow}.first?.safeAreaInsets.bottom ?? 0
    }
    
    static public var safeAreaVertical: CGFloat {
        return safeAreaTop + safeAreaBottom
    }
}
