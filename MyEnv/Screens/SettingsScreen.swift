//
//  SettingsScreen.swift
//  MyEnv
//
//  Created by Jay Phillips on 1/2/20.
//  Copyright © 2020 Jay Phillips. All rights reserved.
//

import SwiftUI

struct SettingsScreen: View {
    @EnvironmentObject var theme: SelectedTheme
    var body: some View {
        VStack {
            Text("SETTINGS SCREEN")
                .font(theme.theme.primaryFont)
            Text("Change your theme here")
                .font(theme.theme.secondaryFont)
            Button(action: {
                self.theme.switchTheme()
            }) {
                ZStack {
                    Rectangle()
                    .fill(Color.blue)
                    .frame(maxHeight: 50)
                    Text("Toggle Theme")
                    .foregroundColor(Color.white)
                }
            }
        .padding(50)
            .foregroundColor(theme.theme.mainColor)
    }
}

struct SettingsScreen_Previews: PreviewProvider {
    static var previews: some View {
        SettingsScreen().environmentObject(SceneDelegate.selectedTheme)
    }
}
}
