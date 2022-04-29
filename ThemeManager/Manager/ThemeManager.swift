//
//  ThemeManager.swift
//  GenuBank
//
//  Created by Jorge Azurduy on 11/29/21.
//

import UIKit
import Foundation

enum Theme {
    case dark
    case light
}

struct ThemeManager {

    // MARK: - Propperties
    static var selectedTheme: Theme?

    // MARK: - Theme setup

    static func setTheme(type: Theme) {
        switch type {
        case .dark:
            darkTheme()
            selectedTheme = .dark
        case .light:
            lightTheme()
            selectedTheme = .light
        }
    }

    // MARK: - Themes definition
    
    static func darkTheme() {
        ColorManager.darkTheme()
        FontManager.darkFontTheme()
        AssetManager.darkTheme()
    }
    
    static func lightTheme() {
        ColorManager.lightTheme()
        FontManager.lightFontTheme()
        AssetManager.lightTheme()
    }
}
