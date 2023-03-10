//
//  UIFont+Extension.swift
//  SShop
//
//  Created by Виктор on 10.03.2023.
//

import UIKit.UIFont

extension UIFont {
    static func montserratBlack(ofSize: CGFloat) -> UIFont {
        return UIFont(name: "Montserrat-Black", size: ofSize) ?? UIFont.systemFont(ofSize: ofSize)
    }
    static func montserratBold(ofSize: CGFloat) -> UIFont {
        return UIFont(name: "Montserrat-Bold", size: ofSize) ?? UIFont.systemFont(ofSize: ofSize)
    }
    static func montserratExtraBold(ofSize: CGFloat) -> UIFont {
        return UIFont(name: "Montserrat-ExtraBold", size: ofSize) ?? UIFont.systemFont(ofSize: ofSize)
    }
    static func montserratExtraLight(ofSize: CGFloat) -> UIFont {
        return UIFont(name: "Montserrat-ExtraLight", size: ofSize) ?? UIFont.systemFont(ofSize: ofSize)
    }
    static func montserratLight(ofSize: CGFloat) -> UIFont {
        return UIFont(name: "Montserrat-Light", size: ofSize) ?? UIFont.systemFont(ofSize: ofSize)
    }
    static func montserratMedium(ofSize: CGFloat) -> UIFont {
        return UIFont(name: "Montserrat-Medium", size: ofSize) ?? UIFont.systemFont(ofSize: ofSize)
    }
    static func montserratRegular(ofSize: CGFloat) -> UIFont {
        return UIFont(name: "Montserrat-Regular", size: ofSize) ?? UIFont.systemFont(ofSize: ofSize)
    }
    static func montserratSemiBold(ofSize: CGFloat) -> UIFont {
        return UIFont(name: "Montserrat-SemiBold", size: ofSize) ?? UIFont.systemFont(ofSize: ofSize)
    }
    static func montserratThin(ofSize: CGFloat) -> UIFont {
        return UIFont(name: "Montserrat-Thin", size: ofSize) ?? UIFont.systemFont(ofSize: ofSize)
    }
}
