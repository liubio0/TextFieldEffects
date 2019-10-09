//
//  ExampleTableViewController.swift
//  TextFieldEffects
//
//  Created by Raúl Riera on 28/08/2015.
//  Copyright © 2015 Raul Riera. All rights reserved.
//

import UIKit
import TextFieldEffects

class ExampleTableViewController : UITableViewController {
    
    @IBOutlet private var textFields: [TextFieldEffects]!
    
    @IBOutlet weak var hoshiTextField: HoshiTextField!
    
    /**
    Set this value to true if you want to see all the "firstName"
    textFields prepopulated with the name "Raul" (for testing purposes)
    */
    let prefillTextFields = false
    
    override func viewDidLoad() {
        super.viewDidLoad()
        let str = NSMutableAttributedString.init(string: "富文本测试")
        str.addAttributes([NSAttributedString.Key.foregroundColor: UIColor.red], range: NSRange(location: 0, length: 1))
        hoshiTextField.attributedPlaceholder = str
        
        guard prefillTextFields == true else { return }
        
        _ = textFields.map { $0.text = "Raul" }
    }
}
