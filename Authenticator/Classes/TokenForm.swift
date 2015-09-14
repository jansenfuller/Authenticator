//
//  TokenForm.swift
//  Authenticator
//
//  Created by Matt Rubin on 8/29/15.
//  Copyright (c) 2015 Matt Rubin. All rights reserved.
//

@objc
protocol TokenForm: TableViewModel {
    weak var presenter: TokenFormPresenter? { get set }

    var title: String { get }

    func focusFirstField()
    func unfocus()

    var isValid: Bool { get }
    func submit()
}

@objc
protocol TokenFormPresenter: class {
    func formValuesDidChange(form: TokenForm)
    func formDidSubmit(form: TokenForm)
    func form(form: TokenForm, didFailWithErrorMessage errorMessage: String)
}
