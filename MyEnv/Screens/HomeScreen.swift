//
//  HomeScreen.swift
//  MyEnv
//
//  Created by Jay Phillips on 1/2/20.
//  Copyright © 2020 Jay Phillips. All rights reserved.
//

import SwiftUI

struct HomeScreen: View {
    @EnvironmentObject var theme: SelectedTheme
    var body: some View {
        VStack {
            Text("Home Screen")
                .font(theme.theme.primaryFont)
                .foregroundColor(theme.theme.mainColor)
            Text("This screen has home stuff")
                .font(theme.theme.secondaryFont)
                .foregroundColor(theme.theme.accentColor)
        }
    }
}

struct HomeScreen_Previews: PreviewProvider {
    static var previews: some View {
        HomeScreen().environmentObject(SceneDelegate.selectedTheme)
    }
}
