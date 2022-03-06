//
//  ViewController.swift
//  AutoLayoutExample
//
//  Created by 이석철 on 2022/03/06.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var colorView: UIView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func tapChangeColorButton(_ sender: UIButton) {
        self.colorView.backgroundColor = UIColor.blue
        print("색상 변경 완료!") // 콘솔 창에 뜬다.
    }
    
}

