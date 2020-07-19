//
//  HostProvider.swift
//  App
//
//  Created by Sergey Petrov on 7/19/20.
//  Copyright © 2020 Home. All rights reserved.
//

import Foundation

protocol HostProvider {
    var scheme: String { get }
    var host: String { get }
}
