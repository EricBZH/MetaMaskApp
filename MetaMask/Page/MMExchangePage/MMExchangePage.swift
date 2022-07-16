//
//  MMExchangePage.swift
//  MetaMask
//
//  Created by eric on 2022/7/16.
//

import SwiftUI
import SwiftUI_WRNavigationBar

/// 交换页面
struct MMExchangePage: View {
    var cancelAction: () -> Void
    
    var body: some View {
        NavigationView {
            WRNavigationBar {
                MMExchangePageContentView()
            }
            .background(Color.white)
            .navigationBarTitleView(titleView: {
                MMExchangePageTitleView()
            }).wrNavigationBarItems(trailing: {
                Button {
                    cancelAction()
                } label: {
                    Text("取消").foregroundColor(Color(red: 80/255, green: 131/255, blue: 207/255))
                }
            })
        }
    }
}

struct MMExchangePage_Previews: PreviewProvider {
    static var previews: some View {
        MMExchangePage {
            print("取消")
        }
    }
}
