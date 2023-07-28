//
//  QuestionTracker.swift
//  Singapore Dash
//
//  Created by yoeh iskandar on 28/7/23.
//

import SwiftUI


class GlobalData: ObservableObject {
    @Published var questionTrack: Int = 0 // to keep track of the questions
    @Published var chapterTracker: Int = 0 //used to keep track of chapters
}
