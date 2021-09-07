
import GRPC
import NIO
import NIOHPACK

class DataRepository {
    static let shared = DataRepository()
    private var token: String
    private var phoneNum: String
    private let callOptions: CallOptions
    private let channel: ClientConnection
    
    private init() {
        self.token = ""
        self.phoneNum = ""
        self.callOptions = CallOptions(customMetadata: ["authentication": token])
        self.channel = ClientConnection.secure(group: MultiThreadedEventLoopGroup(numberOfThreads: 1)).connect(host: "api.sweet.tv", port: 443)
    }
    func setToken(token: String){
        self.token = token
    }
    func getToken() -> String{
        return self.token
    }
    func getTvService() -> TvService_TvServiceClient {
        return TvService_TvServiceClient(channel: channel as GRPCChannel, defaultCallOptions: callOptions)
    }
    
    func getMovieService() -> MovieService_MovieServiceClient {
        return MovieService_MovieServiceClient(channel: channel as GRPCChannel, defaultCallOptions: callOptions)
    }

    func getSignupService() -> SignupService_SignupServiceClient {
        return SignupService_SignupServiceClient(channel: channel as GRPCChannel)
    }
}
