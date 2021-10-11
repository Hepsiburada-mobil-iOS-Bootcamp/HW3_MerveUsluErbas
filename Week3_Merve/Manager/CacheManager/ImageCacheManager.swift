//
//  ImageCacheManager.swift
//  Week3_Merve
//
//  Created by Cokomel on 10.10.2021.
//
import Foundation
import UIKit

class ImageCacheManager {
    deinit {
        print("DEINIT ImageCacheManager")
    }
    
    private static let imageCache = NSCache<NSString, UIImage>()
    
    class func setImagesToCache(object: UIImage, key: String) {
        imageCache.setObject(object, forKey: NSString(string: key))
    }
    
    class func returnImagesFromCache(key: String) -> UIImage? {
        return imageCache.object(forKey: NSString(string: key))
    }
    
}
