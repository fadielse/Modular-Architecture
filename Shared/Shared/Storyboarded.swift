//
//  Storyboarded.swift
//  Shared
//
//  Created by Fadilah Hasan on 11/12/19.
//  Copyright © 2019 Fadilah Hasan. All rights reserved.
//

import UIKit

public protocol Storyboarded {
    
    static func instantiate(withStoryboardName name: String) -> Self
}

//public extension Storyboarded where Self: UIViewController {
//
//    static func instantiate(withStoryboardName name: String) -> Self {
//        let id = String(describing: self)
//        let storyboard = UIStoryboard(name: name, bundle: Bundle.main)
//
//        if #available(iOS 13.0, *) {
//            return storyboard.instantiateViewController(identifier: id) as! Self
//        } else {
//            return storyboard.instantiateViewController(withIdentifier: id) as! Self
//        }
//    }
//}
