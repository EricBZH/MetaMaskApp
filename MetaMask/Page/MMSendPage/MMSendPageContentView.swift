//
//  MMSendPageContentView.swift
//  MetaMask
//
//  Created by eric on 2022/7/16.
//

import SwiftUI

/// 发送内容布局
struct MMSendPageContentView: View {
    @State private var searchCentent: String = ""
    @State private var showTips: Bool = true
    
    var body: some View {
        ZStack {
            Color.white
            
            VStack (alignment: .leading) {
                Spacer().frame(height: 20)
                
                HStack () {
                    Spacer().frame(width: 16)
                    
                    Text("From:")
                        .foregroundColor(Color.black)
                    
                    Spacer().frame(width: 16)
                    
                    HStack {
                        Spacer().frame(width: 16)
                        
                        Image("icon_profile")
                            .cornerRadius(20)
                        
                        VStack (alignment: .leading) {
                            Spacer().frame(height: 10)
                            
                            Text("Account 1")
                                .font(.system(size: 16))
                                .foregroundColor(Color.black)
                            
                            Spacer().frame(height: 5)
                            
                            Text("余额: 0ETH")
                                .font(.system(size: 12))
                                .foregroundColor(Color.black.opacity(0.5))
                            
                            Spacer().frame(height: 10)
                        }
                        
                        Spacer()
                        
                        Image("icon_downward_triangle")
                            .resizable()
                            .frame(width: 12, height: 12)
                        Spacer().frame(width: 16)
                    }
                    .overlay(RoundedRectangle(cornerSize: CGSize(width: 20, height: 20)).stroke(Color(red: 77/255, green: 121/255, blue: 201/255)))
                    
                    Spacer().frame(width: 16)
                }
                
                Spacer().frame(height: 30)
                
                HStack () {
                    Spacer().frame(width: 16)
                    
                    Text("To:     ")
                        .foregroundColor(Color.black)
                    
                    Spacer().frame(width: 16)
                    
                    HStack {
                        Spacer().frame(width: 16)
                        
                        VStack(alignment: .leading) {
                            ZStack {
                                HStack {
                                    Text(showTips ? "搜索、公共地址(0x)或ENS" : "").foregroundColor(Color.black.opacity(0.3))
                                    Spacer()
                                }
                                VStack {
                                    Spacer().frame(height: 18)
                                    TextField("", text: $searchCentent)
                                        .foregroundColor(Color.black)
                                        .onChange(of: searchCentent) { newValue in
                                            showTips = searchCentent.count <= 0
                                        }
                                    Spacer().frame(height: 18)
                                }
                            }
                        }
                        
                        Spacer()
                        
                        Image("icon_downward_triangle")
                            .resizable()
                            .frame(width: 12, height: 12)
                        
                        Spacer().frame(width: 16)
                        
                    }.overlay(RoundedRectangle(cornerSize: CGSize(width: 20, height: 20)).stroke(Color(red: 77/255, green: 121/255, blue: 201/255)))
                    
                    Spacer().frame(width: 16)
                }
                
                Spacer()
            }
        }
    }
}

struct MMSendPageContentView_Previews: PreviewProvider {
    static var previews: some View {
        MMSendPageContentView()
    }
}
