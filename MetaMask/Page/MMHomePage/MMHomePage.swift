//
//  MMHomePage.swift
//  MetaMask
//
//  Created by eric on 2022/7/16.
//

import SwiftUI
import SwiftUI_WRNavigationBar

/// 首页
struct MMHomePage: View {
    var body: some View {
        ZStack {
            NavigationView {
                WRNavigationBar {
                    MMHomePageContentView()
                }
                .background(Color.white)
                .navigationBarTitleView(titleView: {
                    MMHomePageTitleView()
                }).wrNavigationBarItems(leading: {
                    Image.init("icon_more")//#497AC7
                }, trailing: {
                    Image.init("icon_scan")//#497AC7
                })
            }
        }
    }
}

struct MMHomePage_Previews: PreviewProvider {
    static var previews: some View {
        MMHomePage()
    }
}
