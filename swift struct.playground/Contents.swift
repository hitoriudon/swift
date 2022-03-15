import UIKit

/*변수나 상수함수의 이름은 소문자로 네이밍하는 카멜 표기법을 따르지만, 구조체나 클래스는 대문자로 시작하는 파스칼 표기법을 따른다.
*/

struct User{
    // 변수선언 프로퍼티이름 : 타입
    var nickname : String // 구조체 내에 선언된 변수나 상수를 저장 프로퍼티라고 부른다.
    var age : Int
    static var things :Int = 1 // 타입프로퍼티라고 하는데, static으로 선언하면 인스턴스를 선언하지 않아도 값에 접근할 수 있다.
    // 메소드선언 메소드이름 파라미터
    func info(){
        print("\(nickname) and \(age)")
    }
}
struct Stock{
    var averagePrice: Int
    var quantity: Int
    var purchasePrice: Int{ //연산 프로퍼티. set없이 get만 냅두면 읽기 전용 프로퍼티라고 하네요~
        get{
            return averagePrice * quantity
        }
        set(newPrice){ //매개변수 설정 안 하면, newValue라는 이름의 디폴트 변수 사용 가능.
            averagePrice = newPrice / quantity
        }
    }
}


// 구조체 인스턴스 생성 (클래스 생성자)
var user = User(nickname: "lee", age: 26)
// 구조체 인스턴스네임 닷 프로퍼티네임 -> 접근. 값 직접 변경 가능
let user2 = User(nickname: "suk", age: 12) // 상수로 선언된 구조체는 값을 변경할 수 없다.
user.nickname = "albert"
// 함수도 위와 같이 접근 
user.info()

var stock = Stock(averagePrice: 2300, quantity: 3)
print(stock)
stock.purchasePrice //6900원. getter
stock.purchasePrice = 3000 // setter
stock.averagePrice //1000원.







