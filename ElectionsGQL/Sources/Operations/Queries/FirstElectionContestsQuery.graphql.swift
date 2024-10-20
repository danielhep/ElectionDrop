// @generated
// This file was automatically generated and should not be edited.

@_exported import ApolloAPI

public class FirstElectionContestsQuery: GraphQLQuery {
  public static let operationName: String = "FirstElectionContests"
  public static let operationDocument: ApolloAPI.OperationDocument = .init(
    definition: .init(
      #"query FirstElectionContests { allElections(first: 1, orderBy: ELECTION_DATE_DESC) { __typename nodes { __typename name electionDate id updatesByElectionId { __typename nodes { __typename id jurisdictionType hash timestamp voteTalliesByUpdateId { __typename nodes { __typename id votes ballotResponseId votePercentage } } } } contestsByElectionId { __typename nodes { __typename ballotTitle contestKey district jurisdictions id ballotResponsesByContestId { __typename nodes { __typename name party id } } } } } } }"#
    ))

  public init() {}

  public struct Data: ElectionsGQL.SelectionSet {
    public let __data: DataDict
    public init(_dataDict: DataDict) { __data = _dataDict }

    public static var __parentType: any ApolloAPI.ParentType { ElectionsGQL.Objects.Query }
    public static var __selections: [ApolloAPI.Selection] { [
      .field("allElections", AllElections?.self, arguments: [
        "first": 1,
        "orderBy": "ELECTION_DATE_DESC"
      ]),
    ] }

    /// Reads and enables pagination through a set of `Election`.
    public var allElections: AllElections? { __data["allElections"] }

    /// AllElections
    ///
    /// Parent Type: `ElectionsConnection`
    public struct AllElections: ElectionsGQL.SelectionSet {
      public let __data: DataDict
      public init(_dataDict: DataDict) { __data = _dataDict }

      public static var __parentType: any ApolloAPI.ParentType { ElectionsGQL.Objects.ElectionsConnection }
      public static var __selections: [ApolloAPI.Selection] { [
        .field("__typename", String.self),
        .field("nodes", [Node?].self),
      ] }

      /// A list of `Election` objects.
      public var nodes: [Node?] { __data["nodes"] }

      /// AllElections.Node
      ///
      /// Parent Type: `Election`
      public struct Node: ElectionsGQL.SelectionSet {
        public let __data: DataDict
        public init(_dataDict: DataDict) { __data = _dataDict }

        public static var __parentType: any ApolloAPI.ParentType { ElectionsGQL.Objects.Election }
        public static var __selections: [ApolloAPI.Selection] { [
          .field("__typename", String.self),
          .field("name", String?.self),
          .field("electionDate", ElectionsGQL.Datetime?.self),
          .field("id", String.self),
          .field("updatesByElectionId", UpdatesByElectionId.self),
          .field("contestsByElectionId", ContestsByElectionId.self),
        ] }

        public var name: String? { __data["name"] }
        public var electionDate: ElectionsGQL.Datetime? { __data["electionDate"] }
        public var id: String { __data["id"] }
        /// Reads and enables pagination through a set of `Update`.
        public var updatesByElectionId: UpdatesByElectionId { __data["updatesByElectionId"] }
        /// Reads and enables pagination through a set of `Contest`.
        public var contestsByElectionId: ContestsByElectionId { __data["contestsByElectionId"] }

        /// AllElections.Node.UpdatesByElectionId
        ///
        /// Parent Type: `UpdatesConnection`
        public struct UpdatesByElectionId: ElectionsGQL.SelectionSet {
          public let __data: DataDict
          public init(_dataDict: DataDict) { __data = _dataDict }

          public static var __parentType: any ApolloAPI.ParentType { ElectionsGQL.Objects.UpdatesConnection }
          public static var __selections: [ApolloAPI.Selection] { [
            .field("__typename", String.self),
            .field("nodes", [Node?].self),
          ] }

          /// A list of `Update` objects.
          public var nodes: [Node?] { __data["nodes"] }

          /// AllElections.Node.UpdatesByElectionId.Node
          ///
          /// Parent Type: `Update`
          public struct Node: ElectionsGQL.SelectionSet {
            public let __data: DataDict
            public init(_dataDict: DataDict) { __data = _dataDict }

            public static var __parentType: any ApolloAPI.ParentType { ElectionsGQL.Objects.Update }
            public static var __selections: [ApolloAPI.Selection] { [
              .field("__typename", String.self),
              .field("id", ElectionsGQL.BigInt.self),
              .field("jurisdictionType", String?.self),
              .field("hash", String?.self),
              .field("timestamp", ElectionsGQL.Datetime?.self),
              .field("voteTalliesByUpdateId", VoteTalliesByUpdateId.self),
            ] }

            public var id: ElectionsGQL.BigInt { __data["id"] }
            public var jurisdictionType: String? { __data["jurisdictionType"] }
            public var hash: String? { __data["hash"] }
            public var timestamp: ElectionsGQL.Datetime? { __data["timestamp"] }
            /// Reads and enables pagination through a set of `VoteTally`.
            public var voteTalliesByUpdateId: VoteTalliesByUpdateId { __data["voteTalliesByUpdateId"] }

            /// AllElections.Node.UpdatesByElectionId.Node.VoteTalliesByUpdateId
            ///
            /// Parent Type: `VoteTalliesConnection`
            public struct VoteTalliesByUpdateId: ElectionsGQL.SelectionSet {
              public let __data: DataDict
              public init(_dataDict: DataDict) { __data = _dataDict }

              public static var __parentType: any ApolloAPI.ParentType { ElectionsGQL.Objects.VoteTalliesConnection }
              public static var __selections: [ApolloAPI.Selection] { [
                .field("__typename", String.self),
                .field("nodes", [Node?].self),
              ] }

              /// A list of `VoteTally` objects.
              public var nodes: [Node?] { __data["nodes"] }

              /// AllElections.Node.UpdatesByElectionId.Node.VoteTalliesByUpdateId.Node
              ///
              /// Parent Type: `VoteTally`
              public struct Node: ElectionsGQL.SelectionSet {
                public let __data: DataDict
                public init(_dataDict: DataDict) { __data = _dataDict }

                public static var __parentType: any ApolloAPI.ParentType { ElectionsGQL.Objects.VoteTally }
                public static var __selections: [ApolloAPI.Selection] { [
                  .field("__typename", String.self),
                  .field("id", ElectionsGQL.BigInt.self),
                  .field("votes", ElectionsGQL.BigInt?.self),
                  .field("ballotResponseId", ElectionsGQL.BigInt?.self),
                  .field("votePercentage", ElectionsGQL.BigFloat?.self),
                ] }

                public var id: ElectionsGQL.BigInt { __data["id"] }
                public var votes: ElectionsGQL.BigInt? { __data["votes"] }
                public var ballotResponseId: ElectionsGQL.BigInt? { __data["ballotResponseId"] }
                public var votePercentage: ElectionsGQL.BigFloat? { __data["votePercentage"] }
              }
            }
          }
        }

        /// AllElections.Node.ContestsByElectionId
        ///
        /// Parent Type: `ContestsConnection`
        public struct ContestsByElectionId: ElectionsGQL.SelectionSet {
          public let __data: DataDict
          public init(_dataDict: DataDict) { __data = _dataDict }

          public static var __parentType: any ApolloAPI.ParentType { ElectionsGQL.Objects.ContestsConnection }
          public static var __selections: [ApolloAPI.Selection] { [
            .field("__typename", String.self),
            .field("nodes", [Node?].self),
          ] }

          /// A list of `Contest` objects.
          public var nodes: [Node?] { __data["nodes"] }

          /// AllElections.Node.ContestsByElectionId.Node
          ///
          /// Parent Type: `Contest`
          public struct Node: ElectionsGQL.SelectionSet {
            public let __data: DataDict
            public init(_dataDict: DataDict) { __data = _dataDict }

            public static var __parentType: any ApolloAPI.ParentType { ElectionsGQL.Objects.Contest }
            public static var __selections: [ApolloAPI.Selection] { [
              .field("__typename", String.self),
              .field("ballotTitle", String?.self),
              .field("contestKey", String?.self),
              .field("district", String?.self),
              .field("jurisdictions", [String?]?.self),
              .field("id", ElectionsGQL.BigInt.self),
              .field("ballotResponsesByContestId", BallotResponsesByContestId.self),
            ] }

            public var ballotTitle: String? { __data["ballotTitle"] }
            public var contestKey: String? { __data["contestKey"] }
            public var district: String? { __data["district"] }
            public var jurisdictions: [String?]? { __data["jurisdictions"] }
            public var id: ElectionsGQL.BigInt { __data["id"] }
            /// Reads and enables pagination through a set of `BallotResponse`.
            public var ballotResponsesByContestId: BallotResponsesByContestId { __data["ballotResponsesByContestId"] }

            /// AllElections.Node.ContestsByElectionId.Node.BallotResponsesByContestId
            ///
            /// Parent Type: `BallotResponsesConnection`
            public struct BallotResponsesByContestId: ElectionsGQL.SelectionSet {
              public let __data: DataDict
              public init(_dataDict: DataDict) { __data = _dataDict }

              public static var __parentType: any ApolloAPI.ParentType { ElectionsGQL.Objects.BallotResponsesConnection }
              public static var __selections: [ApolloAPI.Selection] { [
                .field("__typename", String.self),
                .field("nodes", [Node?].self),
              ] }

              /// A list of `BallotResponse` objects.
              public var nodes: [Node?] { __data["nodes"] }

              /// AllElections.Node.ContestsByElectionId.Node.BallotResponsesByContestId.Node
              ///
              /// Parent Type: `BallotResponse`
              public struct Node: ElectionsGQL.SelectionSet {
                public let __data: DataDict
                public init(_dataDict: DataDict) { __data = _dataDict }

                public static var __parentType: any ApolloAPI.ParentType { ElectionsGQL.Objects.BallotResponse }
                public static var __selections: [ApolloAPI.Selection] { [
                  .field("__typename", String.self),
                  .field("name", String?.self),
                  .field("party", String?.self),
                  .field("id", ElectionsGQL.BigInt.self),
                ] }

                public var name: String? { __data["name"] }
                public var party: String? { __data["party"] }
                public var id: ElectionsGQL.BigInt { __data["id"] }
              }
            }
          }
        }
      }
    }
  }
}
