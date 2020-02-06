import UIKit

func recursiveFib(num: Int, first: Int, second: Int) -> [Int] {
    if (num == 0) {
        return [first + second]
    }
    return [first + second] + recursiveFib(num: num-1, first: second, second: first + second)
}

[0, 1] + recursiveFib(num: 4, first: 0, second: 1)

func fib(_ num: Int) -> [Int] {
    var sequence = [0, 1]
    if (num <= 1) { return sequence }

    for _ in 1...num {
        let first = sequence[sequence.count-2]
        let second = sequence.last!
        sequence.append(first + second)
    }

    return sequence
}

fib(5)
