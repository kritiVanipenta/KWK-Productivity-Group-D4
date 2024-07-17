//
//  timerModel.swift
//  PeachesTimer App
//
//  Created by Isha Saxena on 7/17/24.
//
import Foundation
extension timer {
    final class ViewModel: ObservableObject {
        @Published var isActive = false
        @Published var showingAlert = false
        @Published var time: String = "5:00"
        @Published var minutes: Float = 5.0 {
            didSet {
                self.time = "\(Int(minutes)):00"
            }
        }
        
        private var initialMinutes: Float = 5.0
        private var endDate = Date()
        
        
        
       
        func start(minutes: Float) {
            self.initialMinutes = minutes
            self.endDate = Date().addingTimeInterval(Double(minutes) * 60)
            self.isActive = true
            self.paused = false
            currentTime = minutes
        }
        
     
        func reset() {
            self.minutes = initialMinutes
            self.isActive = false
            self.time = "\(Int(minutes)):00"
            self.paused = false
        }
        
     
        func updateCountdown() {
            guard isActive else { return }
            
            let now = Date()
            let diff = endDate.timeIntervalSince(now)
            
            if diff <= 0 {
                self.isActive = false
                self.time = "0:00"
                self.showingAlert = true
                return
            }
            
            let minutes = Int(diff) / 60
            let seconds = Int(diff) % 60
            let currentTime = minutes + seconds
            
            //self.minutes = Float(minutes)
            self.time = String(format: "%d:%02d", minutes, seconds)
        }
    }
}


