//
//  ViewController.swift
//  Xcode_Navi
//
//  Created by 이준영 on 2021/12/24.
//

import UIKit

class ViewController: UIViewController {

    @IBAction func Click_Move(_ sender: Any) {
       
        if let controller = self.storyboard?.instantiateViewController(withIdentifier: "DetailController"){
            self.navigationController?.pushViewController(controller, animated: true)
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }


}

