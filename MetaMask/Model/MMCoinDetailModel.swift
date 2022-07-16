//
//  MMCoinDetailModel.swift
//  MetaMask
//
//  Created by eric on 2022/7/16.
//

import SwiftUI

/// 首页列表数据模型
struct MMCoinDetailModel: Hashable, Codable, Identifiable {
    
    /// 唯一标识
    var id: Int
    /// 图标
    var iconName: String
    /// 币名称
    var name: String
    /// 数量
    var count: Float
    /// 价值
    var value: Float
}

extension MMCoinDetailModel {
    
    /// 图片的图片格式
    var image: Image {
        Image(iconName)
    }
}
