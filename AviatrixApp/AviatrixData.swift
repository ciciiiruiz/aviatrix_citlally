//
//  AviatrixData.swift
//  AviatrixApp
//
//  Created by Amy Holt on 6/10/18.
//  Copyright © 2018 Amy Holt. All rights reserved.
//

import Foundation

class AviatrixData {
    
    var fuelPrices = [
        "St. Louis" : 1.79,
        "Phoenix" : 1.84,
        "Denver" : 1.65,
        "SLC" : 1.95,
        "Dallas" : 2.90
    ]
    
    var knownDistances = [
        "St. Louis" : [
            "St. Louis" : 0,
            "Phoenix" : 1260,
            "Denver" : 768,
            "SLC" : 1150,
            "Dallas" : 626
        ],
        "Phoenix" : [
            "St. Louis" : 1260,
            "Phoenix" : 0,
            "Denver" : 601,
            "SLC" : 508,
            "Dallas" : 1068
        ],
        "Denver" : [
            "St. Louis" : 768,
            "Phoenix" : 601,
            "Denver" : 0,
            "SLC" : 390,
            "Dallas" : 784
        ],
        "SLC" : [
            "St. Louis" : 1150,
            "Phoenix" : 508,
            "Denver" : 390,
            "SLC" : 0,
            "Dallas" : 1234
        ],
        "Dallas" : [
            "St. Louis" : 626,
            "Phoenix" : 1068,
            "Denver" : 784,
            "SLC" : 1234,
            "Dallas" : 0
        ]
    ]
    
}

