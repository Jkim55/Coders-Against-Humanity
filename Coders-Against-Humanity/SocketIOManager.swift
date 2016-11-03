//
//  SocketIOManager.swift
//  Coders-Against-Humanity
//
//  Created by Creighton Soukup on 11/2/16.
//  Copyright © 2016 Ji. All rights reserved.
//

import UIKit

class SocketIOManager: NSObject {
    
    static let sharedInstance = SocketIOManager()
    
    override init() {
        super.init()
    }
    
    var socket: SocketIOClient = SocketIOClient(socketURL: NSURL(string: "http://10.6.82.183:3000")! as URL)

    func establishConnection() {
        socket.connect()
    }
    
    
    func closeConnection() {
        socket.disconnect()
    }

}
