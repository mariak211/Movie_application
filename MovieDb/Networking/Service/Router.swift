//
//  Router.swift
//  MovieDb
//
//  Created by Mariak Achuoth on 2019-07-15.
//  Copyright © 2019 The Dream Future. All rights reserved.
//

import Foundation

class Router<Endpoint: apiEndPointType>: NetworkRouter
{
    private var task: URLSessionTask?
    func request(_ route: Endpoint, completion: @escaping NetworkRouterCompletion) {
        //DO SOMETHING HERE
    }
    
    func cancel() {
    //MARK TODO
    }
    
    
}
