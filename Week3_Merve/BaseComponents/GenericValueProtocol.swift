//
//  GenericValueProtocol.swift
//  Week3_Merve
//
//  Created by Cokomel on 3.10.2021.
//

import Foundation

protocol GenericValueProtocol {
    associatedtype Value
    var value: Value { get }
}

