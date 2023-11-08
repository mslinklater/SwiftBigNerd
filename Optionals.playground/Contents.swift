import Cocoa

var errorCodeString: String?
errorCodeString = "404"
var errorDescription: String?

if let theError = errorCodeString, let errorCodeInt = Int(theError), errorCodeInt == 404 {
    errorDescription = "\(errorCodeInt + 200): resource not found."
} else {
    errorDescription = "no error"
}

var upCaseErrorDescription = errorDescription?.uppercased()
upCaseErrorDescription?.append(" PLEASE TRY AGAIN.")
upCaseErrorDescription

