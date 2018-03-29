//
//  File.swift
//  UI Demo
//
//  Created by Benjamin Troller on 3/22/18.
//  Copyright © 2018 Benjamin Troller. All rights reserved.
//

import Foundation
import MultipeerConnectivity

class ThisUser {
    
    let ourDefaults = UserDefaults.standard
    var peerID: MCPeerID! {
        didSet {
            ourDefaults.set(peerID.displayName, forKey: "displayName")
        }
    }
    var muteStatus: ControlStatus = .off {
        didSet {
            switch muteStatus {
            case .on:
                ourDefaults.set(true, forKey: "muteSelf")
            case .off:
                ourDefaults.set(false, forKey: "muteSelf")
            }
        }
    }
    var silenceOthersStatus: ControlStatus = .off {
        didSet {
            switch silenceOthersStatus {
            case .on:
                ourDefaults.set(true, forKey: "silenceOthers")
            case .off:
                ourDefaults.set(false, forKey: "silenceOthers")
            }
        }
    }
    
    init(with peerID: MCPeerID) {
        self.peerID = peerID
        // TODO: Remove when I figure out why this didn't work normally above
        ourDefaults.set(peerID.displayName, forKey: "displayName")
    }
    
    init(with peerID: MCPeerID, muteStatus: ControlStatus, silenceOthersStatus: ControlStatus) {
        self.peerID = peerID
        self.muteStatus = muteStatus
        self.silenceOthersStatus = silenceOthersStatus
        // TODO: Remove when I figure out why this didn't work normally above
        ourDefaults.set(peerID.displayName, forKey: "displayName")
    }
    
}
