//
//  AssetManager.swift
//  GenuBank
//
//  Created by Jorge Azurduy on 11/30/21.
//

import UIKit
import Foundation

struct AssetManager {

    static var topLogo: UIImage!
    
    static func darkTheme() {
        topLogo = Asset.darkLogo.image
    }
    
    static func lightTheme() {
        topLogo = Asset.lightLogo.image
    }
    
}
