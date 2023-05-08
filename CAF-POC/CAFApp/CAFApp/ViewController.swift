//
//  ViewController.swift
//  CAFApp
//
//  Created by Lucas Carvalho on 04/05/23.
//

import UIKit
import CAFSDK

class ViewController: UIViewController {

    // MARK: - Lifecycle

    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    // MARK: - Private Functions
    
    private func callSDKCAF() {
        CAFSDK().start(viewController: self)
    }
    
    // MARK: - Actions

    @IBAction func btnDidTap(_ sender: Any) {
        callSDKCAF()
    }
}

