//
//  SortStack.swift
//  SortStack
//
//  Created by N4046 on 2017. 8. 11..
//  Copyright © 2017년 N4046. All rights reserved.
//

import Foundation

typealias StackData = Int

class Node {
    var data: StackData
    var next: Node?
    var before: Node?
    
    init() {
        data = 0
    }
}

class List {
    var head: Node
    var current: Node?
    
    init() {
        head = Node()
    }
    
    func addNodeInList(with data: StackData) {
        let node = Node()
        if head.next == nil {
            head.next = node
            current = head.next
            current?.data = data
            current?.before = nil
            return
        }
            node.data = data
            node.before = current
            current?.next = node
            current = node
    }
    
    func peekLastNodeOfList() -> Node? {
        return current
    }
    
//    func printListbyAescending() {
//        var walkerNode = head
//        while walkerNode.next != nil {
//            walkerNode = walkerNode.next!
//            print("\(String(describing: walkerNode.data)), ")
//        }
//    }
//    
//    func printListbyDescending() {
//        var walkerNode = current
//        while walkerNode?.before != nil {
//            walkerNode = walkerNode?.before
//            print("\(String(describing: walkerNode?.data)), ")
//        }
//    }
    
}

class Stack: List {
    var top: Node
    var bottom: Node?
    
    override init() {
        top = Node()
        
        super.init()
    }
    
    func pushNode(with data: StackData) {
        addNodeInList(with: data)
        
        if bottom == nil {
            bottom = current
        }
            top = current!
    }

    func printStack(walker: Node) -> Node {
        print("\(walker.data)"
        
        //return printStack(walker: walker.before!)
    }
    
    func SortStackbyAscending() {
        
    }
    
}

class SortStack {
    open func main() {
     let stack = Stack()
     stack.pushNode(with: 1)
     stack.pushNode(with: 2)
     stack.pushNode(with: 3)
     stack.pushNode(with: 5)
     
    }
}
