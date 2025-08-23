import 'package:equatable/equatable.dart';

class UserProjectInteraction extends Equatable {
  final String userId;
  final String projectId;
  final bool liked;
  final bool bookmarked;
  final bool following;
  final bool viewed;
  final DateTime? lastViewedAt;
  final bool shared;
  final DateTime? sharedAt;
  final int? rating;
  final DateTime? ratedAt;
  final DateTime? createdAt;
  final DateTime? updatedAt;

  const UserProjectInteraction({
    required this.userId,
    required this.projectId,
    this.liked = false,
    this.bookmarked = false,
    this.following = false,
    this.viewed = false,
    this.lastViewedAt,
    this.shared = false,
    this.sharedAt,
    this.rating,
    this.ratedAt,
    this.createdAt,
    this.updatedAt,
  });

  UserProjectInteraction copyWith({
    String? userId,
    String? projectId,
    bool? liked,
    bool? bookmarked,
    bool? following,
    bool? viewed,
    DateTime? lastViewedAt,
    bool? shared,
    DateTime? sharedAt,
    int? rating,
    DateTime? ratedAt,
    DateTime? createdAt,
    DateTime? updatedAt,
  }) {
    return UserProjectInteraction(
      userId: userId ?? this.userId,
      projectId: projectId ?? this.projectId,
      liked: liked ?? this.liked,
      bookmarked: bookmarked ?? this.bookmarked,
      following: following ?? this.following,
      viewed: viewed ?? this.viewed,
      lastViewedAt: lastViewedAt ?? this.lastViewedAt,
      shared: shared ?? this.shared,
      sharedAt: sharedAt ?? this.sharedAt,
      rating: rating ?? this.rating,
      ratedAt: ratedAt ?? this.ratedAt,
      createdAt: createdAt ?? this.createdAt,
      updatedAt: updatedAt ?? this.updatedAt,
    );
  }

  @override
  List<Object?> get props => [
        userId,
        projectId,
        liked,
        bookmarked,
        following,
        viewed,
        lastViewedAt,
        shared,
        sharedAt,
        rating,
        ratedAt,
        createdAt,
        updatedAt,
      ];
}
