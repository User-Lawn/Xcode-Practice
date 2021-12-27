//
//  NewsDetailController.swift
//  Xcode_Table
//
//  Created by 이준영 on 2021/12/27.
//

import UIKit

class NewsDetailController : UIViewController {
    
    @IBOutlet weak var ImageMain: UIImageView!
    
    @IBOutlet weak var LabelMain: UILabel!
    
    //1. image url
    //2. desc
    
    var imageUrl: String?
    var desc: String?
    
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
}
