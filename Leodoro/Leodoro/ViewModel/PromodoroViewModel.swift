//
//  PromodoroViewModel.swift
//  Leodoro
//
//  Created by Armin Hutegger on 24.11.26.
//

import Foundation
import SwiftUI
@Observable
class PromodoroViewModel{
    var pomodoroManger: PomodoroManger
    var progress: Double
    var progressColor: Color
    var isProgressVisible: Bool
    init(pomodoroManger: PomodoroManger = PomodoroManger()) {
        self.pomodoroManger = pomodoroManger
        progress = 0
        progressColor = .pomodoroRed
        isProgressVisible = true
    }
}
