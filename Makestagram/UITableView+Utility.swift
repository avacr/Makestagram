//
//  UITableView+Utility.swift
//  Makestagram
//
//  Created by Ava Crnkovic-Rubsamen on 7/14/17.
//  Copyright © 2017 Ava Crnkovic-Rubsamen. All rights reserved.
//

import Foundation
import UIKit

protocol CellIdentifiable {
    static var cellIdentifier: String { get }
}
extension CellIdentifiable where Self: UITableViewCell {
    // 2
    static var cellIdentifier: String {
        return String(describing: self)
    }
}
extension UITableViewCell: CellIdentifiable { }

extension UITableView {
    // 1
    func dequeueReusableCell<T: UITableViewCell>() -> T where T: CellIdentifiable {
        // 2
        guard let cell = dequeueReusableCell(withIdentifier: T.cellIdentifier) as? T else {
            // 3
            fatalError("Error dequeuing cell for identifier \(T.cellIdentifier)")
        }
        
        return cell
    }
}
