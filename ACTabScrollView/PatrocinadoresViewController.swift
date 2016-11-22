//
//  PatrocinadoresViewController.swift
//  FIF 16
//
//  Created by ginppian on 21/11/16.
//  Copyright © 2016 AzureChen. All rights reserved.
//

import UIKit

class PatrocinadoresViewController: UIViewController, UICollectionViewDataSource, UICollectionViewDelegate {

    let arrayImag = ["Abbaba Soul-31",
    "Acajete",
    "behooklogo negativo (1)",
    "CAU_2014_ACTUALIZACION_h_normal",
    "colecta",
    "entre",
    "logo_sin",
    "LogoRuido3",
    "Logotipo-2 Matilde Band Negro",
    "manyfesto_logo_cmyk",
    "ProveedoraEscolar_Logotipo",
    "Subterraneos 2016H",
    "UDLAP 2012",
    "zonica_pos",
    "amparo",
    "artificial",
    "bubba",
    "creativo",
    "Cronos logo",
    "diseno tu book(1)",
    "Greenpeace_logo.svg",
    "Logo 19-40 café Rojo",
    "logoMelilla",
    "Logo Oaxaca Estenopeica",
    "LogoDP",
    "logofundacion",
    "puebla222",
    "avima",
    "barrio",
    "BIMESTRALlogotipo",
    "casa de los mu",
    "ficj",
    "ibero",
    "la casita de Carlo",
    "la generala",
    "LEXGO_FREEDOM_LOGO_PNG",
    "Logo Cinema PlanetaFin",
    "logouma (1)",
    "photo",
    "03_ZonyMaya",
    "saberVer",
    "CINECLUBFIF",
    "foro",
    "logo final fotoax lungo(1)",
    "LOGO MULTICOPIAS",
    "logo ok bienal nuevo",
    "LOGO Revista Enfoque Visual",
    "logo uo",
    "Logo_Dos EquisCMYK",
    "logo_mezcalshawi",
    "logo_mezcalzacbe",
    "oaxacafilm",
    "heineken",
    "FPM_cuadrado_alta",
    "imac",
    "inkperio",
    "cinefilia",
    "logo con fondo blanco",
    "Logo LA CUPULA 5 cm",
    "logo_fh",
    "Logo_UVP-02(1)",
    "modalidad Logos Ayuntamiento-IMACP",
    "school"]
    
    override func viewDidLoad() {
        super.viewDidLoad()

        self.automaticallyAdjustsScrollViewInsets = false
        
    }
    public func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int{
        return arrayImag.count
    }

    public func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell{
        
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "patrocinadoresIdentifier", for: indexPath) as! PatrocinadoresCollectionViewCell
        
        cell.image.image = UIImage(named: arrayImag[indexPath.row])
        
        return cell
    }


    private func collectionView(collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAtIndexPath indexPath: NSIndexPath) -> CGSize {
        
        let wCell = UIScreen.main.bounds.width/2
        let size = CGSize(width: wCell, height: wCell)

        //(collectionView.collectionViewLayout as! UICollectionViewFlowLayout).itemSize = size
        
        return size
    }
    


























}
