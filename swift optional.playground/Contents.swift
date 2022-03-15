import UIKit
/*
 swift에서는 기본적으로 변수를 선언할 때
 non-optional인 값을 주어야 합니다.
 즉 어떠한 '값'을 변수에게 주어야 한다는거죠.
 swift에서는 Int형으로 선언한 변수는 무조건 정수타입이 들어가야합니다.
 하지만 코딩을 하다보면 어떠한 변수에 값이 안 들어갈 수도 있겠죠?
 한마디로 우리는 변수안에 값이 확실히있다는 것을
 보장 할 수 없으면 Optional을 쓰면 된답니다.
 출처: https://zeddios.tistory.com/16 [ZeddiOS]*/

var name : String? = nil
var optionalName : String? = "lee"
print(name)
print(optionalName) // 출력값: Optional("lee")이 뜸. 옵셔널바인딩으로 벗겨내야함.
//print(optionalName!) // 강제적 옵셔널 바인딩(위험). 값이 nil인 변수를 강제로 벗겨내면 프로그램 종료 위험이 있음.
//비강제 해제 옵셔널 바인딩이 더 안전함. 값을 받을 변수에 옵셔널 변수를 받아주면 잘 벗겨지겠지.
if let result = optionalName{
    print(result) // if문을 사용해서 옵셔널 바인딩을 하게 되면 if문 안에서만 벗겨낸 값인 result를 사용할 수 있음.
} else{
    print()

}

/*func test() {
    let number : Int? = 5
    guard let result = number else { return }
    print(result)
}
test() 가드문을 사용해서 옵셔널 바인딩. */

let value : Int? = 6
if value==6 {
    print("6")
} else{
    print("not 6")
} // 비교연산자를 통해 옵셔널 바인딩. 컴파일러가 벗겨주는 느낌.

// ---묵시적 옵셔널 바인딩----
let string = "12" // 12a라면 stringToInt의 값은 nil이 된다.
//var stringToInt: Int? = Int(string) 느낌표가 아니라 물음표라면 아직 안 벗겨진 상태.
var stringToInt: Int! = Int(string) //느낌표로~
print(stringToInt+1)

//var requiredName : String = optionalName 안 되는 이유: 아직 옵셔널이라는 포장지가 있음. 벗겨내기 전엔 어떤 연산도 불가능. -> 옵셔널바인딩!
