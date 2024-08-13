//
//  MainViewBuilder.swift
//  MVC
//
//  Created by Fatih Doğan on 13.08.2024.
//

import UIKit

final class MainBuilder {
    static func make() -> UIViewController {
           let storyboard = UIStoryboard(name: "Main", bundle: nil)
        let viewController = storyboard.instantiateViewController(withIdentifier: "MainViewController") as! MainViewController
        let service = MockNetworkService()
        viewController.service = service
        return viewController
    }
}
