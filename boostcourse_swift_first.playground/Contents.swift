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

/* 상수 let */
let lina = Person()

print(lina)
// __lldb_expr_7.Person
dump(lina)
// ▿ __lldb_expr_7.Person #0
//   - name: "lina"
//   - age: 22

/* 변수 var */
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

print("---------------")

var someBool: Bool = true
someBool = false
// someBool = 1
// someBool = 0
/* 다른 언어와 다르게, Swift의 Bool은 1과 0으로 대체될 수 없음 */

var someInt: Int = -100
// someInt = 100.1
someInt = 100

var someUInt: UInt = 100
// someUInt = -100
// someUInt = someInt
/* someInt가 양의 값을 가지고 있다고 하더라도, UInt에 대입할 수 없음 */

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
/* 타입을 선언하지 않은 실수는 기본적으로 Double형이 됨 */

var someCharacter: Character = "가"
someCharacter = "A"
someCharacter = "1"
someCharacter = "*"
// someCharacter = "리나"
print(someCharacter)

var someString: String = "리나"
someString = someString + " 등장!"
// someString = someString + someCharacter
print(someString)

var someWord = "얍"
// someWord = someCharacter
someWord = someString
/* 타입을 선언하지 않은 문자는 기본적으로 String형이 됨 */

let integer = 100
let floatingPoint = 12.34
let apple = "A"

print(type(of: integer))
print(type(of: floatingPoint))
print(type(of: apple))

var someAny: Any = 100
someAny = "어떤 타입도 수용 가능"
someAny = 123.12

// someDouble = someAny
/* Any 타입에 Double형을 넣어두었더라도, Any와 Double은 같은 타입이 아니여서 할당이 불가능함 */
someAny = someDouble
/* 단, Any에는 할당 가능 */

class SomeClass {}
var someAnyObject: AnyObject = SomeClass()
// someAnyObject = "hi"
/* AnyObject는 클래스의 인스턴스만 수용 가능하기 때문에, 클래스의 인스턴스가 아니면 할당할 수 없음 */


someAny = 100
class NewClass {}
someAnyObject = NewClass()

// someAny = nil
// someAnyObject = nil
// 둘 다 컴파일 오류
