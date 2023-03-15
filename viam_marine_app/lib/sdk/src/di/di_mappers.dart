part of 'di.dart';

GetReadingsResponseToViamSensorReadingsMapper _getReadingsResponseToViamSensorReadingsMapper() =>
    GetReadingsResponseToViamSensorReadingsMapper();

ResourceNameToViamResourceNameMapper _getResourceNameToViamResourceNameMapper() =>
    ResourceNameToViamResourceNameMapper();

ViamResourceNameToResourceNameMapper _getViamResourceNameToResourceNameMapper() =>
    ViamResourceNameToResourceNameMapper();

GetPositionResponseToViamPositionMapper _getPositionResponseToViamPositionMapper() =>
    GetPositionResponseToViamPositionMapper();

AuthenticateResponseToAuthDataMapper _authenticateResponseToAuthDataMapper() => AuthenticateResponseToAuthDataMapper();

GetLinearVelocityResponseToViamVelocityMapper _getLinearVelocityResponseToViamVelocityMapper() =>
    GetLinearVelocityResponseToViamVelocityMapper();

OrganizationToViamOrganizationMapper _getOrganizationToViamOrganizationMapper() => OrganizationToViamOrganizationMapper();

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
