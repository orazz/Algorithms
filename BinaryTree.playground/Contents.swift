import UIKit

class Node {
    var value: Int
    var leftChild: Node?
    var rightChild: Node?
    
    init(value: Int, leftChild: Node?, rightChild: Node?) {
        self.value = value
        self.leftChild = leftChild
        self.rightChild = rightChild
    }
}


let rightFourteen = Node(value: 14, leftChild: nil, rightChild: nil)
let rightTen = Node(value: 10, leftChild: nil, rightChild: rightFourteen)

let leftFour = Node(value: 4, leftChild: nil, rightChild: nil)
let rightSeven = Node(value: 7, leftChild: nil, rightChild: nil)
let rightSix = Node(value: 6, leftChild: leftFour, rightChild: rightSeven)

let leftOne = Node(value: 1, leftChild: nil, rightChild: nil)
let leftThree = Node(value: 3, leftChild: leftOne, rightChild: rightSix)

let rootEight = Node(value: 8, leftChild: leftThree, rightChild: rightTen)

let imageView = UIImageView(image: UIImage(named: "tree.png"))

func binarySearchTree(searchVal: Int, node: Node?) -> Int {
    if node == nil {
        return 0
    }
    
    if searchVal == node?.value {
        return node!.value
    } else if searchVal < node!.value {
        return binarySearchTree(searchVal: searchVal, node: node?.leftChild)
    } else {
        return binarySearchTree(searchVal: searchVal, node: node?.rightChild)
    }
}

binarySearchTree(searchVal: 7, node: rootEight)
