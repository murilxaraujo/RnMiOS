//
//  PersistService.swift
//  PersistService
//
//  Created by Murilo Araujo on 17/11/20.
//

import Foundation

public class PersistService {
    public func save(_ data: Data, for key: String) {
        guard let filePath = self.append(toPath: self.documentDirectory(),
                                         withPathComponent: key+".txt") else {
            return
        }
        let dataString = data.base64EncodedString(options: .init(rawValue: 0))
        
        do {
            try dataString.write(toFile: filePath,
                           atomically: true,
                           encoding: .utf8)
        } catch {
            print("Error", error)
            return
        }
    }
    
    public func retrieve(for key: String) -> Data? {
        guard let filePath = self.append(toPath: self.documentDirectory(),
                                         withPathComponent: key+".txt") else {
            return nil
        }
        
        do {
            let savedString = try String(contentsOfFile: filePath, encoding: .utf8)
            let data = Data(base64Encoded: savedString, options: .init(rawValue: 0))
            return data
        } catch {
            return nil
        }
    }
    
    private func documentDirectory() -> String {
        let documentDirectory = NSSearchPathForDirectoriesInDomains(.documentDirectory,
                                                                    .userDomainMask,
                                                                    true)
        return documentDirectory[0]
    }
    
    private func append(toPath path: String,
                        withPathComponent pathComponent: String) -> String? {
        if var pathURL = URL(string: path) {
            pathURL.appendPathComponent(pathComponent)
            
            return pathURL.absoluteString
        }
        
        return nil
    }
}
