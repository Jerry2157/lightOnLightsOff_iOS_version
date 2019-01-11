//
//  ViewController.swift
//  LucesPrendidasApagadas
//
//  Created by Jesús Heriberto Vásquez Sánchez on 7/11/18.
//  Copyright © 2018 Jesús Heriberto Vásquez Sánchez. All rights reserved.
//

//Controlador
import UIKit

class ViewController: UIViewController  {
    
    let lpa=LPA()
    
    var pulsado = 0
    
    @IBOutlet weak var ref1: UIButton!
    @IBOutlet weak var ref2: UIButton!
    @IBOutlet weak var ref3: UIButton!
    @IBOutlet weak var ref4: UIButton!
    @IBOutlet weak var ref5: UIButton!
    @IBOutlet weak var ref6: UIButton!
    @IBOutlet weak var ref7: UIButton!
    
    @IBAction func jugarB1(_ sender: Any) {
        lpa.setNum(posicion: 0, value: Int((ref1.titleLabel?.text)!)!)
        lpa.tiro(puls: pulsado)
        pulsado = 0
        
        var n = lpa.getNums()
        ref1.setTitle(String(n[0]), for: .normal)
        ref2.setTitle(String(n[1]), for: .normal)
        ref3.setTitle(String(n[2]), for: .normal)
        ref4.setTitle(String(n[3]), for: .normal)
        ref5.setTitle(String(n[4]), for: .normal)
        ref6.setTitle(String(n[5]), for: .normal)
        ref7.setTitle(String(n[6]), for: .normal)
        mostrarMensaje()
    }
    
    @IBAction func jugarB2(_ sender: Any) {
        pulsado = 1
        lpa.setNum(posicion: 1, value: Int((ref2.titleLabel?.text)!)!)
        lpa.tiro(puls: pulsado)
        pulsado = 0
        
        var n = lpa.getNums()
        ref1.setTitle(String(n[0]), for: .normal)
        ref2.setTitle(String(n[1]), for: .normal)
        ref3.setTitle(String(n[2]), for: .normal)
        ref4.setTitle(String(n[3]), for: .normal)
        ref5.setTitle(String(n[4]), for: .normal)
        ref6.setTitle(String(n[5]), for: .normal)
        ref7.setTitle(String(n[6]), for: .normal)
        mostrarMensaje()

    }
    @IBAction func jugarB3(_ sender: Any) {
        pulsado = 2
        lpa.setNum(posicion: 2, value: Int((ref3.titleLabel?.text)!)!)
        lpa.tiro(puls: pulsado)
        pulsado = 0
        var n = lpa.getNums()
        ref1.setTitle(String(n[0]), for: .normal)
        ref2.setTitle(String(n[1]), for: .normal)
        ref3.setTitle(String(n[2]), for: .normal)
        ref4.setTitle(String(n[3]), for: .normal)
        ref5.setTitle(String(n[4]), for: .normal)
        ref6.setTitle(String(n[5]), for: .normal)
        ref7.setTitle(String(n[6]), for: .normal)
        mostrarMensaje()

    }
    @IBAction func jugarB4(_ sender: Any) {
        pulsado = 3
        
        lpa.setNum(posicion: 3, value: Int((ref4.titleLabel?.text)!)!)
        lpa.tiro(puls: pulsado)
        pulsado = 0
        var n = lpa.getNums()
        ref1.setTitle(String(n[0]), for: .normal)
        ref2.setTitle(String(n[1]), for: .normal)
        ref3.setTitle(String(n[2]), for: .normal)
        ref4.setTitle(String(n[3]), for: .normal)
        ref5.setTitle(String(n[4]), for: .normal)
        ref6.setTitle(String(n[5]), for: .normal)
        ref7.setTitle(String(n[6]), for: .normal)
        mostrarMensaje()

    }
    @IBAction func jugarB5(_ sender: Any) {
        pulsado = 4
        
        lpa.setNum(posicion: 4, value: Int((ref5.titleLabel?.text)!)!)
        lpa.tiro(puls: pulsado)
        pulsado = 0
        var n = lpa.getNums()
        ref1.setTitle(String(n[0]), for: .normal)
        ref2.setTitle(String(n[1]), for: .normal)
        ref3.setTitle(String(n[2]), for: .normal)
        ref4.setTitle(String(n[3]), for: .normal)
        ref5.setTitle(String(n[4]), for: .normal)
        ref6.setTitle(String(n[5]), for: .normal)
        ref7.setTitle(String(n[6]), for: .normal)
        mostrarMensaje()

    }
    @IBAction func jugarB6(_ sender: Any) {
        pulsado = 5
        
        lpa.setNum(posicion: 5, value: Int((ref6.titleLabel?.text)!)!)
        lpa.tiro(puls: pulsado)
        pulsado = 0
        var n = lpa.getNums()
        ref1.setTitle(String(n[0]), for: .normal)
        ref2.setTitle(String(n[1]), for: .normal)
        ref3.setTitle(String(n[2]), for: .normal)
        ref4.setTitle(String(n[3]), for: .normal)
        ref5.setTitle(String(n[4]), for: .normal)
        ref6.setTitle(String(n[5]), for: .normal)
        ref7.setTitle(String(n[6]), for: .normal)
        mostrarMensaje()

    }
    @IBAction func jugarB7(_ sender: Any) {
        pulsado = 6
        
        lpa.setNum(posicion: 6, value: Int((ref7.titleLabel?.text)!)!)
        lpa.tiro(puls: pulsado)
        pulsado = 0
        var n = lpa.getNums()
        ref1.setTitle(String(n[0]), for: .normal)
        ref2.setTitle(String(n[1]), for: .normal)
        ref3.setTitle(String(n[2]), for: .normal)
        ref4.setTitle(String(n[3]), for: .normal)
        ref5.setTitle(String(n[4]), for: .normal)
        ref6.setTitle(String(n[5]), for: .normal)
        ref7.setTitle(String(n[6]), for: .normal)
        mostrarMensaje()

    }

    @IBAction func cambioPantalla(_ sender: Any) {
        
    }
    
    @IBAction func reinicio(_ sender: Any) {
        ref1.isEnabled = true
        ref2.isEnabled = true
        ref3.isEnabled = true
        ref4.isEnabled = true
        ref5.isEnabled = true
        ref6.isEnabled = true
        ref7.isEnabled = true
        
        lpa.deleteAll()
        lpa.tiro(puls: -1)
        var n = lpa.getNums()
        ref1.setTitle(String(n[0]), for: .normal)
        ref2.setTitle(String(n[1]), for: .normal)
        ref3.setTitle(String(n[2]), for: .normal)
        ref4.setTitle(String(n[3]), for: .normal)
        ref5.setTitle(String(n[4]), for: .normal)
        ref6.setTitle(String(n[5]), for: .normal)
        ref7.setTitle(String(n[6]), for: .normal)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        lpa.tiro(puls: -1)
        var n = lpa.getNums()
        ref1.setTitle(String(n[0]), for: .normal)
        ref2.setTitle(String(n[1]), for: .normal)
        ref3.setTitle(String(n[2]), for: .normal)
        ref4.setTitle(String(n[3]), for: .normal)
        ref5.setTitle(String(n[4]), for: .normal)
        ref6.setTitle(String(n[5]), for: .normal)
        ref7.setTitle(String(n[6]), for: .normal)
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    func mostrarMensaje(){
        lpa.gameOver()
        if lpa.gameOver() != ""{
            let alert = UIAlertController(title: "Aviso", message: lpa.gameOver()+"\nTiros: " + String(lpa.getTiros()), preferredStyle: .alert)
            alert.addAction(UIAlertAction(title: "Aceptar", style: .default, handler: nil))
            ref1.isEnabled = false
            ref2.isEnabled = false
            ref3.isEnabled = false
            ref4.isEnabled = false
            ref5.isEnabled = false
            ref6.isEnabled = false
            ref7.isEnabled = false
            
            self.present(alert ,animated: true)
        }
        
    }
  

}

