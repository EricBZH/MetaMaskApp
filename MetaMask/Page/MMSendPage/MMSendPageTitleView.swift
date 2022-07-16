//
//  MMSendPageTitleView.swift
//  MetaMask
//
//  Created by eric on 2022/7/16.
//

import SwiftUI

/// 发送导航条自定义视图
struct MMSendPageTitleView: View {
    var body: some View {
        VStack {
            Text("发送到")
                .font(.system(size: 18))
            Spacer().frame(height: 4)
            Text("Ethereum Main Network")
                .font(.system(size: 10))
        }
    }
}

struct MMSendPageTitleView_Previews: PreviewProvider {
    static var previews: some View {
        MMSendPageTitleView()
    }
}
