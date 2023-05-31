//
//  Color.swift
//  StarterProjectSetup
//
//  Created by Mirza  on 29/5/23.
//

import Foundation
import SwiftUI



extension Color{
    static let theme = ColorTheme()
}

struct ColorTheme{
    let accent = Color("AccentColor")
    let background = Color("BackgroundColor")
    let cyan = Color("Cyan")
    let pink = Color("Pink")
    let secondary = Color("SecondaryColor")
}

//struct ColorTheme2{// for multiple theme app
//    let accent = Color("AccentColor")
//    let background = Color("BackgroundColor")
//    let green = Color("GreenColor")
//    let red = Color("RedColor")
//    let secondary = Color("SecondaryColor")
//}
