//
//  ViewController.swift
//  NewsReader
//
//  Created by Fernando on 25/11/2019.
//  Copyright © 2019 Fernando Salvador. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var selectorDeCiudad: UITextField!
    @IBOutlet weak var selector: UIPickerView!
    @IBOutlet weak var tablaDeCiudades: UITableView!
    
    var ciudades = ["Buenos Aires", "Montevideo", "Asunción", "Santiago", "La Paz", "Lima", "Quito", "Bogotá", "México DF", "Caracas",  "La Habana"]
    var array = [String]()
    var eleccion = String()
    var direccionWeb = String()
    var tituloPeriodico = String()
    var eleccionAnterior = String()
    
    override func viewDidLoad() {
        super.viewDidLoad()
       
        crearPicker()
        crearToolBarPicker()
     
        // Do any additional setup after loading the view.
    }
    
    func crearPicker() {
        
        let ciudad = UIPickerView()
        ciudad.delegate = self
        ciudad.dataSource = self
        ciudad.backgroundColor = .groupTableViewBackground
        selectorDeCiudad.inputView = ciudad
        
    }
    
    
    func crearToolBarPicker() {
        
        let toolbar = UIToolbar()
        toolbar.barStyle = UIBarStyle.default
        toolbar.isTranslucent = false
        toolbar.tintColor = .blue
        let espacio = UIBarButtonItem(barButtonSystemItem: .flexibleSpace, target: nil, action: nil)
        let botonHecho = UIBarButtonItem(title: "Aceptar", style: .plain, target: self, action: #selector(self.ocultarTeclado))
        toolbar.isTranslucent = true
        toolbar.setItems([espacio, botonHecho], animated: false)
        toolbar.isUserInteractionEnabled = true
        toolbar.sizeToFit()
        selectorDeCiudad.inputAccessoryView = toolbar
        
    }
    
    
    @objc func ocultarTeclado() {
        if eleccion != "" {
            tablaDeCiudades.isHidden = false
        }
        eleccionAnterior = eleccion
        array = ModeloDatos().ciudadElegida(city: eleccion)
        self.tablaDeCiudades.reloadData()
        view.endEditing(true)
    }
    
    
    override func viewWillAppear(_ animated: Bool) {
        navigationController?.isToolbarHidden = true
    }
    
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        selectorDeCiudad.resignFirstResponder()
        selector.isHidden = false
  
    }

    @IBAction func limpiarPantalla(_ sender: Any) {
        
        eleccion = ""
        selectorDeCiudad.text = eleccion
        tablaDeCiudades.isHidden = true
        
    }
    
}


extension ViewController: UITableViewDelegate, UITableViewDataSource {
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 75.0
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        
        return array.count
    }
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = UITableViewCell(style: .default, reuseIdentifier: "cell")
        cell.textLabel?.text = array[indexPath.row]
        cell.imageView?.image = UIImage(named: array[indexPath.row])
        
        return cell
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
       
        let filaSeleccionada = tablaDeCiudades.indexPathForSelectedRow?.row
        direccionWeb = ModeloDatos().webSeleccionada(ciudad: eleccion, diario: filaSeleccionada!)
        
        if let url = URL(string: direccionWeb) {
            UIApplication.shared.open(url)
        }
        
    }
}


extension ViewController: UIPickerViewDelegate, UIPickerViewDataSource {
    
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return 1
    }
   
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        return ciudades.count
    }
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        return ciudades[row]
    }
    
    func pickerView(_ pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
        eleccion = ciudades[row]
        selectorDeCiudad.text = eleccion
       
    }
    
  
}


        
        
        

   

    



