//
//  ViewController.swift
//  Xcode_WebView
//
//  Created by 이준영 on 2021/12/25.
//

import UIKit
import WebKit

class ViewController: UIViewController {

    @IBOutlet weak var WebViewMain: WKWebView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        //1. url string
        //2. url > request
        //3. req > load
        
        let urlString = "https://developeracademy.postech.ac.kr/ko/"
        if let url = URL(string: urlString) {
            //?는 값이 들어있을수도 있다는 뜻
            //unwraping 과정이다.
            let urlReq = URLRequest(url : url)
            WebViewMain.load(urlReq)
            
        }
        
    }


}

