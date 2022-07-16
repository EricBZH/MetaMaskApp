//
//  MMExchangePageContentView.swift
//  MetaMask
//
//  Created by eric on 2022/7/16.
//

import SwiftUI

/// 交换页面内容布局
struct MMExchangePageContentView: View {
    var body: some View {
        ZStack {
            Color.white
            
            VStack {
                Spacer().frame(height: 40)
                
                Image("swaps_onboard_device")
                
                
                HStack {
                    Text("获取")
                        .font(.system(size: 20))
                        .foregroundColor(Color.black)
                    Text("来自")
                        .font(.system(size: 20))
                        .fontWeight(.bold)
                        .foregroundColor(Color.black)
                    Text("顶级流动性来源")
                        .font(.system(size: 20))
                        .foregroundColor(Color.black)
                    Text("来源")
                        .font(.system(size: 20))
                        .fontWeight(.bold)
                        .foregroundColor(Color.black)
                }
                
                
                Spacer().frame(height: 5)
                
                Text("的最佳价格")
                    .font(.system(size: 20))
                    .foregroundColor(Color.black)
                
                Image("swaps_aggs-dark")
                
                Spacer()
                
                Button {
                    print("开始交换")
                } label: {
                    HStack {
                        Spacer().frame(width: 16)
                        Text("开始交换")
                            .foregroundColor(Color.white)
                            .padding(EdgeInsets.init(top: 15, leading: 130, bottom: 15, trailing: 130))
                        Spacer().frame(width: 16)
                    }
                    .background(Color.blue)
                    .cornerRadius(30)
                }
            }
            .safeAreaInset(edge: .bottom) {
                Color.white
                    .frame(minWidth: 0, idealWidth: 0, maxWidth: .infinity, minHeight: 0, idealHeight: 40, maxHeight: 40, alignment: .bottom)
            }
        }
    }
}

struct MMExchangePageContentView_Previews: PreviewProvider {
    static var previews: some View {
        MMExchangePageContentView()
    }
}
