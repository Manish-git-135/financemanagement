import 'package:dartz/dartz.dart';
import 'package:financemanagement/core/errors/failure.dart';
import 'package:financemanagement/src/domain/entities/user_entity.dart';
import 'package:financemanagement/src/domain/repository/firebase_repository.dart';

class SignupUseCase {
  final FirebaseRepository firebaseRepository;
  SignupUseCase({required this.firebaseRepository});

  Future<Either<Failure, UserEntity>> call(String email, String password) {
    return firebaseRepository.signupUser(email, password);
  }
}
