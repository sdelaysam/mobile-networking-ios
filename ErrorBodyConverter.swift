//
//  ErrorBodyConverter.swift
//  App
//
//  Created by Sergey Petrov on 7/18/20.
//  Copyright © 2020 Home. All rights reserved.
//

import Foundation

public protocol ErrorBodyConverter {
    func convert(_ data: Data?, from: HTTPURLResponse) -> Error?
}
