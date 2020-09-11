
## 1. 명명법
 * Lower Camel Case: fuction, method, variable, constant  
 	ex) someVariableName
 * Upper Camel Case: type(class, struct, enum, extension...)  
 	ex) Person, Point, Week

## 2. 콘솔로그 남기기
 * print: 단순 출력
 * dump: 인스턴스의 자세한 설명(description property)까지 출력

## 3. String Interpolation
  : 프로그램 실행 중 문자열 내에 변수 또는 상수의 실질적인 값을 표현하기 위해 사용
```  \() ```

```swift
import Swift

let age: Int = 10

print("안녕하세요! 저는 \(10)살 입니다.")
// 안녕하세요! 저는 10살 입니다.
print("안녕하세요! 저는 \(age)살 입니다.")
// 안녕하세요! 저는 10살 입니다.
print("안녕하세요! 저는 \(age + 5)살 입니다.")
// 안녕하세요! 저는 15살 입니다.
dump("안녕하세요! 저는 \(age + 5)살 입니다.")
// - "안녕하세요! 저는 15살 입니다."

print()

class Person {
    var name: String = "lina"
    var age: Int = 22
}

let lina = Person()

print(lina)
// __lldb_expr_7.Person
dump(lina)
// ▿ __lldb_expr_7.Person #0
//   - name: "lina"
//   - age: 22
```

## 4. 상수와 변수
 * let 상수이름: 타입 = 값
 * var 변수이름: 타입 = 값

 ```swift
var variable: String = "변경 가능한 변수 var"
let constant: String = "변경 불가능한 상수 let"

variable = "이렇게 변경해볼게요."
// constant = "상수는 차후에 변경이 어려움"  ** 오류발생 **

/* 선언 후, 나중에 할당하려는 상수나 변수는 타입을 미리 명시해야 합니다. */
let intA: Int
var intB: Int

// print(intA, intB)
// initialize하기 전에 사용 불가!

intA = 100
intB = 200
print(intA,intB)
// 100 200

// intA = 300 ** 상수는 처음 할당 후에 다시 값을 바꿀 수 없음 **
intB = 400 // ** 변수는 가능! **
print(intA, intB)
// 100 400
// 추가로, print안에서 여러 변수나 상수를 쓸때 콤마가 필요함
// 단, 콤마는 출력되지 않고 그 외에 스페이스바도 적용되지 않지만 알아서 간격이 띄어진 상태로 출력됨
 ```

## 5. Swift의 기본 데이터 타입
 * Bool
 * Int, UInt
 * Float, Double
 * Character, String

### 1. Bool
 * ture or false
``` swift

var someBool: Bool = true
someBool = false
// someBool = 1
// someBool = 0
/* 다른 언어와 다르게, Swift의 Bool은 1과 0으로 대체될 수 없음 */
```

### 2. Int, UInt
 * Int: 정수 타입, 64비트 정수형
 * UInt: 양의 정수 타입, 64비트 양의 정수형
 ```swift
var someInt: Int = -100
// someInt = 100.1
someInt = 100

var someUInt: UInt = 100
// someUInt = -100
// someUInt = someInt
/* someInt가 양의 값을 가지고 있다고 하더라도, UInt에 대입할 수 없음 */
 ```

### 3. Float, Double
 * Float: 실수 타입, 32비트 부동소수형
 * Double: 실수 타입, 64비트 부동소수형
 ```swift
var someFloat: Float = 3.14
someFloat = 3
// someFloat = someInt
/* Int를 넣을 수 없음!! */

var someDouble: Double = 3.14
someDouble = 3
// someDouble = someFloat
/* Float를 넣을 수 없음 */

var someNum = 3.14
// someFloat = someNum
someDouble = someNum
/* 타입을 선언하지 않은 실수는 기본적으로 Double형이 됨*/
 ```

### 4. Character, String
 * Character: 문자 타입, 유니코드 사용, 큰따옴표("") 사용
 * String: 문자열 타입, 유니코드 사용, 큰따옴표("") 사용
 ```swift
var someCharacter: Character = "가"
someCharacter = "A"
someCharacter = "1"
someCharacter = "*"
// someCharacter = "리나"
print(someCharacter)
// *

var someString: String = "리나"
someString = someString + " 등장!"
// someString = someString + someCharacter
print(someString)

var someWord = "얍"
// someWord = someCharacter
someWord = someString
/* 타입을 선언하지 않은 문자는 기본적으로 String형이 됨 */
 ```

```swift
let integer = 100
let floatingPoint = 12.34
let apple = "A"

print(type(of: integer)) // Int
print(type(of: floatingPoint)) // Double
print(type(of: apple)) // String
```

## 6. swift의 데이터 타입 - Any, AnyObject, nil
 * Any - swift의 모든 타입을 지칭하는 키워드
 * AnyObject - 모든 클래스 타입을 지칭하는 프로토콜
 * nil - '없음'을 의미하는 키워드

### 1. Any
```swift
var someAny: Any = 100
someAny = "어떤 타입도 수용 가능"
someAny = 123.12

// someDouble = someAny
/* Any 타입에 Double형을 넣어두었더라도, Any와 Double은 같은 타입이 아니여서 할당이 불가능함 */
someAny = someDouble
/* 단, Any에는 할당 가능 */
```

### 2. AnyObject
```swift
class SomeClass {}
var someAnyObject: AnyObject = SomeClass()
// someAnyObject = "hi"
/* AnyObject는 클래스의 인스턴스만 수용 가능하기 때문에, 클래스의 인스턴스가 아니면 할당할 수 없음 */
```

### 3. nil
 * 다른 언어의 NULL, Null, null 등과 유사한 표현
 ```swift
 someAny = 100
class NewClass {}
someAnyObject = NewClass()

// someAny = nil
// someAnyObject = nil
// 둘 다 컴파일 오류
 ```
