import UIKit

var value : Int = 0
// assert는 debugging 할 때 조건 확인 용도로 쓰이는 구문. 특정 조건 체크할 때. 조건이 아니라면 메세지와 함께 에러 발생시키는 함수.
assert(value == 0, "값이 0이 아닌가봐용~")
/* guard는 잘못된 값이 함수에 들어오는 걸 방지하는 구문?
 guard 조건 else {~~}
 조건이 false이면 else 구문이 실행되고, return, break, throw를 통해 이 후 코드를 실행하지 않도록 한다.
*/
func guardTest(value: Float){
    guard value == 1.2 else { return }
    print(value)
}
//옵셔널 바인딩을 guard 문으로!
func guardTest(value: Int?){
    guard let value = value else { return }
    print("옵셔널 바인딩 성공! 값은 \(value)")
}

guardTest(value: 1.2)
guardTest(value: 2)
guardTest(value: nil)

/*
 프로토콜: 특정 역할을 하기 위한 메소드, 프로퍼티, 기타 요구사항 등의 청사진..
 구조체, 클래스, 열거형은 프로토콜을 채택해서 특정 기능을 실행하기 위한 프로토콜의 요구사항을 실제로 구현할 수 있다.
 프로토콜은 정의를 하고 제시를 할 뿐 스스로 기능을 구현하지는 않는다. (조건만 정의)
 하나의 타입으로 사용되기 때문에 아래와 같이 타입 사용이 허용되는 모든 곳에 프로토콜을 사용할 수 있다.
 getset 다 구현한 연산프로퍼티인지, get만 구현한 저장프로퍼티인지.. var로 선언해야만 한다고?
 
 */


protocol FirstProtocol {
    var name : String {get set}
    var age : Int {get}
    func printFullname()
}
struct User : FirstProtocol {
    //FirstProtocol의 name, age를 선언해줘야 프로토콜을 지킨 것.
    var name: String
    var age: Int
    func printFullname() {
        print("mynameis \(name)")
    }
}

var myname = User(name: "leesukcheol", age: 26)
myname.printFullname()
