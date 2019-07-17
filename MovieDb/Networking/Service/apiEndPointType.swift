//
//  apiEndPointType.swift
//  MovieDb
//
//  Created by Mariak Achuoth on 2019-07-15.
//  Copyright © 2019 The Dream Future. All rights reserved.
//

import Foundation

protocol apiEndPointType {
    var baseURL: URL {get}
    var path: String {get}
    var httpMethod: HTTPMethod {get}
    var task: apiHTTPTask { get}
    var headers: HTTPHeaders? {get}
}
