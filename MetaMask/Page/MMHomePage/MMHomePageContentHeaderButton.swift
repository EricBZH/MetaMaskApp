//
//  MMHomePageContentHeaderButton.swift
//  MetaMask
//
//  Created by eric on 2022/7/16.
//

import SwiftUI

/// 首页头部按钮布局
struct MMHomePageContentHeaderButton: View {
    var title: String
    var imageName: String
    var action: () -> Void
    
    var body: some View {
        Button(action: {
            action()
        }) {
            VStack(spacing: 10) {
                Image(imageName)
                    .resizable()
                    .renderingMode(.template)
                    .foregroundColor(Color.white)
                    .background(Color.init(red: 73/255, green: 121/255, blue: 200/255))
                    .frame(width: 30, height: 30)
                    .clipShape(Circle())
                    .frame(width: 42, height: 42, alignment: .center)
                
                Text(title)
                    .foregroundColor(Color.init(red: 46/255, green: 97/255, blue: 139/255))
                    .font(.system(size: 12))
            }
        }
        // 解决多个button在同一个布局内冲突的问题
        .buttonStyle(BorderlessButtonStyle())
    }
}

struct MMHomePageContentHeaderButton_Previews: PreviewProvider {
    static var previews: some View {
        MMHomePageContentHeaderButton(title: "接收", imageName: "icon_receive") {
            print("Edit button was tapped")
        }
    }
}
