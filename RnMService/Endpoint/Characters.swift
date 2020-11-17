//
//  Characters.swift
//  RnMService
//
//  Created by Murilo Araujo on 15/11/20.
//

import Foundation

enum RnMCharactersErrors: Error {
    case couldNotMakeRoute
    case couldNotGetResult
}

public struct RnMCharacters {
    private let routePath = "character"
    
    public func getAll(in page: Int = 1, completion: @escaping (Result<[RnMCharacter], Error>)->Void) {
        let params = ["page": page]
        
        guard let url = Router.makeRoute(routePath, params: params) else {
            completion(.failure(RnMCharactersErrors.couldNotMakeRoute))
            return
        }
        
        URLSession.shared.dataTask(with: url) { (data, response, error) in
            if let error = error {
                completion(.failure(error))
                return
            }
            
            guard let responseData = data,
                  let result = try? JSONDecoder().decode(APIResult<[RnMCharacter]>.self, from: responseData) else  {
                DispatchQueue.main.async {
                    completion(.failure(RnMCharactersErrors.couldNotGetResult))
                }
                return
            }
            
            DispatchQueue.main.async {
                completion(.success(result.results))
            }
        }.resume()
    }
    
    public func get(for reference: RnMCharacterReference, completion: @escaping (Result<RnMCharacter, Error>)->Void) {
        guard let url = URL(string: reference) else {
            completion(.failure(RnMCharactersErrors.couldNotMakeRoute))
            return
        }
        
        URLSession.shared.dataTask(with: url) { (data, response, error) in
            if let error = error {
                completion(.failure(error))
                return
            }
            
            guard let responseData = data,
                  let result = try? JSONDecoder().decode(RnMCharacter.self, from: responseData) else  {
                completion(.failure(RnMCharactersErrors.couldNotGetResult))
                return
            }
            
            completion(.success(result))
        }.resume()
    }
}
