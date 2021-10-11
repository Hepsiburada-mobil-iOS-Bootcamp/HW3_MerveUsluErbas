//
//  CharacterListViewBuilder.swift
//  Week3_Merve
//
//  Created by Cokomel on 3.10.2021.
//

import UIKit

class CharacterListViewBuilder {
    
    class func build() -> UIViewController {
        let viewModel = CharacterListViewModel()
        let viewController = CharacterListViewController(viewModel: viewModel)
        return viewController
    }
    
}
