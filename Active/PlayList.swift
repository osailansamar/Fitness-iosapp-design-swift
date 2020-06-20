//
//  PlayList.swift
//  Active
//
//  Created by Samar Yaseen on 6/17/20.
//  Copyright © 2020 Samarosailan. All rights reserved.
//

import UIKit

import Foundation
struct PlayList {
    var title: String
    var image : String 
    init(dictionary : [String : Any]) {
        self.title = dictionary["title"] as? String ?? ""
        self.image = dictionary["image"] as? String ?? ""
    }
}
