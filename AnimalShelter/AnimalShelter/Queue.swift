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
    
    override init() {
        
    }
        
    func enQueueAnimal(animal: Animal) {
        if head?.nextAnimal.nextAnimal == nil {
            first = cur
            cur?.animal.petNumber = 1
        }
        last = cur
        addList(node: cur!, animal: animal)
    }
    
    func deQueueCat() -> Cat? {
        let mirrorCat = Mirror.init(reflecting: cur?.animal ?? Animal())
        
        if mirrorCat.subjectType == Cat.self {
            return cur?.animal as? Cat
        }
        
        
    }
    
    func deQueueDog() {
        
    }
    
}
