//
//  Folder.swift
//  BookBarFolder
//
//  Created by Prasanth M Krishnadas on 2020-02-05.
//  Copyright © 2020 Prasanth M Krishnadas. All rights reserved.
//

import Foundation

struct  Folder:BookMarksAndFolderProtocol{
    var name = ""
    
    var bookMark: [BookMarks]?
    var folder:[Folder]?
    var combinedList = [BookMarksAndFolderProtocol]()

    
    mutating func addBookmarksOrFolders(bAndFElement:BookMarksAndFolderProtocol) -> Int{
         self.combinedList.append(bAndFElement)
         return self.combinedList.count
     }
}
