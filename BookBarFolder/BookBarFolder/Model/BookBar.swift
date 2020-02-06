//
//  BookBar.swift
//  BookBarFolder
//
//  Created by Prasanth M Krishnadas on 2020-02-05.
//  Copyright © 2020 Prasanth M Krishnadas. All rights reserved.
//

import Foundation

struct BookBar {

    var combinedList = [BookMarksAndFolderProtocol]()

    
    mutating func addBookmarksOrFolders(bAndFElement:BookMarksAndFolderProtocol) -> Int{
        self.combinedList.append(bAndFElement)
        return self.combinedList.count
    }
}
