//
//  WordSetsCell.swift
//  Lexis
//
//  Created by Beslan Tularov on 25/07/2019.
//  Copyright © 2019 Beslan Tularov. All rights reserved.
//

import UIKit

class WordSetsCell: UICollectionViewCell {
    
    @IBOutlet weak var titleLabel: UILabel!
    @IBOutlet weak var folderImageView: UIImageView!
    
    func setTitle(title: String) {
        self.titleLabel.text = title
    }
}
