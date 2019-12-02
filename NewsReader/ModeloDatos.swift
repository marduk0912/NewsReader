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
            resultado = ["La Hora", "El Comercio", "Metro Hoy"]
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
        
        let buenosAires = ["https://clarin.com", "https://lanacion.com.ar", "https://pagina12.com.ar", "https://ole.com.ar", "http://laprensa.com.ar", "https://diariopopular.com.ar", "https://cronica.com.ar", "https://ambito.com", "https://tiempoar.com.ar"]
        let montevideo = ["https://elpais.com.uy", "https://elobservador.com.uy", "https://republica.com.uy", "https://ladiaria.com.uy", "https://www.diariolajuventud.com"]
        let asuncion = ["https://ultimahora.com", "https://abc.com.py", "http://cronica.com.py", "https://independiente.com.py", "https://hoy.com.py", "https://5dias.com.py"]
        let santiago = ["http://emol.com", "https://latercera.com", "http://lun.com", "https://publimetro.cl", "https://digital.lasegunda.com"]
        let lapaz = ["https://eldiario.net", "https://la-razon.com", "https://jornada.com.bo", "http://cambio.bo", "https://paginasiete.bo", "http://elalteno.com.bo"]
        let lima = ["https://elcomercio.pe", "https://diariocorreo.pe", "https://peru21.pe", "https://larepublica.pe", "https://larazon.pe", "https://laprimera.pe", "https://expreso.com.pe", "https://elperuano.pe"]
        let quito = ["https://www.lahora.com.ec", "https://www.elcomercio.com", "https://www.metroecuador.com.ec"]
        let bogota = ["https://eltiempo.com", "https://elespectador.com", "https://elnuevosiglo.com.co", "https://elespacio.net.co", "https://qhubo.com", "https://extra.com.co", "http://diarioadn.co", "https://publimetro.co"]
        let mexico = ["https://reforma.com", "https://la-prensa.com.mx", "https://eluniversal.com.mx", "https://elgrafico.mx", "https://capitalmexico.com.mx", "https://www.jornada.com.mx/ultimas", "https://unomasuno.com.mx", "https://milenio.com", "https://cronica.com.mx", "https://www.razon.com.mx", "https://impacto.mx"]
        
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
        case "Quito":
            direccionSeleccionada = quito[diario]
        case "Bogotá":
            direccionSeleccionada = bogota[diario]
        case "México DF":
            direccionSeleccionada = mexico[diario]
        
       
        default:
            break
        }
    
        return direccionSeleccionada
}


}
