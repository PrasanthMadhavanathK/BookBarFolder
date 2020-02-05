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
    
    func addBookMarks(bookMark:[BookMarks]) -> Int {
        return bookMark.count
    }
    
    func addFolder(folders:[Folder]) -> Int {
        return folders.count
    }
    
    func addBookmarksOrFolders(combinedlist:[BookMarksAndFolderProtocol]) -> Int{
        return combinedlist.count
    }
}
