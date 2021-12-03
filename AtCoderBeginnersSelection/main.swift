//
//  main.swift
//  AtCoderBeginnersSelection
//
//  Created by maiko morisaki on 2021/12/04.
//

import Foundation

// 標準入力
func readInt() -> Int {
    return Int(readLine()!)!
}

func readInts() -> [Int] {
    return readLine()!.split(separator: " ").map { Int(String($0))! }
}

func readTwoInts() -> (a: Int, b: Int) {
    let ints = readLine()!.split(separator: " ").map { Int(String($0))! }
    return (a: ints[0], b: ints[1])
}



// 問題
func CardGameForTwo() {
    
}

func SomeSums() {
    let readInts = readInts()
    let n = readInts[0]
    let from = readInts[1]
    let to = readInts[2]
    var sum = 0
    
    for value in 1...n {
        let array = Array(String(value))
        var arraySum = 0
        array.forEach{ item in
            let value = Int(String(item))!
            arraySum += value
        }
        if from <= arraySum && arraySum <= to {
            sum += value
        }
    }
    
    print(sum)
}

func Coins() {
    // 500 円 枚数
    let a = readInt()
    // 100 円 枚数
    let b = readInt()
    // 50 円 枚数
    let c = readInt()
    // 金額
    let x = readInt()
    
    var sumCount = 0
    for aCount in 0...a {
        for bCount in 0...b {
            for cCount in 0...c {
                if (aCount*500) + (bCount*100) + (cCount*50) == x {
                    sumCount += 1
                }
            }
        }
    }
    print(sumCount)
}

func ShiftOnly() {
    var count = 0
    let N = readInt()
    var values = readInts()
    while values.allSatisfy({ $0.isMultiple(of: 2) }) {
        values = values.map{ $0 / 2 }
        count += 1
    }
    print(count)
}

func PlacingMarbles() {
    let array = Array(readLine()!)
    let count = array.filter{ Int(String($0))! == 1 }.count
    print(count)
}

func Product() {
    let (a, b) = readTwoInts()
    let result = a * b
    let text = result.isMultiple(of: 2) ? "Even" : "Odd"
    print(text)
}

func WelcomeToAtCoder() {
    let a = Int(readLine()!)!
    let bc = readLine()!.split(separator: " ").map { Int(String($0))! }
    let c = readLine()!
    
    print(a+bc[0]+bc[1], c)
}
