//: Playground - noun: a place where people can play
import UIKit

// 서브루틴 사용하지 않은 방법
var gugudan = [Int].init(repeating: 0, count: 9)

for i in 1..<10{
    for j in 1..<10{
        gugudan[j-1] = i * j
    }
    print(gugudan)
}

// 서브루틴을 사용한 방법
func gugu(number : Int) -> [Int]{
    var gugudan3 : [Int] = [1, 2, 3, 4, 5, 6, 7, 8, 9]  // 구구단 곱셈을 위한 배열
    
    for i in 1..<10{
        gugudan3[i-1] = gugudan3[i-1] * number
    }
    return gugudan3
}

func printgugudan(gugudan : [Int], dan : Int){
    print(dan ,gugudan)
}

for i in 1..<10{
    printgugudan(gugudan: gugu(number: i), dan : i)
}



