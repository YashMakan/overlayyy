import 'env.dart';

class AppConfiguration {
  final String clientId;
  final String clientSecret;
  final String redirectUri;

  AppConfiguration({
    required this.clientId,
    required this.clientSecret,
    required this.redirectUri,
  });

  // factory AppConfiguration.fromEnvironment() => AppConfiguration(
  //       clientId: Env.clientId,
  //       clientSecret: Env.clientSecret,
  //       redirectUri: Env.redirectUri,
  //     );
}
