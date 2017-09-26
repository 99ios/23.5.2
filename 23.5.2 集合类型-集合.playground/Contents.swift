//: A UIKit based Playground for presenting user interface
  
import UIKit

var fullSet : Set<String> = ["HTML5","App","XWx"]
//也可以简写成如下：
var shortSet : Set = ["HTML5","App","XWx"]

shortSet.insert("Vovo")

//删除一个元素，元素可能为nil
if let removed = shortSet.remove("HTML5"){
    print("\(removed)? 被删掉了")
}else{
    print("不存在这个元素")
}

//查找某个元素
if shortSet.contains("Woo"){
    print("找到了")
}else{
    print("没找到")
}

//遍历集合
for item in shortSet {
    print("\(item)")
}
//按照首字母进行默认排序后的序列
for item in shortSet.sorted(){
    print("\(item)")
}

let oddDigits: Set = [1, 3, 5, 7, 9]
let evenDigits: Set = [0, 2, 4, 6, 8]
let singleDigitPrimeNumbers: Set = [2, 3, 5, 7]
//获取并集，并且进行排序
oddDigits.union(evenDigits).sorted()
// 获取交集
oddDigits.intersection(evenDigits).sorted()
// 获取差集，在oaddDigits并且不在singleDigitPrimeNumbers中
oddDigits.subtracting(singleDigitPrimeNumbers).sorted()
// 获取oddDigits和singleDigitPrimeNumbers的补集，也就是并集-交集
oddDigits.symmetricDifference(singleDigitPrimeNumbers).sorted()

let houseAnimals: Set = ["🐶", "🐱"]
let farmAnimals: Set = ["🐮", "🐔", "🐑", "🐶", "🐱"]
let cityAnimals: Set = ["🐦", "🐭"]
//子集判断
houseAnimals.isSubset(of: farmAnimals)
// 父集判断
farmAnimals.isSuperset(of: houseAnimals)
// 是否没有交集
farmAnimals.isDisjoint(with: cityAnimals)
