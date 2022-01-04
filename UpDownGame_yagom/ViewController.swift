//
//  ViewController.swift
//  UpDownGame_yagom
//
//  Created by 이준영 on 2022/01/01.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var slider: UISlider!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        slider.setThumbImage(Image Literal, for: .normal)
    }

    @IBAction func slideerValueChanged(_ sender: UISlider) {
        print(sender.value)
    }
    @IBAction func touchUpHitButton(_ sender: UIButton) {
        print(slider.value)
    }
    @IBAction func touchUpResetButton(_ sender: UIButton) {
        print("touch up reset button")
        
    }
}

