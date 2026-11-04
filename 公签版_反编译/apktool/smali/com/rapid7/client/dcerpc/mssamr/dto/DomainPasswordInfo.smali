.class public Lcom/rapid7/client/dcerpc/mssamr/dto/DomainPasswordInfo;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final DOMAIN_PASSWORD_COMPLEX:I = 0x1

.field private static final DOMAIN_PASSWORD_NO_ANON_CHANGE:I = 0x2

.field private static final DOMAIN_PASSWORD_STORE_CLEARTEXT:I = 0x10


# instance fields
.field private final maximumPasswordAge:J

.field private final minimumPasswordAge:J

.field private final minimumPasswordLength:I

.field private final passwordHistoryLength:I

.field private final passwordProperties:I


# direct methods
.method public constructor <init>(IIIJJ)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput p1, p0, Lcom/rapid7/client/dcerpc/mssamr/dto/DomainPasswordInfo;->minimumPasswordLength:I

    .line 5
    .line 6
    iput p2, p0, Lcom/rapid7/client/dcerpc/mssamr/dto/DomainPasswordInfo;->passwordHistoryLength:I

    .line 7
    .line 8
    iput p3, p0, Lcom/rapid7/client/dcerpc/mssamr/dto/DomainPasswordInfo;->passwordProperties:I

    .line 9
    .line 10
    iput-wide p4, p0, Lcom/rapid7/client/dcerpc/mssamr/dto/DomainPasswordInfo;->maximumPasswordAge:J

    .line 11
    .line 12
    iput-wide p6, p0, Lcom/rapid7/client/dcerpc/mssamr/dto/DomainPasswordInfo;->minimumPasswordAge:J

    .line 13
    .line 14
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 5

    .line 1
    const/4 v0, 0x1

    .line 2
    if-ne p0, p1, :cond_0

    .line 3
    .line 4
    return v0

    .line 5
    :cond_0
    instance-of v1, p1, Lcom/rapid7/client/dcerpc/mssamr/dto/DomainPasswordInfo;

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
    check-cast p1, Lcom/rapid7/client/dcerpc/mssamr/dto/DomainPasswordInfo;

    .line 12
    .line 13
    invoke-virtual {p0}, Lcom/rapid7/client/dcerpc/mssamr/dto/DomainPasswordInfo;->getMinimumPasswordLength()I

    .line 14
    .line 15
    .line 16
    move-result v1

    .line 17
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 18
    .line 19
    .line 20
    move-result-object v1

    .line 21
    invoke-virtual {p1}, Lcom/rapid7/client/dcerpc/mssamr/dto/DomainPasswordInfo;->getMinimumPasswordLength()I

    .line 22
    .line 23
    .line 24
    move-result v3

    .line 25
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 26
    .line 27
    .line 28
    move-result-object v3

    .line 29
    invoke-virtual {v1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 30
    .line 31
    .line 32
    move-result v1

    .line 33
    if-eqz v1, :cond_2

    .line 34
    .line 35
    invoke-virtual {p0}, Lcom/rapid7/client/dcerpc/mssamr/dto/DomainPasswordInfo;->getPasswordHistoryLength()I

    .line 36
    .line 37
    .line 38
    move-result v1

    .line 39
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 40
    .line 41
    .line 42
    move-result-object v1

    .line 43
    invoke-virtual {p1}, Lcom/rapid7/client/dcerpc/mssamr/dto/DomainPasswordInfo;->getPasswordHistoryLength()I

    .line 44
    .line 45
    .line 46
    move-result v3

    .line 47
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 48
    .line 49
    .line 50
    move-result-object v3

    .line 51
    invoke-virtual {v1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 52
    .line 53
    .line 54
    move-result v1

    .line 55
    if-eqz v1, :cond_2

    .line 56
    .line 57
    invoke-virtual {p0}, Lcom/rapid7/client/dcerpc/mssamr/dto/DomainPasswordInfo;->getPasswordProperties()I

    .line 58
    .line 59
    .line 60
    move-result v1

    .line 61
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 62
    .line 63
    .line 64
    move-result-object v1

    .line 65
    invoke-virtual {p1}, Lcom/rapid7/client/dcerpc/mssamr/dto/DomainPasswordInfo;->getPasswordProperties()I

    .line 66
    .line 67
    .line 68
    move-result v3

    .line 69
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 70
    .line 71
    .line 72
    move-result-object v3

    .line 73
    invoke-virtual {v1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 74
    .line 75
    .line 76
    move-result v1

    .line 77
    if-eqz v1, :cond_2

    .line 78
    .line 79
    invoke-virtual {p0}, Lcom/rapid7/client/dcerpc/mssamr/dto/DomainPasswordInfo;->getMaximumPasswordAge()J

    .line 80
    .line 81
    .line 82
    move-result-wide v3

    .line 83
    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 84
    .line 85
    .line 86
    move-result-object v1

    .line 87
    invoke-virtual {p1}, Lcom/rapid7/client/dcerpc/mssamr/dto/DomainPasswordInfo;->getMaximumPasswordAge()J

    .line 88
    .line 89
    .line 90
    move-result-wide v3

    .line 91
    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 92
    .line 93
    .line 94
    move-result-object v3

    .line 95
    invoke-virtual {v1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 96
    .line 97
    .line 98
    move-result v1

    .line 99
    if-eqz v1, :cond_2

    .line 100
    .line 101
    invoke-virtual {p0}, Lcom/rapid7/client/dcerpc/mssamr/dto/DomainPasswordInfo;->getMinimumPasswordAge()J

    .line 102
    .line 103
    .line 104
    move-result-wide v3

    .line 105
    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 106
    .line 107
    .line 108
    move-result-object v1

    .line 109
    invoke-virtual {p1}, Lcom/rapid7/client/dcerpc/mssamr/dto/DomainPasswordInfo;->getMinimumPasswordAge()J

    .line 110
    .line 111
    .line 112
    move-result-wide v3

    .line 113
    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 114
    .line 115
    .line 116
    move-result-object p1

    .line 117
    invoke-virtual {v1, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

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

.method public getMaximumPasswordAge()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/rapid7/client/dcerpc/mssamr/dto/DomainPasswordInfo;->maximumPasswordAge:J

    .line 2
    .line 3
    return-wide v0
.end method

.method public getMinimumPasswordAge()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/rapid7/client/dcerpc/mssamr/dto/DomainPasswordInfo;->minimumPasswordAge:J

    .line 2
    .line 3
    return-wide v0
.end method

.method public getMinimumPasswordLength()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/rapid7/client/dcerpc/mssamr/dto/DomainPasswordInfo;->minimumPasswordLength:I

    .line 2
    .line 3
    return v0
.end method

.method public getPasswordHistoryLength()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/rapid7/client/dcerpc/mssamr/dto/DomainPasswordInfo;->passwordHistoryLength:I

    .line 2
    .line 3
    return v0
.end method

.method public getPasswordProperties()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/rapid7/client/dcerpc/mssamr/dto/DomainPasswordInfo;->passwordProperties:I

    .line 2
    .line 3
    return v0
.end method

.method public hashCode()I
    .locals 7

    .line 1
    invoke-virtual {p0}, Lcom/rapid7/client/dcerpc/mssamr/dto/DomainPasswordInfo;->getMinimumPasswordLength()I

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
    invoke-virtual {p0}, Lcom/rapid7/client/dcerpc/mssamr/dto/DomainPasswordInfo;->getPasswordHistoryLength()I

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
    invoke-virtual {p0}, Lcom/rapid7/client/dcerpc/mssamr/dto/DomainPasswordInfo;->getPasswordProperties()I

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
    invoke-virtual {p0}, Lcom/rapid7/client/dcerpc/mssamr/dto/DomainPasswordInfo;->getMaximumPasswordAge()J

    .line 26
    .line 27
    .line 28
    move-result-wide v3

    .line 29
    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 30
    .line 31
    .line 32
    move-result-object v3

    .line 33
    invoke-virtual {p0}, Lcom/rapid7/client/dcerpc/mssamr/dto/DomainPasswordInfo;->getMinimumPasswordAge()J

    .line 34
    .line 35
    .line 36
    move-result-wide v4

    .line 37
    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 38
    .line 39
    .line 40
    move-result-object v4

    .line 41
    const/4 v5, 0x5

    .line 42
    new-array v5, v5, [Ljava/lang/Object;

    .line 43
    .line 44
    const/4 v6, 0x0

    .line 45
    aput-object v0, v5, v6

    .line 46
    .line 47
    const/4 v0, 0x1

    .line 48
    aput-object v1, v5, v0

    .line 49
    .line 50
    const/4 v0, 0x2

    .line 51
    aput-object v2, v5, v0

    .line 52
    .line 53
    const/4 v0, 0x3

    .line 54
    aput-object v3, v5, v0

    .line 55
    .line 56
    const/4 v0, 0x4

    .line 57
    aput-object v4, v5, v0

    .line 58
    .line 59
    invoke-static {v5}, Lj$/util/Objects;->hash([Ljava/lang/Object;)I

    .line 60
    .line 61
    .line 62
    move-result v0

    .line 63
    return v0
.end method

.method public isDomainPasswordComplex()Z
    .locals 2

    .line 1
    iget v0, p0, Lcom/rapid7/client/dcerpc/mssamr/dto/DomainPasswordInfo;->passwordProperties:I

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    and-int/2addr v0, v1

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    goto :goto_0

    .line 8
    :cond_0
    const/4 v1, 0x0

    .line 9
    :goto_0
    return v1
.end method

.method public isDomainPasswordNoAnonChange()Z
    .locals 1

    .line 1
    iget v0, p0, Lcom/rapid7/client/dcerpc/mssamr/dto/DomainPasswordInfo;->passwordProperties:I

    .line 2
    .line 3
    and-int/lit8 v0, v0, 0x2

    .line 4
    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    const/4 v0, 0x1

    .line 8
    goto :goto_0

    .line 9
    :cond_0
    const/4 v0, 0x0

    .line 10
    :goto_0
    return v0
.end method

.method public isDomainPasswordStoredClearText()Z
    .locals 1

    .line 1
    iget v0, p0, Lcom/rapid7/client/dcerpc/mssamr/dto/DomainPasswordInfo;->passwordProperties:I

    .line 2
    .line 3
    and-int/lit8 v0, v0, 0x10

    .line 4
    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    const/4 v0, 0x1

    .line 8
    goto :goto_0

    .line 9
    :cond_0
    const/4 v0, 0x0

    .line 10
    :goto_0
    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 10

    .line 1
    invoke-virtual {p0}, Lcom/rapid7/client/dcerpc/mssamr/dto/DomainPasswordInfo;->getMinimumPasswordLength()I

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
    invoke-virtual {p0}, Lcom/rapid7/client/dcerpc/mssamr/dto/DomainPasswordInfo;->getPasswordHistoryLength()I

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
    invoke-virtual {p0}, Lcom/rapid7/client/dcerpc/mssamr/dto/DomainPasswordInfo;->getPasswordProperties()I

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
    invoke-virtual {p0}, Lcom/rapid7/client/dcerpc/mssamr/dto/DomainPasswordInfo;->getMaximumPasswordAge()J

    .line 26
    .line 27
    .line 28
    move-result-wide v3

    .line 29
    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 30
    .line 31
    .line 32
    move-result-object v3

    .line 33
    invoke-virtual {p0}, Lcom/rapid7/client/dcerpc/mssamr/dto/DomainPasswordInfo;->getMinimumPasswordAge()J

    .line 34
    .line 35
    .line 36
    move-result-wide v4

    .line 37
    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 38
    .line 39
    .line 40
    move-result-object v4

    .line 41
    invoke-virtual {p0}, Lcom/rapid7/client/dcerpc/mssamr/dto/DomainPasswordInfo;->isDomainPasswordComplex()Z

    .line 42
    .line 43
    .line 44
    move-result v5

    .line 45
    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 46
    .line 47
    .line 48
    move-result-object v5

    .line 49
    invoke-virtual {p0}, Lcom/rapid7/client/dcerpc/mssamr/dto/DomainPasswordInfo;->isDomainPasswordNoAnonChange()Z

    .line 50
    .line 51
    .line 52
    move-result v6

    .line 53
    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 54
    .line 55
    .line 56
    move-result-object v6

    .line 57
    invoke-virtual {p0}, Lcom/rapid7/client/dcerpc/mssamr/dto/DomainPasswordInfo;->isDomainPasswordStoredClearText()Z

    .line 58
    .line 59
    .line 60
    move-result v7

    .line 61
    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 62
    .line 63
    .line 64
    move-result-object v7

    .line 65
    const/16 v8, 0x8

    .line 66
    .line 67
    new-array v8, v8, [Ljava/lang/Object;

    .line 68
    .line 69
    const/4 v9, 0x0

    .line 70
    aput-object v0, v8, v9

    .line 71
    .line 72
    const/4 v0, 0x1

    .line 73
    aput-object v1, v8, v0

    .line 74
    .line 75
    const/4 v0, 0x2

    .line 76
    aput-object v2, v8, v0

    .line 77
    .line 78
    const/4 v0, 0x3

    .line 79
    aput-object v3, v8, v0

    .line 80
    .line 81
    const/4 v0, 0x4

    .line 82
    aput-object v4, v8, v0

    .line 83
    .line 84
    const/4 v0, 0x5

    .line 85
    aput-object v5, v8, v0

    .line 86
    .line 87
    const/4 v0, 0x6

    .line 88
    aput-object v6, v8, v0

    .line 89
    .line 90
    const/4 v0, 0x7

    .line 91
    aput-object v7, v8, v0

    .line 92
    .line 93
    const-string v0, "DomainPasswordInformation{minimumPasswordLength: %d, passwordHistoryLength: %d, passwordProperties: %d, maximumPasswordAge: %d, minimumPasswordAge: %d, isDomainPasswordComplex: %b, isDomainPasswordNoAnonChange: %b, isDomainPasswordStoredClearText: %b}"

    .line 94
    .line 95
    invoke-static {v0, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 96
    .line 97
    .line 98
    move-result-object v0

    .line 99
    return-object v0
.end method
