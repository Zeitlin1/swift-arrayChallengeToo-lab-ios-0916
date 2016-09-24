//
//  Deli.swift
//  ArrayChallengeDeuce2
//
//  Created by Jim Campagno on 9/17/16.
//  Copyright © 2016 Flatiron School. All rights reserved.
//




class Deli {
    
    var line: [String] = []
    
    // 1
    func addNameToLine(name: String) -> String {
        
        if(line.count == 0) {
            line.append(name)
            print ("Welcome \(name), you're first in line!")
            return ("Welcome \(name), you're first in line!")
        } else {
            switch name {
            case "Billy Crystal":
                line.insert(name, at:0)
                print ("Welcome Billy Crystal! You can sit wherever you like.")
                return ("Welcome Billy Crystal! You can sit wherever you like.")
            case "Meg Ryan":
                line.insert(name, at:0)
                print ("Welcome Meg Ryan! You can sit wherever you like.")
                return ("Welcome Meg Ryan! You can sit wherever you like.")
            default:
                line.append(name)
                print ("Welcome \(name), you're number \(line.count) in line.")
                return ("Welcome \(name), you're number \(line.count) in line.")
            }
        }
    }


    // 2

func nowServing() -> String {
    
    if line.count == 0 {
        print ("There is no one to be served.")
        return ("There is no one to be served.")
    } else {
        let next = line[0]
        line.remove(at:0)
        print ("Now serving \(next)!")
        return ("Now serving \(next)!")
    }
}


    // 3
    func lineDescription() -> String {
        
        var newLine: [String] = []
        
        for (index, person) in line.enumerated() {
            newLine.append("\(index + 1). \(person)")
        }
        
        if line.count == 0 {
            print ("The line is currently empty.")
            return ("The line is currently empty.")
        } else {
            print ("The line is:\n\(newLine[0])\n\(newLine[1])\n\(newLine[2])\n\(newLine[3])")
            return ("The line is:\n\(newLine[0])\n\(newLine[1])\n\(newLine[2])\n\(newLine[3])")
            }
}
}
