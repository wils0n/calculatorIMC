//
//  ViewController.swift
//  CalculadoraIMC
//
//  Created by Wilson Mejía on 27/02/16.
//  Copyright © 2016 NinjaLABS. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var peso: UITextField!
    @IBOutlet weak var estatura: UITextField!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    @IBAction func calcularIMC(sender: AnyObject) {
        var IMC:Double;
        let pesoLocal:Double = Double(self.peso.text!)!;
        let estaturaLocal:Double = Double(self.estatura.text!)!;
        
        IMC = pesoLocal/(estaturaLocal*estaturaLocal)
        print("Resultado:\(IMC)")
        
    }
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

