//
//  MainView.swift
//  MVC
//
//  Created by Fatih Doğan on 12.08.2024.
//

import UIKit

    final class MainView: UIView {
        @IBOutlet private weak var tableView: UITableView! {
            didSet {
                tableView.delegate = self
                tableView.dataSource = self
            }
        }
       
        private var colors: [ColorModel]?
        weak var delegate:  MainViewControllerDelegate?
    }

    extension MainView :UITableViewDataSource, UITableViewDelegate {
        func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
            colors?.count ?? 0
        }
        
        func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
            let cell = tableView.dequeueReusableCell(withIdentifier: "MainViewCell", for: indexPath) as! MainViewCell
            guard let colors else { return cell }
            let color = colors[indexPath.row]
            cell.configureCell(color: color)
            return cell
        }
        
        func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
            guard let colors else { return }
            delegate?.didSelectColor(for: colors[indexPath.row])
        }
    }

    extension MainView: MainViewProtocol {
        func updateView(for colors: [ColorModel]) {
            self.colors = colors
            tableView.reloadData()
        }
    }
