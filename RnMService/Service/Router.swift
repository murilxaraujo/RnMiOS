//
//  Router.swift
//  RnMService
//
//  Created by Murilo Araujo on 15/11/20.
//

import Foundation

internal class Router {
    static func makeRoute(_ paths: String..., params: Parameters = [:]) -> URL? {
        
        var finalUrlString = RnMService.endpoint
        if finalUrlString.hasSuffix("/") {
            finalUrlString.removeLast()
        }
        
        paths.forEach { (item) in
            finalUrlString.append("/\(item)")
        }
        
        if !params.isEmpty {
            finalUrlString.append("?")
            
            params.forEach { (param) in
                finalUrlString.append("\(param.key)=\(param.value)")
            }
        }
        
        return URL(string: finalUrlString)
    }
}
