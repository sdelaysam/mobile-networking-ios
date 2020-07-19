//
//  BaseService.swift
//  iOS
//
//  Created by Sergey Petrov on 6/12/20.
//  Copyright © 2020 Home. All rights reserved.
//

import Foundation
import RxSwift

class BaseService {
    
    private let processor: NetworkRequestProcessor
    private let hostProvider: HostProvider

    init(processor: NetworkRequestProcessor, hostProvider: HostProvider) {
        self.processor = processor
        self.hostProvider = hostProvider
    }

    func get(_ path: String) -> NetworkRequestBuilder {
        return NetworkRequestBuilder(host: hostProvider.host, scheme: hostProvider.scheme)
            .withProcessor(processor)
            .withMethod(.get)
            .withPath(path)
    }
    
    func post(_ path: String) -> NetworkRequestBuilder {
        return NetworkRequestBuilder(host: hostProvider.host, scheme: hostProvider.scheme)
            .withProcessor(processor)
            .withMethod(.post)
            .withPath(path)
    }
}
