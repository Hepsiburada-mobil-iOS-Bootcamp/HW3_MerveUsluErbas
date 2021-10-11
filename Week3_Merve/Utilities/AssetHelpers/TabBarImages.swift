//
//  TabBarImages.swift
//  Week3_Merve
//
//  Created by Cokomel on 3.10.2021.
//

import UIKit

enum TabBarImages: String, GenericValueProtocol {

    typealias Value = UIImage
    
    var value: Value {
        return UIImage(imageLiteralResourceName: rawValue)
    }
    
    case home = "home"
    case favorite = "favorite"
    case homeSelected = "homeSelected"
    case favoriteSelected = "favoriteSelected"
    
}
