//
//  DeveloperState.swift
//  MahouRan
//
//  Created by Catalina Rem on 10/9/25.
//

import Foundation

public var isDeveloper: Bool = false
public var isBeta: Bool = true


public func updateDeveloperFlags(_ isOn: Bool) {
    UserDefaults.standard.set(isOn, forKey: "isDeveloper")
    UserDefaults.standard.set(!isOn, forKey: "isBeta")
    #if DEBUG
    print("Developer mode is \(isDeveloper ? "True" : "False"); Beta = \(isBeta ? "True" : "False")")
    #endif
    
}
