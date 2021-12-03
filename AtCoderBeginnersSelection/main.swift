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

ABC049C()

// 問題
func Traveling() {
    
}

// 白昼夢
func ABC049C() {
    let words: Set = ["dream", "dreamer", "erase", "eraser"]
    var s = readLine()!
    while let word = words.first(where: { s.hasSuffix($0) }) {
        s.removeLast(word.count)
    }
    s.isEmpty ? print("YES") : print("NO")
}

func Otoshidama() {
    // n: 枚数, y: 金額
    let (n, y) = readTwoInts()
    for count10000 in 0...n {
        for count5000 in 0 ... n {
            let count1000 = n - count10000 - count5000
            if count1000 >= 0, y == count10000 * 10000 + count5000 * 5000 + count1000 * 1000 {
                print(count10000, count5000, count1000)
                return
            }
        }
    }
    print(-1, -1, -1)
}

// botu
//func Otoshidama() {
//    // n: 枚数, y: 金額
//    var (n, y) = readTwoInts()
//    let count10000 = y / 10000
//    y = y - count10000 * 10000
//    let count5000 = y / 5000
//    y = y - count5000 * 5000
//    let count1000 = y / 1000
//    print(count10000)
//    print(count5000)
//    print(count1000)
//    if n >= [count10000, count5000, count1000].reduce(0, +) {
//        print(count10000, count5000, count1000)
//    } else {
//        print(-1, -1, -1)
//    }
//}

func KagamiMochi() {
    let n = readInt()
    var array: Set<Int> = []
    for _ in 0..<n {
        array.insert(readInt())
    }
    print(array.count)
}


func CardGameForTwo() {
    let N = readInt()
    var ints = readInts()
    ints.sort { $1 < $0 }
    var alice = 0
    var bob = 0
    for index in 0..<ints.count {
        if index.isMultiple(of: 2) {
            alice += ints[index]
        } else {
            bob += ints[index]
        }
    }
    print(alice - bob)
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
