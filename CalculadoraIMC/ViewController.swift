//
//  ViewController.swift
//  CalculadoraIMC
//
//  Created by Wilson Mejía on 27/02/16.
//  Copyright © 2016 NinjaLABS. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITextFieldDelegate {
    
    @IBOutlet weak var scroll: UIScrollView!
    @IBOutlet weak var peso: UITextField!
    @IBOutlet weak var estatura: UITextField!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        peso.delegate = self
        estatura.delegate = self
    }
    
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        let resultado = imc()
        let sigVista = segue.destinationViewController as! VistaResultadosViewController
        sigVista.indiceIM = resultado
    }
    
    @IBAction func calcularIMC(sender: AnyObject) {
        imc()
    }
    
    func imc() -> Double {
        var IMC:Double;
        let pesoLocal:Double = Double(self.peso.text!)!;
        let estaturaLocal:Double = Double(self.estatura.text!)!;
        
        IMC = pesoLocal/(estaturaLocal*estaturaLocal)
        print("Resultado:\(IMC)")
        return IMC
    }
    
    @IBAction func textFieldDidBeginEditing(textField: UITextField) {
        var punto:CGPoint;
        punto = CGPointMake(0, textField.frame.origin.y-50);
        self.scroll.setContentOffset(punto, animated: true);
        
    }
    
    @IBAction func textFieldDidEndEditing(textField: UITextField) {
        self.scroll.setContentOffset(CGPointZero, animated: true)
    }
    
    @IBAction func backgroundTab(sender:UIControl){
        peso.resignFirstResponder();
        estatura.resignFirstResponder();
    }
    
    @IBAction func textFieldDoneEditing(sender:UITextField){
        sender.resignFirstResponder(); // desaparecera el teclado
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

