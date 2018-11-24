//
//  QuestionBank.swift
//  13600174_fortune_pj
//
//  Created by kengserch on 17/11/2561 BE.
//  Copyright © 2561 ICTSUIM. All rights reserved.
//

import Foundation
import Foundation
class QuestionBank {
    
    var list = [Question] ()
    init() {
        //index = 0
        list.append(Question (image : "lk1", questionText: "สิ่งที่เห็นในภาพนี้คือเครื่องรางนำโชคของประเทศใด", choiceA : "ญี่ปุ่น" , choiceB : "จีน" , choiceC : "เกาหลี", answer: 1 ))
        //index = 1
        list.append(Question (image : "lk2", questionText: "สิ่งที่เห็นในภาพนี้คือเครื่องรางนำโชคของประเทศใด", choiceA : "เกาหลี" , choiceB : "จีน" , choiceC : "สเปน", answer: 2 ))
        //index = 2
        list.append(Question (image : "lk3", questionText: "สิ่งที่เห็นในภาพนี้คือเครื่องรางนำโชคของประเทศใด", choiceA : "สโลวาเกีย " , choiceB : "กัมพูชา" , choiceC : "ปาปัวนิวกินี", answer: 1 ))
        //index = 3
        list.append(Question (image : "lk4", questionText: "สิ่งที่เห็นในภาพนี้คือเครื่องรางนำโชคของประเทศใด", choiceA : "ออสเตรีย" , choiceB : "เปรู" , choiceC : "โครเอเชีย", answer: 2 ))
        //index = 4
        list.append(Question (image : "lk5", questionText: "สิ่งที่เห็นในภาพนี้คือเครื่องรางนำโชคของประเทศใด", choiceA : "เดนมาร์ก" , choiceB : "ฟินแลนด์" , choiceC : "นอร์เวย์", answer: 3 ))
        //index = 5
        list.append(Question (image : "lk6", questionText: "สิ่งที่เห็นในภาพนี้คือเครื่องรางนำโชคของประเทศใด", choiceA : "จีน" , choiceB : "กรีซ" , choiceC : "ไอซ์แลนด์", answer: 1 ))
        //index = 6
        list.append(Question (image : "lk7", questionText: "สิ่งที่เห็นในภาพนี้คือเครื่องรางนำโชคของประเทศใด", choiceA : "รัสเซีย" , choiceB : "สโลเวเนีย" , choiceC : "จีน", answer: 3 ))
        //index = 7
        list.append(Question (image : "lk8", questionText: "สิ่งที่เห็นในภาพนี้คือเครื่องรางนำโชคของประเทศใด", choiceA : "สวีเดน" , choiceB : "อียิปต์" , choiceC : "ยูเครน", answer: 2 ))
        //index = 8
        list.append(Question (image : "lk9", questionText: "สิ่งที่เห็นในภาพนี้คือเครื่องรางนำโชคของประเทศใด", choiceA : "ไอร์แลนด์" , choiceB : "เนปาล" , choiceC : "อินโดนีเซีย ", answer: 1 ))
        //index = 9
        list.append(Question (image : "lk10", questionText: "สิ่งที่เห็นในภาพนี้คือเครื่องรางนำโชคของประเทศใด", choiceA : "ฮ่องกง" , choiceB : "ไต้หวัน" , choiceC : "อินเดีย", answer: 3 ))
        
    }
}
