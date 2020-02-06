//
//  BookBar.swift
//  BookBarFolder
//
//  Created by Prasanth M Krishnadas on 2020-02-05.
//  Copyright © 2020 Prasanth M Krishnadas. All rights reserved.
//

import Foundation

struct BookBar {
    var bookMark: [BookMarks]?
    var folder:[Folder]?
    var combinedList = [BookMarksAndFolderProtocol]()
    
    mutating func addBookMarks(bookMark:BookMarks) -> Int? {
        
        self.bookMark?.append(bookMark)
        return self.bookMark?.count
    }
    
    mutating func addFolder(folder:Folder) -> Int? {
        self.folder?.append(folder)
        return self.folder?.count
    }
    
    mutating func addBookmarksOrFolders(bAndFElement:BookMarksAndFolderProtocol) -> Int{
        self.combinedList.append(bAndFElement)
        return self.combinedList.count
    }
}
