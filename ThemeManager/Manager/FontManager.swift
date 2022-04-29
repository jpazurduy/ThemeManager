//
//  FontManager.swift
//  GenuBank
//
//  Created by Jorge Azurduy on 11/29/21.
//

import Foundation

struct FontManager {
    
    static var black: String!
    static var bold: String!
    static var extraBold: String!
    static var extraLight: String!
    static var light: String!
    static var medium: String!
    static var regular: String!
    static var semiBold: String!
    static var thin: String!

    static func darkFontTheme() {
        
        black = FontFamily.Inter.black.name
        bold = FontFamily.Inter.bold.name
        extraBold = FontFamily.Inter.extraBold.name
        extraLight = FontFamily.Inter.extraLight.name
        light = FontFamily.Inter.light.name
        medium = FontFamily.Inter.medium.name
        regular = FontFamily.Inter.regular.name
        semiBold = FontFamily.Inter.semiBold.name
        thin = FontFamily.Inter.thin.name
    
    }

    static func lightFontTheme() {
        
        black = FontFamily.Inter.black.name
        bold = FontFamily.Inter.bold.name
        extraBold = FontFamily.Inter.extraBold.name
        extraLight = FontFamily.Inter.extraLight.name
        light = FontFamily.Inter.light.name
        medium = FontFamily.Inter.medium.name
        regular = FontFamily.Inter.regular.name
        semiBold = FontFamily.Inter.semiBold.name
        thin = FontFamily.Inter.thin.name
    }
}
