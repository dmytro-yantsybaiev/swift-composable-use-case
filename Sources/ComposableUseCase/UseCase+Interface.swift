import Combine

public struct ComposableUseCase<Model, Parameters> {

    public var execute: (Parameters) -> AnyPublisher<Model, Error>

    public init(execute: @escaping (Parameters) -> AnyPublisher<Model, Error>) {
        self.execute = execute
    }
}
