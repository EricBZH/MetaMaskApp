//
//  MMReceivePage.swift
//  MetaMask
//
//  Created by eric on 2022/7/16.
//

import SwiftUI

/// 接收页面
struct MMReceivePage: View {
    let buttonWidth = (ScreenWidth - 32 - 16) / 2.0
    
    var body: some View {
        ZStack(alignment: .bottom) {
            Color.black.opacity(0.3)
            
            VStack {
                Spacer().frame(height: 20)
                Text("接收")
                    .foregroundColor(Color.black)
                Spacer().frame(height: 20)
                
                Image("icon_qrcode")
                    .frame(width: 200, height: 200)
                Spacer().frame(height: 20)
                
                Text("扫描地址以接收付款").foregroundColor(Color.black)
                
                ZStack {
                    Color(red: 243/255, green: 244/255, blue: 246/255)
                    
                    Button(action: {
                        print("复制地址")
                    }) {
                        HStack {
                            Text("0x548c3D783B00339d9EBbd03c71D2d260f558cc60")
                                .lineLimit(1)
                                .truncationMode(.middle)
                                .foregroundColor(Color.black)
                                .padding(EdgeInsets(top: 0, leading: 10, bottom: 0, trailing: 0))
                            
                            HStack {
                                Text("复制")
                                    .fontWeight(.semibold)
                                    .font(.system(size: 14))
                            }
                            .padding(EdgeInsets.init(top: 8, leading: 8, bottom: 8, trailing: 8))
                            .foregroundColor(Color(red: 77/255, green: 121/255, blue: 201/255))
                            .background(.white)
                            .cornerRadius(40)
                            .overlay(RoundedRectangle(cornerSize: CGSize(width: 40, height: 40)).stroke(Color(red: 77/255, green: 121/255, blue: 201/255)))
                            
                            Image("icon_share")
                                .padding(EdgeInsets(top: 0, leading: 0, bottom: 0, trailing: 10))
                        }
                    }
                }
                .frame(width: 200, height: 60)
                .cornerRadius(30)
                
                HStack {
                    Button(action: {
                        print("购买ETH")
                    }) {
                        HStack {
                            Text("购买ETH")
                                .fontWeight(.semibold)
                                .font(.system(size: 16))
                        }
                        .padding(EdgeInsets.init(top: 20, leading: 40, bottom: 20, trailing: 40))
                        .foregroundColor(.white)
                        .background(Color(red: 77/255, green: 121/255, blue: 201/255))
                        .cornerRadius(40)
                    }

                    Spacer().frame(width: 16)

                    Button(action: {
                        print("请求付款")
                    }) {
                        HStack {
                            Text("请求付款")
                                .fontWeight(.semibold)
                                .font(.system(size: 16))
                        }
                        .padding(EdgeInsets.init(top: 20, leading: 40, bottom: 20, trailing: 40))
                        .foregroundColor(Color(red: 77/255, green: 121/255, blue: 201/255))
                        .background(.white)
                        .cornerRadius(40)
                        .overlay(RoundedRectangle(cornerSize: CGSize(width: 40, height: 40)).stroke(Color(red: 77/255, green: 121/255, blue: 201/255)))
                    }
                }
                .frame(width:ScreenWidth , height: 80)
            }
            .background(Color.white)
        }
        .background(Color.clear)
    }
}

struct MMReceivePage_Previews: PreviewProvider {
    static var previews: some View {
        MMReceivePage()
    }
}
