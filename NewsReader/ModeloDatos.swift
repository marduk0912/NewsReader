//
//  ModeloDatos.swift
//  NewsReader
//
//  Created by Fernando on 27/11/2019.
//  Copyright © 2019 Fernando Salvador. All rights reserved.
//

import UIKit

class ModeloDatos{
    
    func ciudadElegida(city: String) -> [String] {
        
        var resultado = [String]()
        
        
        switch city {
        case "Buenos Aires":
            resultado = ["Clarín", "La Nación", "Página 12", "Olé", "La Prensa", "Diario Popular", "Cronica", "Ambito Financiero", "Tiempo Argentino"]
        case "Montevideo":
            resultado = ["El País", "El Observador", "La República", "La Diaria", "La Juventud"]
        case "Asunción":
            resultado = ["Última Hora", "ABC Color", "Crónica", "El Independiente", "Diario Popular", "5 Días"]
        case "Santiago":
            resultado = ["El Mercurio", "La Tercera", "Las Últimas Noticias", "Publimetro", "La Segunda"]
        case "La Paz":
            resultado = ["El Diario", "La Razón", "Jornada", "Cambio", "Página Siete", "El Alteño"]
        case "Lima":
            resultado = ["El Comercio", "Correo", "Perú 21", "La República", "La Razón", "La Primera", "Expreso", "El Peruano"]
        case "Quito":
            resultado = ["La Hora", "El Comercio", "Últimas Noticias", "Metro Hoy"]
        case "Bogotá":
            resultado = ["El Tiempo", "El Espectador", "Nuevo Siglo", "El Espacio", "Q' Hubo", "Extra", "ADN", "El Publimetro"]
        case "México DF":
            resultado = ["Reforma", "La Prensa", "El Universal", "El Gráfico", "Capital De México", "La Jornada", "Uno Mas Uno", "El Milenio", "La Crónica de Hoy", "La Razón", "El Impacto"]
        default:
            break
        }
        
        return resultado
    }
    
    
    
    func webSeleccionada(ciudad: String, diario: Int) -> String{
       
        var direccionSeleccionada = ""
        
        let buenosAires = ["https://www.clarin.com", "www.lanacion.com.ar", "www.pagina12.com.ar", "www.ole.com.ar", "www.laprensa.com.ar", "www.diariopopular.com.ar", "www.cronica.com.ar", "www.ambito.com", "www.tiempoar.com.ar"]
        let montevideo = ["www.elpais.com.uy", "www.elobservador.com.uy", "www.republica.com.uy", "www.ladiaria.com.uy", "www.diariolajuventud.com.uy"]
        let asuncion = ["www.ultimahora.com", "www.abc.com.py", "www.cronica.com.py", "www.independiente.com.py", "www.hoy.com.py", "www.5dias.com.py"]
        let santiago = ["www.emol.com", "www.latercera.com", "www.lun.com", "www.publimetro.cl", "www.lasegunda.com"]
        let lapaz = ["www.eldiario.net", "www.la-razon.com", "https://jornada.com.bo", "www.cambio.bo", "www.paginasiete.bo", "www.elalteno.com.bo"]
        let lima = ["www.elcomercio.pe", "www.diariocorreo.pe", "www.peru21.pe", "www.larepublica.pe", "www.larazon.pe", "www.laprimera.pe", "www.expreso.com.pe", "wwww.elperuano.com.pe"]
        
        switch ciudad {
        case "Buenos Aires":
            direccionSeleccionada = buenosAires[diario]
        case "Montevideo":
            direccionSeleccionada = montevideo[diario]
        case "Asunción":
            direccionSeleccionada = asuncion[diario]
        case "Santiago":
            direccionSeleccionada = santiago[diario]
        case "La Paz":
            direccionSeleccionada = lapaz[diario]
        case "Lima":
            direccionSeleccionada = lima[diario]
       
        default:
            break
        }
    
        return direccionSeleccionada
}


}
