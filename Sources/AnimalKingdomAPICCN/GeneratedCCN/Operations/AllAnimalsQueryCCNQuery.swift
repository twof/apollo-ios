// @generated
// This file was automatically generated and should not be edited.

import ApolloAPI

public class AllAnimalsQueryCCNQuery: GraphQLQuery {
  public let operationName: String = "AllAnimalsQueryCCN"
  public let document: DocumentType = .notPersisted(
    definition: .init(
      """
      query AllAnimalsQueryCCN {
        allAnimals {
          height {
            feet?
            inches!
          }
        }
      }
      """
    ))

  public init() {}

  public struct Data: AnimalKingdomAPICCN.SelectionSet {
    public let data: DataDict
    public init(data: DataDict) { self.data = data }

    public static var __parentType: ParentType { .Object(AnimalKingdomAPICCN.Query.self) }
    public static var selections: [Selection] { [
      .field("allAnimals", [AllAnimal].self),
    ] }

    public var allAnimals: [AllAnimal] { data["allAnimals"] }

    /// AllAnimal
    public struct AllAnimal: AnimalKingdomAPICCN.SelectionSet {
      public let data: DataDict
      public init(data: DataDict) { self.data = data }

      public static var __parentType: ParentType { .Interface(AnimalKingdomAPICCN.Animal.self) }
      public static var selections: [Selection] { [
        .field("height", Height.self),
      ] }

      public var height: Height { data["height"] }

      /// AllAnimal.Height
      public struct Height: AnimalKingdomAPICCN.SelectionSet {
        public let data: DataDict
        public init(data: DataDict) { self.data = data }

        public static var __parentType: ParentType { .Object(AnimalKingdomAPICCN.Height.self) }
        public static var selections: [Selection] { [
          .field("feet", Int?.self),
          .field("inches", Int.self),
        ] }

        public var feet: Int? { data["feet"] }
        public var inches: Int { data["inches"] }
      }
    }
  }
}