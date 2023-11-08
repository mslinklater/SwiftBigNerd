import Cocoa

var statusCode: Int = 418
var errorString: String = "The request failed with the error: "

let error = (code: statusCode, msg: errorString)
error.code
error.msg

let firstErrorCode = 404
let secondErrorCode = 418
let errorCodes = (firstErrorCode, secondErrorCode)

switch (errorCodes)
{
case (404, 404):
    print("Both error codes are 404")
case (404, _):
    print("The first error code was 404")
case (_, 404):
    print("The second error code was 404")
default:
    print("Neither code is 404")
}

switch(statusCode)
{
case 401:
    errorString = "Unauthorised"
case 400...417:
    errorString = "Client error \(statusCode)"
case 500...505:
    errorString = "Server error \(statusCode)"
case let code where code < 100 || code > 600:
    errorString = "\(code) is an illegal status code"
default:
    errorString = "None"
}

let point = (x: 1, y: 0)

switch point
{
case let q1 where (point.x > 0) && (point.y > 0):
    print("\(q1) is in quadrant 1")
    
case let q2 where (point.x < 0) && (point.y > 0):
    print("\(q2) is in quadrant 2")
    
case let q3 where (point.x < 0) && (point.y < 0):
    print("\(q3) is in quadrant 3")
    
case let q4 where (point.x > 0) && (point.y < 0):
    print("\(q4) is in quadrant 4")
    
case (_, 0):
    print("\(point) sits on the x-axis")
    
case (0, _):
    print("\(point) sits on the y-axis")
    
default:
    print("Case not covered")
}
