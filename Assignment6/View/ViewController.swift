//
//  ViewController.swift
//  Assignment6
//
//  Created by Michael Baljet on 2/17/24.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var euroSwitch: UISwitch!
    @IBOutlet weak var yenSwitch: UISwitch!
    @IBOutlet weak var rubleSwitch: UISwitch!
    @IBOutlet weak var pesoSwitch: UISwitch!
    @IBOutlet weak var usdAmountField: UITextField!

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func onConvert(_ sender: Any) {
        guard let usdAmountText = usdAmountField.text,
              let usdAmount = Int(usdAmountText) else {
            // Handle invalid input
            return
        }
        
        var currenciesToShow: [Currency] = []
        if pesoSwitch.isOn {
            currenciesToShow.append(.peso)
        }
        if rubleSwitch.isOn {
            currenciesToShow.append(.ruble)
        }
        if yenSwitch.isOn {
            currenciesToShow.append(.yen)
        }
        if euroSwitch.isOn {
            currenciesToShow.append(.euro)
        }
        
        performSegue(withIdentifier: "segueToResults", sender: (usdAmount, currenciesToShow))
    }

    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "segueToResults",
           let (usdAmount, currenciesToShow) = sender as? (Int, [Currency]),
           let destinationVC = segue.destination as? ResultsController {
            destinationVC.usdAmountValue = usdAmount
            destinationVC.currenciesToShow = currenciesToShow
        }
    }
}


