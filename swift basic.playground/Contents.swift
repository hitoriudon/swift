import UIKit

func hello(name: String, name2: String = "hi") -> String {
    return "hello "+name2
}
func sendmessage(from myname: String, to name: String) -> String { // 코드 가독성 높아짐
    // 메인에선 from이랑 to, 함수 내에선 name이랑 myname인듯?
    return "Hello! \(name)! I'm \(myname)." // "" 안에 변수 출력하고 싶으면 역슬래쉬하고 괄호 안에 변수 이름 넣기
}
func send(_ name: String) -> String {
    //와일드카드 식별자를 사용해서 전달인자 레이블을 사용하지 않는 함수 구현. 메인에서 차이 느낄 수 있다. name: 이 안 뜸
    return "I'm \(name)."
}
func send2(me: String, friends: String...) -> String { // 가변 매개변수로 선언된 프렌즈 변수
    return "Hello \(friends)! I'm \(me)."
}

var numbers : Array<Int> = Array<Int>() // 어레이 선언
//== var names : [String] = [] 이런 식으로 해도 됨
var a : Int = 0 // 변수 선언.
let b : Int = 1 // 상수 선언. 값 바꾸면 에러 발생
numbers.append(10)
numbers.insert(40, at: 1)
//numbers.removeAll()
numbers.append(20)
numbers.append(30)
//a = numbers.remove(at: 0) //remove는 리턴값 생김

var dic: [String: Int] = [:] // 딕셔너리 변수 선언.
//== var dic: Dictionary<String, Int> = Dictionary<String, Int>() 랑 같다
dic["key"] = 3
dic["key2"] = 4

hello(name: "lee") // hello함수는 인자 두갠데 뒤에 파라미터는 기본값 있어서 전달 안 해줘도 hi가 출력됨.

send("lee") // 와일드카드 식별자 안 쓰면 오류나는 코드.
send2(me: "sukcheol", friends: "1", "2") // 가변 매개변수로 넘겨줄 때 배열로 넘겨줌.

let age : Int = 24
if age<20 {
    print("미성년자")
} else if age>=21 && age<=23{
    print("eogkrtod")
} else if age>30 {
    print("dfsds")
} else {
    print("no")
}
let temperature = 20
switch temperature {
case -20...9:
    print("-20~9")
case 10...14:
    print("10~14")
default:
    print("no")
}
for i in 1...4{
    print(i)
}
for i in numbers{
    print(i)
}
var num = 5
while num < 10{
    num+=1
}
// repeat이랑 dowhile이랑 똑같음. 한 번은 실행됨.
repeat{
    num-=1
} while num<5


