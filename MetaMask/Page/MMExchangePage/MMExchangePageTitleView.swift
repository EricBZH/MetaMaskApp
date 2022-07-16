//
//  MMExchangePageTitleView.swift
//  MetaMask
//
//  Created by eric on 2022/7/16.
//

import SwiftUI

/// 交换页面航条自定义视图
struct MMExchangePageTitleView: View {
    var body: some View {
        VStack {
            Text("交换")
                .font(.system(size: 18))
            Spacer().frame(height: 4)
            Text("Ethereum Main Network")
                .font(.system(size: 10))
        }
    }
}

struct MMExchangePageTitleView_Previews: PreviewProvider {
    static var previews: some View {
        MMExchangePageTitleView()
    }
}
