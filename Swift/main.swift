import Alamofire

AF.request('http://example.com').response { response in
    debugPrint(response)
}
