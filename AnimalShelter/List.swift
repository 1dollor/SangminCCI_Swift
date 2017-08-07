//
//  List.swift
//  AnimalShelter
//
//  Created by N4046 on 2017. 7. 28..
//  Copyright © 2017년 N4046. All rights reserved.
//

import Foundation

class Node {
    var animal = Animal()
    var nextAnimal = Node()
}

class List {
    let head: Node?
    var cur: Node?
    var count = 0
    
    init() {
        head = Node()
        cur = head?.nextAnimal
    }
    
    open func addList(node: Node, animal: Animal) {
            cur = Node()
            cur?.animal = animal
            cur?.nextAnimal = Node()
            cur = cur?.nextAnimal
    }
    
    open func printList() {
        while cur?.nextAnimal != nil {
            print("\(String(describing: cur?.animal.petNumber))")
            cur = cur?.nextAnimal
        }
        
    }
    
    open func deleteList() {
        
    }
    
}
