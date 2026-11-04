.class public Lcom/rapid7/client/dcerpc/msvcctl/ServiceControlManagerService;
.super Lcom/rapid7/client/dcerpc/service/Service;
.source "SourceFile"


# static fields
.field public static final FULL_ACCESS:I = 0xf003f


# direct methods
.method public constructor <init>(Lcom/rapid7/client/dcerpc/transport/RPCTransport;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/rapid7/client/dcerpc/service/Service;-><init>(Lcom/rapid7/client/dcerpc/transport/RPCTransport;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private closeHandle(Lcom/rapid7/client/dcerpc/dto/ContextHandle;)Z
    .locals 3

    .line 1
    const/4 v0, 0x0

    .line 2
    if-nez p1, :cond_0

    .line 3
    .line 4
    return v0

    .line 5
    :cond_0
    new-instance v1, Lcom/rapid7/client/dcerpc/msvcctl/messages/RCloseServiceHandleRequest;

    .line 6
    .line 7
    invoke-virtual {p0, p1}, Lcom/rapid7/client/dcerpc/service/Service;->parseHandle(Lcom/rapid7/client/dcerpc/dto/ContextHandle;)[B

    .line 8
    .line 9
    .line 10
    move-result-object p1

    .line 11
    invoke-direct {v1, p1}, Lcom/rapid7/client/dcerpc/msvcctl/messages/RCloseServiceHandleRequest;-><init>([B)V

    .line 12
    .line 13
    .line 14
    invoke-virtual {p0, v1}, Lcom/rapid7/client/dcerpc/service/Service;->call(Lcom/rapid7/client/dcerpc/messages/RequestCall;)Lcom/rapid7/client/dcerpc/messages/RequestResponse;

    .line 15
    .line 16
    .line 17
    move-result-object p1

    .line 18
    check-cast p1, Lcom/rapid7/client/dcerpc/messages/HandleResponse;

    .line 19
    .line 20
    sget-object v1, Lcom/rapid7/client/dcerpc/mserref/SystemErrorCode;->ERROR_SUCCESS:Lcom/rapid7/client/dcerpc/mserref/SystemErrorCode;

    .line 21
    .line 22
    invoke-virtual {p1}, Lcom/rapid7/client/dcerpc/messages/RequestResponse;->getReturnValue()I

    .line 23
    .line 24
    .line 25
    move-result v2

    .line 26
    invoke-virtual {v1, v2}, Lcom/rapid7/client/dcerpc/mserref/SystemErrorCode;->is(I)Z

    .line 27
    .line 28
    .line 29
    move-result v1

    .line 30
    if-eqz v1, :cond_1

    .line 31
    .line 32
    const/4 p1, 0x1

    .line 33
    return p1

    .line 34
    :cond_1
    sget-object v1, Lcom/rapid7/client/dcerpc/mserref/SystemErrorCode;->STATUS_INVALID_HANDLE:Lcom/rapid7/client/dcerpc/mserref/SystemErrorCode;

    .line 35
    .line 36
    invoke-virtual {p1}, Lcom/rapid7/client/dcerpc/messages/RequestResponse;->getReturnValue()I

    .line 37
    .line 38
    .line 39
    move-result v2

    .line 40
    invoke-virtual {v1, v2}, Lcom/rapid7/client/dcerpc/mserref/SystemErrorCode;->is(I)Z

    .line 41
    .line 42
    .line 43
    move-result v1

    .line 44
    if-eqz v1, :cond_2

    .line 45
    .line 46
    return v0

    .line 47
    :cond_2
    new-instance v0, Lcom/rapid7/client/dcerpc/RPCException;

    .line 48
    .line 49
    const-string v1, "RCloseServiceHandle"

    .line 50
    .line 51
    invoke-virtual {p1}, Lcom/rapid7/client/dcerpc/messages/RequestResponse;->getReturnValue()I

    .line 52
    .line 53
    .line 54
    move-result p1

    .line 55
    invoke-direct {v0, v1, p1}, Lcom/rapid7/client/dcerpc/RPCException;-><init>(Ljava/lang/String;I)V

    .line 56
    .line 57
    .line 58
    throw v0
.end method

.method private parseLPQueryServiceConfigW(Lcom/rapid7/client/dcerpc/msvcctl/objects/LPQueryServiceConfigW;)Lcom/rapid7/client/dcerpc/msvcctl/dto/ServiceConfigInfo;
    .locals 12

    .line 1
    invoke-virtual {p1}, Lcom/rapid7/client/dcerpc/msvcctl/objects/LPQueryServiceConfigW;->getDwServiceType()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    invoke-static {v0}, Lcom/rapid7/client/dcerpc/msvcctl/dto/enums/ServiceType;->fromInt(I)Lcom/rapid7/client/dcerpc/msvcctl/dto/enums/ServiceType;

    .line 6
    .line 7
    .line 8
    move-result-object v2

    .line 9
    invoke-virtual {p1}, Lcom/rapid7/client/dcerpc/msvcctl/objects/LPQueryServiceConfigW;->getDwStartType()I

    .line 10
    .line 11
    .line 12
    move-result v0

    .line 13
    invoke-static {v0}, Lcom/rapid7/client/dcerpc/msvcctl/dto/enums/ServiceStartType;->fromInt(I)Lcom/rapid7/client/dcerpc/msvcctl/dto/enums/ServiceStartType;

    .line 14
    .line 15
    .line 16
    move-result-object v3

    .line 17
    invoke-virtual {p1}, Lcom/rapid7/client/dcerpc/msvcctl/objects/LPQueryServiceConfigW;->getDwErrorControl()I

    .line 18
    .line 19
    .line 20
    move-result v0

    .line 21
    invoke-static {v0}, Lcom/rapid7/client/dcerpc/msvcctl/dto/enums/ServiceError;->fromInt(I)Lcom/rapid7/client/dcerpc/msvcctl/dto/enums/ServiceError;

    .line 22
    .line 23
    .line 24
    move-result-object v4

    .line 25
    invoke-virtual {p1}, Lcom/rapid7/client/dcerpc/msvcctl/objects/LPQueryServiceConfigW;->getLpBinaryPathName()Lcom/rapid7/client/dcerpc/objects/WChar$NullTerminated;

    .line 26
    .line 27
    .line 28
    move-result-object v0

    .line 29
    invoke-virtual {p0, v0}, Lcom/rapid7/client/dcerpc/service/Service;->parseWChar(Lcom/rapid7/client/dcerpc/objects/WChar;)Ljava/lang/String;

    .line 30
    .line 31
    .line 32
    move-result-object v5

    .line 33
    invoke-virtual {p1}, Lcom/rapid7/client/dcerpc/msvcctl/objects/LPQueryServiceConfigW;->getLpLoadOrderGroup()Lcom/rapid7/client/dcerpc/objects/WChar$NullTerminated;

    .line 34
    .line 35
    .line 36
    move-result-object v0

    .line 37
    invoke-virtual {p0, v0}, Lcom/rapid7/client/dcerpc/service/Service;->parseWChar(Lcom/rapid7/client/dcerpc/objects/WChar;)Ljava/lang/String;

    .line 38
    .line 39
    .line 40
    move-result-object v6

    .line 41
    invoke-virtual {p1}, Lcom/rapid7/client/dcerpc/msvcctl/objects/LPQueryServiceConfigW;->getDwTagId()I

    .line 42
    .line 43
    .line 44
    move-result v7

    .line 45
    invoke-virtual {p1}, Lcom/rapid7/client/dcerpc/msvcctl/objects/LPQueryServiceConfigW;->getLpDependencies()[Ljava/lang/String;

    .line 46
    .line 47
    .line 48
    move-result-object v8

    .line 49
    invoke-virtual {p1}, Lcom/rapid7/client/dcerpc/msvcctl/objects/LPQueryServiceConfigW;->getLpServiceStartName()Lcom/rapid7/client/dcerpc/objects/WChar$NullTerminated;

    .line 50
    .line 51
    .line 52
    move-result-object v0

    .line 53
    invoke-virtual {p0, v0}, Lcom/rapid7/client/dcerpc/service/Service;->parseWChar(Lcom/rapid7/client/dcerpc/objects/WChar;)Ljava/lang/String;

    .line 54
    .line 55
    .line 56
    move-result-object v9

    .line 57
    invoke-virtual {p1}, Lcom/rapid7/client/dcerpc/msvcctl/objects/LPQueryServiceConfigW;->getLpDisplayName()Lcom/rapid7/client/dcerpc/objects/WChar$NullTerminated;

    .line 58
    .line 59
    .line 60
    move-result-object p1

    .line 61
    invoke-virtual {p0, p1}, Lcom/rapid7/client/dcerpc/service/Service;->parseWChar(Lcom/rapid7/client/dcerpc/objects/WChar;)Ljava/lang/String;

    .line 62
    .line 63
    .line 64
    move-result-object v10

    .line 65
    new-instance p1, Lcom/rapid7/client/dcerpc/msvcctl/dto/ServiceConfigInfo;

    .line 66
    .line 67
    const/4 v11, 0x0

    .line 68
    move-object v1, p1

    .line 69
    invoke-direct/range {v1 .. v11}, Lcom/rapid7/client/dcerpc/msvcctl/dto/ServiceConfigInfo;-><init>(Lcom/rapid7/client/dcerpc/msvcctl/dto/enums/ServiceType;Lcom/rapid7/client/dcerpc/msvcctl/dto/enums/ServiceStartType;Lcom/rapid7/client/dcerpc/msvcctl/dto/enums/ServiceError;Ljava/lang/String;Ljava/lang/String;I[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 70
    .line 71
    .line 72
    return-object p1
.end method

.method private parseLPServiceStatus(Lcom/rapid7/client/dcerpc/msvcctl/objects/LPServiceStatus;)Lcom/rapid7/client/dcerpc/msvcctl/dto/ServiceStatusInfo;
    .locals 9

    .line 1
    invoke-virtual {p1}, Lcom/rapid7/client/dcerpc/msvcctl/objects/LPServiceStatus;->getDwServiceType()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    invoke-static {v0}, Lcom/rapid7/client/dcerpc/msvcctl/dto/enums/ServiceType;->fromInt(I)Lcom/rapid7/client/dcerpc/msvcctl/dto/enums/ServiceType;

    .line 6
    .line 7
    .line 8
    move-result-object v2

    .line 9
    invoke-virtual {p1}, Lcom/rapid7/client/dcerpc/msvcctl/objects/LPServiceStatus;->getDwCurrentState()I

    .line 10
    .line 11
    .line 12
    move-result v0

    .line 13
    invoke-static {v0}, Lcom/rapid7/client/dcerpc/msvcctl/dto/enums/ServiceStatusType;->fromInt(I)Lcom/rapid7/client/dcerpc/msvcctl/dto/enums/ServiceStatusType;

    .line 14
    .line 15
    .line 16
    move-result-object v3

    .line 17
    invoke-virtual {p1}, Lcom/rapid7/client/dcerpc/msvcctl/objects/LPServiceStatus;->getDwControlsAccepted()I

    .line 18
    .line 19
    .line 20
    move-result v0

    .line 21
    invoke-static {v0}, Lcom/rapid7/client/dcerpc/msvcctl/dto/enums/ServicesAcceptedControls;->fromInt(I)Lcom/rapid7/client/dcerpc/msvcctl/dto/enums/ServicesAcceptedControls;

    .line 22
    .line 23
    .line 24
    move-result-object v4

    .line 25
    new-instance v0, Lcom/rapid7/client/dcerpc/msvcctl/dto/ServiceStatusInfo;

    .line 26
    .line 27
    invoke-virtual {p1}, Lcom/rapid7/client/dcerpc/msvcctl/objects/LPServiceStatus;->getDwWin32ExitCode()I

    .line 28
    .line 29
    .line 30
    move-result v5

    .line 31
    invoke-virtual {p1}, Lcom/rapid7/client/dcerpc/msvcctl/objects/LPServiceStatus;->getDwServiceSpecificExitCode()I

    .line 32
    .line 33
    .line 34
    move-result v6

    .line 35
    invoke-virtual {p1}, Lcom/rapid7/client/dcerpc/msvcctl/objects/LPServiceStatus;->getDwCheckPoint()I

    .line 36
    .line 37
    .line 38
    move-result v7

    .line 39
    invoke-virtual {p1}, Lcom/rapid7/client/dcerpc/msvcctl/objects/LPServiceStatus;->getDwWaitHint()I

    .line 40
    .line 41
    .line 42
    move-result v8

    .line 43
    move-object v1, v0

    .line 44
    invoke-direct/range {v1 .. v8}, Lcom/rapid7/client/dcerpc/msvcctl/dto/ServiceStatusInfo;-><init>(Lcom/rapid7/client/dcerpc/msvcctl/dto/enums/ServiceType;Lcom/rapid7/client/dcerpc/msvcctl/dto/enums/ServiceStatusType;Lcom/rapid7/client/dcerpc/msvcctl/dto/enums/ServicesAcceptedControls;IIII)V

    .line 45
    .line 46
    .line 47
    return-object v0
.end method


# virtual methods
.method public changeServiceConfig(Lcom/rapid7/client/dcerpc/msvcctl/dto/ServiceHandle;Lcom/rapid7/client/dcerpc/msvcctl/dto/IServiceConfigInfo;)V
    .locals 13

    .line 1
    new-instance v12, Lcom/rapid7/client/dcerpc/msvcctl/messages/RChangeServiceConfigWRequest;

    .line 2
    .line 3
    invoke-virtual {p1}, Lcom/rapid7/client/dcerpc/dto/ContextHandle;->getBytes()[B

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    invoke-interface {p2}, Lcom/rapid7/client/dcerpc/msvcctl/dto/IServiceConfigInfo;->getServiceType()Lcom/rapid7/client/dcerpc/msvcctl/dto/enums/ServiceType;

    .line 8
    .line 9
    .line 10
    move-result-object p1

    .line 11
    invoke-virtual {p1}, Lcom/rapid7/client/dcerpc/msvcctl/dto/enums/ServiceType;->getValue()I

    .line 12
    .line 13
    .line 14
    move-result v2

    .line 15
    invoke-interface {p2}, Lcom/rapid7/client/dcerpc/msvcctl/dto/IServiceConfigInfo;->getStartType()Lcom/rapid7/client/dcerpc/msvcctl/dto/enums/ServiceStartType;

    .line 16
    .line 17
    .line 18
    move-result-object p1

    .line 19
    invoke-virtual {p1}, Lcom/rapid7/client/dcerpc/msvcctl/dto/enums/ServiceStartType;->getValue()I

    .line 20
    .line 21
    .line 22
    move-result v3

    .line 23
    invoke-interface {p2}, Lcom/rapid7/client/dcerpc/msvcctl/dto/IServiceConfigInfo;->getErrorControl()Lcom/rapid7/client/dcerpc/msvcctl/dto/enums/ServiceError;

    .line 24
    .line 25
    .line 26
    move-result-object p1

    .line 27
    invoke-virtual {p1}, Lcom/rapid7/client/dcerpc/msvcctl/dto/enums/ServiceError;->getValue()I

    .line 28
    .line 29
    .line 30
    move-result v4

    .line 31
    invoke-interface {p2}, Lcom/rapid7/client/dcerpc/msvcctl/dto/IServiceConfigInfo;->getBinaryPathName()Ljava/lang/String;

    .line 32
    .line 33
    .line 34
    move-result-object p1

    .line 35
    invoke-virtual {p0, p1}, Lcom/rapid7/client/dcerpc/service/Service;->parseWCharNT(Ljava/lang/String;)Lcom/rapid7/client/dcerpc/objects/WChar$NullTerminated;

    .line 36
    .line 37
    .line 38
    move-result-object v5

    .line 39
    invoke-interface {p2}, Lcom/rapid7/client/dcerpc/msvcctl/dto/IServiceConfigInfo;->getLoadOrderGroup()Ljava/lang/String;

    .line 40
    .line 41
    .line 42
    move-result-object p1

    .line 43
    invoke-virtual {p0, p1}, Lcom/rapid7/client/dcerpc/service/Service;->parseWCharNT(Ljava/lang/String;)Lcom/rapid7/client/dcerpc/objects/WChar$NullTerminated;

    .line 44
    .line 45
    .line 46
    move-result-object v6

    .line 47
    invoke-interface {p2}, Lcom/rapid7/client/dcerpc/msvcctl/dto/IServiceConfigInfo;->getTagId()I

    .line 48
    .line 49
    .line 50
    move-result p1

    .line 51
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 52
    .line 53
    .line 54
    move-result-object v7

    .line 55
    invoke-interface {p2}, Lcom/rapid7/client/dcerpc/msvcctl/dto/IServiceConfigInfo;->getDependencies()[Ljava/lang/String;

    .line 56
    .line 57
    .line 58
    move-result-object v8

    .line 59
    invoke-interface {p2}, Lcom/rapid7/client/dcerpc/msvcctl/dto/IServiceConfigInfo;->getServiceStartName()Ljava/lang/String;

    .line 60
    .line 61
    .line 62
    move-result-object p1

    .line 63
    invoke-virtual {p0, p1}, Lcom/rapid7/client/dcerpc/service/Service;->parseWCharNT(Ljava/lang/String;)Lcom/rapid7/client/dcerpc/objects/WChar$NullTerminated;

    .line 64
    .line 65
    .line 66
    move-result-object v9

    .line 67
    invoke-interface {p2}, Lcom/rapid7/client/dcerpc/msvcctl/dto/IServiceConfigInfo;->getPassword()Ljava/lang/String;

    .line 68
    .line 69
    .line 70
    move-result-object v10

    .line 71
    invoke-interface {p2}, Lcom/rapid7/client/dcerpc/msvcctl/dto/IServiceConfigInfo;->getDisplayName()Ljava/lang/String;

    .line 72
    .line 73
    .line 74
    move-result-object p1

    .line 75
    invoke-virtual {p0, p1}, Lcom/rapid7/client/dcerpc/service/Service;->parseWCharNT(Ljava/lang/String;)Lcom/rapid7/client/dcerpc/objects/WChar$NullTerminated;

    .line 76
    .line 77
    .line 78
    move-result-object v11

    .line 79
    move-object v0, v12

    .line 80
    invoke-direct/range {v0 .. v11}, Lcom/rapid7/client/dcerpc/msvcctl/messages/RChangeServiceConfigWRequest;-><init>([BIIILcom/rapid7/client/dcerpc/objects/WChar$NullTerminated;Lcom/rapid7/client/dcerpc/objects/WChar$NullTerminated;Ljava/lang/Integer;[Ljava/lang/String;Lcom/rapid7/client/dcerpc/objects/WChar$NullTerminated;Ljava/lang/String;Lcom/rapid7/client/dcerpc/objects/WChar$NullTerminated;)V

    .line 81
    .line 82
    .line 83
    const-string p1, "RChangeServiceConfigW"

    .line 84
    .line 85
    invoke-virtual {p0, v12, p1}, Lcom/rapid7/client/dcerpc/service/Service;->callExpectSuccess(Lcom/rapid7/client/dcerpc/messages/RequestCall;Ljava/lang/String;)Lcom/rapid7/client/dcerpc/messages/RequestResponse;

    .line 86
    .line 87
    .line 88
    return-void
.end method

.method public closeServiceHandle(Lcom/rapid7/client/dcerpc/msvcctl/dto/ServiceHandle;)Z
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/rapid7/client/dcerpc/msvcctl/ServiceControlManagerService;->closeHandle(Lcom/rapid7/client/dcerpc/dto/ContextHandle;)Z

    .line 2
    .line 3
    .line 4
    move-result p1

    .line 5
    return p1
.end method

.method public closeServiceManagerHandle(Lcom/rapid7/client/dcerpc/msvcctl/dto/ServiceManagerHandle;)Z
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/rapid7/client/dcerpc/msvcctl/ServiceControlManagerService;->closeHandle(Lcom/rapid7/client/dcerpc/dto/ContextHandle;)Z

    .line 2
    .line 3
    .line 4
    move-result p1

    .line 5
    return p1
.end method

.method public controlService(Lcom/rapid7/client/dcerpc/msvcctl/dto/ServiceHandle;Lcom/rapid7/client/dcerpc/msvcctl/dto/enums/ServiceControl;)Lcom/rapid7/client/dcerpc/msvcctl/dto/IServiceStatusInfo;
    .locals 1

    .line 1
    new-instance v0, Lcom/rapid7/client/dcerpc/msvcctl/messages/RControlServiceRequest;

    .line 2
    .line 3
    invoke-virtual {p1}, Lcom/rapid7/client/dcerpc/dto/ContextHandle;->getBytes()[B

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    invoke-virtual {p2}, Lcom/rapid7/client/dcerpc/msvcctl/dto/enums/ServiceControl;->getValue()I

    .line 8
    .line 9
    .line 10
    move-result p2

    .line 11
    invoke-direct {v0, p1, p2}, Lcom/rapid7/client/dcerpc/msvcctl/messages/RControlServiceRequest;-><init>([BI)V

    .line 12
    .line 13
    .line 14
    const-string p1, "RControlServiceRequest"

    .line 15
    .line 16
    invoke-virtual {p0, v0, p1}, Lcom/rapid7/client/dcerpc/service/Service;->callExpectSuccess(Lcom/rapid7/client/dcerpc/messages/RequestCall;Ljava/lang/String;)Lcom/rapid7/client/dcerpc/messages/RequestResponse;

    .line 17
    .line 18
    .line 19
    move-result-object p1

    .line 20
    check-cast p1, Lcom/rapid7/client/dcerpc/msvcctl/messages/RQueryServiceStatusResponse;

    .line 21
    .line 22
    invoke-virtual {p1}, Lcom/rapid7/client/dcerpc/msvcctl/messages/RQueryServiceStatusResponse;->getLpServiceStatus()Lcom/rapid7/client/dcerpc/msvcctl/objects/LPServiceStatus;

    .line 23
    .line 24
    .line 25
    move-result-object p1

    .line 26
    invoke-direct {p0, p1}, Lcom/rapid7/client/dcerpc/msvcctl/ServiceControlManagerService;->parseLPServiceStatus(Lcom/rapid7/client/dcerpc/msvcctl/objects/LPServiceStatus;)Lcom/rapid7/client/dcerpc/msvcctl/dto/ServiceStatusInfo;

    .line 27
    .line 28
    .line 29
    move-result-object p1

    .line 30
    return-object p1
.end method

.method public openServiceHandle(Lcom/rapid7/client/dcerpc/msvcctl/dto/ServiceManagerHandle;Ljava/lang/String;)Lcom/rapid7/client/dcerpc/msvcctl/dto/ServiceHandle;
    .locals 2

    .line 1
    new-instance v0, Lcom/rapid7/client/dcerpc/msvcctl/messages/ROpenServiceWRequest;

    .line 2
    .line 3
    invoke-virtual {p0, p1}, Lcom/rapid7/client/dcerpc/service/Service;->parseHandle(Lcom/rapid7/client/dcerpc/dto/ContextHandle;)[B

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    invoke-virtual {p0, p2}, Lcom/rapid7/client/dcerpc/service/Service;->parseWCharNT(Ljava/lang/String;)Lcom/rapid7/client/dcerpc/objects/WChar$NullTerminated;

    .line 8
    .line 9
    .line 10
    move-result-object p2

    .line 11
    const v1, 0xf003f

    .line 12
    .line 13
    .line 14
    invoke-direct {v0, p1, p2, v1}, Lcom/rapid7/client/dcerpc/msvcctl/messages/ROpenServiceWRequest;-><init>([BLcom/rapid7/client/dcerpc/objects/WChar$NullTerminated;I)V

    .line 15
    .line 16
    .line 17
    new-instance p1, Lcom/rapid7/client/dcerpc/msvcctl/dto/ServiceHandle;

    .line 18
    .line 19
    const-string p2, "ROpenServiceWRequest"

    .line 20
    .line 21
    invoke-virtual {p0, v0, p2}, Lcom/rapid7/client/dcerpc/service/Service;->callExpectSuccess(Lcom/rapid7/client/dcerpc/messages/RequestCall;Ljava/lang/String;)Lcom/rapid7/client/dcerpc/messages/RequestResponse;

    .line 22
    .line 23
    .line 24
    move-result-object p2

    .line 25
    check-cast p2, Lcom/rapid7/client/dcerpc/messages/HandleResponse;

    .line 26
    .line 27
    invoke-virtual {p2}, Lcom/rapid7/client/dcerpc/messages/HandleResponse;->getHandle()[B

    .line 28
    .line 29
    .line 30
    move-result-object p2

    .line 31
    invoke-direct {p1, p2}, Lcom/rapid7/client/dcerpc/msvcctl/dto/ServiceHandle;-><init>([B)V

    .line 32
    .line 33
    .line 34
    return-object p1
.end method

.method public openServiceManagerHandle()Lcom/rapid7/client/dcerpc/msvcctl/dto/ServiceManagerHandle;
    .locals 3

    .line 1
    new-instance v0, Lcom/rapid7/client/dcerpc/msvcctl/messages/ROpenSCManagerWRequest;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    const v2, 0xf003f

    .line 5
    .line 6
    .line 7
    invoke-direct {v0, v1, v1, v2}, Lcom/rapid7/client/dcerpc/msvcctl/messages/ROpenSCManagerWRequest;-><init>(Lcom/rapid7/client/dcerpc/objects/WChar$NullTerminated;Lcom/rapid7/client/dcerpc/objects/WChar$NullTerminated;I)V

    .line 8
    .line 9
    .line 10
    new-instance v1, Lcom/rapid7/client/dcerpc/msvcctl/dto/ServiceManagerHandle;

    .line 11
    .line 12
    const-string v2, "ROpenSCManagerW"

    .line 13
    .line 14
    invoke-virtual {p0, v0, v2}, Lcom/rapid7/client/dcerpc/service/Service;->callExpectSuccess(Lcom/rapid7/client/dcerpc/messages/RequestCall;Ljava/lang/String;)Lcom/rapid7/client/dcerpc/messages/RequestResponse;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    check-cast v0, Lcom/rapid7/client/dcerpc/messages/HandleResponse;

    .line 19
    .line 20
    invoke-virtual {v0}, Lcom/rapid7/client/dcerpc/messages/HandleResponse;->getHandle()[B

    .line 21
    .line 22
    .line 23
    move-result-object v0

    .line 24
    invoke-direct {v1, v0}, Lcom/rapid7/client/dcerpc/msvcctl/dto/ServiceManagerHandle;-><init>([B)V

    .line 25
    .line 26
    .line 27
    return-object v1
.end method

.method public queryService(Lcom/rapid7/client/dcerpc/msvcctl/dto/ServiceHandle;)Lcom/rapid7/client/dcerpc/msvcctl/dto/IServiceStatusInfo;
    .locals 1

    .line 1
    new-instance v0, Lcom/rapid7/client/dcerpc/msvcctl/messages/RQueryServiceStatusRequest;

    .line 2
    .line 3
    invoke-virtual {p1}, Lcom/rapid7/client/dcerpc/dto/ContextHandle;->getBytes()[B

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    invoke-direct {v0, p1}, Lcom/rapid7/client/dcerpc/msvcctl/messages/RQueryServiceStatusRequest;-><init>([B)V

    .line 8
    .line 9
    .line 10
    const-string p1, "RQueryServiceStatus"

    .line 11
    .line 12
    invoke-virtual {p0, v0, p1}, Lcom/rapid7/client/dcerpc/service/Service;->callExpectSuccess(Lcom/rapid7/client/dcerpc/messages/RequestCall;Ljava/lang/String;)Lcom/rapid7/client/dcerpc/messages/RequestResponse;

    .line 13
    .line 14
    .line 15
    move-result-object p1

    .line 16
    check-cast p1, Lcom/rapid7/client/dcerpc/msvcctl/messages/RQueryServiceStatusResponse;

    .line 17
    .line 18
    invoke-virtual {p1}, Lcom/rapid7/client/dcerpc/msvcctl/messages/RQueryServiceStatusResponse;->getLpServiceStatus()Lcom/rapid7/client/dcerpc/msvcctl/objects/LPServiceStatus;

    .line 19
    .line 20
    .line 21
    move-result-object p1

    .line 22
    invoke-direct {p0, p1}, Lcom/rapid7/client/dcerpc/msvcctl/ServiceControlManagerService;->parseLPServiceStatus(Lcom/rapid7/client/dcerpc/msvcctl/objects/LPServiceStatus;)Lcom/rapid7/client/dcerpc/msvcctl/dto/ServiceStatusInfo;

    .line 23
    .line 24
    .line 25
    move-result-object p1

    .line 26
    return-object p1
.end method

.method public queryServiceConfig(Lcom/rapid7/client/dcerpc/msvcctl/dto/ServiceHandle;)Lcom/rapid7/client/dcerpc/msvcctl/dto/IServiceConfigInfo;
    .locals 2

    .line 1
    new-instance v0, Lcom/rapid7/client/dcerpc/msvcctl/messages/RQueryServiceConfigWRequest;

    .line 2
    .line 3
    invoke-virtual {p1}, Lcom/rapid7/client/dcerpc/dto/ContextHandle;->getBytes()[B

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    const/16 v1, 0x2000

    .line 8
    .line 9
    invoke-direct {v0, p1, v1}, Lcom/rapid7/client/dcerpc/msvcctl/messages/RQueryServiceConfigWRequest;-><init>([BI)V

    .line 10
    .line 11
    .line 12
    const-string p1, "RQueryServiceConfigW"

    .line 13
    .line 14
    invoke-virtual {p0, v0, p1}, Lcom/rapid7/client/dcerpc/service/Service;->callExpectSuccess(Lcom/rapid7/client/dcerpc/messages/RequestCall;Ljava/lang/String;)Lcom/rapid7/client/dcerpc/messages/RequestResponse;

    .line 15
    .line 16
    .line 17
    move-result-object p1

    .line 18
    check-cast p1, Lcom/rapid7/client/dcerpc/msvcctl/messages/RQueryServiceConfigWResponse;

    .line 19
    .line 20
    invoke-virtual {p1}, Lcom/rapid7/client/dcerpc/msvcctl/messages/RQueryServiceConfigWResponse;->getLpServiceConfig()Lcom/rapid7/client/dcerpc/msvcctl/objects/LPQueryServiceConfigW;

    .line 21
    .line 22
    .line 23
    move-result-object p1

    .line 24
    invoke-direct {p0, p1}, Lcom/rapid7/client/dcerpc/msvcctl/ServiceControlManagerService;->parseLPQueryServiceConfigW(Lcom/rapid7/client/dcerpc/msvcctl/objects/LPQueryServiceConfigW;)Lcom/rapid7/client/dcerpc/msvcctl/dto/ServiceConfigInfo;

    .line 25
    .line 26
    .line 27
    move-result-object p1

    .line 28
    return-object p1
.end method

.method public startService(Lcom/rapid7/client/dcerpc/msvcctl/dto/ServiceHandle;)V
    .locals 1

    .line 1
    new-instance v0, Lcom/rapid7/client/dcerpc/msvcctl/messages/RStartServiceWRequest;

    .line 2
    .line 3
    invoke-virtual {p1}, Lcom/rapid7/client/dcerpc/dto/ContextHandle;->getBytes()[B

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    invoke-direct {v0, p1}, Lcom/rapid7/client/dcerpc/msvcctl/messages/RStartServiceWRequest;-><init>([B)V

    .line 8
    .line 9
    .line 10
    const-string p1, "RStartServiceW"

    .line 11
    .line 12
    invoke-virtual {p0, v0, p1}, Lcom/rapid7/client/dcerpc/service/Service;->callExpectSuccess(Lcom/rapid7/client/dcerpc/messages/RequestCall;Ljava/lang/String;)Lcom/rapid7/client/dcerpc/messages/RequestResponse;

    .line 13
    .line 14
    .line 15
    return-void
.end method

.method public stopService(Lcom/rapid7/client/dcerpc/msvcctl/dto/ServiceHandle;)Lcom/rapid7/client/dcerpc/msvcctl/dto/IServiceStatusInfo;
    .locals 1

    .line 1
    sget-object v0, Lcom/rapid7/client/dcerpc/msvcctl/dto/enums/ServiceControl;->STOP:Lcom/rapid7/client/dcerpc/msvcctl/dto/enums/ServiceControl;

    .line 2
    .line 3
    invoke-virtual {p0, p1, v0}, Lcom/rapid7/client/dcerpc/msvcctl/ServiceControlManagerService;->controlService(Lcom/rapid7/client/dcerpc/msvcctl/dto/ServiceHandle;Lcom/rapid7/client/dcerpc/msvcctl/dto/enums/ServiceControl;)Lcom/rapid7/client/dcerpc/msvcctl/dto/IServiceStatusInfo;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    return-object p1
.end method
