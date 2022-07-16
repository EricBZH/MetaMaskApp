//
//  MMHomePageTitleView.swift
//  MetaMask
//
//  Created by eric on 2022/7/16.
//

import SwiftUI

/// 首页航条自定义视图
struct MMHomePageTitleView: View {
    var body: some View {
        VStack {
            Text("钱包")
                .font(.system(size: 18))
            Spacer().frame(height: 4)
            Text("Ethereum Main Network")
                .font(.system(size: 10))
        }
    }
}

struct MMTitleView_Previews: PreviewProvider {
    static var previews: some View {
        MMHomePageTitleView()
    }
}
