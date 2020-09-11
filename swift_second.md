## 7. 컬렉션 타입

### 1. Array
 * 멤버가 순서(인덱스)를 가진 리스트 형태의 컬렉션 타입
 * 여러가지 리터럴 문법을 활용할 수 있어 표현 방법이 다양
```swift
var integers: Array<Int> = Array<Int>()
/* 같은 표현들
var integers: Array<Int> = []
var integers: [Int] = Array<Int>()
var integers: [Int] = [Int]()
var integers: [Int] = []
var integers = [Int]()
*/

integers.append(1)
integers.append(22)
integers.append(-22)
// integers.append(10.1) 타입이 달라서 추가 불가
print(integers)
// [1, 22, -22]
print(integers.contains(1)) // true
print(integers.contains(2)) // false

integers[1] = 32 // [1, 32, -22]
// integers[3] = 100 // 인덱스를 벗어나 익셉션 오류
integers.remove(at: 1) // [1, -22]
integers.removeLast() // [1] -22를 제거함
integers.removeAll() // []
integers.count // 0

let letIntegers = [1, 2, 3]
// letIntegers.append(1)
// letIntegers.removeAll()
// 상수로 선언한 경우 수정할 수 없음.
```

### 2. Dictionary
* 키와 값의 쌍으로 이루어진 컬렉션 타입
```swift
var anyDictionary: Dictionary<String, Any> = [String: Any]()
/*
 var anyDictionary: Dictionary<Stirng, Any> = Dictionary<String, Any>()
 var anyDictionary: Dictionary<String, Any> = [:]
 var anyDictionary: [String: Any] = Dictionary<String, Any>()
 var anyDictionary: [String: Any] = [String: Any]()
 var anyDictionary: [String: Any] = [:]
 var anyDictionary = [String: Any]()
 */

anyDictionary["someKey"] = "value"
anyDictionary["anotherKey"] = 100
print(anyDictionary)
// ["someKey": "value", "anotherKey": 100]
anyDictionary["someKey"] = "dictionary"
print(anyDictionary)
// ["someKey": "dictionary", "anotherKey": 100]
anyDictionary.removeValue(forKey: "someKey")
anyDictionary["anotherKey"] = nil
print(anyDictionary)
// [:]

let emptyDictionary: [String: String] = [:]
let initalizedDictionary: [String: String] = ["name":"Lina", "gender":"female"]
// emptyDictionary["newKey"] = "value"
// 상수로 된 딕셔너리라서 새로운 값을 추가할 수 없음
// let someValue2: String = initalizedDictionary["gender"]
/* name이라는 키에 값이 없을 수 있으므로 할당할 수 없음 */
let someValue = initalizedDictionary["name"]
type(of: someValue)
/* 타입을 지정하지 않아서 자동으로 Optional<String>이 되어서 할당됨.*/
```

### 3. Set
* 중복되지 않는 멤버가 순서없이 존재
```swift
var integerSet: Set<Int> = Set<Int>()

integerSet.insert(1)
integerSet.insert(2)
integerSet.insert(2)
integerSet.insert(3)
integerSet.insert(3)
integerSet.insert(3)
print(integerSet) // [1, 2, 3] 순서는 컴파일 할때마다 바뀜

print(integerSet.contains(1)) // true
print(integerSet.contains(10)) // false

integerSet.removeFirst() // 그때그때 맨 앞에있는 거 삭제됨
integerSet.remove(4) // 없는거 삭제는 안되지만, 오류가 나진 않음
print(integerSet)
print(integerSet.count)

let setA: Set<Int> = [1, 2, 3, 4, 5]
let setB: Set<Int> = [3, 4, 5, 6, 7]

let union: Set<Int> = setA.union(setB)
print(union) // [ 1, 2, 3, 4, 5, 6, 7]
let sortedUnion: [Int] = union.sorted()
print(sortedUnion)
let intersection: Set<Int> = setA.intersection(setB)
print(intersection) // [3, 4, 5]
let subtracting: Set<Int> = setA.subtracting(setB)
print(subtracting) // [1, 2]
```

## 8. Function

```swift
func sum(a: Int, b: Int) -> Int { return a + b }
func printMyName(name: String) -> Void { print(name) }
func printYourName(name: String) { print(name) } // 반환값 생략가능
func maxInteger() -> Int { return Int.max }
func hello() -> Void { print("hello") }
func bye() { print("hello") }

sum(a: 3, b: 5)
printMyName(name: "lina")
printYourName(name: "noname")
maxInteger()
hello()
bye()
```

```swift
func greeting(friend: String, me: String = "lina") {
    print("hello \(friend)! I'm \(me)")
}
greeting(friend: "iOS") // "hello iOS! I'm lina"
greeting(friend: "iOS", me: "Android") // "hello iOS! I'm Android"

func greeting(to friend: String, from me: String = "lina") {
    print("hello \(friend)! I'm \(me)")
}
greeting(to: "iOS") // "hello iOS! I'm lina"
/* 전달인자 레이블을 사용하면 동일한 이름의 함수를 중복으로 생성 가능함 */

func sayHelloToFrineds(me: String = "lina", friends: String...) -> String {
    return "hello \(friends)!, I'm \(me)!"
}
print(sayHelloToFrineds(friends: "iOS", "And", "Yeah"))
// hello ["iOS", "And", "Yeah"]!, I'm lina!
print(sayHelloToFrineds())
// hello []!, I'm lina!

/* 반환값이 없는 함수, 매개변수 기본 값, 전달인자 레이블, 가면 매개변수 등 모두 섞어서 사용 가능함 */
```

*** 스위프트는 함수형 프로그래밍 패러다임을 포함하는 다중 패러다임 언어이므로 스위프트의 함수는 일급객체이다. 그래서 함수를 변수, 상수 등에 할당이 가능하고 매개변수를 통해 전달할 수도 있음. 단, 함수를 데이터 타입으로 사용할때에는 반환타입을 생략할 수는 없음***
```swift

```
