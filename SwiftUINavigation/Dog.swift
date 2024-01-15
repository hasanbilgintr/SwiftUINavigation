//
//  Dog.swift
//  SwiftUINavigation
//
//  Created by hasan bilgin on 10.11.2023.
//

import Foundation

struct Dog : Identifiable , Hashable{
    var id = UUID()
    let name : String
}

let dogs : [Dog] = [Dog(name: "Barley"),Dog(name: "Lucky"),Dog(name: "Daisy"),Dog(name: "Jack")]
