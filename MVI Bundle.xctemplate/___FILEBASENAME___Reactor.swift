//___FILEHEADER___

import ReactorKit

class ___FILEBASENAMEASIDENTIFIER___: Reactor {

    enum Action {
    }

    enum Mutation {
    }

    struct State {
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
        }
        return state
    }

    init(useCase: ___VARIABLE_useCaseType:identifier___UseCase) {
        self.useCase = useCase
    }
}

