//
//  DojoTests.swift
//  DojoTests
//
//  Created by Ignacio Hugo Gomez on 3/14/18.
//  Copyright © 2018 Ignacio Hugo Gomez. All rights reserved.
//

import XCTest
@testable import Dojo



class DojoTests: XCTestCase {

    func jsonObjectFrom(path: String) -> Any {
        let file = Bundle.main.path(forResource: path, ofType: "json")
        let data = try! Data(contentsOf: URL(fileURLWithPath: file!))
        return try! JSONSerialization.jsonObject(with: data, options:JSONSerialization.ReadingOptions(rawValue: 0))
    }

    func test_congrats_order_paid_off_for_ios_8_10_0() {
        let dictionary = self.jsonObjectFrom(path: "congrats_order_paid_off_for_ios_8_10_0") as! Dictionary<String, Any>

        // sections
        let sections: [[String:Any]] = dictionary["sections"] as! [[String:Any]]

        XCTAssert("mlu_offline_payment" == String(describing: sections[0]["type"]!))
    }

    func test_congrats_order_paid_off_for_android_7_12_0() {
        let dictionary = self.jsonObjectFrom(path: "congrats_order_paid_off_for_android_7_12_0") as! Dictionary<String, Any>

        // sections
        let sections: [[String:Any]] = dictionary["sections"] as! [[String:Any]]
        XCTAssert("offline_payment" == String(describing: sections[0]["type"]!))
    }

    func test_generate_congrats_android() {

    }

    func test_generate_congrats_iOS() {

    }


}
