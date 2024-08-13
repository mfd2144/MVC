//
//  MockNetworkService.swift
//  MVC
//
//  Created by Fatih Doğan on 12.08.2024.
//

import Foundation

protocol MockServiceProtocol: AnyObject {
    func fetchColor(completion: @escaping(([ColorModel]) -> Void))
}

final class MockNetworkService: MockServiceProtocol {
    func fetchColor(completion: @escaping(([ColorModel]) -> Void)) {
        DispatchQueue.global(qos: .userInteractive).asyncAfter(deadline: .now() + .microseconds(1000)) {
            completion(colorData)
        }
    }
}
