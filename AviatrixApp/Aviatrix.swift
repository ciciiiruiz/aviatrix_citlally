//
//  Aviatrix.swift
//  AviatrixApp
//
//  Created by Amy Holt on 6/10/18.
//  Copyright © 2018 Amy Holt. All rights reserved.
//

import Foundation

class Aviatrix {
    
    var running = false
    var author : String
    var data = AviatrixData()
    var location : String
    var distanceTraveled = 0.0
    var maxFuel = 5000.0
    var fuelLevel = 5000.0
    var milesPerGallon = 0.4
    var price = 0.0
    var fuelCost = 0.0
    var difference = 0.0
//    var approximatedMpg : Int
//    var numberOfGallons : Int
    
    init (authorName : String, current : String) {
        author = authorName
        location = current
    }
    
    func start() -> Bool {
        running = true
        return running
    }
    
//    func mpg() -> Double {
//        milesPerGallon = 0.55 - (numberOfGallons)*(0.00005)
//        Double(milesPerGallon = approximatedMpg)
//        return approximatedMpg
//    }
    
    func refuel() -> Double {
        difference = maxFuel - fuelLevel
        fuelLevel = maxFuel
        price = data.fuelPrices[location]!
        fuelCost += price * difference
        return price * difference
    }
    
    func flyTo(destination : String) {
        distanceTraveled += Double(distanceTo(target: destination, current: location))
        fuelLevel -= Double(distanceTo(target: destination, current: location)) / milesPerGallon
        location = destination
    }
    
    func distanceTo(target : String, current : String) -> Int {
        return data.knownDistances[current]![target]!
    }
    
    func knownDestinations() -> [String] {
        return ["St. Louis", "Phoenix", "Denver", "SLC", "Dallas"]
    }

}
