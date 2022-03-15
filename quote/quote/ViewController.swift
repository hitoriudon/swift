//
//  ViewController.swift
//  quote
//
//  Created by 이석철 on 2022/03/07.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var quoteLabel: UILabel!
    @IBOutlet weak var nameLabel: UILabel!
    let quotes = [
        Quote(contents: "1. 자연과 조화롭게 살아가는 것이 삶의 목적이다.", name: "제노"),
        Quote(contents: "2. 불신과 주의는 안전의 부모이다.", name: "벤자민 프랭클린"),
        Quote(contents: "3. 인간에게 유일한 위대함은 죽지 않는 것이다.", name: "제임스 딘"),
        Quote(contents: "4. 성공한 사람보다는 가치 있는 사람이 되려 하라.", name: "알버트 아인슈타인"),
        Quote(contents: "5. 남들이 단순하게 살 수 있도록 검소하게 살라.", name: "마하트마 간디"),
        Quote(contents: "6. 자신이 어떻게 변해왔는지 알려면 변하지 않은 곳으로 돌아가는 것보다 더 좋은 방법은 없다. ", name: "넬슨 만델라"),
        Quote(contents: "7. 분노는 바보들의 가슴 속에서만 살아간다.", name: "알버트 아인슈타인")
    ]
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    @IBAction func tapQuoteGeneratorButton(_ sender: Any) {
        let random = Int(arc4random_uniform(7)) // 인덱스만큼의 난수 발생
        let quote = quotes[random]
        self.quoteLabel.text = quote.contents // struct안의 두 저장 프로퍼티
        self.nameLabel.text = quote.name
        
    }
    

}

