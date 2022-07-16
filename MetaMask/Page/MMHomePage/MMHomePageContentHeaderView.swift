//
//  MMHomePageContentHeaderView.swift
//  MetaMask
//
//  Created by eric on 2022/7/16.
//

import SwiftUI
import SheetKit

/// 首页头部布局
struct MMHomePageContentHeaderView: View {
    // 接收
    @State var showReceive = false
    // 发送
    @State var showSend = false
    // 交换
    @State var showExchangePage = false
    
    @Environment(\.sheetKit) var sheetKit
    
    var body: some View {
        ZStack {
            HStack {
                Spacer()
                VStack {
                    // 头像
                    Spacer().frame(height: 25)
                    Image.init("icon_profile")
                        .clipShape(Circle())
                    Spacer().frame(height: 15)
                    
                    // 昵称
                    Text("Account 1")
                        .font(.system(size: 20))
                        .foregroundColor(Color.black)
                    Spacer().frame(height: 15)
                    
                    // 余额
                    Text("$ 0")
                        .font(.system(size: 10))
                        .foregroundColor(Color.black)
                    Spacer().frame(height: 20)
                    
                    // 地址
                    MMHomePageContentHeaderAddressView().frame(width: 130, height: 30, alignment: .center)
                    Spacer().frame(height: 20)
                    
                    // 按钮
                    HStack {
                        MMHomePageContentHeaderButton(title: "接收", imageName: "icon_receive") {
                            print("接收")
                            showReceive.toggle()
                        }.sheet(isPresented: $showReceive) {
                            MMReceivePage().clearBackground()
                        }
                        
                        MMHomePageContentHeaderButton(title: "发送", imageName: "icon_send") {
                            print("发送")
                            showSend.toggle()
                        }.sheet(isPresented: $showSend) {
                            MMSendPage {
                                showSend.toggle()
                            }.clearBackground()
                        }
                        
                        MMHomePageContentHeaderButton(title: "交换", imageName: "icon_interaction") {
                            print("交换")
                            showExchangePage.toggle()
                        }.sheet(isPresented: $showExchangePage) {
                            MMExchangePage {
                                showExchangePage.toggle()
                            }.clearBackground()
                        }
                    }
                    
                }
                Spacer()
            }
        }
    }
    
}

struct MMHomePageContentHeaderView_Previews: PreviewProvider {
    static var previews: some View {
        MMHomePageContentHeaderView()
    }
}
