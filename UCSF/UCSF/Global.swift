//
//  Global.swift
//  UCSF
//
//  Created by Robert Posada on 5/4/16.
//  Copyright © 2016 Jimbus. All rights reserved.
//

import Foundation

let instructListSFGH: [String] = ["Cello","Day","Dai", "Maher", "Sewell","Somsouk","Tana"]
let instructListParn: [String] = ["Dai","El-Nachef","Lee", "Mahadevan", "Ostroff","Singh","Terdiman","Velayos"]
let instructListVA: [String] = ["Ghassemi","Monto","Ryan", "Rongey", "Shergill"]

//-----------------------------------
let instructorNameKey = "instructor"

var instructorListSFGH = ["Cello","Day","Dai", "Maher", "Sewell","Somsouk","Tana"]
var instructorListParnassus = ["Dai","El-Nachef","Lee", "Mahadevan", "Ostroff","Singh","Terdiman","Velayos"]
var instructorListVA = ["Ghassemi","Monto","Ryan", "Rongey", "Shergill"]
let allInstructors = instructorListSFGH + instructorListParnassus + instructorListVA
//-----------------------------------

let traineeNameKey = "traineeName"
let caseIDKey = "caseID"
let hospitalKey = "hospital"
let procedureKey = "procedure"
let procedureDateKey = "procedureDate"
let extentReachedKey = "extentReached"
let insertionTimeKey = "insertionTime"
let withdrawlTimeKey = "withdrawlTime"
let prepQualityKey = "prepQuality"
let procedureNotesKey = "procedureNotes"
let flagCaseKey = "flagCase"

let plist = Plist(name: "data")
let dict = plist!.getMutablePlistFile()!

func newDataPlist() {
    //wipe plist every time new form
    dict["findings"] = [] //check this later, delete old findings
    dict[traineeNameKey] = ""
    dict[caseIDKey] = ""
    dict[hospitalKey] = 0
    dict[instructorNameKey] = 0 //change to instructorKey later
    dict[procedureKey] = 0
    dict[procedureDateKey] = ""
    dict[extentReachedKey] = "" //change to Int later
    dict[insertionTimeKey] = ""
    dict[withdrawlTimeKey] = ""
    dict[prepQualityKey] = 0
    dict[procedureNotesKey] = ""
    dict[flagCaseKey] = 0 //change to Bool later
}

let serverData = Plist(name: "Server")
let serverDict = serverData!.getMutablePlistFile()!