//
//  TableViewCellModel.swift
//  Dashboard
//
//  Created by Gustaf Holmström on 2020-08-23.
//  Copyright © 2020 Waleed Hassan. All rights reserved.
//

import Foundation
import UIKit

struct ShiftDetailTimeblockViewModel {
    var index: Int?
    var tags: [ShiftDetailTagViewModel]
}

struct ShiftDetailTagViewModel {
    var tagName: String
}

struct testData {
    var objectArray = [
        ShiftDetailTimeblockViewModel(tags: [
            ShiftDetailTagViewModel(tagName: "1"),
            ShiftDetailTagViewModel(tagName: "2"),
            ShiftDetailTagViewModel(tagName: "3"),
            ShiftDetailTagViewModel(tagName: "4"),
            ShiftDetailTagViewModel(tagName: "5"),
            ShiftDetailTagViewModel(tagName: "6"),
            ShiftDetailTagViewModel(tagName: "7"),
            ShiftDetailTagViewModel(tagName: "8"),
            ShiftDetailTagViewModel(tagName: "9"),
            ShiftDetailTagViewModel(tagName: "10"),
            ShiftDetailTagViewModel(tagName: "11"),
            ShiftDetailTagViewModel(tagName: "12"),
            ShiftDetailTagViewModel(tagName: "13"),
            ShiftDetailTagViewModel(tagName: "14"),
            ShiftDetailTagViewModel(tagName: "15"),
            ShiftDetailTagViewModel(tagName: "16"),
            ShiftDetailTagViewModel(tagName: "17"),
            ShiftDetailTagViewModel(tagName: "18"),
            ShiftDetailTagViewModel(tagName: "19"),
            ShiftDetailTagViewModel(tagName: "20"),
            ShiftDetailTagViewModel(tagName: "21"),
            ShiftDetailTagViewModel(tagName: "22"),
            ShiftDetailTagViewModel(tagName: "23"),
            ShiftDetailTagViewModel(tagName: "24"),
            ShiftDetailTagViewModel(tagName: "25"),
            ShiftDetailTagViewModel(tagName: "26"),
            ShiftDetailTagViewModel(tagName: "27"),
            ShiftDetailTagViewModel(tagName: "28"),
            ShiftDetailTagViewModel(tagName: "29"),
            ShiftDetailTagViewModel(tagName: "30"),
            ShiftDetailTagViewModel(tagName: "31"),
            ShiftDetailTagViewModel(tagName: "32"),
            ShiftDetailTagViewModel(tagName: "33"),
            ShiftDetailTagViewModel(tagName: "34"),
            ShiftDetailTagViewModel(tagName: "35"),
            ShiftDetailTagViewModel(tagName: "36"),
            ShiftDetailTagViewModel(tagName: "37"),
            ShiftDetailTagViewModel(tagName: "38"),
            ShiftDetailTagViewModel(tagName: "39"),
            ShiftDetailTagViewModel(tagName: "40"),
            ShiftDetailTagViewModel(tagName: "41"),
            ShiftDetailTagViewModel(tagName: "42"),
            ShiftDetailTagViewModel(tagName: "43"),
            ShiftDetailTagViewModel(tagName: "44"),
            ShiftDetailTagViewModel(tagName: "45"),
            ShiftDetailTagViewModel(tagName: "46"),
            ShiftDetailTagViewModel(tagName: "47"),
            ShiftDetailTagViewModel(tagName: "48"),
            ShiftDetailTagViewModel(tagName: "49"),
            ShiftDetailTagViewModel(tagName: "50")
        ]),
        ShiftDetailTimeblockViewModel(tags: [
            ShiftDetailTagViewModel(tagName: "Hello world"),
            ShiftDetailTagViewModel(tagName: "Projekt"),
            ShiftDetailTagViewModel(tagName: "Lunch"),
            ShiftDetailTagViewModel(tagName: "Framtida planeringar"),
            ShiftDetailTagViewModel(tagName: "Bank"),
            ShiftDetailTagViewModel(tagName: "Swedbank"),
            ShiftDetailTagViewModel(tagName: "Nordea"),
            ShiftDetailTagViewModel(tagName: "Cancerfonden")
        ]),
        ShiftDetailTimeblockViewModel(tags: [
            ShiftDetailTagViewModel(tagName: "Hello world"),
            ShiftDetailTagViewModel(tagName: "Projekt"),
            ShiftDetailTagViewModel(tagName: "Lunch"),
            ShiftDetailTagViewModel(tagName: "Framtida planeringar"),
            ShiftDetailTagViewModel(tagName: "Bank"),
            ShiftDetailTagViewModel(tagName: "Swedbank"),
            ShiftDetailTagViewModel(tagName: "Nordea"),
            ShiftDetailTagViewModel(tagName: "Cancerfonden")
        ]),
        ShiftDetailTimeblockViewModel(tags: [
            ShiftDetailTagViewModel(tagName: "vab1"),
            ShiftDetailTagViewModel(tagName: "vab2"),
            ShiftDetailTagViewModel(tagName: "vab3"),
            ShiftDetailTagViewModel(tagName: "vab4"),
            ShiftDetailTagViewModel(tagName: "vab5"),
            ShiftDetailTagViewModel(tagName: "vab6"),
            ShiftDetailTagViewModel(tagName: "vab7"),
            ShiftDetailTagViewModel(tagName: "vab8"),
            ShiftDetailTagViewModel(tagName: "vab9"),
            ShiftDetailTagViewModel(tagName: "vab10"),
            ShiftDetailTagViewModel(tagName: "vab11"),
            ShiftDetailTagViewModel(tagName: "vab12"),
            ShiftDetailTagViewModel(tagName: "vab13"),
            ShiftDetailTagViewModel(tagName: "vab14"),
            ShiftDetailTagViewModel(tagName: "vab15"),
            ShiftDetailTagViewModel(tagName: "vab16"),
            ShiftDetailTagViewModel(tagName: "vab17"),
            ShiftDetailTagViewModel(tagName: "vab18"),
            ShiftDetailTagViewModel(tagName: "vab19"),
            ShiftDetailTagViewModel(tagName: "vab20"),
            ShiftDetailTagViewModel(tagName: "vab21"),
            ShiftDetailTagViewModel(tagName: "vab22"),
            ShiftDetailTagViewModel(tagName: "vab23"),
            ShiftDetailTagViewModel(tagName: "vab24"),
            ShiftDetailTagViewModel(tagName: "vab25"),
            ShiftDetailTagViewModel(tagName: "vab26"),
            ShiftDetailTagViewModel(tagName: "vab27"),
            ShiftDetailTagViewModel(tagName: "vab28"),
            ShiftDetailTagViewModel(tagName: "vab29")
        ])

    ]
}
