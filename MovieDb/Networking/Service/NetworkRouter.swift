//
//  NetworkRouter.swift
//  MovieDb
//
//  Created by Mariak Achuoth on 2019-07-15.
//  Copyright © 2019 The Dream Future. All rights reserved.
//

import Foundation
public typealias NetworkRouterCompletion = (_ data: Data?, _ response:URLResponse?, _ error: Error?)->()

protocol NetworkRouter : class{
    associatedtype Endpoint: apiEndPointType
    func request(_ route: Endpoint, completion: @escaping NetworkRouterCompletion)
    func cancel()
}
