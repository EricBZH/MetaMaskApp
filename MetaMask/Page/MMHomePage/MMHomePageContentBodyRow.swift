//
//  MMHomePageContentBodyRow.swift
//  MetaMask
//
//  Created by eric on 2022/7/16.
//

import SwiftUI

/// 首页列表行布局
struct MMHomePageContentBodyRow: View {
    var model: MMCoinDetailModel
    
    var body: some View {
        VStack {
            HStack {
                // 图标
                Spacer().frame(width: 0)
                model.image
                    .resizable()
                    .frame(width: 55, height: 55, alignment: .center)
                    .clipShape(Circle())
                    
                VStack(alignment: .leading) {
                    // 数量+名称
                    Text(String(format:  "%.1f" , model.count) + " " + model.name)
                        .font(.system(size: 16))
                        .foregroundColor(Color.black)
                    
                    Spacer().frame(height: 10)
                    // 金额
                    Text("$ " + String(format:  "%.2f" , model.value))
                        .font(.system(size: 11))
                        .foregroundColor(Color(red: 107/255, green: 108/255, blue: 109/255, opacity: 1.0))
                }
                
                Spacer()
                
                // 更多箭头
                Image("icon_more_arrow")
                    .resizable()
                    .frame(width: 20, height: 20, alignment: .center)
            }
            // 分割线
            Divider()
        }
    }
}

struct MMHomePageContentBodyRow_Previews: PreviewProvider {
    static var previews: some View {
        MMHomePageContentBodyRow(model: mmCoinListData[0])
    }
}
