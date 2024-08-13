//
//  MainViewController.swift
//  MVC
//
//  Created by Fatih Doğan on 12.08.2024.
//

import UIKit

final class MainViewController: UIViewController {

    @IBOutlet private weak var mainView: MainViewProtocol! {
        didSet {
            mainView.delegate = self
        }
    }
    var service: MockServiceProtocol!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        service.fetchColor { [weak self] colorModels in
            guard let self else { return }
            DispatchQueue.main.async {
                self.mainView.updateView(for: colorModels)
            }
        }
    }
}

extension MainViewController: MainViewControllerDelegate {
    func didSelectColor(for color: ColorModel) {
        print(color.colorName)
    }
}

