//
//  FavoriteViewBuilder.swift
//  Week3_Merve
//
//  Created by Cokomel on 3.10.2021.
//

import UIKit

class FavoriteViewBuilder {
    
    class func build() -> UIViewController {
        
        let viewModel = FavoriteViewModel()
        let viewController = FavoriteViewController(viewModel: viewModel)
        viewController.title = "Favorites"
        viewController.tabBarItem.image = TabBarImages.favorite.value
       viewController.tabBarItem.selectedImage = TabBarImages.favoriteSelected.value
        return viewController
        
    }
    
}
