//
//  RevistaViewController.swift
//  FIF 16
//
//  Created by ginppian on 11/11/16.
//  Copyright © 2016 AzureChen. All rights reserved.
//

import UIKit

class RevistaViewController: UIViewController, UIScrollViewDelegate {
    
    let arrayImagsRevis = ["fif1", "fif2", "fif3", "fif4", "fif5", "fif6", "fif7", "fif8", "fif9", "fif10", "fif11", "fif12", "fif13", "fif14", "fif15", "fif16", "fif17", "fif18", "fif19"]

    @IBOutlet weak var scrollView: UIScrollView!
    override func viewDidLoad() {
        super.viewDidLoad()
        
        //Agregamos slide imagenes
        //Ajustamos el frame
        let adjustFrame = CGRect(x: 0, y: 0, width: self.view.frame.width, height: self.view.frame.height)
        self.scrollView.frame = adjustFrame
        
        for (index, name) in arrayImagsRevis.enumerated(){
            let imageView = UIImageView()
            imageView.contentMode = .scaleAspectFit

            imageView.image = UIImage(named: name)
            

            
            let xPos = self.scrollView.frame.width * CGFloat(index)
            imageView.frame = CGRect(x: xPos, y: -self.scrollView.frame.height/17, width: self.scrollView.frame.width, height: self.scrollView.frame.height)
            
            

            
            self.scrollView.contentSize.width = self.scrollView.frame.width * CGFloat(index+1)
            self.scrollView.addSubview(imageView)
            
        }
        //Usamos el delegado para la función "scrollViewDidScroll:" (aun que en este programa no la usamos)
        self.scrollView.delegate = self
        self.scrollView.isPagingEnabled = true
        self.scrollView.showsVerticalScrollIndicator = false
        self.scrollView.showsHorizontalScrollIndicator = false
        
        
    }
    //Shake Gesture
    override var canBecomeFirstResponder: Bool {
        return true
        
    }
    //Shake Gesture - CREDITOS
    override func motionEnded(_ motion: UIEventSubtype, with event: UIEvent?) {
        if motion == .motionShake {
            let message = "Programación. David Guillermo López Vázquez 😎\nCorreo. ginppian@icloud.com\nProgramación. Miguel Mexicano Herrera 🤓\nCorreo. miguelmexicano18@gmail.com\n"
            let alert = UIAlertController(title: "📲Desarrado por:📲", message: message, preferredStyle: UIAlertControllerStyle.alert)
            alert.addAction(UIAlertAction(title: "OK", style: UIAlertActionStyle.default, handler: nil))
            self.present(alert, animated: true, completion: nil)
        }
        
    }
 
}
