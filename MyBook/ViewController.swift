//
//  ViewController.swift
//  MyBook
//
//  Created by SeongEun on 2024/04/21.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var bookTableView: UITableView!
    
    private var bookList: [Book] = []
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        setBookList()
        
        bookTableView.dataSource = self
    }

    // DB에서 불러오는 걸로 변경 예정
    private func setBookList() {
        let book1 = Book(idx: 1, title: "책1", page: 12)
        let book2 = Book(idx: 2, title: "책2", page: 122)
        let book3 = Book(idx: 3, title: "책3", page: 10)
        bookList = [book1, book2, book3]
    }
    
}

extension ViewController: UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return bookList.count
    }
        
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = bookTableView.dequeueReusableCell(withIdentifier: "bookCell", for: indexPath) as! BookTableViewCell
        cell.setBookInfo(bookList[indexPath.row])
        
        return cell
    }
}
