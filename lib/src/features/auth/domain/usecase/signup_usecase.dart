import 'package:project_1/core/usecase/usecase.dart';
import 'package:project_1/core/utils/typedefs.dart';
import 'package:project_1/src/features/auth/domain/entities/driver_entity.dart';
import 'package:project_1/src/features/auth/domain/repository/auth_repo.dart';

class SignUpUseCase
    extends UseCaseWithParams<DriverEntity, SignUpUseCaseParams> {
  final AuthRepository _authRepository;
  SignUpUseCase(this._authRepository);
  @override
  ResultFuture<DriverEntity> call(SignUpUseCaseParams p) async {
    return await _authRepository.signUp();
  }
}

class SignUpUseCaseParams {
  final String fullName;
  final String email;
  final String password;
  final String passwordConfirm;
  final String phoneNumber;
  final String idCard;
  final String transferDoc;
  final String playCard;
  final String vehicleLicense;
  final String driverLicense;
  final String identityResidence;

  const SignUpUseCaseParams(
      {required this.fullName,
        required this.email,
        required this.password,
        required this.passwordConfirm,
        required this.phoneNumber,
        required this.idCard,
        required this.transferDoc,
        required this.playCard,
        required this.vehicleLicense,
        required this.driverLicense,
        required this.identityResidence});
}
