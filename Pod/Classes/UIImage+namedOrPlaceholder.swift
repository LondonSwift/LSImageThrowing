//
//  UIImage+imageOrPlaceholder.swift
//  LSImageThrowing
//
//  Created by Daren David Taylor on 25/09/2015.
//  Copyright © 2015 LondonSwift. All rights reserved.
//

import UIKit

public enum PlaceholderImageError : ErrorType {
    case NotFound
}

public extension UIImage {
    public convenience init ?(named:String, placeholderOrThrow:String) throws {
        
        var path: String
        
        do {
            let _ = try UIImage(namedOrThrow: named)
            path = named
        }
        catch {
            path = placeholderOrThrow
        }
        
        // if we cant find the images pointed to by named and
        // placeholderOrThrow then we still want to throw
        do {
            try self.init(namedOrThrow:path)
        }
        catch {
            throw PlaceholderImageError.NotFound
        }
    }
}
