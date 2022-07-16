//
//  MMSendPage.swift
//  MetaMask
//
//  Created by eric on 2022/7/16.
//

import SwiftUI
import SwiftUI_WRNavigationBar

/// 发送页面
struct MMSendPage: View {
    var cancelAction: () -> Void
    
    var body: some View {
        NavigationView {
            WRNavigationBar {
                MMSendPageContentView()
            }
            .background(Color.white)
            .navigationBarTitleView(titleView: {
                MMSendPageTitleView()
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

struct MMSendPage_Previews: PreviewProvider {
    static var previews: some View {
        MMSendPage {
            print("取消")
        }
    }
}
