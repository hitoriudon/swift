import UIKit

/*
 생성자로 초기화 하는 이유: 인스턴스의 프로퍼티마다 초기값을 설정해주고, 새 인스턴스를 사용하기 전에 필요한 설정을 해주기 위해.
 구조체나 클래스나 열거형 뭐.. 다 init() 선언해주넹
 소멸자는 클래스에만!
 init(매개변수: 타입, ...){
    //프로퍼티 초기화
    //인스턴스 생성시 필요한 설정을 해주는 코드 작성
    //매개변수 이름 다르게만 해주면 사용자가 정의한 여러 개의 생성자 쓸 수 있음
 }
*/
class User {
    var nickname : String
    let age : Int // 저장 프로퍼티를 상수로 선언하면 클래스 타입이 상수든 변수든 못 바꿈.
    
    init(nickname: String, age: Int){
        self.nickname = nickname
        self.age = age
    }
    init(age : Int){
        self.nickname = "suk"
        self.age = age
    }
    deinit{
        print("deinit user")
    }
}
class Account {
    var credit: Int = 0 {
        willSet{ //값 변경 전에 실행됨
            print("잔액이 \(credit)원에서 \(newValue)원으로 변경될 예정입니다.")
        }
        didSet{ // 값 변경 후 실행됨
            print("잔액이 \(oldValue)원에서 \(credit)원으로 변경되었습니다.")
        }
    }
}

var user = User(nickname: "lee", age: 26) // 1st init
var user2 = User(age: 23) // 2nd init
// 옵셔널로 설정하고...
var user3 : User? = User(age: 23)
user3 = nil // nil로 선언하면 필요없다고 간주하고 소멸자 실행됨

let user4 = User(nickname: "json", age: 27)
user4.nickname = "gunter"
print(user4.nickname) // 상수로 클래스를 선언해도 저장 프로퍼티가 변수라면 값 변경 가능.


var account = Account()
account.credit = 1000

/*
 var class1 = Someclass()
 var class2 = class1
 var class3 = class1 하면, 참조타입인 클래스는 메모리가 복사되기 때문에 값이 공유된다.
 
 var struct1 = Somestruct()
 var struct2 = struct1
 var struct3 = struct1
 구조체는 메모리가 아니라 값이 복사되기 때문에 같은 구조체 인스턴스를 할당하더라도 값이 공유되지 않는다.
 */
