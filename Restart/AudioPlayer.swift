//
//  AudioPlayer.swift
//  Restart
//
//  Created by Ramón Dias de Oliveira Almeida on 12/04/23.
//

import AVFoundation

var audioPlayer: AVAudioPlayer?

func playSound(sound: String, type: String) {
    if let path = Bundle.main.path(forResource: sound, ofType: type) {
        do {
            audioPlayer = try AVAudioPlayer(contentsOf: URL(filePath: path))
            audioPlayer?.play()
        } catch {
            print("Coundn't play the sound file")
        }
    }
}
