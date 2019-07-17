//
//  HTTPTask.swift
//  MovieDb
//
//  Created by Mariak Achuoth on 2019-07-15.
//  Copyright © 2019 The Dream Future. All rights reserved.
//

import Foundation
public typealias HTTPHeaders = [String:String]


public enum apiHTTPTask{
    case request
    case requestparameters(bodyParameters: Parameters?, urlParameters: Parameters?)
    case requestParametersAndHeaders(bodyParameters: Parameters?, urlParameters: Parameters?, additionHeaders: HTTPHeaders?)
}
