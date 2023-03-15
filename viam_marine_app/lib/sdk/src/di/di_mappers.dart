part of 'di.dart';

OrganizationToViamOrganizationMapper _getOrganizationToViamOrganizationMapper() =>
    OrganizationToViamOrganizationMapper();

SharedSecretStateToViamSharedSecretStateMapper _getSharedSecretStateToStateMapper() =>
    SharedSecretStateToViamSharedSecretStateMapper();

SharedSecretToViamSharedSecretMapper _getSharedSecretToViamSharedSecretMapper() => SharedSecretToViamSharedSecretMapper(
      _getSharedSecretStateToStateMapper(),
    );

LocationAuthToViamLocationAuthMapper _getLocationAuthToViamLocationAuthMapper() => LocationAuthToViamLocationAuthMapper(
      _getSharedSecretToViamSharedSecretMapper(),
    );

LocationOrganizationToViamLocationOrganizationMapper _getLocationOrganizationToViamLocationOrganizationMapper() =>
    LocationOrganizationToViamLocationOrganizationMapper();

LocationToViamLocationMapper _getLocationToViamLocationMapper() => LocationToViamLocationMapper(
      _getLocationAuthToViamLocationAuthMapper(),
      _getLocationOrganizationToViamLocationOrganizationMapper(),
    );

RobotToViamRobotMapper _getRobotToViamRobotMapper() => RobotToViamRobotMapper();
