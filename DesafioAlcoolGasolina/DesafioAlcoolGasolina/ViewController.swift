//
//  ViewController.swift
//  DesafioAlcoolGasolina
//
//  Created by Lucas Munho on 12/08/21.
//

import UIKit

class ViewController: UIViewController {
    
   
    @IBOutlet weak var precoAlcoolTextField: UITextField!
    @IBOutlet weak var precoGasolinaTextField: UITextField!
    @IBOutlet weak var resultLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }

    
    @IBAction func tappedCalcular(_ sender: UIButton) {
        let precoAlcool = Double(precoAlcoolTextField.text ?? "") ?? 0
        let precoGasolina = Double(precoGasolinaTextField.text ?? "") ?? 0
        
        let result = precoAlcool/precoGasolina
        
        if result < 0.7{
            resultLabel.text = "Utilize Alcool"
        }else{
            resultLabel.text = "Utilize Gasolina"
        }
    }
     
    
    
}

