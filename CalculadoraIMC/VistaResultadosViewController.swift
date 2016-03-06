//
//  VistaResultadosViewController.swift
//  CalculadoraIMC
//
//  Created by Wilson Mejía on 6/03/16.
//  Copyright © 2016 NinjaLABS. All rights reserved.
//

import UIKit

class VistaResultadosViewController: UIViewController {
    
    var indiceIM:Double = 0;
    @IBOutlet weak var resultadoIMC: UILabel!
    
    override func viewWillAppear(animated: Bool) {
        resultadoIMC.text = String(indiceIM)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
