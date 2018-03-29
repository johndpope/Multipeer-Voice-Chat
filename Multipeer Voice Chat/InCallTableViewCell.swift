//
//  InCallTableViewCell.swift
//  UI Demo
//
//  Created by Benjamin Troller on 3/2/18.
//  Copyright © 2018 Benjamin Troller. All rights reserved.
//

import UIKit
import MultipeerConnectivity

class InCallTableViewCell: UITableViewCell {

    weak var peer: Peer! {
        didSet {
            peer.inCallCell = self
        }
    }
    
    @IBOutlet weak var nameLabel: UILabel!
    @IBOutlet weak var silenceButton: UIButton!
    
    @IBAction func silenceButtonPressed(_ sender: UIButton) {
        print("silence button pressed for peer \(peer.peerID.displayName)")
        
        switch peer.silencedStatus {
        case .on:
            peer.silencedStatus = .off
            silenceButton.alpha = ButtonAlpha.off.rawValue
        case .off:
            peer.silencedStatus = .on
            silenceButton.alpha = ButtonAlpha.on.rawValue
        }
        
    }
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
//        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
