//
//  player.swift
//  Players
//
//  Created by Jesse Shawl on 4/2/15.
//  Copyright (c) 2015 Dustin Pfannenstiel. All rights reserved.
//

import Foundation

class Player:PlayerRanking {
    var team = ""
    var nickname = ""
    var score = 0
    var quote = ""
    init( team:String, nickname:String, score:Int, quote:String ){
        self.team = team
        self.nickname = nickname
        self.score = score
        self.quote = quote
    }
    func getRank() -> NSString {
       return ""
    }
}