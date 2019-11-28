//
//  ViewController.swift
//  NewsReader
//
//  Created by Fernando on 25/11/2019.
//  Copyright © 2019 Fernando Salvador. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource, UIPickerViewDelegate, UIPickerViewDataSource {
    
    @IBOutlet weak var selectorDeCiudad: UITextField!
    @IBOutlet weak var selector: UIPickerView!
    @IBOutlet weak var tablaDeCiudades: UITableView!
    
    var array = [String]()
    var eleccion = String()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        let ciudad = UIPickerView()
        ciudad.delegate = self
        selectorDeCiudad.inputView = ciudad
        
        // Do any additional setup after loading the view.
    }
    var ciudades = ["Buenos Aires", "Montevideo", "Asunción", "Santiago", "La Paz", "Lima", "Quito", "Bogotá", "México DF"]
   
   
    
    
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        selectorDeCiudad.resignFirstResponder()
    }
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
        selectorDeCiudad.text = ciudades[row]
        eleccion = selectorDeCiudad.text!
        array = ModeloDatos().ciudadElegida(city: eleccion)
        self.tablaDeCiudades.reloadData()
        self.view.endEditing(true)
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
        return cell
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        
    }
   

    

}

