//
//  Extentions.swift
//  VRShop
//
//  Created by yury mid on 25.10.2022.
//

import Foundation
import SwiftUI

extension Color {
    static let bg = Color("Background")
    static let sbg = Color("SecondaryBG")
    static let readable = Color("Readable")
}

/*
 * Bear in mind not every currency have a corresponding symbol.
 *
 * EXAMPLE TABLE
 *
 * currency code | Country & Currency | Currency Symbol
 *
 *      BGN      |   Bulgarian lev    |      лв
 *      HRK      |   Croatian Kuna    |      kn
 *      CZK      |   Czech  Koruna    |      Kč
 *      EUR      |       EU Euro      |      €
 *      USD      |     US Dollar      |      $
 *      GBP      |   British Pound    |      £
 */

func getSymbol(forCurrencyCode code: String) -> String? {
    let locale = NSLocale(localeIdentifier: code)
    if locale.displayName(forKey: .currencySymbol, value: code) == code {
        let newlocale = NSLocale(localeIdentifier: code.dropLast() + "_en")
        return newlocale.displayName(forKey: .currencySymbol, value: code)
    }
    return locale.displayName(forKey: .currencySymbol, value: code)
}
