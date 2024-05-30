//
//  MyHotelFont.swift
//  MyHotel
//
//  Created by Rehan Chaudhry on 5/29/24.
//

import Foundation
import SwiftUI

public enum MHFontWeight: String {
    case light = "Light"
    case regular = "Regular"
    case medium = "Medium"
    case semiBold = "Semibold"
    case bold = "Bold"
    case heavy = "Heavy"
}

extension Font {
    public static func mhFont(size: CGFloat, weight: MHFontWeight = .regular) -> Font {
        return .custom("SpaceGrotesk-" + weight.rawValue, size: CGFloat(size))
    }
}
