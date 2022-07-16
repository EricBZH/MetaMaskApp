//
//  MMHomePageListView.swift
//  MetaMask
//
//  Created by eric on 2022/7/16.
//

import SwiftUI

/// 首页内容布局
struct MMHomePageContentView: View {
    var body: some View {
        List {
            // header
            MMHomePageContentHeaderView()
                .listRowSeparator(.hidden)
                .background(Color.white)
                .listRowBackground(Color.white)
            
            Spacer()
                .frame(height: 15)
                .listRowBackground(Color.white)
            
            // body
            ForEach(mmCoinListData) { mmCoinDetailModel in
                MMHomePageContentBodyRow(model: mmCoinDetailModel)
                    .frame(height: 60)
                    .listRowSeparator(.hidden)
                    .listRowBackground(Color.white)
                
            }
        }
        .listStyle(.plain)
        .background(Color.white)
        .safeAreaInset(edge: .bottom) {
            Color.white
                .frame(minWidth: 0, idealWidth: 0, maxWidth: .infinity, minHeight: 0, idealHeight: 40, maxHeight: 40, alignment: .bottom)
        }
    }
}

struct MMHomePageListView_Previews: PreviewProvider {
    static var previews: some View {
        MMHomePageContentView()
    }
}
