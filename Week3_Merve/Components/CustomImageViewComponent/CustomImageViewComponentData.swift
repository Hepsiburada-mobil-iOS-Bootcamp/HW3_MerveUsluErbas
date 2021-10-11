//
//  CustomImageViewComponentData.swift
//  Week3_Merve
//
//  Created by Cokomel on 10.10.2021.
//

import UIKit

class CustomImageViewComponentData {
    
    deinit {
        print("DEINIT CustomImageViewComponentData")
    }
    
    private(set) var imageUrl: String
    private(set) var contentMode: UIView.ContentMode = .scaleAspectFill
    private(set) var loadingType: CustomImageLoadingType = .memory
    private(set) var imageId: String?
    
    init(imageUrl: String) {
        self.imageUrl = imageUrl
    }
    
    func setContentMode(by value: UIView.ContentMode) -> Self {
        self.contentMode = value
        return self
    }
    
    func setLoadingType(by value: CustomImageLoadingType) -> Self {
        self.loadingType = value
        return self
    }
    
    func setImageId(by value: String) -> Self {
        self.imageId = value
        return self
    }
    
}
