//
//  SoundPlayer.swift
//  Devote
//
//  Created by Massa Antonio on 30/08/21.
//

import AVFoundation
import Foundation

var audioPlayer: AVAudioPlayer?

func playSound(sound: String, type: String) {
	if let path = Bundle.main.path(forResource: sound, ofType: type) {
		do {
			audioPlayer = try AVAudioPlayer(contentsOf: URL(fileURLWithPath: path))
			audioPlayer?.play()
		} catch {
			print("Colud not found and play the sound file.")
		}
	}
}

