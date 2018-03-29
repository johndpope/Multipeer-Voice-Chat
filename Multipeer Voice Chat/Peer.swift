//
//  Peer.swift
//  UI Demo
//
//  Created by Benjamin Troller on 3/22/18.
//  Copyright © 2018 Benjamin Troller. All rights reserved.
//

import Foundation
import MultipeerConnectivity
import AVFoundation

// Consider making a subclass of MCPeerID
class Peer {
    var peerID: MCPeerID!
    var playerNode = AVAudioPlayerNode()
    var timesPlayed: UInt8 = 0
    var silencedStatus: ControlStatus = .off {
        didSet {
            // When the silenced status of a peer is changed, mute or unmute them appropriately
            switch silencedStatus {
            case .on:
                playerNode.volume = 0.0
                inCallCell?.silenceButton.alpha = ButtonAlpha.on.rawValue
            case .off:
                playerNode.volume = 1.0
                inCallCell?.silenceButton.alpha = ButtonAlpha.off.rawValue
            }
        }
    }
    // A reference to this peer's corresponding InCallTableViewCell, if one exists
    weak var inCallCell: InCallTableViewCell?
    
    init(with peerID: MCPeerID) {
        self.peerID = peerID
    }
    
    static func == (left: Peer, right: Peer) -> Bool {
        return left.peerID == right.peerID
    }
    
    static func == (left: Peer, right: MCPeerID) -> Bool {
        return left.peerID == right
    }
    
    static func == (left: MCPeerID, right: Peer) -> Bool {
        return left == right.peerID
    }
}
