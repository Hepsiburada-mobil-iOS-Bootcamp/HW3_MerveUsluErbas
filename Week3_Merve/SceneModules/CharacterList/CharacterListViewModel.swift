//
//  CharacterListViewModel.swift
//  Week3_Merve
//
//  Created by Cokomel on 3.10.2021.
//

import Foundation

class CharacterListViewModel {
    
}

extension CharacterListViewModel: ItemListProtocol {

    func getNumberOfSection() -> Int {
        return 1
    }

    func getNumberOfItem(in section: Int) -> Int {
        return 100
    }

    func getData(at index: Int) -> GenericDataProtocol? {
        return nil
    }
    
}
