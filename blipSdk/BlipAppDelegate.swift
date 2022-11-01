//
//  BlipAppDelegate.swift
//  blipSdk
//
//  Created by Hugo Leonardo Ribeiro de Figueiredo on 03/11/22.
//

import Foundation
import Flutter
import FlutterPluginRegistrant


open class BlipAppDelegate : FlutterAppDelegate {
    
    static var flutterEngine = FlutterEngine(name: "my flutter engine")
    static var model: BlipModel?
    public override init() {
        super.init()
        
        BlipAppDelegate.flutterEngine.run();
        GeneratedPluginRegistrant.register(with: BlipAppDelegate.flutterEngine);
        BlipAppDelegate.model = self.load()
    }
    
     open func load() -> BlipModel?{
         fatalError("load() has not been implemented")
    }
    
}
