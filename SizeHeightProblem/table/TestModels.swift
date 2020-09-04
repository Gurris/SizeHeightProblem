//
//  TableViewCellModel.swift
//  Dashboard
//
//  Created by Gustaf Holmström on 2020-08-23.
//  Copyright © 2020 Waleed Hassan. All rights reserved.
//

import Foundation
import UIKit

struct testDataViewModel {
    var index: Int?
    var tags: [testDataCellViewModel]
}

struct testDataCellViewModel {
    var cellText: String
}

struct testData {
    var objectArray = [
        testDataViewModel(tags: [
            testDataCellViewModel(cellText: "1"),
            testDataCellViewModel(cellText: "2"),
            testDataCellViewModel(cellText: "3"),
            testDataCellViewModel(cellText: "4"),
            testDataCellViewModel(cellText: "5"),
            testDataCellViewModel(cellText: "6"),
            testDataCellViewModel(cellText: "7"),
            testDataCellViewModel(cellText: "8"),
            testDataCellViewModel(cellText: "9"),
            testDataCellViewModel(cellText: "10"),
            testDataCellViewModel(cellText: "11"),
            testDataCellViewModel(cellText: "12"),
            testDataCellViewModel(cellText: "13"),
            testDataCellViewModel(cellText: "14"),
            testDataCellViewModel(cellText: "15"),
            testDataCellViewModel(cellText: "16"),
            testDataCellViewModel(cellText: "17"),
            testDataCellViewModel(cellText: "18"),
            testDataCellViewModel(cellText: "19"),
            testDataCellViewModel(cellText: "20"),
            testDataCellViewModel(cellText: "21"),
            testDataCellViewModel(cellText: "22"),
            testDataCellViewModel(cellText: "23"),
            testDataCellViewModel(cellText: "24"),
            testDataCellViewModel(cellText: "25"),
            testDataCellViewModel(cellText: "26"),
            testDataCellViewModel(cellText: "27"),
            testDataCellViewModel(cellText: "28"),
            testDataCellViewModel(cellText: "29"),
            testDataCellViewModel(cellText: "30"),
            testDataCellViewModel(cellText: "31"),
            testDataCellViewModel(cellText: "32"),
            testDataCellViewModel(cellText: "33"),
            testDataCellViewModel(cellText: "34"),
            testDataCellViewModel(cellText: "35"),
            testDataCellViewModel(cellText: "36"),
            testDataCellViewModel(cellText: "37"),
            testDataCellViewModel(cellText: "38"),
            testDataCellViewModel(cellText: "39"),
            testDataCellViewModel(cellText: "40"),
            testDataCellViewModel(cellText: "41"),
            testDataCellViewModel(cellText: "42"),
            testDataCellViewModel(cellText: "43"),
            testDataCellViewModel(cellText: "44"),
            testDataCellViewModel(cellText: "45"),
            testDataCellViewModel(cellText: "46"),
            testDataCellViewModel(cellText: "47"),
            testDataCellViewModel(cellText: "48"),
            testDataCellViewModel(cellText: "49"),
            testDataCellViewModel(cellText: "50")
        ]),
        testDataViewModel(tags: [
            testDataCellViewModel(cellText: "Test cell 1"),
            testDataCellViewModel(cellText: "Somthing"),
            testDataCellViewModel(cellText: "Hello world"),
            testDataCellViewModel(cellText: "foo bar"),
            testDataCellViewModel(cellText: "SWIFT"),
            testDataCellViewModel(cellText: "Sizing"),
            testDataCellViewModel(cellText: "wopido")
        ]),
        testDataViewModel(tags: [
            testDataCellViewModel(cellText: "Test cell 1"),
            testDataCellViewModel(cellText: "Somthing"),
            testDataCellViewModel(cellText: "Hello world"),
            testDataCellViewModel(cellText: "foo bar"),
            testDataCellViewModel(cellText: "SWIFT"),
            testDataCellViewModel(cellText: "Sizing"),
            testDataCellViewModel(cellText: "wopido")
        ]),
        testDataViewModel(tags: [
            testDataCellViewModel(cellText: "cell1"),
            testDataCellViewModel(cellText: "cell2"),
            testDataCellViewModel(cellText: "cell3"),
            testDataCellViewModel(cellText: "cell4"),
            testDataCellViewModel(cellText: "cell5"),
            testDataCellViewModel(cellText: "cell6"),
            testDataCellViewModel(cellText: "cell7"),
            testDataCellViewModel(cellText: "cell8"),
            testDataCellViewModel(cellText: "cell9"),
            testDataCellViewModel(cellText: "cell10"),
            testDataCellViewModel(cellText: "cell11"),
            testDataCellViewModel(cellText: "cell12"),
            testDataCellViewModel(cellText: "cell13"),
            testDataCellViewModel(cellText: "cell14"),
            testDataCellViewModel(cellText: "cell15"),
            testDataCellViewModel(cellText: "cell16"),
            testDataCellViewModel(cellText: "cell17"),
            testDataCellViewModel(cellText: "cell18"),
            testDataCellViewModel(cellText: "cell19"),
            testDataCellViewModel(cellText: "cell20"),
            testDataCellViewModel(cellText: "cell21"),
            testDataCellViewModel(cellText: "cell22"),
            testDataCellViewModel(cellText: "cell23"),
            testDataCellViewModel(cellText: "cell24"),
            testDataCellViewModel(cellText: "cell25"),
            testDataCellViewModel(cellText: "cell26"),
            testDataCellViewModel(cellText: "cell27"),
            testDataCellViewModel(cellText: "cell28"),
            testDataCellViewModel(cellText: "cell29")
        ])

    ]
}
