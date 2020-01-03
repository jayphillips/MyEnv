//
//  AppTheme.swift
//  MyEnv
//
//  Created by Jay Phillips on 1/3/20.
//  Copyright © 2020 Jay Phillips. All rights reserved.
//

import SwiftUI

protocol AppTheme {
    var primaryFont: Font { get set}
    var secondaryFont: Font {get set}
    var mainColor: Color {get set}
    var accentColor: Color {get set}
}

class Theme1: AppTheme {
    var primaryFont: Font = Font.custom("NotoSansMyanmar-Bold", size: 26)
    var secondaryFont: Font = Font.custom("NotoSansMyanmar-Light", size: 18)
    var mainColor: Color = Color.init(UIColor.darkGray)
    var accentColor: Color = Color.init(UIColor.lightGray)
}

class Theme2: AppTheme {
    var primaryFont: Font = Font.custom("PingFangHK-Medium", size: 26)
    var secondaryFont: Font = Font.custom("PingFangHK-Ultralight", size: 18)
    var mainColor: Color = Color.init(UIColor.blue)
    var accentColor: Color = Color.init(UIColor.purple)
}

fileprivate let availableThemes: Array<AppTheme> = [Theme1(), Theme2()]
class SelectedTheme: ObservableObject {
    @Published var theme: AppTheme = availableThemes[0]
    func switchTheme() {
        if let _ = theme as? Theme1 {
            theme = availableThemes[1]
        } else {
            theme = availableThemes[0]
        }
    }
}
