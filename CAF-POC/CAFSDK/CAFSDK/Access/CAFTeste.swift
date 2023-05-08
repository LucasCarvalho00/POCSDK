//
//  CAFSDK.swift
//  CAFSDK
//
//  Created by Lucas Carvalho on 04/05/23.
//

import Foundation
import CSLivenessSDK
import UIKit

@objc
open class CAFTeste: NSObject {
    
    // MARK: - Private Attributes

    private var livenessSdk: CSLiveness?

    // MARK: - Public Functions
    
    public func start(viewController: UIViewController) {
        callSDKLiveness(viewController: viewController)
    }
    
    // MARK: - Private Functions
    
    public func callSDKLiveness(viewController: UIViewController) {
        force(portrait: true)
        DispatchQueue.global(qos: .userInitiated).async {
            self.livenessSdk = CSLiveness(
                configurations: CSLivenessConfigurations(
                    clientId: "",
                    clientSecret: ""
                ),
                vocalGuidance: true
            )
            
            self.livenessSdk?.start(viewController: viewController, animated: true)
        }
    }
    
    private func force(portrait: Bool)  {
        UIDevice.current.setValue(UIInterfaceOrientation.portrait.rawValue,forKey: "orientation")
    }
}
