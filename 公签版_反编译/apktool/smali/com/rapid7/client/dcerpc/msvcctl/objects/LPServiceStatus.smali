.class public Lcom/rapid7/client/dcerpc/msvcctl/objects/LPServiceStatus;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/rapid7/client/dcerpc/io/ndr/Unmarshallable;


# instance fields
.field private dwCheckPoint:I

.field private dwControlsAccepted:I

.field private dwCurrentState:I

.field private dwServiceSpecificExitCode:I

.field private dwServiceType:I

.field private dwWaitHint:I

.field private dwWin32ExitCode:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
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
    instance-of v1, p1, Lcom/rapid7/client/dcerpc/msvcctl/objects/LPServiceStatus;

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
    check-cast p1, Lcom/rapid7/client/dcerpc/msvcctl/objects/LPServiceStatus;

    .line 12
    .line 13
    invoke-virtual {p0}, Lcom/rapid7/client/dcerpc/msvcctl/objects/LPServiceStatus;->getDwServiceType()I

    .line 14
    .line 15
    .line 16
    move-result v1

    .line 17
    invoke-virtual {p1}, Lcom/rapid7/client/dcerpc/msvcctl/objects/LPServiceStatus;->getDwServiceType()I

    .line 18
    .line 19
    .line 20
    move-result v3

    .line 21
    if-ne v1, v3, :cond_2

    .line 22
    .line 23
    invoke-virtual {p0}, Lcom/rapid7/client/dcerpc/msvcctl/objects/LPServiceStatus;->getDwCurrentState()I

    .line 24
    .line 25
    .line 26
    move-result v1

    .line 27
    invoke-virtual {p1}, Lcom/rapid7/client/dcerpc/msvcctl/objects/LPServiceStatus;->getDwCurrentState()I

    .line 28
    .line 29
    .line 30
    move-result v3

    .line 31
    if-ne v1, v3, :cond_2

    .line 32
    .line 33
    invoke-virtual {p0}, Lcom/rapid7/client/dcerpc/msvcctl/objects/LPServiceStatus;->getDwControlsAccepted()I

    .line 34
    .line 35
    .line 36
    move-result v1

    .line 37
    invoke-virtual {p1}, Lcom/rapid7/client/dcerpc/msvcctl/objects/LPServiceStatus;->getDwControlsAccepted()I

    .line 38
    .line 39
    .line 40
    move-result v3

    .line 41
    if-ne v1, v3, :cond_2

    .line 42
    .line 43
    invoke-virtual {p0}, Lcom/rapid7/client/dcerpc/msvcctl/objects/LPServiceStatus;->getDwWin32ExitCode()I

    .line 44
    .line 45
    .line 46
    move-result v1

    .line 47
    invoke-virtual {p1}, Lcom/rapid7/client/dcerpc/msvcctl/objects/LPServiceStatus;->getDwWin32ExitCode()I

    .line 48
    .line 49
    .line 50
    move-result v3

    .line 51
    if-ne v1, v3, :cond_2

    .line 52
    .line 53
    invoke-virtual {p0}, Lcom/rapid7/client/dcerpc/msvcctl/objects/LPServiceStatus;->getDwServiceSpecificExitCode()I

    .line 54
    .line 55
    .line 56
    move-result v1

    .line 57
    invoke-virtual {p1}, Lcom/rapid7/client/dcerpc/msvcctl/objects/LPServiceStatus;->getDwServiceSpecificExitCode()I

    .line 58
    .line 59
    .line 60
    move-result v3

    .line 61
    if-ne v1, v3, :cond_2

    .line 62
    .line 63
    invoke-virtual {p0}, Lcom/rapid7/client/dcerpc/msvcctl/objects/LPServiceStatus;->getDwCheckPoint()I

    .line 64
    .line 65
    .line 66
    move-result v1

    .line 67
    invoke-virtual {p1}, Lcom/rapid7/client/dcerpc/msvcctl/objects/LPServiceStatus;->getDwCheckPoint()I

    .line 68
    .line 69
    .line 70
    move-result v3

    .line 71
    if-ne v1, v3, :cond_2

    .line 72
    .line 73
    invoke-virtual {p0}, Lcom/rapid7/client/dcerpc/msvcctl/objects/LPServiceStatus;->getDwWaitHint()I

    .line 74
    .line 75
    .line 76
    move-result v1

    .line 77
    invoke-virtual {p1}, Lcom/rapid7/client/dcerpc/msvcctl/objects/LPServiceStatus;->getDwWaitHint()I

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

.method public getDwCheckPoint()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/rapid7/client/dcerpc/msvcctl/objects/LPServiceStatus;->dwCheckPoint:I

    .line 2
    .line 3
    return v0
.end method

.method public getDwControlsAccepted()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/rapid7/client/dcerpc/msvcctl/objects/LPServiceStatus;->dwControlsAccepted:I

    .line 2
    .line 3
    return v0
.end method

.method public getDwCurrentState()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/rapid7/client/dcerpc/msvcctl/objects/LPServiceStatus;->dwCurrentState:I

    .line 2
    .line 3
    return v0
.end method

.method public getDwServiceSpecificExitCode()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/rapid7/client/dcerpc/msvcctl/objects/LPServiceStatus;->dwServiceSpecificExitCode:I

    .line 2
    .line 3
    return v0
.end method

.method public getDwServiceType()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/rapid7/client/dcerpc/msvcctl/objects/LPServiceStatus;->dwServiceType:I

    .line 2
    .line 3
    return v0
.end method

.method public getDwWaitHint()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/rapid7/client/dcerpc/msvcctl/objects/LPServiceStatus;->dwWaitHint:I

    .line 2
    .line 3
    return v0
.end method

.method public getDwWin32ExitCode()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/rapid7/client/dcerpc/msvcctl/objects/LPServiceStatus;->dwWin32ExitCode:I

    .line 2
    .line 3
    return v0
.end method

.method public hashCode()I
    .locals 9

    .line 1
    invoke-virtual {p0}, Lcom/rapid7/client/dcerpc/msvcctl/objects/LPServiceStatus;->getDwServiceType()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    invoke-virtual {p0}, Lcom/rapid7/client/dcerpc/msvcctl/objects/LPServiceStatus;->getDwCurrentState()I

    .line 10
    .line 11
    .line 12
    move-result v1

    .line 13
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 14
    .line 15
    .line 16
    move-result-object v1

    .line 17
    invoke-virtual {p0}, Lcom/rapid7/client/dcerpc/msvcctl/objects/LPServiceStatus;->getDwControlsAccepted()I

    .line 18
    .line 19
    .line 20
    move-result v2

    .line 21
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 22
    .line 23
    .line 24
    move-result-object v2

    .line 25
    invoke-virtual {p0}, Lcom/rapid7/client/dcerpc/msvcctl/objects/LPServiceStatus;->getDwWin32ExitCode()I

    .line 26
    .line 27
    .line 28
    move-result v3

    .line 29
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 30
    .line 31
    .line 32
    move-result-object v3

    .line 33
    invoke-virtual {p0}, Lcom/rapid7/client/dcerpc/msvcctl/objects/LPServiceStatus;->getDwServiceSpecificExitCode()I

    .line 34
    .line 35
    .line 36
    move-result v4

    .line 37
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 38
    .line 39
    .line 40
    move-result-object v4

    .line 41
    invoke-virtual {p0}, Lcom/rapid7/client/dcerpc/msvcctl/objects/LPServiceStatus;->getDwCheckPoint()I

    .line 42
    .line 43
    .line 44
    move-result v5

    .line 45
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 46
    .line 47
    .line 48
    move-result-object v5

    .line 49
    invoke-virtual {p0}, Lcom/rapid7/client/dcerpc/msvcctl/objects/LPServiceStatus;->getDwWaitHint()I

    .line 50
    .line 51
    .line 52
    move-result v6

    .line 53
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 54
    .line 55
    .line 56
    move-result-object v6

    .line 57
    const/4 v7, 0x7

    .line 58
    new-array v7, v7, [Ljava/lang/Object;

    .line 59
    .line 60
    const/4 v8, 0x0

    .line 61
    aput-object v0, v7, v8

    .line 62
    .line 63
    const/4 v0, 0x1

    .line 64
    aput-object v1, v7, v0

    .line 65
    .line 66
    const/4 v0, 0x2

    .line 67
    aput-object v2, v7, v0

    .line 68
    .line 69
    const/4 v0, 0x3

    .line 70
    aput-object v3, v7, v0

    .line 71
    .line 72
    const/4 v0, 0x4

    .line 73
    aput-object v4, v7, v0

    .line 74
    .line 75
    const/4 v0, 0x5

    .line 76
    aput-object v5, v7, v0

    .line 77
    .line 78
    const/4 v0, 0x6

    .line 79
    aput-object v6, v7, v0

    .line 80
    .line 81
    invoke-static {v7}, Lj$/util/Objects;->hash([Ljava/lang/Object;)I

    .line 82
    .line 83
    .line 84
    move-result v0

    .line 85
    return v0
.end method

.method public setDwCheckPoint(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/rapid7/client/dcerpc/msvcctl/objects/LPServiceStatus;->dwCheckPoint:I

    .line 2
    .line 3
    return-void
.end method

.method public setDwControlsAccepted(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/rapid7/client/dcerpc/msvcctl/objects/LPServiceStatus;->dwControlsAccepted:I

    .line 2
    .line 3
    return-void
.end method

.method public setDwCurrentState(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/rapid7/client/dcerpc/msvcctl/objects/LPServiceStatus;->dwCurrentState:I

    .line 2
    .line 3
    return-void
.end method

.method public setDwServiceSpecificExitCode(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/rapid7/client/dcerpc/msvcctl/objects/LPServiceStatus;->dwServiceSpecificExitCode:I

    .line 2
    .line 3
    return-void
.end method

.method public setDwServiceType(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/rapid7/client/dcerpc/msvcctl/objects/LPServiceStatus;->dwServiceType:I

    .line 2
    .line 3
    return-void
.end method

.method public setDwWaitHint(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/rapid7/client/dcerpc/msvcctl/objects/LPServiceStatus;->dwWaitHint:I

    .line 2
    .line 3
    return-void
.end method

.method public setDwWin32ExitCode(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/rapid7/client/dcerpc/msvcctl/objects/LPServiceStatus;->dwWin32ExitCode:I

    .line 2
    .line 3
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 9

    .line 1
    invoke-virtual {p0}, Lcom/rapid7/client/dcerpc/msvcctl/objects/LPServiceStatus;->getDwServiceType()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    invoke-virtual {p0}, Lcom/rapid7/client/dcerpc/msvcctl/objects/LPServiceStatus;->getDwCurrentState()I

    .line 10
    .line 11
    .line 12
    move-result v1

    .line 13
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 14
    .line 15
    .line 16
    move-result-object v1

    .line 17
    invoke-virtual {p0}, Lcom/rapid7/client/dcerpc/msvcctl/objects/LPServiceStatus;->getDwControlsAccepted()I

    .line 18
    .line 19
    .line 20
    move-result v2

    .line 21
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 22
    .line 23
    .line 24
    move-result-object v2

    .line 25
    invoke-virtual {p0}, Lcom/rapid7/client/dcerpc/msvcctl/objects/LPServiceStatus;->getDwWin32ExitCode()I

    .line 26
    .line 27
    .line 28
    move-result v3

    .line 29
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 30
    .line 31
    .line 32
    move-result-object v3

    .line 33
    invoke-virtual {p0}, Lcom/rapid7/client/dcerpc/msvcctl/objects/LPServiceStatus;->getDwServiceSpecificExitCode()I

    .line 34
    .line 35
    .line 36
    move-result v4

    .line 37
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 38
    .line 39
    .line 40
    move-result-object v4

    .line 41
    invoke-virtual {p0}, Lcom/rapid7/client/dcerpc/msvcctl/objects/LPServiceStatus;->getDwCheckPoint()I

    .line 42
    .line 43
    .line 44
    move-result v5

    .line 45
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 46
    .line 47
    .line 48
    move-result-object v5

    .line 49
    invoke-virtual {p0}, Lcom/rapid7/client/dcerpc/msvcctl/objects/LPServiceStatus;->getDwWaitHint()I

    .line 50
    .line 51
    .line 52
    move-result v6

    .line 53
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 54
    .line 55
    .line 56
    move-result-object v6

    .line 57
    const/4 v7, 0x7

    .line 58
    new-array v7, v7, [Ljava/lang/Object;

    .line 59
    .line 60
    const/4 v8, 0x0

    .line 61
    aput-object v0, v7, v8

    .line 62
    .line 63
    const/4 v0, 0x1

    .line 64
    aput-object v1, v7, v0

    .line 65
    .line 66
    const/4 v0, 0x2

    .line 67
    aput-object v2, v7, v0

    .line 68
    .line 69
    const/4 v0, 0x3

    .line 70
    aput-object v3, v7, v0

    .line 71
    .line 72
    const/4 v0, 0x4

    .line 73
    aput-object v4, v7, v0

    .line 74
    .line 75
    const/4 v0, 0x5

    .line 76
    aput-object v5, v7, v0

    .line 77
    .line 78
    const/4 v0, 0x6

    .line 79
    aput-object v6, v7, v0

    .line 80
    .line 81
    const-string v0, "LPSERVICE_STATUS{dwServiceType: %d, dwCurrentState: %d, dwControlsAccepted: %d, dwWin32ExitCode: %d, dwServiceSpecificExitCode: %d, dwCheckPoint: %d, dwWaitHint: %d}"

    .line 82
    .line 83
    invoke-static {v0, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 84
    .line 85
    .line 86
    move-result-object v0

    .line 87
    return-object v0
.end method

.method public unmarshalDeferrals(Lcom/rapid7/client/dcerpc/io/PacketInput;)V
    .locals 0

    return-void
.end method

.method public unmarshalEntity(Lcom/rapid7/client/dcerpc/io/PacketInput;)V
    .locals 1

    .line 1
    sget-object v0, Lcom/rapid7/client/dcerpc/io/ndr/Alignment;->FOUR:Lcom/rapid7/client/dcerpc/io/ndr/Alignment;

    .line 2
    .line 3
    invoke-virtual {p1, v0}, Lcom/rapid7/client/dcerpc/io/PacketInput;->align(Lcom/rapid7/client/dcerpc/io/ndr/Alignment;)V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p1}, Lcom/rapid7/client/dcerpc/io/PacketInput;->readInt()I

    .line 7
    .line 8
    .line 9
    move-result v0

    .line 10
    iput v0, p0, Lcom/rapid7/client/dcerpc/msvcctl/objects/LPServiceStatus;->dwServiceType:I

    .line 11
    .line 12
    invoke-virtual {p1}, Lcom/rapid7/client/dcerpc/io/PacketInput;->readInt()I

    .line 13
    .line 14
    .line 15
    move-result v0

    .line 16
    iput v0, p0, Lcom/rapid7/client/dcerpc/msvcctl/objects/LPServiceStatus;->dwCurrentState:I

    .line 17
    .line 18
    invoke-virtual {p1}, Lcom/rapid7/client/dcerpc/io/PacketInput;->readInt()I

    .line 19
    .line 20
    .line 21
    move-result v0

    .line 22
    iput v0, p0, Lcom/rapid7/client/dcerpc/msvcctl/objects/LPServiceStatus;->dwControlsAccepted:I

    .line 23
    .line 24
    invoke-virtual {p1}, Lcom/rapid7/client/dcerpc/io/PacketInput;->readInt()I

    .line 25
    .line 26
    .line 27
    move-result v0

    .line 28
    iput v0, p0, Lcom/rapid7/client/dcerpc/msvcctl/objects/LPServiceStatus;->dwWin32ExitCode:I

    .line 29
    .line 30
    invoke-virtual {p1}, Lcom/rapid7/client/dcerpc/io/PacketInput;->readInt()I

    .line 31
    .line 32
    .line 33
    move-result v0

    .line 34
    iput v0, p0, Lcom/rapid7/client/dcerpc/msvcctl/objects/LPServiceStatus;->dwServiceSpecificExitCode:I

    .line 35
    .line 36
    invoke-virtual {p1}, Lcom/rapid7/client/dcerpc/io/PacketInput;->readInt()I

    .line 37
    .line 38
    .line 39
    move-result v0

    .line 40
    iput v0, p0, Lcom/rapid7/client/dcerpc/msvcctl/objects/LPServiceStatus;->dwCheckPoint:I

    .line 41
    .line 42
    invoke-virtual {p1}, Lcom/rapid7/client/dcerpc/io/PacketInput;->readInt()I

    .line 43
    .line 44
    .line 45
    move-result p1

    .line 46
    iput p1, p0, Lcom/rapid7/client/dcerpc/msvcctl/objects/LPServiceStatus;->dwWaitHint:I

    .line 47
    .line 48
    return-void
.end method

.method public unmarshalPreamble(Lcom/rapid7/client/dcerpc/io/PacketInput;)V
    .locals 0

    return-void
.end method
