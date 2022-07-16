//
//  MMHomePageContentHeaderAddressView.swift
//  MetaMask
//
//  Created by eric on 2022/7/16.
//

import SwiftUI

/// 首页头部地址布局
struct MMHomePageContentHeaderAddressView: View {
    var body: some View {
        Button  {
            print("复制地址")
        } label: {
            Text("0x548c3D783B00339d9EBbd03c71D2d260f558cc60")
                .foregroundColor(Color.black)
                .font(.system(size: 10))
                .padding(EdgeInsets(top: 10, leading: 10, bottom: 10, trailing: 10))
                .background(Color.init(red: 233/255, green: 242/255, blue: 250/255))
                .cornerRadius(10)
                .truncationMode(.middle)
        }// 解决多个button在同一个布局内冲突的问题
        .buttonStyle(BorderlessButtonStyle())

    }
}

struct MMHomePageContentHeaderAddressView_Previews: PreviewProvider {
    static var previews: some View {
        MMHomePageContentHeaderAddressView()
    }
}
