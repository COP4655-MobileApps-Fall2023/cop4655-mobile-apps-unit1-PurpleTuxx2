//
//  ViewController.swift
//  Justin Rivera HW1
//
//  Created by Jorge Rivera on 9/5/23.
//

import UIKit

class ViewController: UIViewController {

    var selectedOption: String?
    
    @IBOutlet weak var originSelect: UIView!
    
    @IBOutlet weak var villainSelect: UIView!
    
    @IBOutlet weak var vehicleSelect: UIView!
    
    
    

    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        let originTap = UITapGestureRecognizer(target: self, action: #selector(didTapOption(_:)))
        let villainTap = UITapGestureRecognizer(target: self, action: #selector(didTapOption(_:)))
        let vehicleTap = UITapGestureRecognizer(target: self, action: #selector(didTapOption(_:)))

        originSelect.addGestureRecognizer(originTap)
        villainSelect.addGestureRecognizer(villainTap)
        vehicleSelect.addGestureRecognizer(vehicleTap)
    }

    @IBAction func didTapOption(_ sender: UITapGestureRecognizer) {
        if let tappedView = sender.view {
            if let tappedView = sender.view {
                if tappedView == originSelect {
                    selectedOption = "Origin"
                } else if tappedView == villainSelect {
                    selectedOption = "Villain"
                } else if tappedView == vehicleSelect {
                    selectedOption = "Vehicle"
                }
                performSegue(withIdentifier: "optionSegue", sender: tappedView)
            }
        }
    }
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "optionSegue" {
            if let destination = segue.destination as? OptionController {
                destination.selectedOption = selectedOption
            }
        }
    }
}

