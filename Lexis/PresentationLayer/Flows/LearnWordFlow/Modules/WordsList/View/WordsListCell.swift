//
//  WordsListCell.swift
//  Lexis
//
//  Created by Beslan Tularov on 25/07/2019.
//  Copyright © 2019 Beslan Tularov. All rights reserved.
//

import UIKit

class WordsListCell: UITableViewCell {
    
    @IBOutlet weak var titleLabel: UILabel!

    func setTitle(title: String) {
        self.titleLabel.text = title
    }
}
