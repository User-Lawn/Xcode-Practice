//
//  ViewController.swift
//  Xcode_Table
//
//  Created by 이준영 on 2021/12/25.
//

import UIKit

class ViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {
   
    @IBOutlet weak var TableView_Main: UITableView!
  
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        //데이터 몇개?
        return 10
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        //무엇? 반복 10번?
        //임의의 셀 만들기
       // let cell = UITableViewCell.init(style: .default, reuseIdentifier: "TableCellType1")
        
        let cell = TableView_Main.dequeueReusableCell(withIdentifier: "Type1", for: indexPath) as! Type1
        //순번에 해당하는 셀을 만나면 Type1을 TableView에 넣어라!
        //as? as! 부모와 자식으 친자확인 또는 강제 친자로 바꿈
        
        cell.LabelText.text = "\(indexPath.row)"
        //cell.textLabel?.text = "\(indexPath.row)"
        
    
        return cell
        
    }
    
    func tableView(_ tableView: UITableView, didDeselectRowAt indexPath: IndexPath) {
        print("CLICK !!! \(indexPath.row)")
        //클릭이벤트
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        TableView_Main.delegate = self
        TableView_Main.dataSource = self
    }

    //tableView : 테이블로 된 뷰 - 여러개의 행이 모여있는 목록 화면
    //사용이유? : 정갈하게 보여줄라고 - 전화번호부
    
    //1.테이블에 사용되는 데이터? - 전화번호부 목록
    //2.데이터가 몇개? - 100, 1000, 10000
    //3.(옵션) 데이터 행 눌렀다! - 클릭
}

