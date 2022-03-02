import UIKit

//변수나 상수함수의 이름은 소문자로 네이밍하는 카멜 표기법을 따르지만, 구조체나 클래스는 대문자로 시작하는 파스칼 표기법을 따른다.
struct User{
    // 변수선언 프로퍼티이름 : 타입
    var nickname : String
    var age : Int
    // 메소드선언 메소드이름 파라미터
    func info(){
        print("\(nickname) and \(age)")
    }
}
// 인스턴스 생성 (클래스 생성자)
var user = User(nickname: "lee", age: 26)
// 인스턴스네임 닷 프로퍼티네임으로 접근해서 값 직접 변경 가능
user.nickname = "albert"
// 함수도 위와 같이 접근 
user.info()



//깃 업데이트가 잘 될까?
