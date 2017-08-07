//
//  Queue.swift
//  AnimalShelter
//
//  Created by N4046 on 2017. 7. 28..
//  Copyright © 2017년 N4046. All rights reserved.
//

import Foundation

open class Animal {
    var name: String?
    var petNumber: Int = 0
}

open class Dog: Animal {
    
}

open class Cat: Animal {
    
}

class Queue: List {
    
    var first: Node?
    var last: Node?
    var queueNumber: Int = 0
    var catCount = 0
    var dogCount = 0
    
    func enQueueAnimal(list: List, animal: Animal) {
        
        if list.head?.nextAnimal.nextAnimal == nil {
            first = cur
            cur?.animal.petNumber = 1
        }
        
        list.addList(node: cur!, animal: animal)
    }
    
    func deQueueCat() {
        
    }
    
    func deQueueDog() {
        
    }
    
}
