import 'package:blog_using_bloc/core/error/failure.dart';
import 'package:blog_using_bloc/core/useCase/use_case.dart';
import 'package:blog_using_bloc/features/auth/domain/reposirory/auth_repository.dart';
import 'package:fpdart/fpdart.dart';

class UserSignup implements UseCase<String, UseCaseParams> {
  final AuthRepository authRepository;
  const UserSignup(this.authRepository);
  @override
  Future<Either<Failure, String>> call(UseCaseParams params) async {
    return await authRepository.signupWithEmailAndPassword(
        name: params.name!, email: params.email!, password: params.password!);
  }
}

class UseCaseParams {
  final String? email;
  final String? password;
  final String? name;
  UseCaseParams(
      {required this.email, required this.password, required this.name});
}
