//
//  FileHelper.swift
//  VoiceRecorder
//
//  Created by  William on 2/6/19.
//  Copyright © 2019 Vasiliy Lada. All rights reserved.
//

import Foundation

/* constants */
public let FHRecordingName = "recording.m4a"

class FileHelper {
    
    static func getDocumentsDirectory() -> URL {
        let paths = FileManager.default.urls(for: .documentDirectory, in: .userDomainMask)
        return paths[0]
    }
    
    static func deleteFile(_ file: URL) -> Bool {
        let fileManager = FileManager.default
        
        if fileManager.fileExists(atPath: file.path) {
            do {
                try fileManager.removeItem(at: file)
                return true
            } catch {
                // unable to delete the file :(
            }
        }
        
        return false
    }
}
