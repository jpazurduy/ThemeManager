//
//  ColorManager.swift
//  GenuBank
//
//  Created by Jorge Azurduy on 11/29/21.
//

import UIKit
import Foundation

struct ColorManager {
    
    //  Main Background
    static var mainBackground: UIColor!
    
    // Basic color 
    static var white: UIColor!
    static var black: UIColor!
    
    // Primary colors
    static var primary100: UIColor!
    static var primary200: UIColor!
    static var primary300: UIColor!
    static var primary400: UIColor!
    static var primary500: UIColor!
    
    // Secondary colors
    static var secondary100: UIColor!
    
    // Info colors
    static var info100: UIColor!
    
    static var neutral100: UIColor!
    static var neutral200: UIColor!
    static var neutral300: UIColor!
    static var neutral400: UIColor!
    static var neutral500: UIColor!
    static var neutral600: UIColor!
    static var neutral700: UIColor!
    static var neutral900: UIColor!
    
    // Success colors
    static var success200: UIColor!
    static var success700: UIColor!
    
    // Warning colors
    static var warning200: UIColor!
    
    // Error colors
    static var error300: UIColor!
    static var error700: UIColor!
    
    static func darkTheme() {
        self.white = ColorName.white.color
        self.black = ColorName.black.color
        self.mainBackground = ColorName.black.color

        // Primary Colors
        self.primary100 = ColorName.primary100.color
        self.primary200 = ColorName.primary200.color
        self.primary300 = ColorName.primary300.color
        self.primary400 = ColorName.primary400.color
        self.primary500 = ColorName.success700.color
        
        // Secondary Colors
        self.secondary100 = ColorName.secondary100.color
        
        // Info Colors
        self.info100 = ColorName.info100.color
        
        // Neutral Colors
        self.neutral100 = ColorName.neutral100.color
        self.neutral200 = ColorName.neutral200.color
        self.neutral300 = ColorName.neutral300.color
        self.neutral400 = ColorName.neutral400.color
        self.neutral500 = ColorName.neutral500.color
        self.neutral600 = ColorName.neutral600.color
        self.neutral700 = ColorName.neutral700.color
        self.neutral900 = ColorName.neutral900.color
        
        // Success Colors
        self.success200 = ColorName.success200.color
        self.success700 = ColorName.success700.color
        
        // Warning Colors
        self.warning200 = ColorName.warning200.color
        
        // Error Colors
        self.error300 = ColorName.error300.color
        self.error700 = ColorName.error700.color
    }
    
    static func lightTheme() {
        self.white = ColorName.white.color
        self.black = ColorName.black.color
        self.mainBackground = ColorName.white.color

        // Primary Colors
        self.primary100 = ColorName.primary100.color
        self.primary200 = ColorName.primary200.color
        self.primary300 = ColorName.primary300.color
        self.primary400 = ColorName.primary400.color
        self.primary500 = ColorName.primary500.color
        
        // Secondary Colors
        self.secondary100 = ColorName.secondary100.color
        
        // Info Colors
        self.info100 = ColorName.info100.color
        
        // Neutral Colors
        self.neutral100 = ColorName.neutral100.color
        self.neutral200 = ColorName.neutral200.color
        self.neutral300 = ColorName.neutral300.color
        self.neutral400 = ColorName.neutral400.color
        self.neutral500 = ColorName.neutral500.color
        self.neutral600 = ColorName.neutral600.color
        self.neutral700 = ColorName.neutral700.color
        self.neutral900 = ColorName.neutral900.color
        
        // Success Colors
        self.success200 = ColorName.success200.color
        self.success700 = ColorName.success700.color
        
        // Warning Colors
        self.warning200 = ColorName.warning200.color
        
        // Error Colors
        self.error300 = ColorName.error300.color
        self.error700 = ColorName.error700.color
    }
}
