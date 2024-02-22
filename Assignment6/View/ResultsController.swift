//
//  ResultsController.swift
//  Assignment6
//
//  Created by Michael Baljet on 2/21/24.
//

import UIKit

class ResultsController: UIViewController {
    @IBOutlet weak var pesoResult: UILabel!
    @IBOutlet weak var rubleResult: UILabel!
    @IBOutlet weak var yenResult: UILabel!
    @IBOutlet weak var euroResult: UILabel!
    @IBOutlet weak var usdAmount: UILabel!
    
    var usdAmountValue: Int = 0
    var currenciesToShow: [Currency] = []
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        usdAmount.text = "\(usdAmountValue) USD"
        
        for currency in currenciesToShow {
            let convertedAmount = currency.convert(amount: usdAmountValue)
            switch currency {
            case .peso:
                pesoResult.text = "\(convertedAmount) Peso"
            case .ruble:
                rubleResult.text = "\(convertedAmount) Ruble"
            case .yen:
                yenResult.text = "\(convertedAmount) Yen"
            case .euro:
                euroResult.text = "\(convertedAmount) Euro"
            }
        }
    }
}

