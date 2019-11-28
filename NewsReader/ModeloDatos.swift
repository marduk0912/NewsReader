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
            resultado = ["El Mercurio", "La Tercera", "13", "Las Últimas Noticias", "24 Horas", "Soy Chile", "Bio-Bio Chile"]
        case "La Paz":
            resultado = ["El Diario", "La Razón", "Jornada", "Cambio", "Extra", "Página Siete", "El Alteño"]
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
    

}
