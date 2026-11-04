.class public Lcom/rapid7/client/dcerpc/msvcctl/dto/ServiceStatusInfo;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/rapid7/client/dcerpc/msvcctl/dto/IServiceStatusInfo;


# instance fields
.field private final checkPoint:I

.field private final controlsAccepted:Lcom/rapid7/client/dcerpc/msvcctl/dto/enums/ServicesAcceptedControls;

.field private final currentState:Lcom/rapid7/client/dcerpc/msvcctl/dto/enums/ServiceStatusType;

.field private final serviceSpecificExitCode:I

.field private final serviceType:Lcom/rapid7/client/dcerpc/msvcctl/dto/enums/ServiceType;

.field private final waitHint:I

.field private final win32ExitCode:I


# direct methods
.method public constructor <init>(Lcom/rapid7/client/dcerpc/msvcctl/dto/enums/ServiceType;Lcom/rapid7/client/dcerpc/msvcctl/dto/enums/ServiceStatusType;Lcom/rapid7/client/dcerpc/msvcctl/dto/enums/ServicesAcceptedControls;IIII)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/rapid7/client/dcerpc/msvcctl/dto/ServiceStatusInfo;->serviceType:Lcom/rapid7/client/dcerpc/msvcctl/dto/enums/ServiceType;

    .line 5
    .line 6
    iput-object p2, p0, Lcom/rapid7/client/dcerpc/msvcctl/dto/ServiceStatusInfo;->currentState:Lcom/rapid7/client/dcerpc/msvcctl/dto/enums/ServiceStatusType;

    .line 7
    .line 8
    iput-object p3, p0, Lcom/rapid7/client/dcerpc/msvcctl/dto/ServiceStatusInfo;->controlsAccepted:Lcom/rapid7/client/dcerpc/msvcctl/dto/enums/ServicesAcceptedControls;

    .line 9
    .line 10
    iput p4, p0, Lcom/rapid7/client/dcerpc/msvcctl/dto/ServiceStatusInfo;->win32ExitCode:I

    .line 11
    .line 12
    iput p5, p0, Lcom/rapid7/client/dcerpc/msvcctl/dto/ServiceStatusInfo;->serviceSpecificExitCode:I

    .line 13
    .line 14
    iput p6, p0, Lcom/rapid7/client/dcerpc/msvcctl/dto/ServiceStatusInfo;->checkPoint:I

    .line 15
    .line 16
    iput p7, p0, Lcom/rapid7/client/dcerpc/msvcctl/dto/ServiceStatusInfo;->waitHint:I

    .line 17
    .line 18
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4

    .line 1
    const/4 v0, 0x1

    .line 2
    if-ne p0, p1, :cond_0

    .line 3
    .line 4
    return v0

    .line 5
    :cond_0
    instance-of v1, p1, Lcom/rapid7/client/dcerpc/msvcctl/dto/IServiceStatusInfo;

    .line 6
    .line 7
    const/4 v2, 0x0

    .line 8
    if-nez v1, :cond_1

    .line 9
    .line 10
    return v2

    .line 11
    :cond_1
    check-cast p1, Lcom/rapid7/client/dcerpc/msvcctl/dto/IServiceStatusInfo;

    .line 12
    .line 13
    invoke-virtual {p0}, Lcom/rapid7/client/dcerpc/msvcctl/dto/ServiceStatusInfo;->getServiceType()Lcom/rapid7/client/dcerpc/msvcctl/dto/enums/ServiceType;

    .line 14
    .line 15
    .line 16
    move-result-object v1

    .line 17
    invoke-interface {p1}, Lcom/rapid7/client/dcerpc/msvcctl/dto/IServiceStatusInfo;->getServiceType()Lcom/rapid7/client/dcerpc/msvcctl/dto/enums/ServiceType;

    .line 18
    .line 19
    .line 20
    move-result-object v3

    .line 21
    if-ne v1, v3, :cond_2

    .line 22
    .line 23
    invoke-virtual {p0}, Lcom/rapid7/client/dcerpc/msvcctl/dto/ServiceStatusInfo;->getCurrentState()Lcom/rapid7/client/dcerpc/msvcctl/dto/enums/ServiceStatusType;

    .line 24
    .line 25
    .line 26
    move-result-object v1

    .line 27
    invoke-interface {p1}, Lcom/rapid7/client/dcerpc/msvcctl/dto/IServiceStatusInfo;->getCurrentState()Lcom/rapid7/client/dcerpc/msvcctl/dto/enums/ServiceStatusType;

    .line 28
    .line 29
    .line 30
    move-result-object v3

    .line 31
    if-ne v1, v3, :cond_2

    .line 32
    .line 33
    invoke-virtual {p0}, Lcom/rapid7/client/dcerpc/msvcctl/dto/ServiceStatusInfo;->getControlsAccepted()Lcom/rapid7/client/dcerpc/msvcctl/dto/enums/ServicesAcceptedControls;

    .line 34
    .line 35
    .line 36
    move-result-object v1

    .line 37
    invoke-interface {p1}, Lcom/rapid7/client/dcerpc/msvcctl/dto/IServiceStatusInfo;->getControlsAccepted()Lcom/rapid7/client/dcerpc/msvcctl/dto/enums/ServicesAcceptedControls;

    .line 38
    .line 39
    .line 40
    move-result-object v3

    .line 41
    if-ne v1, v3, :cond_2

    .line 42
    .line 43
    invoke-virtual {p0}, Lcom/rapid7/client/dcerpc/msvcctl/dto/ServiceStatusInfo;->getWin32ExitCode()I

    .line 44
    .line 45
    .line 46
    move-result v1

    .line 47
    invoke-interface {p1}, Lcom/rapid7/client/dcerpc/msvcctl/dto/IServiceStatusInfo;->getWin32ExitCode()I

    .line 48
    .line 49
    .line 50
    move-result v3

    .line 51
    if-ne v1, v3, :cond_2

    .line 52
    .line 53
    invoke-virtual {p0}, Lcom/rapid7/client/dcerpc/msvcctl/dto/ServiceStatusInfo;->getServiceSpecificExitCode()I

    .line 54
    .line 55
    .line 56
    move-result v1

    .line 57
    invoke-interface {p1}, Lcom/rapid7/client/dcerpc/msvcctl/dto/IServiceStatusInfo;->getServiceSpecificExitCode()I

    .line 58
    .line 59
    .line 60
    move-result v3

    .line 61
    if-ne v1, v3, :cond_2

    .line 62
    .line 63
    invoke-virtual {p0}, Lcom/rapid7/client/dcerpc/msvcctl/dto/ServiceStatusInfo;->getCheckPoint()I

    .line 64
    .line 65
    .line 66
    move-result v1

    .line 67
    invoke-interface {p1}, Lcom/rapid7/client/dcerpc/msvcctl/dto/IServiceStatusInfo;->getCheckPoint()I

    .line 68
    .line 69
    .line 70
    move-result v3

    .line 71
    if-ne v1, v3, :cond_2

    .line 72
    .line 73
    invoke-virtual {p0}, Lcom/rapid7/client/dcerpc/msvcctl/dto/ServiceStatusInfo;->getWaitHint()I

    .line 74
    .line 75
    .line 76
    move-result v1

    .line 77
    invoke-interface {p1}, Lcom/rapid7/client/dcerpc/msvcctl/dto/IServiceStatusInfo;->getWaitHint()I

    .line 78
    .line 79
    .line 80
    move-result p1

    .line 81
    if-ne v1, p1, :cond_2

    .line 82
    .line 83
    goto :goto_0

    .line 84
    :cond_2
    const/4 v0, 0x0

    .line 85
    :goto_0
    return v0
.end method

.method public getCheckPoint()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/rapid7/client/dcerpc/msvcctl/dto/ServiceStatusInfo;->checkPoint:I

    .line 2
    .line 3
    return v0
.end method

.method public getControlsAccepted()Lcom/rapid7/client/dcerpc/msvcctl/dto/enums/ServicesAcceptedControls;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/rapid7/client/dcerpc/msvcctl/dto/ServiceStatusInfo;->controlsAccepted:Lcom/rapid7/client/dcerpc/msvcctl/dto/enums/ServicesAcceptedControls;

    .line 2
    .line 3
    return-object v0
.end method

.method public getCurrentState()Lcom/rapid7/client/dcerpc/msvcctl/dto/enums/ServiceStatusType;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/rapid7/client/dcerpc/msvcctl/dto/ServiceStatusInfo;->currentState:Lcom/rapid7/client/dcerpc/msvcctl/dto/enums/ServiceStatusType;

    .line 2
    .line 3
    return-object v0
.end method

.method public getServiceSpecificExitCode()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/rapid7/client/dcerpc/msvcctl/dto/ServiceStatusInfo;->serviceSpecificExitCode:I

    .line 2
    .line 3
    return v0
.end method

.method public getServiceType()Lcom/rapid7/client/dcerpc/msvcctl/dto/enums/ServiceType;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/rapid7/client/dcerpc/msvcctl/dto/ServiceStatusInfo;->serviceType:Lcom/rapid7/client/dcerpc/msvcctl/dto/enums/ServiceType;

    .line 2
    .line 3
    return-object v0
.end method

.method public getWaitHint()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/rapid7/client/dcerpc/msvcctl/dto/ServiceStatusInfo;->waitHint:I

    .line 2
    .line 3
    return v0
.end method

.method public getWin32ExitCode()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/rapid7/client/dcerpc/msvcctl/dto/ServiceStatusInfo;->win32ExitCode:I

    .line 2
    .line 3
    return v0
.end method

.method public hashCode()I
    .locals 9

    .line 1
    invoke-virtual {p0}, Lcom/rapid7/client/dcerpc/msvcctl/dto/ServiceStatusInfo;->getServiceType()Lcom/rapid7/client/dcerpc/msvcctl/dto/enums/ServiceType;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {p0}, Lcom/rapid7/client/dcerpc/msvcctl/dto/ServiceStatusInfo;->getCurrentState()Lcom/rapid7/client/dcerpc/msvcctl/dto/enums/ServiceStatusType;

    .line 6
    .line 7
    .line 8
    move-result-object v1

    .line 9
    invoke-virtual {p0}, Lcom/rapid7/client/dcerpc/msvcctl/dto/ServiceStatusInfo;->getControlsAccepted()Lcom/rapid7/client/dcerpc/msvcctl/dto/enums/ServicesAcceptedControls;

    .line 10
    .line 11
    .line 12
    move-result-object v2

    .line 13
    invoke-virtual {p0}, Lcom/rapid7/client/dcerpc/msvcctl/dto/ServiceStatusInfo;->getWin32ExitCode()I

    .line 14
    .line 15
    .line 16
    move-result v3

    .line 17
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 18
    .line 19
    .line 20
    move-result-object v3

    .line 21
    invoke-virtual {p0}, Lcom/rapid7/client/dcerpc/msvcctl/dto/ServiceStatusInfo;->getServiceSpecificExitCode()I

    .line 22
    .line 23
    .line 24
    move-result v4

    .line 25
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 26
    .line 27
    .line 28
    move-result-object v4

    .line 29
    invoke-virtual {p0}, Lcom/rapid7/client/dcerpc/msvcctl/dto/ServiceStatusInfo;->getCheckPoint()I

    .line 30
    .line 31
    .line 32
    move-result v5

    .line 33
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 34
    .line 35
    .line 36
    move-result-object v5

    .line 37
    invoke-virtual {p0}, Lcom/rapid7/client/dcerpc/msvcctl/dto/ServiceStatusInfo;->getWaitHint()I

    .line 38
    .line 39
    .line 40
    move-result v6

    .line 41
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 42
    .line 43
    .line 44
    move-result-object v6

    .line 45
    const/4 v7, 0x7

    .line 46
    new-array v7, v7, [Ljava/lang/Object;

    .line 47
    .line 48
    const/4 v8, 0x0

    .line 49
    aput-object v0, v7, v8

    .line 50
    .line 51
    const/4 v0, 0x1

    .line 52
    aput-object v1, v7, v0

    .line 53
    .line 54
    const/4 v0, 0x2

    .line 55
    aput-object v2, v7, v0

    .line 56
    .line 57
    const/4 v0, 0x3

    .line 58
    aput-object v3, v7, v0

    .line 59
    .line 60
    const/4 v0, 0x4

    .line 61
    aput-object v4, v7, v0

    .line 62
    .line 63
    const/4 v0, 0x5

    .line 64
    aput-object v5, v7, v0

    .line 65
    .line 66
    const/4 v0, 0x6

    .line 67
    aput-object v6, v7, v0

    .line 68
    .line 69
    invoke-static {v7}, Lj$/util/Objects;->hash([Ljava/lang/Object;)I

    .line 70
    .line 71
    .line 72
    move-result v0

    .line 73
    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 9

    .line 1
    invoke-virtual {p0}, Lcom/rapid7/client/dcerpc/msvcctl/dto/ServiceStatusInfo;->getServiceType()Lcom/rapid7/client/dcerpc/msvcctl/dto/enums/ServiceType;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {p0}, Lcom/rapid7/client/dcerpc/msvcctl/dto/ServiceStatusInfo;->getCurrentState()Lcom/rapid7/client/dcerpc/msvcctl/dto/enums/ServiceStatusType;

    .line 6
    .line 7
    .line 8
    move-result-object v1

    .line 9
    invoke-virtual {p0}, Lcom/rapid7/client/dcerpc/msvcctl/dto/ServiceStatusInfo;->getControlsAccepted()Lcom/rapid7/client/dcerpc/msvcctl/dto/enums/ServicesAcceptedControls;

    .line 10
    .line 11
    .line 12
    move-result-object v2

    .line 13
    invoke-virtual {p0}, Lcom/rapid7/client/dcerpc/msvcctl/dto/ServiceStatusInfo;->getWin32ExitCode()I

    .line 14
    .line 15
    .line 16
    move-result v3

    .line 17
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 18
    .line 19
    .line 20
    move-result-object v3

    .line 21
    invoke-virtual {p0}, Lcom/rapid7/client/dcerpc/msvcctl/dto/ServiceStatusInfo;->getServiceSpecificExitCode()I

    .line 22
    .line 23
    .line 24
    move-result v4

    .line 25
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 26
    .line 27
    .line 28
    move-result-object v4

    .line 29
    invoke-virtual {p0}, Lcom/rapid7/client/dcerpc/msvcctl/dto/ServiceStatusInfo;->getCheckPoint()I

    .line 30
    .line 31
    .line 32
    move-result v5

    .line 33
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 34
    .line 35
    .line 36
    move-result-object v5

    .line 37
    invoke-virtual {p0}, Lcom/rapid7/client/dcerpc/msvcctl/dto/ServiceStatusInfo;->getWaitHint()I

    .line 38
    .line 39
    .line 40
    move-result v6

    .line 41
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 42
    .line 43
    .line 44
    move-result-object v6

    .line 45
    const/4 v7, 0x7

    .line 46
    new-array v7, v7, [Ljava/lang/Object;

    .line 47
    .line 48
    const/4 v8, 0x0

    .line 49
    aput-object v0, v7, v8

    .line 50
    .line 51
    const/4 v0, 0x1

    .line 52
    aput-object v1, v7, v0

    .line 53
    .line 54
    const/4 v0, 0x2

    .line 55
    aput-object v2, v7, v0

    .line 56
    .line 57
    const/4 v0, 0x3

    .line 58
    aput-object v3, v7, v0

    .line 59
    .line 60
    const/4 v0, 0x4

    .line 61
    aput-object v4, v7, v0

    .line 62
    .line 63
    const/4 v0, 0x5

    .line 64
    aput-object v5, v7, v0

    .line 65
    .line 66
    const/4 v0, 0x6

    .line 67
    aput-object v6, v7, v0

    .line 68
    .line 69
    const-string v0, "ServiceStatusInfo{serviceType: %s, currentState: %s, controlsAccepted: %s, win32ExitCode: %d, serviceSpecificExitCode: %d, checkPoint: %d, waitHint: %d}"

    .line 70
    .line 71
    invoke-static {v0, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 72
    .line 73
    .line 74
    move-result-object v0

    .line 75
    return-object v0
.end method
