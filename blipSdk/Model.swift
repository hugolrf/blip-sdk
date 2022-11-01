//
//  Model.swift
//  blip_sdk
//
//  Created by Hugo Leonardo Ribeiro de Figueiredo on 20/10/22.
//

public struct BlipStyleModel {
    public let primary: String
    public let sentBubble: String
    public let receivedBubble: String
    public let background: String
    
    public init(primary: String, sentBubble: String, receivedBubble: String, background: String) {
        self.primary = primary
        self.sentBubble = sentBubble
        self.receivedBubble = receivedBubble
        self.background = background
        
    }
    var asDictionary : [String:Any] {
      let mirror = Mirror(reflecting: self)
      let dict = Dictionary(uniqueKeysWithValues: mirror.children.lazy.map({ (label:String?, value:Any) -> (String, Any)? in
        guard let label = label else { return nil }
        return (label, value)
      }).compactMap { $0 })
      return dict
    }
}

public struct BlipModel {
    public let key: String
    public let type: String
    public let token: String
    public let issuer: String
    public let hostName: String
    public let useMtls: Bool
    public let pushToken: String
    public let overrideOwnerColors: Bool
    public let style: [String : Any]?
    
    public init(key: String, type: String, token: String, issuer: String, hostName: String, useMtls: Bool, pushToken: String, overrideOwnerColors: Bool, style: BlipStyleModel? = nil) {
        self.key = key
        self.type = type
        self.token = token
        self.issuer = issuer
        self.hostName = hostName
        self.useMtls = useMtls
        self.pushToken = pushToken
        self.overrideOwnerColors = overrideOwnerColors
        self.style = style?.asDictionary ?? nil
    }
    
    var asDictionary : [String:Any] {
      let mirror = Mirror(reflecting: self)
      let dict = Dictionary(uniqueKeysWithValues: mirror.children.lazy.map({ (label:String?, value:Any) -> (String, Any)? in
        guard let label = label else { return nil }
        return (label, value)
      }).compactMap { $0 })
      return dict
    }
}



