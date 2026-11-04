.class public Lcom/rapid7/client/dcerpc/msvcctl/objects/LPQueryServiceConfigW;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/rapid7/client/dcerpc/io/ndr/Unmarshallable;


# static fields
.field private static final EMPTY_DEPENDENCIES:[Ljava/lang/String;


# instance fields
.field private dwErrorControl:I

.field private dwServiceType:I

.field private dwStartType:I

.field private dwTagId:I

.field private lpBinaryPathName:Lcom/rapid7/client/dcerpc/objects/WChar$NullTerminated;

.field private lpDependencies:[Ljava/lang/String;

.field private lpDisplayName:Lcom/rapid7/client/dcerpc/objects/WChar$NullTerminated;

.field private lpLoadOrderGroup:Lcom/rapid7/client/dcerpc/objects/WChar$NullTerminated;

.field private lpServiceStartName:Lcom/rapid7/client/dcerpc/objects/WChar$NullTerminated;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    new-array v0, v0, [Ljava/lang/String;

    .line 3
    .line 4
    sput-object v0, Lcom/rapid7/client/dcerpc/msvcctl/objects/LPQueryServiceConfigW;->EMPTY_DEPENDENCIES:[Ljava/lang/String;

    .line 5
    .line 6
    return-void
.end method

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
    instance-of v1, p1, Lcom/rapid7/client/dcerpc/msvcctl/objects/LPQueryServiceConfigW;

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
    check-cast p1, Lcom/rapid7/client/dcerpc/msvcctl/objects/LPQueryServiceConfigW;

    .line 12
    .line 13
    invoke-virtual {p0}, Lcom/rapid7/client/dcerpc/msvcctl/objects/LPQueryServiceConfigW;->getDwServiceType()I

    .line 14
    .line 15
    .line 16
    move-result v1

    .line 17
    invoke-virtual {p1}, Lcom/rapid7/client/dcerpc/msvcctl/objects/LPQueryServiceConfigW;->getDwServiceType()I

    .line 18
    .line 19
    .line 20
    move-result v3

    .line 21
    if-ne v1, v3, :cond_2

    .line 22
    .line 23
    invoke-virtual {p0}, Lcom/rapid7/client/dcerpc/msvcctl/objects/LPQueryServiceConfigW;->getDwStartType()I

    .line 24
    .line 25
    .line 26
    move-result v1

    .line 27
    invoke-virtual {p1}, Lcom/rapid7/client/dcerpc/msvcctl/objects/LPQueryServiceConfigW;->getDwStartType()I

    .line 28
    .line 29
    .line 30
    move-result v3

    .line 31
    if-ne v1, v3, :cond_2

    .line 32
    .line 33
    invoke-virtual {p0}, Lcom/rapid7/client/dcerpc/msvcctl/objects/LPQueryServiceConfigW;->getDwErrorControl()I

    .line 34
    .line 35
    .line 36
    move-result v1

    .line 37
    invoke-virtual {p1}, Lcom/rapid7/client/dcerpc/msvcctl/objects/LPQueryServiceConfigW;->getDwErrorControl()I

    .line 38
    .line 39
    .line 40
    move-result v3

    .line 41
    if-ne v1, v3, :cond_2

    .line 42
    .line 43
    invoke-virtual {p0}, Lcom/rapid7/client/dcerpc/msvcctl/objects/LPQueryServiceConfigW;->getLpBinaryPathName()Lcom/rapid7/client/dcerpc/objects/WChar$NullTerminated;

    .line 44
    .line 45
    .line 46
    move-result-object v1

    .line 47
    invoke-virtual {p1}, Lcom/rapid7/client/dcerpc/msvcctl/objects/LPQueryServiceConfigW;->getLpBinaryPathName()Lcom/rapid7/client/dcerpc/objects/WChar$NullTerminated;

    .line 48
    .line 49
    .line 50
    move-result-object v3

    .line 51
    invoke-static {v1, v3}, Lj$/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 52
    .line 53
    .line 54
    move-result v1

    .line 55
    if-eqz v1, :cond_2

    .line 56
    .line 57
    invoke-virtual {p0}, Lcom/rapid7/client/dcerpc/msvcctl/objects/LPQueryServiceConfigW;->getLpLoadOrderGroup()Lcom/rapid7/client/dcerpc/objects/WChar$NullTerminated;

    .line 58
    .line 59
    .line 60
    move-result-object v1

    .line 61
    invoke-virtual {p1}, Lcom/rapid7/client/dcerpc/msvcctl/objects/LPQueryServiceConfigW;->getLpLoadOrderGroup()Lcom/rapid7/client/dcerpc/objects/WChar$NullTerminated;

    .line 62
    .line 63
    .line 64
    move-result-object v3

    .line 65
    invoke-static {v1, v3}, Lj$/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 66
    .line 67
    .line 68
    move-result v1

    .line 69
    if-eqz v1, :cond_2

    .line 70
    .line 71
    invoke-virtual {p0}, Lcom/rapid7/client/dcerpc/msvcctl/objects/LPQueryServiceConfigW;->getDwTagId()I

    .line 72
    .line 73
    .line 74
    move-result v1

    .line 75
    invoke-virtual {p1}, Lcom/rapid7/client/dcerpc/msvcctl/objects/LPQueryServiceConfigW;->getDwTagId()I

    .line 76
    .line 77
    .line 78
    move-result v3

    .line 79
    if-ne v1, v3, :cond_2

    .line 80
    .line 81
    invoke-virtual {p0}, Lcom/rapid7/client/dcerpc/msvcctl/objects/LPQueryServiceConfigW;->getLpDependencies()[Ljava/lang/String;

    .line 82
    .line 83
    .line 84
    move-result-object v1

    .line 85
    invoke-virtual {p1}, Lcom/rapid7/client/dcerpc/msvcctl/objects/LPQueryServiceConfigW;->getLpDependencies()[Ljava/lang/String;

    .line 86
    .line 87
    .line 88
    move-result-object v3

    .line 89
    invoke-static {v1, v3}, Ljava/util/Arrays;->equals([Ljava/lang/Object;[Ljava/lang/Object;)Z

    .line 90
    .line 91
    .line 92
    move-result v1

    .line 93
    if-eqz v1, :cond_2

    .line 94
    .line 95
    invoke-virtual {p0}, Lcom/rapid7/client/dcerpc/msvcctl/objects/LPQueryServiceConfigW;->getLpServiceStartName()Lcom/rapid7/client/dcerpc/objects/WChar$NullTerminated;

    .line 96
    .line 97
    .line 98
    move-result-object v1

    .line 99
    invoke-virtual {p1}, Lcom/rapid7/client/dcerpc/msvcctl/objects/LPQueryServiceConfigW;->getLpServiceStartName()Lcom/rapid7/client/dcerpc/objects/WChar$NullTerminated;

    .line 100
    .line 101
    .line 102
    move-result-object v3

    .line 103
    invoke-static {v1, v3}, Lj$/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 104
    .line 105
    .line 106
    move-result v1

    .line 107
    if-eqz v1, :cond_2

    .line 108
    .line 109
    invoke-virtual {p0}, Lcom/rapid7/client/dcerpc/msvcctl/objects/LPQueryServiceConfigW;->getLpDisplayName()Lcom/rapid7/client/dcerpc/objects/WChar$NullTerminated;

    .line 110
    .line 111
    .line 112
    move-result-object v1

    .line 113
    invoke-virtual {p1}, Lcom/rapid7/client/dcerpc/msvcctl/objects/LPQueryServiceConfigW;->getLpDisplayName()Lcom/rapid7/client/dcerpc/objects/WChar$NullTerminated;

    .line 114
    .line 115
    .line 116
    move-result-object p1

    .line 117
    invoke-static {v1, p1}, Lj$/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 118
    .line 119
    .line 120
    move-result p1

    .line 121
    if-eqz p1, :cond_2

    .line 122
    .line 123
    goto :goto_0

    .line 124
    :cond_2
    const/4 v0, 0x0

    .line 125
    :goto_0
    return v0
.end method

.method public getDwErrorControl()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/rapid7/client/dcerpc/msvcctl/objects/LPQueryServiceConfigW;->dwErrorControl:I

    .line 2
    .line 3
    return v0
.end method

.method public getDwServiceType()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/rapid7/client/dcerpc/msvcctl/objects/LPQueryServiceConfigW;->dwServiceType:I

    .line 2
    .line 3
    return v0
.end method

.method public getDwStartType()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/rapid7/client/dcerpc/msvcctl/objects/LPQueryServiceConfigW;->dwStartType:I

    .line 2
    .line 3
    return v0
.end method

.method public getDwTagId()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/rapid7/client/dcerpc/msvcctl/objects/LPQueryServiceConfigW;->dwTagId:I

    .line 2
    .line 3
    return v0
.end method

.method public getLpBinaryPathName()Lcom/rapid7/client/dcerpc/objects/WChar$NullTerminated;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/rapid7/client/dcerpc/msvcctl/objects/LPQueryServiceConfigW;->lpBinaryPathName:Lcom/rapid7/client/dcerpc/objects/WChar$NullTerminated;

    .line 2
    .line 3
    return-object v0
.end method

.method public getLpDependencies()[Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/rapid7/client/dcerpc/msvcctl/objects/LPQueryServiceConfigW;->lpDependencies:[Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public getLpDisplayName()Lcom/rapid7/client/dcerpc/objects/WChar$NullTerminated;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/rapid7/client/dcerpc/msvcctl/objects/LPQueryServiceConfigW;->lpDisplayName:Lcom/rapid7/client/dcerpc/objects/WChar$NullTerminated;

    .line 2
    .line 3
    return-object v0
.end method

.method public getLpLoadOrderGroup()Lcom/rapid7/client/dcerpc/objects/WChar$NullTerminated;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/rapid7/client/dcerpc/msvcctl/objects/LPQueryServiceConfigW;->lpLoadOrderGroup:Lcom/rapid7/client/dcerpc/objects/WChar$NullTerminated;

    .line 2
    .line 3
    return-object v0
.end method

.method public getLpServiceStartName()Lcom/rapid7/client/dcerpc/objects/WChar$NullTerminated;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/rapid7/client/dcerpc/msvcctl/objects/LPQueryServiceConfigW;->lpServiceStartName:Lcom/rapid7/client/dcerpc/objects/WChar$NullTerminated;

    .line 2
    .line 3
    return-object v0
.end method

.method public hashCode()I
    .locals 10

    .line 1
    invoke-virtual {p0}, Lcom/rapid7/client/dcerpc/msvcctl/objects/LPQueryServiceConfigW;->getDwServiceType()I

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
    invoke-virtual {p0}, Lcom/rapid7/client/dcerpc/msvcctl/objects/LPQueryServiceConfigW;->getDwStartType()I

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
    invoke-virtual {p0}, Lcom/rapid7/client/dcerpc/msvcctl/objects/LPQueryServiceConfigW;->getDwErrorControl()I

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
    invoke-virtual {p0}, Lcom/rapid7/client/dcerpc/msvcctl/objects/LPQueryServiceConfigW;->getLpBinaryPathName()Lcom/rapid7/client/dcerpc/objects/WChar$NullTerminated;

    .line 26
    .line 27
    .line 28
    move-result-object v3

    .line 29
    invoke-virtual {p0}, Lcom/rapid7/client/dcerpc/msvcctl/objects/LPQueryServiceConfigW;->getLpLoadOrderGroup()Lcom/rapid7/client/dcerpc/objects/WChar$NullTerminated;

    .line 30
    .line 31
    .line 32
    move-result-object v4

    .line 33
    invoke-virtual {p0}, Lcom/rapid7/client/dcerpc/msvcctl/objects/LPQueryServiceConfigW;->getDwTagId()I

    .line 34
    .line 35
    .line 36
    move-result v5

    .line 37
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 38
    .line 39
    .line 40
    move-result-object v5

    .line 41
    invoke-virtual {p0}, Lcom/rapid7/client/dcerpc/msvcctl/objects/LPQueryServiceConfigW;->getLpServiceStartName()Lcom/rapid7/client/dcerpc/objects/WChar$NullTerminated;

    .line 42
    .line 43
    .line 44
    move-result-object v6

    .line 45
    invoke-virtual {p0}, Lcom/rapid7/client/dcerpc/msvcctl/objects/LPQueryServiceConfigW;->getLpDisplayName()Lcom/rapid7/client/dcerpc/objects/WChar$NullTerminated;

    .line 46
    .line 47
    .line 48
    move-result-object v7

    .line 49
    const/16 v8, 0x8

    .line 50
    .line 51
    new-array v8, v8, [Ljava/lang/Object;

    .line 52
    .line 53
    const/4 v9, 0x0

    .line 54
    aput-object v0, v8, v9

    .line 55
    .line 56
    const/4 v0, 0x1

    .line 57
    aput-object v1, v8, v0

    .line 58
    .line 59
    const/4 v0, 0x2

    .line 60
    aput-object v2, v8, v0

    .line 61
    .line 62
    const/4 v0, 0x3

    .line 63
    aput-object v3, v8, v0

    .line 64
    .line 65
    const/4 v0, 0x4

    .line 66
    aput-object v4, v8, v0

    .line 67
    .line 68
    const/4 v0, 0x5

    .line 69
    aput-object v5, v8, v0

    .line 70
    .line 71
    const/4 v0, 0x6

    .line 72
    aput-object v6, v8, v0

    .line 73
    .line 74
    const/4 v0, 0x7

    .line 75
    aput-object v7, v8, v0

    .line 76
    .line 77
    invoke-static {v8}, Lj$/util/Objects;->hash([Ljava/lang/Object;)I

    .line 78
    .line 79
    .line 80
    move-result v0

    .line 81
    mul-int/lit8 v0, v0, 0x1f

    .line 82
    .line 83
    invoke-virtual {p0}, Lcom/rapid7/client/dcerpc/msvcctl/objects/LPQueryServiceConfigW;->getLpDependencies()[Ljava/lang/String;

    .line 84
    .line 85
    .line 86
    move-result-object v1

    .line 87
    invoke-static {v1}, Ljava/util/Arrays;->hashCode([Ljava/lang/Object;)I

    .line 88
    .line 89
    .line 90
    move-result v1

    .line 91
    add-int/2addr v1, v0

    .line 92
    return v1
.end method

.method public setDwErrorControl(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/rapid7/client/dcerpc/msvcctl/objects/LPQueryServiceConfigW;->dwErrorControl:I

    .line 2
    .line 3
    return-void
.end method

.method public setDwServiceType(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/rapid7/client/dcerpc/msvcctl/objects/LPQueryServiceConfigW;->dwServiceType:I

    .line 2
    .line 3
    return-void
.end method

.method public setDwStartType(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/rapid7/client/dcerpc/msvcctl/objects/LPQueryServiceConfigW;->dwStartType:I

    .line 2
    .line 3
    return-void
.end method

.method public setDwTagId(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/rapid7/client/dcerpc/msvcctl/objects/LPQueryServiceConfigW;->dwTagId:I

    .line 2
    .line 3
    return-void
.end method

.method public setLpBinaryPathName(Lcom/rapid7/client/dcerpc/objects/WChar$NullTerminated;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/rapid7/client/dcerpc/msvcctl/objects/LPQueryServiceConfigW;->lpBinaryPathName:Lcom/rapid7/client/dcerpc/objects/WChar$NullTerminated;

    .line 2
    .line 3
    return-void
.end method

.method public setLpDependencies([Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/rapid7/client/dcerpc/msvcctl/objects/LPQueryServiceConfigW;->lpDependencies:[Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method public setLpDisplayName(Lcom/rapid7/client/dcerpc/objects/WChar$NullTerminated;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/rapid7/client/dcerpc/msvcctl/objects/LPQueryServiceConfigW;->lpDisplayName:Lcom/rapid7/client/dcerpc/objects/WChar$NullTerminated;

    .line 2
    .line 3
    return-void
.end method

.method public setLpLoadOrderGroup(Lcom/rapid7/client/dcerpc/objects/WChar$NullTerminated;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/rapid7/client/dcerpc/msvcctl/objects/LPQueryServiceConfigW;->lpLoadOrderGroup:Lcom/rapid7/client/dcerpc/objects/WChar$NullTerminated;

    .line 2
    .line 3
    return-void
.end method

.method public setLpServiceStartName(Lcom/rapid7/client/dcerpc/objects/WChar$NullTerminated;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/rapid7/client/dcerpc/msvcctl/objects/LPQueryServiceConfigW;->lpServiceStartName:Lcom/rapid7/client/dcerpc/objects/WChar$NullTerminated;

    .line 2
    .line 3
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 11

    .line 1
    invoke-virtual {p0}, Lcom/rapid7/client/dcerpc/msvcctl/objects/LPQueryServiceConfigW;->getDwServiceType()I

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
    invoke-virtual {p0}, Lcom/rapid7/client/dcerpc/msvcctl/objects/LPQueryServiceConfigW;->getDwStartType()I

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
    invoke-virtual {p0}, Lcom/rapid7/client/dcerpc/msvcctl/objects/LPQueryServiceConfigW;->getDwErrorControl()I

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
    invoke-virtual {p0}, Lcom/rapid7/client/dcerpc/msvcctl/objects/LPQueryServiceConfigW;->getLpBinaryPathName()Lcom/rapid7/client/dcerpc/objects/WChar$NullTerminated;

    .line 26
    .line 27
    .line 28
    move-result-object v3

    .line 29
    invoke-virtual {p0}, Lcom/rapid7/client/dcerpc/msvcctl/objects/LPQueryServiceConfigW;->getLpLoadOrderGroup()Lcom/rapid7/client/dcerpc/objects/WChar$NullTerminated;

    .line 30
    .line 31
    .line 32
    move-result-object v4

    .line 33
    invoke-virtual {p0}, Lcom/rapid7/client/dcerpc/msvcctl/objects/LPQueryServiceConfigW;->getDwTagId()I

    .line 34
    .line 35
    .line 36
    move-result v5

    .line 37
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 38
    .line 39
    .line 40
    move-result-object v5

    .line 41
    invoke-virtual {p0}, Lcom/rapid7/client/dcerpc/msvcctl/objects/LPQueryServiceConfigW;->getLpDependencies()[Ljava/lang/String;

    .line 42
    .line 43
    .line 44
    move-result-object v6

    .line 45
    invoke-static {v6}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    .line 46
    .line 47
    .line 48
    move-result-object v6

    .line 49
    invoke-virtual {p0}, Lcom/rapid7/client/dcerpc/msvcctl/objects/LPQueryServiceConfigW;->getLpServiceStartName()Lcom/rapid7/client/dcerpc/objects/WChar$NullTerminated;

    .line 50
    .line 51
    .line 52
    move-result-object v7

    .line 53
    invoke-virtual {p0}, Lcom/rapid7/client/dcerpc/msvcctl/objects/LPQueryServiceConfigW;->getLpDisplayName()Lcom/rapid7/client/dcerpc/objects/WChar$NullTerminated;

    .line 54
    .line 55
    .line 56
    move-result-object v8

    .line 57
    const/16 v9, 0x9

    .line 58
    .line 59
    new-array v9, v9, [Ljava/lang/Object;

    .line 60
    .line 61
    const/4 v10, 0x0

    .line 62
    aput-object v0, v9, v10

    .line 63
    .line 64
    const/4 v0, 0x1

    .line 65
    aput-object v1, v9, v0

    .line 66
    .line 67
    const/4 v0, 0x2

    .line 68
    aput-object v2, v9, v0

    .line 69
    .line 70
    const/4 v0, 0x3

    .line 71
    aput-object v3, v9, v0

    .line 72
    .line 73
    const/4 v0, 0x4

    .line 74
    aput-object v4, v9, v0

    .line 75
    .line 76
    const/4 v0, 0x5

    .line 77
    aput-object v5, v9, v0

    .line 78
    .line 79
    const/4 v0, 0x6

    .line 80
    aput-object v6, v9, v0

    .line 81
    .line 82
    const/4 v0, 0x7

    .line 83
    aput-object v7, v9, v0

    .line 84
    .line 85
    const/16 v0, 0x8

    .line 86
    .line 87
    aput-object v8, v9, v0

    .line 88
    .line 89
    const-string v0, "QUERY_SERVICE_CONFIGW{dwServiceType: %d, dwStartType: %d, dwErrorControl: %d, lpBinaryPathName: %s, lpLoadOrderGroup: %s, dwTagId: %d, lpDependencies: %s, lpServiceStartName: %s, lpDisplayName: %s}"

    .line 90
    .line 91
    invoke-static {v0, v9}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 92
    .line 93
    .line 94
    move-result-object v0

    .line 95
    return-object v0
.end method

.method public unmarshalDeferrals(Lcom/rapid7/client/dcerpc/io/PacketInput;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/rapid7/client/dcerpc/msvcctl/objects/LPQueryServiceConfigW;->lpBinaryPathName:Lcom/rapid7/client/dcerpc/objects/WChar$NullTerminated;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {p1, v0}, Lcom/rapid7/client/dcerpc/io/PacketInput;->readUnmarshallable(Lcom/rapid7/client/dcerpc/io/ndr/Unmarshallable;)Lcom/rapid7/client/dcerpc/io/ndr/Unmarshallable;

    .line 6
    .line 7
    .line 8
    :cond_0
    iget-object v0, p0, Lcom/rapid7/client/dcerpc/msvcctl/objects/LPQueryServiceConfigW;->lpLoadOrderGroup:Lcom/rapid7/client/dcerpc/objects/WChar$NullTerminated;

    .line 9
    .line 10
    if-eqz v0, :cond_1

    .line 11
    .line 12
    invoke-virtual {p1, v0}, Lcom/rapid7/client/dcerpc/io/PacketInput;->readUnmarshallable(Lcom/rapid7/client/dcerpc/io/ndr/Unmarshallable;)Lcom/rapid7/client/dcerpc/io/ndr/Unmarshallable;

    .line 13
    .line 14
    .line 15
    :cond_1
    iget-object v0, p0, Lcom/rapid7/client/dcerpc/msvcctl/objects/LPQueryServiceConfigW;->lpDependencies:[Ljava/lang/String;

    .line 16
    .line 17
    if-eqz v0, :cond_2

    .line 18
    .line 19
    new-instance v0, Lcom/rapid7/client/dcerpc/objects/WChar$NullTerminated;

    .line 20
    .line 21
    invoke-direct {v0}, Lcom/rapid7/client/dcerpc/objects/WChar$NullTerminated;-><init>()V

    .line 22
    .line 23
    .line 24
    invoke-virtual {p1, v0}, Lcom/rapid7/client/dcerpc/io/PacketInput;->readUnmarshallable(Lcom/rapid7/client/dcerpc/io/ndr/Unmarshallable;)Lcom/rapid7/client/dcerpc/io/ndr/Unmarshallable;

    .line 25
    .line 26
    .line 27
    invoke-virtual {v0}, Lcom/rapid7/client/dcerpc/objects/WChar;->getValue()Ljava/lang/String;

    .line 28
    .line 29
    .line 30
    move-result-object v0

    .line 31
    const-string v1, "/"

    .line 32
    .line 33
    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    .line 34
    .line 35
    .line 36
    move-result-object v0

    .line 37
    iput-object v0, p0, Lcom/rapid7/client/dcerpc/msvcctl/objects/LPQueryServiceConfigW;->lpDependencies:[Ljava/lang/String;

    .line 38
    .line 39
    :cond_2
    iget-object v0, p0, Lcom/rapid7/client/dcerpc/msvcctl/objects/LPQueryServiceConfigW;->lpServiceStartName:Lcom/rapid7/client/dcerpc/objects/WChar$NullTerminated;

    .line 40
    .line 41
    if-eqz v0, :cond_3

    .line 42
    .line 43
    invoke-virtual {p1, v0}, Lcom/rapid7/client/dcerpc/io/PacketInput;->readUnmarshallable(Lcom/rapid7/client/dcerpc/io/ndr/Unmarshallable;)Lcom/rapid7/client/dcerpc/io/ndr/Unmarshallable;

    .line 44
    .line 45
    .line 46
    :cond_3
    iget-object v0, p0, Lcom/rapid7/client/dcerpc/msvcctl/objects/LPQueryServiceConfigW;->lpDisplayName:Lcom/rapid7/client/dcerpc/objects/WChar$NullTerminated;

    .line 47
    .line 48
    if-eqz v0, :cond_4

    .line 49
    .line 50
    invoke-virtual {p1, v0}, Lcom/rapid7/client/dcerpc/io/PacketInput;->readUnmarshallable(Lcom/rapid7/client/dcerpc/io/ndr/Unmarshallable;)Lcom/rapid7/client/dcerpc/io/ndr/Unmarshallable;

    .line 51
    .line 52
    .line 53
    :cond_4
    return-void
.end method

.method public unmarshalEntity(Lcom/rapid7/client/dcerpc/io/PacketInput;)V
    .locals 2

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
    iput v0, p0, Lcom/rapid7/client/dcerpc/msvcctl/objects/LPQueryServiceConfigW;->dwServiceType:I

    .line 11
    .line 12
    invoke-virtual {p1}, Lcom/rapid7/client/dcerpc/io/PacketInput;->readInt()I

    .line 13
    .line 14
    .line 15
    move-result v0

    .line 16
    iput v0, p0, Lcom/rapid7/client/dcerpc/msvcctl/objects/LPQueryServiceConfigW;->dwStartType:I

    .line 17
    .line 18
    invoke-virtual {p1}, Lcom/rapid7/client/dcerpc/io/PacketInput;->readInt()I

    .line 19
    .line 20
    .line 21
    move-result v0

    .line 22
    iput v0, p0, Lcom/rapid7/client/dcerpc/msvcctl/objects/LPQueryServiceConfigW;->dwErrorControl:I

    .line 23
    .line 24
    invoke-virtual {p1}, Lcom/rapid7/client/dcerpc/io/PacketInput;->readReferentID()I

    .line 25
    .line 26
    .line 27
    move-result v0

    .line 28
    const/4 v1, 0x0

    .line 29
    if-eqz v0, :cond_0

    .line 30
    .line 31
    new-instance v0, Lcom/rapid7/client/dcerpc/objects/WChar$NullTerminated;

    .line 32
    .line 33
    invoke-direct {v0}, Lcom/rapid7/client/dcerpc/objects/WChar$NullTerminated;-><init>()V

    .line 34
    .line 35
    .line 36
    iput-object v0, p0, Lcom/rapid7/client/dcerpc/msvcctl/objects/LPQueryServiceConfigW;->lpBinaryPathName:Lcom/rapid7/client/dcerpc/objects/WChar$NullTerminated;

    .line 37
    .line 38
    goto :goto_0

    .line 39
    :cond_0
    iput-object v1, p0, Lcom/rapid7/client/dcerpc/msvcctl/objects/LPQueryServiceConfigW;->lpBinaryPathName:Lcom/rapid7/client/dcerpc/objects/WChar$NullTerminated;

    .line 40
    .line 41
    :goto_0
    invoke-virtual {p1}, Lcom/rapid7/client/dcerpc/io/PacketInput;->readReferentID()I

    .line 42
    .line 43
    .line 44
    move-result v0

    .line 45
    if-eqz v0, :cond_1

    .line 46
    .line 47
    new-instance v0, Lcom/rapid7/client/dcerpc/objects/WChar$NullTerminated;

    .line 48
    .line 49
    invoke-direct {v0}, Lcom/rapid7/client/dcerpc/objects/WChar$NullTerminated;-><init>()V

    .line 50
    .line 51
    .line 52
    iput-object v0, p0, Lcom/rapid7/client/dcerpc/msvcctl/objects/LPQueryServiceConfigW;->lpLoadOrderGroup:Lcom/rapid7/client/dcerpc/objects/WChar$NullTerminated;

    .line 53
    .line 54
    goto :goto_1

    .line 55
    :cond_1
    iput-object v1, p0, Lcom/rapid7/client/dcerpc/msvcctl/objects/LPQueryServiceConfigW;->lpLoadOrderGroup:Lcom/rapid7/client/dcerpc/objects/WChar$NullTerminated;

    .line 56
    .line 57
    :goto_1
    invoke-virtual {p1}, Lcom/rapid7/client/dcerpc/io/PacketInput;->readInt()I

    .line 58
    .line 59
    .line 60
    move-result v0

    .line 61
    iput v0, p0, Lcom/rapid7/client/dcerpc/msvcctl/objects/LPQueryServiceConfigW;->dwTagId:I

    .line 62
    .line 63
    invoke-virtual {p1}, Lcom/rapid7/client/dcerpc/io/PacketInput;->readReferentID()I

    .line 64
    .line 65
    .line 66
    move-result v0

    .line 67
    if-eqz v0, :cond_2

    .line 68
    .line 69
    sget-object v0, Lcom/rapid7/client/dcerpc/msvcctl/objects/LPQueryServiceConfigW;->EMPTY_DEPENDENCIES:[Ljava/lang/String;

    .line 70
    .line 71
    iput-object v0, p0, Lcom/rapid7/client/dcerpc/msvcctl/objects/LPQueryServiceConfigW;->lpDependencies:[Ljava/lang/String;

    .line 72
    .line 73
    goto :goto_2

    .line 74
    :cond_2
    iput-object v1, p0, Lcom/rapid7/client/dcerpc/msvcctl/objects/LPQueryServiceConfigW;->lpDependencies:[Ljava/lang/String;

    .line 75
    .line 76
    :goto_2
    invoke-virtual {p1}, Lcom/rapid7/client/dcerpc/io/PacketInput;->readReferentID()I

    .line 77
    .line 78
    .line 79
    move-result v0

    .line 80
    if-eqz v0, :cond_3

    .line 81
    .line 82
    new-instance v0, Lcom/rapid7/client/dcerpc/objects/WChar$NullTerminated;

    .line 83
    .line 84
    invoke-direct {v0}, Lcom/rapid7/client/dcerpc/objects/WChar$NullTerminated;-><init>()V

    .line 85
    .line 86
    .line 87
    iput-object v0, p0, Lcom/rapid7/client/dcerpc/msvcctl/objects/LPQueryServiceConfigW;->lpServiceStartName:Lcom/rapid7/client/dcerpc/objects/WChar$NullTerminated;

    .line 88
    .line 89
    goto :goto_3

    .line 90
    :cond_3
    iput-object v1, p0, Lcom/rapid7/client/dcerpc/msvcctl/objects/LPQueryServiceConfigW;->lpServiceStartName:Lcom/rapid7/client/dcerpc/objects/WChar$NullTerminated;

    .line 91
    .line 92
    :goto_3
    invoke-virtual {p1}, Lcom/rapid7/client/dcerpc/io/PacketInput;->readReferentID()I

    .line 93
    .line 94
    .line 95
    move-result p1

    .line 96
    if-eqz p1, :cond_4

    .line 97
    .line 98
    new-instance p1, Lcom/rapid7/client/dcerpc/objects/WChar$NullTerminated;

    .line 99
    .line 100
    invoke-direct {p1}, Lcom/rapid7/client/dcerpc/objects/WChar$NullTerminated;-><init>()V

    .line 101
    .line 102
    .line 103
    iput-object p1, p0, Lcom/rapid7/client/dcerpc/msvcctl/objects/LPQueryServiceConfigW;->lpDisplayName:Lcom/rapid7/client/dcerpc/objects/WChar$NullTerminated;

    .line 104
    .line 105
    goto :goto_4

    .line 106
    :cond_4
    iput-object v1, p0, Lcom/rapid7/client/dcerpc/msvcctl/objects/LPQueryServiceConfigW;->lpDisplayName:Lcom/rapid7/client/dcerpc/objects/WChar$NullTerminated;

    .line 107
    .line 108
    :goto_4
    return-void
.end method

.method public unmarshalPreamble(Lcom/rapid7/client/dcerpc/io/PacketInput;)V
    .locals 0

    return-void
.end method
