//
//  ViewController.swift
//  BlankProject
//
//  Created by Kyle Dold on 31/05/2019.
//  Copyright © 2019 Kyle Dold. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    // MARK: IBOutlets
    
    @IBOutlet weak var successFeedbackButton: UIButton! {
        willSet {
            newValue.addTarget(self, action: #selector(successFeedbackButtonToughUpInside(_:)), for: .touchUpInside)
        }
    }
    
    @IBOutlet weak var warningFeedbackButton: UIButton! {
        willSet {
            newValue.addTarget(self, action: #selector(warningFeedbackButtonToughUpInside(_:)), for: .touchUpInside)
        }
    }
    
    @IBOutlet weak var errorFeedbackButton: UIButton! {
        willSet {
            newValue.addTarget(self, action: #selector(errorFeedbackButtonToughUpInside(_:)), for: .touchUpInside)
        }
    }
    
    // MARK: Actions
    
    @objc private func successFeedbackButtonToughUpInside(_ sender: Any?) {
        HapticFeebackGenerator.successFeedback()
    }
    
    @objc private func warningFeedbackButtonToughUpInside(_ sender: Any?) {
        HapticFeebackGenerator.warningFeedback()
    }
    
    @objc private func errorFeedbackButtonToughUpInside(_ sender: Any?) {
        HapticFeebackGenerator.errorFeedback()
    }
}

