//
//  ViewController.swift
//  UpDownGame_yagom
//
//  Created by 이준영 on 2022/01/01.
//

import UIKit

class ViewController: UIViewController {
    var randomValue: Int = 0
    var tryCount: Int = 0
    
    @IBOutlet weak var slider: UISlider!
    @IBOutlet weak var tryCountLabel: UILabel!
    @IBOutlet weak var sliderValueLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        reset()
    }

    @IBAction func slideerValueChanged(_ sender: UISlider) {
        print(sender.value)
    }
    @IBAction func touchUpHitButton(_ sender: UIButton) {
        print(slider.value)
    }
    @IBAction func touchUpResetButton(_ sender: UIButton) {
        print("touch up reset button")
        reset()
    }
    func reset() {
        print("reset!")
    }

}


