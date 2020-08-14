//___FILEHEADER___

import ReactorKit

class ___FILEBASENAMEASIDENTIFIER___: Reactor {

    enum Action {
    }

    enum Mutation {
        case setLoading(Bool)
        case error(Error?)
    }

    struct State {
        var loading: Bool = false
        var error: Error?
    }

    func mutate(action: Action) -> Observable<Mutation> {

        switch action {
        }
    }

    var initialState = State()
    private let useCase: ___VARIABLE_useCaseType:identifier___UseCase

    func reduce(state: State, mutation: Mutation) -> State {

        var state = state
        switch mutation {
        case .setLoading(let isLoading):
            state.loading = isLoading
        case .error(let err):
            state.error = err
        }
        return state
    }

    init(useCase: ___VARIABLE_useCaseType:identifier___UseCase) {
        self.useCase = useCase
    }
}

