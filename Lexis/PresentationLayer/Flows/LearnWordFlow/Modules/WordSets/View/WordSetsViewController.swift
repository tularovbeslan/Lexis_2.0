//
//  WordSetsViewController.swift
//  Lexis
//
//  Created by Beslan Tularov on 23/07/2019.
//  Copyright © 2019 Beslan Tularov. All rights reserved.
//

import UIKit

final class WordSetsViewController: UIViewController, WordSetsViewInput {
    
    var output: WordSetsViewOutput!
    var dataSet: [WordSet] = []

    @IBOutlet weak var collectionView: UICollectionView!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        output.viewDidLoad()
        setupCollectionView()
    }
    
    func updateViewWith(_ dataSet: [WordSet]) {
        
        self.dataSet = dataSet
        collectionView.reloadData()
    }
    
    func setTitle(_ text: String) {
        self.title = text
    }
    
    fileprivate func setupCollectionView() {
        
        let layout = UICollectionViewFlowLayout()
        collectionView.collectionViewLayout = layout
        let identifier = String(describing: WordSetsCell.self)
        let nib = UINib(nibName: identifier, bundle: nil)
        collectionView.register(nib, forCellWithReuseIdentifier: identifier)
        collectionView.delegate = self
        collectionView.dataSource = self
    }
}

extension WordSetsViewController: UICollectionViewDelegateFlowLayout {
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        
        let width = ((collectionView.frame.width - (10 * 3)) / 3)
        return CGSize(width: width, height: 120)
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumLineSpacingForSectionAt section: Int) -> CGFloat {
        return 10
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumInteritemSpacingForSectionAt section: Int) -> CGFloat {
        return 10
    }
    
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        let wordSet = dataSet[indexPath.row]
        output.didSelect(wordSet: wordSet)
    }
}

extension WordSetsViewController: UICollectionViewDataSource {

    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return dataSet.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: String(describing: WordSetsCell.self), for: indexPath) as!  WordSetsCell
        cell.setTitle(title: dataSet[indexPath.row].name)
        return cell
    }
}
