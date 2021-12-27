//
//  ViewController.swift
//  Xcode_Table
//
//  Created by 이준영 on 2021/12/25.
//

import UIKit

class ViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {
   
    @IBOutlet weak var TableView_Main: UITableView!
    
    //http 데이터 통신 방법 - urlsession
    //json 데이터 형태 - 네트워크 통신을 할때 규약을 정해놓으면 편하다. 하나의 약속 {"돈":"1000"} {"키":"값"} 가장 빠른 데이터 규약
    //테이블 뷰의 데이터 매칭!! 통보 그리기
    //background : network / ui : main
    var newsData :Array<Dictionary<String, Any>>?
    //newsapi
    func getNews() {
       let task = URLSession.shared.dataTask(with: URL(string: "https://newsapi.org/v2/top-headlines?country=kr&apiKey=1120baf05f824d67bd8c5c480369f320")!) { (data, response, error) in
            
            if let dataJson = data {
               
                //json parsing
                do {
                    let json = try JSONSerialization.jsonObject(with: dataJson, options: []) as! Dictionary<String, Any>
                    
                    let articles = json["articles"] as! Array<Dictionary<String, Any>>
                    self.newsData = articles
                    
                    DispatchQueue.main.async {
                        self.TableView_Main.reloadData()
                    }
                  
                }
                catch{}
            }
        }
        
        task.resume()
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        //데이터 몇개?
        if let news = newsData {
            return news.count
        }
        else {
            return 0
        }
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        //무엇? 반복 10번?
        //임의의 셀 만들기
       // let cell = UITableViewCell.init(style: .default, reuseIdentifier: "TableCellType1")
        
        let cell = TableView_Main.dequeueReusableCell(withIdentifier: "Type1", for: indexPath) as! Type1
        //순번에 해당하는 셀을 만나면 Type1을 TableView에 넣어라!
        //as? as! 부모와 자식으 친자확인 또는 강제 친자로 바꿈
        let idx = indexPath.row
        print("idx :: \(idx)")
        if let news = newsData {
            
            let row = news[idx]
            print("row :: \(row)")
            if let r = row as? Dictionary<String, Any> {
                print("TITLE :: \(r)")
                if let title = r["title"] as? String {
                    cell.LabelText.text = title
                }
            }
           
        }
    
        return cell
        
    }
    
    func tableView(_ tableView: UITableView, didDeselectRowAt indexPath: IndexPath) {
        print("CLICK !!! \(indexPath.row)")
        //클릭이벤트
    }
    //1. 디테일 상세화면 만들기
    //2. 값을 보내기
    //3. 값 셋팅후 화면이동
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        TableView_Main.delegate = self
        TableView_Main.dataSource = self
        getNews()
        
    }

    //tableView : 테이블로 된 뷰 - 여러개의 행이 모여있는 목록 화면
    //사용이유? : 정갈하게 보여줄라고 - 전화번호부
    
    //1.테이블에 사용되는 데이터? - 전화번호부 목록
    //2.데이터가 몇개? - 100, 1000, 10000
    //3.(옵션) 데이터 행 눌렀다! - 클릭
}

