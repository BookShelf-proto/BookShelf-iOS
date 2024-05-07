//
//  BookTableViewCell.swift
//  MyBook
//
//  Created by SeongEun on 2024/04/21.
//

import UIKit

class BookTableViewCell: UITableViewCell {
    static let identifier: String = "bookCell"

    @IBOutlet weak var idxLabel: UILabel!
    @IBOutlet weak var titleLabel: UILabel!
    @IBOutlet weak var pageLabel: UILabel!
    
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
    func setBookInfo(_ bookInfo: Book) {
        idxLabel.text = String(bookInfo.idx)
        titleLabel.text = bookInfo.title
        pageLabel.text = String(bookInfo.page)
    }

}
