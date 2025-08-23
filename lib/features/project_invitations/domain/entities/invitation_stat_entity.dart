import 'package:equatable/equatable.dart';

class InvitationStatEntity extends Equatable {
  final String category;
  final int count;

  const InvitationStatEntity({
    required this.category,
    required this.count,
  });

  @override
  List<Object?> get props => [category, count];
}
