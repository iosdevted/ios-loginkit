//
//  Constants.swift
//  ios-startkit
//
//  Created by Ted Hyeong on 01/10/2020.
//

import Foundation
import Firebase

let MSG_METRICS = "Metrics"
let MSG_DASHBOARD = "Dashboard"
let MSG_NOTIFICATIONS = "Get Notified"
let MSG_ONBOARDING_METRICS = "Extract valuable insights and come up with data driven product initiatives to help grow your business"
let MSG_ONBOARDING_NOTIFICATIONS = "Get notified when important stuff is happening, so you don't mise out on the action"
let MSG_ONBOARDING_DASHBOARD = "Everything you need all in one place, available through our dashboard feature"

let MSG_RESET_PASSWORD_LINK_SENT = "We sent a link to your email to reset your password."

let DB_REF = Database.database().reference()
let REF_USERS = DB_REF.child("users")
