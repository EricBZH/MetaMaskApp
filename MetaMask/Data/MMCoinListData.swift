//
//  MMCoinListData.swift
//  MetaMask
//
//  Created by eric on 2022/7/16.
//

import SwiftUI

let mmCoinListData: [MMCoinDetailModel] = load("mmCoinListData.json")

/// 加载本地json数据
/// - Parameter filename: json文件名
/// - Returns: json数据
func load<T: Decodable>(_ filename: String) -> T {
    let data: Data
    
    guard let file = Bundle.main.url(forResource: filename, withExtension: nil)
        else {
            fatalError("Couldn't find \(filename) in main bundle.")
    }
    
    do {
        data = try Data(contentsOf: file)
    } catch {
        fatalError("Couldn't load \(filename) from main bundle:\n\(error)")
    }
    
    do {
        let decoder = JSONDecoder()
        return try decoder.decode(T.self, from: data)
    } catch {
        fatalError("Couldn't parse \(filename) as \(T.self):\n\(error)")
    }
}

