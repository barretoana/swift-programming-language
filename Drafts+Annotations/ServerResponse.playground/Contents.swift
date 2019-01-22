enum ServerResponse {
    case result(String, String)
    case failure(String)
    case warning(String)
}

let success = ServerResponse.result("6:00 am", "8:09 pm")
let failure = ServerResponse.failure("Out of cheese.")
let warning = ServerResponse.warning("Beware of the waves.")

switch failure {
case let .result(sunrise, sunset):
    print("Sunrise is at \(sunrise) and sunset is at \(sunset).")
case let .failure(message):
    print("Failure... \(message)")
case let .warning(message):
    print("Warning... \(message)")
}
