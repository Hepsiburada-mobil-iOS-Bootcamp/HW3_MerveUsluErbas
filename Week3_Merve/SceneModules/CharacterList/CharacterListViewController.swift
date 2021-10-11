//
//  CharacterListViewController.swift
//  Week3_Merve
//
//  Created by Cokomel on 3.10.2021.
//

import UIKit

class CharacterListViewController : BaseViewController<CharacterListViewModel> {
    
    deinit {
        print("DEINIT CharacterListViewController")
    }
    
    private var mainComponent: ItemListView!

    override func prepareViewControllerConfigurations() {
        super.prepareViewControllerConfigurations()
        addmainComponent()
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        self.navigationController?.setNavigationBarHidden(false, animated: true)
    }
    
    func addmainComponent() {
        //mainComponent = mainComponent()
        mainComponent = ItemListView()
        mainComponent.translatesAutoresizingMaskIntoConstraints = false
        
        mainComponent.delegate = viewModel
        
        view.addSubview(mainComponent)
        
        NSLayoutConstraint.activate([
        
            mainComponent.leadingAnchor.constraint(equalTo: view.leadingAnchor),
            mainComponent.trailingAnchor.constraint(equalTo: view.trailingAnchor),
            mainComponent.topAnchor.constraint(equalTo: view.topAnchor),
            mainComponent.bottomAnchor.constraint(equalTo: view.bottomAnchor)
            
        ])
    }
    
}
