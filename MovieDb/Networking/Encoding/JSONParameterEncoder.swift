//
//  JSONParameterEncoder.swift
//  MovieDb
//
//  Created by Mariak Achuoth on 2019-07-15.
//  Copyright © 2019 The Dream Future. All rights reserved.
//

import Foundation
public struct JSONParameterEncoder: ParameterEncoder{
    public static func encode(urlRequest: inout URLRequest, with parameters: Parameters) throws {
        do{
            let JsonData = try JSONSerialization.data(withJSONObject: parameters, options: .prettyPrinted)
            urlRequest.httpBody = JsonData
            if urlRequest.value(forHTTPHeaderField: "Content-Type") == nil
            {
                urlRequest.setValue("application/json", forHTTPHeaderField: "Content-Type")
            }
        }catch { throw NetworkError.encodeingFailed}
    }
}
