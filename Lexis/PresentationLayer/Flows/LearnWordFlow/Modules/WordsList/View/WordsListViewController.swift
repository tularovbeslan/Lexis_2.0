//
//  WordsListViewController.swift
//  Lexis
//
//  Created by Beslan Tularov on 25/07/2019.
//  Copyright © 2019 Beslan Tularov. All rights reserved.
//

import UIKit

class WordsListViewController: UIViewController, WordsListViewInput {
    
    var output: WordsListViewOutput!
    var dataSet: [Word] = []

    @IBOutlet weak var tableView: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        output.viewDidLoad()
        setupTableView()
    }
    
    func updateViewWith(_ dataSet: [Word]) {
        self.dataSet = dataSet
        self.tableView.reloadData()
    }
    
    func setTitle(_ text: String) {
        self.title = text
    }
    
    fileprivate func setupTableView() {
        let identifier = String(describing: WordsListCell.self)
        let nib = UINib(nibName: identifier, bundle: nil)
        tableView.register(nib, forCellReuseIdentifier: identifier)
        tableView.delegate = self
        tableView.dataSource = self
    }
}

extension WordsListViewController: UITableViewDelegate {
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        
        let index = indexPath.row
        output.didSelectWordAt(index)
    }
}

extension WordsListViewController: UITableViewDataSource {
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return dataSet.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: String(describing: WordsListCell.self), for: indexPath) as! WordsListCell
        cell.setTitle(title: dataSet[indexPath.row].word)
        return cell
    }
}
