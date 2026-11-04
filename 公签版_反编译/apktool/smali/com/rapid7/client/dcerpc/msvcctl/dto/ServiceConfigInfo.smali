.class public Lcom/rapid7/client/dcerpc/msvcctl/dto/ServiceConfigInfo;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/rapid7/client/dcerpc/msvcctl/dto/IServiceConfigInfo;


# instance fields
.field private final binaryPathName:Ljava/lang/String;

.field private final dependencies:[Ljava/lang/String;

.field private final displayName:Ljava/lang/String;

.field private final errorControl:Lcom/rapid7/client/dcerpc/msvcctl/dto/enums/ServiceError;

.field private final loadOrderGroup:Ljava/lang/String;

.field private final password:Ljava/lang/String;

.field private final serviceStartName:Ljava/lang/String;

.field private final serviceType:Lcom/rapid7/client/dcerpc/msvcctl/dto/enums/ServiceType;

.field private final startType:Lcom/rapid7/client/dcerpc/msvcctl/dto/enums/ServiceStartType;

.field private final tagId:I


# direct methods
.method public constructor <init>(Lcom/rapid7/client/dcerpc/msvcctl/dto/enums/ServiceType;Lcom/rapid7/client/dcerpc/msvcctl/dto/enums/ServiceStartType;Lcom/rapid7/client/dcerpc/msvcctl/dto/enums/ServiceError;)V
    .locals 11

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    .line 1
    invoke-direct/range {v0 .. v10}, Lcom/rapid7/client/dcerpc/msvcctl/dto/ServiceConfigInfo;-><init>(Lcom/rapid7/client/dcerpc/msvcctl/dto/enums/ServiceType;Lcom/rapid7/client/dcerpc/msvcctl/dto/enums/ServiceStartType;Lcom/rapid7/client/dcerpc/msvcctl/dto/enums/ServiceError;Ljava/lang/String;Ljava/lang/String;I[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Lcom/rapid7/client/dcerpc/msvcctl/dto/enums/ServiceType;Lcom/rapid7/client/dcerpc/msvcctl/dto/enums/ServiceStartType;Lcom/rapid7/client/dcerpc/msvcctl/dto/enums/ServiceError;Ljava/lang/String;Ljava/lang/String;I[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    iput-object p1, p0, Lcom/rapid7/client/dcerpc/msvcctl/dto/ServiceConfigInfo;->serviceType:Lcom/rapid7/client/dcerpc/msvcctl/dto/enums/ServiceType;

    .line 4
    iput-object p2, p0, Lcom/rapid7/client/dcerpc/msvcctl/dto/ServiceConfigInfo;->startType:Lcom/rapid7/client/dcerpc/msvcctl/dto/enums/ServiceStartType;

    .line 5
    iput-object p3, p0, Lcom/rapid7/client/dcerpc/msvcctl/dto/ServiceConfigInfo;->errorControl:Lcom/rapid7/client/dcerpc/msvcctl/dto/enums/ServiceError;

    .line 6
    iput-object p4, p0, Lcom/rapid7/client/dcerpc/msvcctl/dto/ServiceConfigInfo;->binaryPathName:Ljava/lang/String;

    .line 7
    iput-object p5, p0, Lcom/rapid7/client/dcerpc/msvcctl/dto/ServiceConfigInfo;->loadOrderGroup:Ljava/lang/String;

    .line 8
    iput p6, p0, Lcom/rapid7/client/dcerpc/msvcctl/dto/ServiceConfigInfo;->tagId:I

    .line 9
    iput-object p7, p0, Lcom/rapid7/client/dcerpc/msvcctl/dto/ServiceConfigInfo;->dependencies:[Ljava/lang/String;

    .line 10
    iput-object p8, p0, Lcom/rapid7/client/dcerpc/msvcctl/dto/ServiceConfigInfo;->serviceStartName:Ljava/lang/String;

    .line 11
    iput-object p9, p0, Lcom/rapid7/client/dcerpc/msvcctl/dto/ServiceConfigInfo;->displayName:Ljava/lang/String;

    .line 12
    iput-object p10, p0, Lcom/rapid7/client/dcerpc/msvcctl/dto/ServiceConfigInfo;->password:Ljava/lang/String;

    return-void
.end method

.method private formatString(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 1
    if-nez p1, :cond_0

    .line 2
    .line 3
    const-string p1, "null"

    .line 4
    .line 5
    return-object p1

    .line 6
    :cond_0
    const-string v0, "\""

    .line 7
    .line 8
    invoke-static {v0, p1, v0}, Lg/b;->A(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 9
    .line 10
    .line 11
    move-result-object p1

    .line 12
    return-object p1
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
    instance-of v1, p1, Lcom/rapid7/client/dcerpc/msvcctl/dto/IServiceConfigInfo;

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
    check-cast p1, Lcom/rapid7/client/dcerpc/msvcctl/dto/IServiceConfigInfo;

    .line 12
    .line 13
    invoke-virtual {p0}, Lcom/rapid7/client/dcerpc/msvcctl/dto/ServiceConfigInfo;->getServiceType()Lcom/rapid7/client/dcerpc/msvcctl/dto/enums/ServiceType;

    .line 14
    .line 15
    .line 16
    move-result-object v1

    .line 17
    invoke-interface {p1}, Lcom/rapid7/client/dcerpc/msvcctl/dto/IServiceConfigInfo;->getServiceType()Lcom/rapid7/client/dcerpc/msvcctl/dto/enums/ServiceType;

    .line 18
    .line 19
    .line 20
    move-result-object v3

    .line 21
    invoke-static {v1, v3}, Lj$/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 22
    .line 23
    .line 24
    move-result v1

    .line 25
    if-eqz v1, :cond_2

    .line 26
    .line 27
    invoke-virtual {p0}, Lcom/rapid7/client/dcerpc/msvcctl/dto/ServiceConfigInfo;->getStartType()Lcom/rapid7/client/dcerpc/msvcctl/dto/enums/ServiceStartType;

    .line 28
    .line 29
    .line 30
    move-result-object v1

    .line 31
    invoke-interface {p1}, Lcom/rapid7/client/dcerpc/msvcctl/dto/IServiceConfigInfo;->getStartType()Lcom/rapid7/client/dcerpc/msvcctl/dto/enums/ServiceStartType;

    .line 32
    .line 33
    .line 34
    move-result-object v3

    .line 35
    invoke-static {v1, v3}, Lj$/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 36
    .line 37
    .line 38
    move-result v1

    .line 39
    if-eqz v1, :cond_2

    .line 40
    .line 41
    invoke-virtual {p0}, Lcom/rapid7/client/dcerpc/msvcctl/dto/ServiceConfigInfo;->getErrorControl()Lcom/rapid7/client/dcerpc/msvcctl/dto/enums/ServiceError;

    .line 42
    .line 43
    .line 44
    move-result-object v1

    .line 45
    invoke-interface {p1}, Lcom/rapid7/client/dcerpc/msvcctl/dto/IServiceConfigInfo;->getErrorControl()Lcom/rapid7/client/dcerpc/msvcctl/dto/enums/ServiceError;

    .line 46
    .line 47
    .line 48
    move-result-object v3

    .line 49
    invoke-static {v1, v3}, Lj$/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 50
    .line 51
    .line 52
    move-result v1

    .line 53
    if-eqz v1, :cond_2

    .line 54
    .line 55
    invoke-virtual {p0}, Lcom/rapid7/client/dcerpc/msvcctl/dto/ServiceConfigInfo;->getBinaryPathName()Ljava/lang/String;

    .line 56
    .line 57
    .line 58
    move-result-object v1

    .line 59
    invoke-interface {p1}, Lcom/rapid7/client/dcerpc/msvcctl/dto/IServiceConfigInfo;->getBinaryPathName()Ljava/lang/String;

    .line 60
    .line 61
    .line 62
    move-result-object v3

    .line 63
    invoke-static {v1, v3}, Lj$/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 64
    .line 65
    .line 66
    move-result v1

    .line 67
    if-eqz v1, :cond_2

    .line 68
    .line 69
    invoke-virtual {p0}, Lcom/rapid7/client/dcerpc/msvcctl/dto/ServiceConfigInfo;->getLoadOrderGroup()Ljava/lang/String;

    .line 70
    .line 71
    .line 72
    move-result-object v1

    .line 73
    invoke-interface {p1}, Lcom/rapid7/client/dcerpc/msvcctl/dto/IServiceConfigInfo;->getLoadOrderGroup()Ljava/lang/String;

    .line 74
    .line 75
    .line 76
    move-result-object v3

    .line 77
    invoke-static {v1, v3}, Lj$/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 78
    .line 79
    .line 80
    move-result v1

    .line 81
    if-eqz v1, :cond_2

    .line 82
    .line 83
    invoke-virtual {p0}, Lcom/rapid7/client/dcerpc/msvcctl/dto/ServiceConfigInfo;->getTagId()I

    .line 84
    .line 85
    .line 86
    move-result v1

    .line 87
    invoke-interface {p1}, Lcom/rapid7/client/dcerpc/msvcctl/dto/IServiceConfigInfo;->getTagId()I

    .line 88
    .line 89
    .line 90
    move-result v3

    .line 91
    if-ne v1, v3, :cond_2

    .line 92
    .line 93
    invoke-virtual {p0}, Lcom/rapid7/client/dcerpc/msvcctl/dto/ServiceConfigInfo;->getDependencies()[Ljava/lang/String;

    .line 94
    .line 95
    .line 96
    move-result-object v1

    .line 97
    invoke-interface {p1}, Lcom/rapid7/client/dcerpc/msvcctl/dto/IServiceConfigInfo;->getDependencies()[Ljava/lang/String;

    .line 98
    .line 99
    .line 100
    move-result-object v3

    .line 101
    invoke-static {v1, v3}, Ljava/util/Arrays;->equals([Ljava/lang/Object;[Ljava/lang/Object;)Z

    .line 102
    .line 103
    .line 104
    move-result v1

    .line 105
    if-eqz v1, :cond_2

    .line 106
    .line 107
    invoke-virtual {p0}, Lcom/rapid7/client/dcerpc/msvcctl/dto/ServiceConfigInfo;->getServiceStartName()Ljava/lang/String;

    .line 108
    .line 109
    .line 110
    move-result-object v1

    .line 111
    invoke-interface {p1}, Lcom/rapid7/client/dcerpc/msvcctl/dto/IServiceConfigInfo;->getServiceStartName()Ljava/lang/String;

    .line 112
    .line 113
    .line 114
    move-result-object v3

    .line 115
    invoke-static {v1, v3}, Lj$/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 116
    .line 117
    .line 118
    move-result v1

    .line 119
    if-eqz v1, :cond_2

    .line 120
    .line 121
    invoke-virtual {p0}, Lcom/rapid7/client/dcerpc/msvcctl/dto/ServiceConfigInfo;->getPassword()Ljava/lang/String;

    .line 122
    .line 123
    .line 124
    move-result-object v1

    .line 125
    invoke-interface {p1}, Lcom/rapid7/client/dcerpc/msvcctl/dto/IServiceConfigInfo;->getPassword()Ljava/lang/String;

    .line 126
    .line 127
    .line 128
    move-result-object v3

    .line 129
    invoke-static {v1, v3}, Lj$/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 130
    .line 131
    .line 132
    move-result v1

    .line 133
    if-eqz v1, :cond_2

    .line 134
    .line 135
    invoke-virtual {p0}, Lcom/rapid7/client/dcerpc/msvcctl/dto/ServiceConfigInfo;->getDisplayName()Ljava/lang/String;

    .line 136
    .line 137
    .line 138
    move-result-object v1

    .line 139
    invoke-interface {p1}, Lcom/rapid7/client/dcerpc/msvcctl/dto/IServiceConfigInfo;->getDisplayName()Ljava/lang/String;

    .line 140
    .line 141
    .line 142
    move-result-object p1

    .line 143
    invoke-static {v1, p1}, Lj$/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 144
    .line 145
    .line 146
    move-result p1

    .line 147
    if-eqz p1, :cond_2

    .line 148
    .line 149
    goto :goto_0

    .line 150
    :cond_2
    const/4 v0, 0x0

    .line 151
    :goto_0
    return v0
.end method

.method public getBinaryPathName()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/rapid7/client/dcerpc/msvcctl/dto/ServiceConfigInfo;->binaryPathName:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public getDependencies()[Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/rapid7/client/dcerpc/msvcctl/dto/ServiceConfigInfo;->dependencies:[Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public getDisplayName()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/rapid7/client/dcerpc/msvcctl/dto/ServiceConfigInfo;->displayName:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public getErrorControl()Lcom/rapid7/client/dcerpc/msvcctl/dto/enums/ServiceError;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/rapid7/client/dcerpc/msvcctl/dto/ServiceConfigInfo;->errorControl:Lcom/rapid7/client/dcerpc/msvcctl/dto/enums/ServiceError;

    .line 2
    .line 3
    return-object v0
.end method

.method public getLoadOrderGroup()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/rapid7/client/dcerpc/msvcctl/dto/ServiceConfigInfo;->loadOrderGroup:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public getPassword()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/rapid7/client/dcerpc/msvcctl/dto/ServiceConfigInfo;->password:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public getServiceStartName()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/rapid7/client/dcerpc/msvcctl/dto/ServiceConfigInfo;->serviceStartName:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public getServiceType()Lcom/rapid7/client/dcerpc/msvcctl/dto/enums/ServiceType;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/rapid7/client/dcerpc/msvcctl/dto/ServiceConfigInfo;->serviceType:Lcom/rapid7/client/dcerpc/msvcctl/dto/enums/ServiceType;

    .line 2
    .line 3
    return-object v0
.end method

.method public getStartType()Lcom/rapid7/client/dcerpc/msvcctl/dto/enums/ServiceStartType;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/rapid7/client/dcerpc/msvcctl/dto/ServiceConfigInfo;->startType:Lcom/rapid7/client/dcerpc/msvcctl/dto/enums/ServiceStartType;

    .line 2
    .line 3
    return-object v0
.end method

.method public getTagId()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/rapid7/client/dcerpc/msvcctl/dto/ServiceConfigInfo;->tagId:I

    .line 2
    .line 3
    return v0
.end method

.method public hashCode()I
    .locals 11

    .line 1
    invoke-virtual {p0}, Lcom/rapid7/client/dcerpc/msvcctl/dto/ServiceConfigInfo;->getServiceType()Lcom/rapid7/client/dcerpc/msvcctl/dto/enums/ServiceType;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {p0}, Lcom/rapid7/client/dcerpc/msvcctl/dto/ServiceConfigInfo;->getStartType()Lcom/rapid7/client/dcerpc/msvcctl/dto/enums/ServiceStartType;

    .line 6
    .line 7
    .line 8
    move-result-object v1

    .line 9
    invoke-virtual {p0}, Lcom/rapid7/client/dcerpc/msvcctl/dto/ServiceConfigInfo;->getErrorControl()Lcom/rapid7/client/dcerpc/msvcctl/dto/enums/ServiceError;

    .line 10
    .line 11
    .line 12
    move-result-object v2

    .line 13
    invoke-virtual {p0}, Lcom/rapid7/client/dcerpc/msvcctl/dto/ServiceConfigInfo;->getBinaryPathName()Ljava/lang/String;

    .line 14
    .line 15
    .line 16
    move-result-object v3

    .line 17
    invoke-virtual {p0}, Lcom/rapid7/client/dcerpc/msvcctl/dto/ServiceConfigInfo;->getLoadOrderGroup()Ljava/lang/String;

    .line 18
    .line 19
    .line 20
    move-result-object v4

    .line 21
    invoke-virtual {p0}, Lcom/rapid7/client/dcerpc/msvcctl/dto/ServiceConfigInfo;->getTagId()I

    .line 22
    .line 23
    .line 24
    move-result v5

    .line 25
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 26
    .line 27
    .line 28
    move-result-object v5

    .line 29
    invoke-virtual {p0}, Lcom/rapid7/client/dcerpc/msvcctl/dto/ServiceConfigInfo;->getServiceStartName()Ljava/lang/String;

    .line 30
    .line 31
    .line 32
    move-result-object v6

    .line 33
    invoke-virtual {p0}, Lcom/rapid7/client/dcerpc/msvcctl/dto/ServiceConfigInfo;->getPassword()Ljava/lang/String;

    .line 34
    .line 35
    .line 36
    move-result-object v7

    .line 37
    invoke-virtual {p0}, Lcom/rapid7/client/dcerpc/msvcctl/dto/ServiceConfigInfo;->getDisplayName()Ljava/lang/String;

    .line 38
    .line 39
    .line 40
    move-result-object v8

    .line 41
    const/16 v9, 0x9

    .line 42
    .line 43
    new-array v9, v9, [Ljava/lang/Object;

    .line 44
    .line 45
    const/4 v10, 0x0

    .line 46
    aput-object v0, v9, v10

    .line 47
    .line 48
    const/4 v0, 0x1

    .line 49
    aput-object v1, v9, v0

    .line 50
    .line 51
    const/4 v0, 0x2

    .line 52
    aput-object v2, v9, v0

    .line 53
    .line 54
    const/4 v0, 0x3

    .line 55
    aput-object v3, v9, v0

    .line 56
    .line 57
    const/4 v0, 0x4

    .line 58
    aput-object v4, v9, v0

    .line 59
    .line 60
    const/4 v0, 0x5

    .line 61
    aput-object v5, v9, v0

    .line 62
    .line 63
    const/4 v0, 0x6

    .line 64
    aput-object v6, v9, v0

    .line 65
    .line 66
    const/4 v0, 0x7

    .line 67
    aput-object v7, v9, v0

    .line 68
    .line 69
    const/16 v0, 0x8

    .line 70
    .line 71
    aput-object v8, v9, v0

    .line 72
    .line 73
    invoke-static {v9}, Lj$/util/Objects;->hash([Ljava/lang/Object;)I

    .line 74
    .line 75
    .line 76
    move-result v0

    .line 77
    mul-int/lit8 v0, v0, 0x1f

    .line 78
    .line 79
    invoke-virtual {p0}, Lcom/rapid7/client/dcerpc/msvcctl/dto/ServiceConfigInfo;->getDependencies()[Ljava/lang/String;

    .line 80
    .line 81
    .line 82
    move-result-object v1

    .line 83
    invoke-static {v1}, Ljava/util/Arrays;->hashCode([Ljava/lang/Object;)I

    .line 84
    .line 85
    .line 86
    move-result v1

    .line 87
    add-int/2addr v1, v0

    .line 88
    return v1
.end method

.method public toString()Ljava/lang/String;
    .locals 10

    .line 1
    invoke-virtual {p0}, Lcom/rapid7/client/dcerpc/msvcctl/dto/ServiceConfigInfo;->getServiceType()Lcom/rapid7/client/dcerpc/msvcctl/dto/enums/ServiceType;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {p0}, Lcom/rapid7/client/dcerpc/msvcctl/dto/ServiceConfigInfo;->getStartType()Lcom/rapid7/client/dcerpc/msvcctl/dto/enums/ServiceStartType;

    .line 6
    .line 7
    .line 8
    move-result-object v1

    .line 9
    invoke-virtual {p0}, Lcom/rapid7/client/dcerpc/msvcctl/dto/ServiceConfigInfo;->getErrorControl()Lcom/rapid7/client/dcerpc/msvcctl/dto/enums/ServiceError;

    .line 10
    .line 11
    .line 12
    move-result-object v2

    .line 13
    invoke-virtual {p0}, Lcom/rapid7/client/dcerpc/msvcctl/dto/ServiceConfigInfo;->getBinaryPathName()Ljava/lang/String;

    .line 14
    .line 15
    .line 16
    move-result-object v3

    .line 17
    invoke-direct {p0, v3}, Lcom/rapid7/client/dcerpc/msvcctl/dto/ServiceConfigInfo;->formatString(Ljava/lang/String;)Ljava/lang/String;

    .line 18
    .line 19
    .line 20
    move-result-object v3

    .line 21
    invoke-virtual {p0}, Lcom/rapid7/client/dcerpc/msvcctl/dto/ServiceConfigInfo;->getLoadOrderGroup()Ljava/lang/String;

    .line 22
    .line 23
    .line 24
    move-result-object v4

    .line 25
    invoke-direct {p0, v4}, Lcom/rapid7/client/dcerpc/msvcctl/dto/ServiceConfigInfo;->formatString(Ljava/lang/String;)Ljava/lang/String;

    .line 26
    .line 27
    .line 28
    move-result-object v4

    .line 29
    invoke-virtual {p0}, Lcom/rapid7/client/dcerpc/msvcctl/dto/ServiceConfigInfo;->getDependencies()[Ljava/lang/String;

    .line 30
    .line 31
    .line 32
    move-result-object v5

    .line 33
    invoke-static {v5}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    .line 34
    .line 35
    .line 36
    move-result-object v5

    .line 37
    invoke-virtual {p0}, Lcom/rapid7/client/dcerpc/msvcctl/dto/ServiceConfigInfo;->getServiceStartName()Ljava/lang/String;

    .line 38
    .line 39
    .line 40
    move-result-object v6

    .line 41
    invoke-direct {p0, v6}, Lcom/rapid7/client/dcerpc/msvcctl/dto/ServiceConfigInfo;->formatString(Ljava/lang/String;)Ljava/lang/String;

    .line 42
    .line 43
    .line 44
    move-result-object v6

    .line 45
    invoke-virtual {p0}, Lcom/rapid7/client/dcerpc/msvcctl/dto/ServiceConfigInfo;->getDisplayName()Ljava/lang/String;

    .line 46
    .line 47
    .line 48
    move-result-object v7

    .line 49
    invoke-direct {p0, v7}, Lcom/rapid7/client/dcerpc/msvcctl/dto/ServiceConfigInfo;->formatString(Ljava/lang/String;)Ljava/lang/String;

    .line 50
    .line 51
    .line 52
    move-result-object v7

    .line 53
    new-instance v8, Ljava/lang/StringBuilder;

    .line 54
    .line 55
    const-string v9, "ServiceConfigInfo{serviceType: "

    .line 56
    .line 57
    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 58
    .line 59
    .line 60
    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 61
    .line 62
    .line 63
    const-string v0, ", startType: "

    .line 64
    .line 65
    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 66
    .line 67
    .line 68
    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 69
    .line 70
    .line 71
    const-string v0, ", errorControl: "

    .line 72
    .line 73
    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 74
    .line 75
    .line 76
    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 77
    .line 78
    .line 79
    const-string v0, ", binaryPathName: "

    .line 80
    .line 81
    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 82
    .line 83
    .line 84
    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 85
    .line 86
    .line 87
    const-string v0, " loadOrderGroup: "

    .line 88
    .line 89
    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 90
    .line 91
    .line 92
    const-string v0, ", dependencies: "

    .line 93
    .line 94
    const-string v1, ", serviceStartName: "

    .line 95
    .line 96
    invoke-static {v8, v4, v0, v5, v1}, Landroid/support/v4/media/session/a;->C(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 97
    .line 98
    .line 99
    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 100
    .line 101
    .line 102
    const-string v0, ", displayName: "

    .line 103
    .line 104
    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 105
    .line 106
    .line 107
    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 108
    .line 109
    .line 110
    const-string v0, "}"

    .line 111
    .line 112
    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 113
    .line 114
    .line 115
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 116
    .line 117
    .line 118
    move-result-object v0

    .line 119
    return-object v0
.end method
