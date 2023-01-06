//
//  main.swift
//  baekjoon3052
//
//  Created by 이준협 on 2023/01/06.
//

import Foundation

var numArr:[Int] = []
var numberArr:[Int] = []
var remain = [Int](repeating: -1, count: 10)
var count = 10

for i in 0..<10{
    var num = Int(readLine()!)!
    numArr.append(num)
}

for j in 0..<10{
    var number = numArr[j]%42
    numberArr.append(number)
}

for k in 0..<10{
    var n = k
    while n < 10 {
        n = n+1
        if n == 10 {
            break
        }
        if numberArr[k] == numberArr[n]{
            count = count - 1
            break
        }
    }
}
print(count)
