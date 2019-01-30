//
//  L.swift
//  TestApp
//
//  Created by Tsimafei Harhun on 1/29/19.
//  Copyright © 2019 harbros. All rights reserved.
//

import UIKit

struct L {
    struct Strings {}
    static let strings = Strings()
}

//MARK: -

extension L.Strings {
    var authorization: String { return "Авторизация" }
    var infoAlert: String { return "Информационный алерт" }
    var tapButton: String { return  "Нажата кнопка" }
    var forgetPassword: String { return  "Забыли пароль?" }
    var doNotHaveAccount: String { return  "У меня еще нет аккаунта. Создать." }
    
    var wheather: String { return  "Погода" }
    var countryWheather: String { return  "Страна погоды" }
    var humidity: String { return  "Влажность" }
    var pressure: String { return  "Давление" }
    var temp: String { return  "Температура" }
}

//MARK: - Errors

extension L.Strings {
    var error: String { return "Ошибка" }
    var wrongEmail: String { return "Некорректный email" }
    var emailIsEmpty: String { return "Заполните email" }
    var wrongPassword: String { return "Некорректный пароль. \nПароль должен содержать минимум 6 символов, минимум 1 строчную букву, минимум 1 заглавную букву, и минимум 1 цифру." }
    var passwordIsEmpty: String { return "Заполните пароль" }
}
