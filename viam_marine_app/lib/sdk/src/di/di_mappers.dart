part of 'di.dart';

GetReadingsResponseToViamSensorReadingsMapper _getReadingsResponseToViamSensorReadingsMapper() =>
    GetReadingsResponseToViamSensorReadingsMapper();

ResourceNameToViamResourceNameMapper _getResourceNameToViamResourceNameMapper() =>
    ResourceNameToViamResourceNameMapper();

ViamResourceNameToResourceNameMapper _getViamResourceNameToResourceNameMapper() =>
    ViamResourceNameToResourceNameMapper();

GetPositionResponseToViamPositionMapper _getPositionResponseToViamPositionMapper() =>
    GetPositionResponseToViamPositionMapper();

GetImageResponseToCameraDataMapper _getImageResponseToCameraDataMapper() => GetImageResponseToCameraDataMapper();

AuthenticateResponseToAuthDataMapper _authenticateResponseToAuthDataMapper() => AuthenticateResponseToAuthDataMapper();

GetLinearVelocityResponseToViamVelocityMapper _getLinearVelocityResponseToViamVelocityMapper() =>
    GetLinearVelocityResponseToViamVelocityMapper();

OrganizationToViamOrganizationMapper _organizationToViamOrganizationMapper() => OrganizationToViamOrganizationMapper();

SharedSecretStateToViamSharedSecretStateMapper _sharedSecretStateToStateMapper() =>
    SharedSecretStateToViamSharedSecretStateMapper();

SharedSecretToViamSharedSecretMapper _sharedSecretToViamSharedSecretMapper() => SharedSecretToViamSharedSecretMapper(
      _sharedSecretStateToStateMapper(),
    );

LocationAuthToViamLocationAuthMapper _locationAuthToViamLocationAuthMapper() => LocationAuthToViamLocationAuthMapper(
      _sharedSecretToViamSharedSecretMapper(),
    );

LocationOrganizationToViamLocationOrganizationMapper _locationOrganizationToViamLocationOrganizationMapper() =>
    LocationOrganizationToViamLocationOrganizationMapper();

LocationToViamLocationMapper _locationToViamLocationMapper() => LocationToViamLocationMapper(
      _locationAuthToViamLocationAuthMapper(),
      _locationOrganizationToViamLocationOrganizationMapper(),
    );

RobotToViamRobotMapper _robotToViamRobotMapper() => RobotToViamRobotMapper();
