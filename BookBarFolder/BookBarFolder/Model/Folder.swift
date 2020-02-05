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
    
    func addBookmarksOrFolders(combinedlist:[BookMarksAndFolderProtocol]) -> Int{
           return combinedlist.count
       }
}
