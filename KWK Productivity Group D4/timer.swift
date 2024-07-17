//
//  timer.swift
//  PeachesTimer App
//
//  Created by Isha Saxena on 7/17/24.
//
import SwiftUI
class ViewModel: ObservableObject {
    @Published var time = "00:00"
    @Published var minutes: Double = 1
    @Published var showingAlert = false
    @Published var isActive = false
    
    @Published var currentTime: Float = 0.00
    @Published var paused = false
    
    @Published var totalSeconds = 0
    @Published var secondsRemaining = 0
    private var timer: Timer?
    
    func start(minutes: Double) {
        totalSeconds = Int(minutes * 60)
        secondsRemaining = totalSeconds
        updateCountdown()
        isActive = true
        paused = false
        //timer = Timer.scheduledTimer(withTimeInterval: 1.0, repeats: true) { [weak self] _ in self?.updateCountdown()
    }
    func reset() {
        timer?.invalidate()
        timer = nil
        totalSeconds = 0
        secondsRemaining = 0
        time = "00:00"
        isActive = false
        paused = false
    }
    
    func pause(){
        timer?.invalidate()
        paused = true
        isActive = false
        //timer = Timer.scheduledTimer(withTimeInterval: 1.0, repeats: true) { [weak self] _ in self?.updateCountdown()

    }
    
    func updateCountdown() {
        guard isActive, secondsRemaining > 0 else {
            if secondsRemaining == 0 && isActive {
                showingAlert = true
                reset()
            }
            return
        }
        secondsRemaining -= 1
        time = formatTime(seconds: secondsRemaining)
    }
    private func formatTime(seconds: Int) -> String {
        let minutes = seconds / 60
        let seconds = seconds % 60
        return String(format: "%02d:%02d", minutes, seconds)
    }
}
struct timer: View {
    @StateObject private var vm = ViewModel()
    private let timer = Timer.publish(every: 1, on: .main, in: .common).autoconnect()
    private let width: CGFloat = 250
    
    var body: some View {
        VStack {
            Text(vm.time)
                .font(.system(size: 70, weight: .medium, design: .rounded))
                .alert("Timer done!", isPresented: $vm.showingAlert) {
                    Button("Continue", role: .cancel) {}
                }
                .padding()
                .frame(width: width)
                .background(Color(UIColor.systemBackground))
                .cornerRadius(20)
                .overlay(
                    RoundedRectangle(cornerRadius: 20)
                        .stroke(Color.gray, lineWidth: 4)
                )
            
            Slider(value: $vm.minutes, in: 1...10)
                .padding()
                .disabled(vm.isActive)
                .animation(.easeInOut, value: vm.minutes)
                .frame(width: width)
            HStack(spacing: 20) {
                Button("Start") {
                    vm.start(minutes: vm.minutes)
                }
                .disabled(vm.isActive)
                
                Button("Reset", action: vm.reset)
                    .tint(.red)
                
                Button("Pause", action: vm.reset)
                    .tint(.green)
                
                Button("Resume", action: vm.reset)
                    .tint(.purple)
                
                
            }
            .frame(width: width)
        }
        .onReceive(timer) { _ in
            vm.updateCountdown()
        }
    }
}
struct timer_Previews: PreviewProvider {
    static var previews: some View {
        timer()
    }
}
