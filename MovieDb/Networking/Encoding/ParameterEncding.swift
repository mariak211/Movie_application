//
//  ParameterEncding.swift
//  MovieDb
//
//  Created by Mariak Achuoth on 2019-07-15.
//  Copyright © 2019 The Dream Future. All rights reserved.
//

import Foundation
public typealias Parameters = [String: String]

public protocol ParameterEncoder{
    static func encode(urlRequest: inout URLRequest, with parameters: Parameters) throws
}


public enum NetworkError: String, Error{
    case parametersNil = "parameters were nil."
    case encodeingFailed = "parameters encoding failed."
    case missingURL = "URL is missing"
}
