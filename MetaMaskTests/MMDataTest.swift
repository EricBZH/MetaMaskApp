//
//  MMDataTest.swift
//  MetaMaskTests
//
//  Created by eric on 2022/7/16.
//

import XCTest

class MMDataTest: XCTestCase {
    
    /// 测试本地数据条数是否符合预期
    func testData() -> Void {
        let listData = mmCoinListData
        XCTAssert(listData.count == 10, "确保本地有10条数据")
    }
}
