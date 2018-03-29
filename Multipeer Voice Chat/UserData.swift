//
//  UserData.swift
//  Quarter Project
//
//  Created by Benjamin Troller on 2/18/18.
//  Copyright © 2018 Benjamin Troller. All rights reserved.
//

import Foundation
import MultipeerConnectivity
import AVFoundation

class UserData {
    var mcPeerID: MCPeerID
    var muteStatus: ControlStatus = .off
    var silenceOthersStatus: ControlStatus = .off
    var audioPlayer = AVAudioPlayerNode()
    
    init(displayName: String) {
        mcPeerID = MCPeerID(displayName: displayName)
    }
    
    init(peerID: MCPeerID) {
        self.mcPeerID = peerID
    }
}
