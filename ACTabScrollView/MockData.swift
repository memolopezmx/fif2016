//
//  MockData.swift
//  ACTabScrollView
//
//  Created by Azure Chen on 5/21/16.
//  Copyright © 2016 AzureChen. All rights reserved.
//

import UIKit

class MockData {

    static let newsArray = [
        
        News(id: 1, category: .Miércoles, fecha: "Mie 23", horaIni: "16:00", horaFin: "", sede: "FUNDACIÓN ESRU", direccion: "Calle 8 Nte. 208, Centro, 72000 Puebla, Pue.", evento: "Conferencia de Niños de Israel", ponente: "Lindsay Basson ", pais: "Israel- Sudafrica", descripcion: "Pequeños ninos de israel que atraves de la lente de la cámara, fotografían su vida cotidiana. Una vista ejemplar  de sus vivencias."),
        News(id: 2, category: .Miércoles, fecha: "Mie 23", horaIni: "20:00", horaFin: "", sede: "Teatro de la Ciudad", direccion: "", evento: "Inauguración FIF Puebla 2016", ponente: "FIF Puebla 2016", pais: "", descripcion: "Presentación del Festival en su segunda edición con diverss presentaciones con distintos artistas."),
        News(id: 3, category: .Jueves, fecha: "Jue 24", horaIni: "09:00", horaFin: "15:00", sede: "Cáfe 19- 40", direccion: "Calle 6 Nte 606, Centro, 72000 Puebla, Pue.", evento: "Taller de Foto Documental", ponente: "Lizhet Arauz", pais: "México", descripcion: ""),
        News(id: 4, category: .Jueves, fecha: "Jue 24", horaIni: "09:00", horaFin: "15:00", sede: "Cáfe Galería Amparo", direccion: "Calle 8 Norte 406, Centro, 72000 Puebla, Pue.", evento: "Taller de Foto Erótica", ponente: "Manolo Espinoza", pais: "México", descripcion: ""),
        News(id: 5, category: .Jueves, fecha: "Jue 24", horaIni: "09:00", horaFin: "15:00", sede: "Aula Magna Cuetlaxcoapan UVP", direccion: "5 Sur 5906, Col. El Cerrito.", evento: "Taller de Foto de Retrato Fantastico", ponente: "Gabrielle Vazquez", pais: "México", descripcion: ""),
        News(id: 6, category: .Jueves, fecha: "Jue 24", horaIni: "16:00", horaFin: "", sede: "Gente de Más Hostel", direccion: "3 Poniente 713, Centro, 72000 Puebla, PUE", evento: "Presentación Editorial", ponente: "Manolo Espinoza", pais: "México", descripcion: ""),
        News(id: 7, category: .Jueves, fecha: "Jue 24", horaIni: "17:30", horaFin: "", sede: "Capilla del Arte UDLAP", direccion: "Calle 2 Nte 6, Centro, 72000 Puebla, Pue.", evento: "Conferencia de Lizhet Arauz", ponente: "Lizhet Arauz", pais: "México", descripcion: ""),
        News(id: 8, category: .Jueves, fecha: "Jue 24", horaIni: "20:30", horaFin: "", sede: "Barrio del Artista", direccion: "Calle 8 Norte 410, Centro, 72000 Puebla, Pue.", evento: "Proyección de la pelicula TERRA", ponente: "Festival de Cine y Medio Ambiente CINEMAPLANETA", pais: "México", descripcion: ""),
        News(id: 9, category: .Viernes, fecha: "Vie 25", horaIni: "09:00", horaFin: "15:00", sede: "Cáfe 19-40", direccion: "Calle 6 Nte 606, Centro, 72000 Puebla, Pue.", evento: "Taller de Foto Documental", ponente: "Lizhet Arauz", pais: "México", descripcion: ""),
        News(id: 10, category: .Viernes, fecha: "Vie 25", horaIni: "09:00", horaFin: "15:00", sede: "Cáfe Galería Amparo", direccion: "Calle 8 Norte 406, Centro, 72000 Puebla, Pue.", evento: "Taller de Foto Estenopeica", ponente: "Claudia Castelan", pais: "México", descripcion: ""),
        News(id: 11, category: .Viernes, fecha: "Vie 25", horaIni: "11:30", horaFin: "", sede: "Salón de Proyecciónes el Carolino", direccion: "Av. Don Juan de Palafox y Mendoza y 4 sur.", evento: "Conferencia Alejandra Catellanos", ponente: "Alejandra Castellanos", pais: "Isrrael", descripcion: ""),
        News(id: 12, category: .Viernes, fecha: "Vie 25", horaIni: "13:30", horaFin: "", sede: "Salón de Proyecciónes el Carolino", direccion: "Av. Don Juan de Palafox y Mendoza y 4 sur.", evento: "Conferencia Cynthia Bandurek", ponente: "Cynthia Bandurek", pais: "Isrrael", descripcion: ""),
        News(id: 13, category: .Viernes, fecha: "Vie 25", horaIni: "16:30", horaFin: "", sede: "Salón de Proyecciónes el Carolino", direccion: "Av. Don Juan de Palafox y Mendoza y 4 sur.", evento: "Conferencia Acción de Green Peace", ponente: "Fotógrafo Alonso Crespo.", pais: "México", descripcion: "El detrás de cámaras de las acciones y trabajo de la organización."),
        News(id: 14, category: .Viernes, fecha: "Vie 25", horaIni: "18:30", horaFin: "", sede: "Proovedora escolaar", direccion: "Av 4 Oriente 13, Centro, 72000 Puebla, Pue.", evento: "Presentación Editorial", ponente: "Vittorio D´Onofri /Bienal de Oaxaca", pais: "Oaxaca-Italia", descripcion: ""),
        News(id: 15, category: .Viernes, fecha: "Vie 25", horaIni: "20:30", horaFin: "", sede: "Salón de Proyecciónes el Carolino", direccion: "Av. Don Juan de Palafox y Mendoza y 4 sur.", evento: "Proyección de  la película NONO, el niño detective", ponente: "Festival de Cine Judío en México", pais: "Isrrael", descripcion: ""),
        News(id: 16, category: .Sábado, fecha: "Sáb 26", horaIni: "09:00", horaFin: "15:00", sede: "Cáfe Galería Amparo", direccion: "Calle 8 Norte 406, Centro, 72000 Puebla, Pue.", evento: "Taller de Iluminación", ponente: "Zony Maya", pais: "México", descripcion: ""),
        News(id: 17, category: .Sábado, fecha: "Sáb 26", horaIni: "14:00", horaFin: "", sede: "Barrio del Artista", direccion: "Calle 8 Norte 410, Centro, 72000 Puebla, Pue.", evento: "Inauguración de exposicion colectiva", ponente: "FIF Puebla", pais: "Distintos", descripcion: ""),
        News(id: 18, category: .Sábado, fecha: "Sáb 26", horaIni: "15:00", horaFin: "", sede: "Lonchería Melilla", direccion: "Av 15 Pte 105, El Carmen, 72530 Puebla, Pue.", evento: "Inauguración de exposicion individual", ponente: "Manuel Villanueva", pais: "México", descripcion: ""),
        News(id: 19, category: .Sábado, fecha: "Sáb 26", horaIni: "16:00", horaFin: "", sede: "Capilla del Arte UDLAP", direccion: "Calle 2 Nte 6, Centro, 72000 Puebla, Pue.", evento: "Conferencia Zony Maya", ponente: "Zony Maya", pais: "México", descripcion: ""),
        News(id: 20, category: .Sábado, fecha: "Sáb 26", horaIni: "18:00", horaFin: "", sede: "Universidad de Oriente", direccion: "21 oriente 1816 Col. Azcarate", evento: "Homenaje Pedro Meyer", ponente: "FIF Puebla", pais: "México", descripcion: ""),
        News(id: 21, category: .Sábado, fecha: "Sáb 26", horaIni: "20:00", horaFin: "", sede: "Zócalo de la ciudad de Puebla", direccion: "", evento: "Proyección de cortometrajes ", ponente: "Oaxaca Film Fest", pais: "Distintos", descripcion: ""),
        News(id: 22, category: .Domingo, fecha: "Dom 27", horaIni: "14:00", horaFin: "18:00", sede: "Barrio del Artista", direccion: "Calle 8 Norte 410, Centro, 72000 Puebla, Pue.", evento: "Click Splash", ponente: "Mr. Rocket/ Distintos", pais: "México", descripcion: ""),
        News(id: 23, category: .Domingo, fecha: "Dom 27", horaIni: "18:30", horaFin: "", sede: "Barrio del Artista", direccion: "Calle 8 Norte 410, Centro, 72000 Puebla, Pue.", evento: "Clausura FIF Puebla 2016", ponente: "Equipo FIF Puebla", pais: "Distintos", descripcion: "")
    ]
    
}

enum NewsCategory {

    case Miércoles
    case Jueves
    case Viernes
    case Sábado
    case Domingo
    
    static func allValues() -> [NewsCategory] {
        return [.Miércoles, .Jueves, .Viernes, .Sábado, .Domingo]
    }
}

struct News {
    let id: Int
    let category: NewsCategory
    let fecha: String
    let horaIni: String
    let horaFin: String
    let sede: String
    let direccion: String
    let evento: String
    let ponente: String
    let pais: String
    let descripcion: String
}

