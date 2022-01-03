//
//  StringOptional+Extension.swift
//  FinancialApp
//
//  Created by Tzuzul Rosas on 03/01/22.
//

import Foundation

extension Optional where Wrapped == String{
    var _value: String?{
        get{
            return self
        }
        set{
            self = newValue
        }
    }
    public var stringValue:String{
        get{
            return _value ?? ""
        }
        set{
            /*if(newValue.isEmpty){
                _value = nil
            }else{
                _value = newValue
            }*/
            _value = newValue.isEmpty ? nil : newValue // Operador ternario
        }
    }
}
