//
//  Section.swift
//  Active
//
//  Created by Samar Yaseen on 6/17/20.
//  Copyright © 2020 Samarosailan. All rights reserved.
//

import UIKit
import Foundation

struct Section {
    var title : String
    var playlists : NSArray
    init(dictionary:[String : Any]) {
        self.title = dictionary["title"] as? String ?? ""
        self.playlists = dictionary["playlists"] as? NSArray ?? []
        }
}
