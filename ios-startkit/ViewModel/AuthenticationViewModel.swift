//
//  AuthenticationViewModel.swift
//  ios-startkit
//
//  Created by Ted Hyeong on 30/09/2020.
//

import UIKit

protocol FormViewModel {
    func updateForm()
}

protocol AuthenticationViewModel {
    var formIsValid: Bool { get }
    var shouldEnableButton: Bool { get }
    var buttonTitleColor: UIColor { get }
    var buttonBackgroundColor: UIColor { get }
}

struct LoginViewModel: AuthenticationViewModel {
    var email: String?
    var password: String?
    
    var formIsValid: Bool {
        return email?.isEmpty == false &&
               password?.isEmpty == false
    }
    
    var shouldEnableButton: Bool {
        return formIsValid
    }
    
    var buttonTitleColor: UIColor {
        return formIsValid ? .white : UIColor(white: 1, alpha: 0.67)
    }
    
    var buttonBackgroundColor: UIColor {
        let enabledPurple = #colorLiteral(red: 0.5568627715, green: 0.3529411852, blue: 0.9686274529, alpha: 1)
        let disabledPurple = #colorLiteral(red: 0.5568627715, green: 0.3529411852, blue: 0.9686274529, alpha: 1).withAlphaComponent(0.5)
        return formIsValid ? enabledPurple : disabledPurple
    }
}

struct RegistrationViewModel: AuthenticationViewModel {
    var email: String?
    var password: String?
    var fullname: String?
    
    var formIsValid: Bool {
        return email?.isEmpty == false &&
               password?.isEmpty == false &&
               fullname?.isEmpty == false
    }
    
    var shouldEnableButton: Bool {
        return formIsValid
    }
    
    var buttonTitleColor: UIColor {
        return formIsValid ? .white : UIColor(white: 1, alpha: 0.67)
    }
    
    var buttonBackgroundColor: UIColor {
        let enabledPurple = #colorLiteral(red: 0.5568627715, green: 0.3529411852, blue: 0.9686274529, alpha: 1)
        let disabledPurple = #colorLiteral(red: 0.5568627715, green: 0.3529411852, blue: 0.9686274529, alpha: 1).withAlphaComponent(0.5)
        return formIsValid ? enabledPurple : disabledPurple
    }
    
    
}

struct ResetPasswordViewModel: AuthenticationViewModel {
    var email: String?
    
    var formIsValid: Bool {
        return email?.isEmpty == false
    }
    
    var shouldEnableButton: Bool {
        return formIsValid
    }
    
    var buttonTitleColor: UIColor {
        return formIsValid ? .white : UIColor(white: 1, alpha: 0.67)
    }
    
    var buttonBackgroundColor: UIColor {
        let enabledPurple = #colorLiteral(red: 0.5568627715, green: 0.3529411852, blue: 0.9686274529, alpha: 1)
        let disabledPurple = #colorLiteral(red: 0.5568627715, green: 0.3529411852, blue: 0.9686274529, alpha: 1).withAlphaComponent(0.5)
        return formIsValid ? enabledPurple : disabledPurple
    }
    
    
}
