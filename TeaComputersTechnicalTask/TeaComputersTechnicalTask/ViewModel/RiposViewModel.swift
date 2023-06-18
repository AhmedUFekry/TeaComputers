//
//  RiposViewModel.swift
//  TeaComputersTechnicalTask
//
//  Created by Ahmed Fekry on 17/06/2023.
//

import Foundation

class RiposViewModel {
    
    var bindingRipos:(()->())?
    
    var ObservableRipos : [Ripos]? {
           didSet {
               bindingRipos!()
           }
       }
    
    func getRipos (){
        
        recievingData { data in
            self.ObservableRipos = data
        }
        
    }
    
}
