import Foundation

final class SignInRequest: BackendAPIRequest {
    
    private let email: String
    private let password: String
    
    init(email: String, password: String) {
        self.email = email
        self.password = password
    }
    
    var endpoint: String {
        return "/users/sign_in"
    }
    
    var method: NetworkService.Method {
        return .POST
    }
    
    var parameters: [String : AnyObject]? {
        return [
            "email": email,
            "password": password
        ]
    }
    
    var headers: [String : String]? {
        return defaultJSONHeaders()
    }
}