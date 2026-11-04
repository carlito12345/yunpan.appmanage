.class public final enum Lcom/rapid7/client/dcerpc/Interface;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/rapid7/client/dcerpc/Interface;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/rapid7/client/dcerpc/Interface;

.field public static final enum LSASVC_V0_0:Lcom/rapid7/client/dcerpc/Interface;

.field public static final enum NDR_32BIT_V2:Lcom/rapid7/client/dcerpc/Interface;

.field public static final enum SAMSVC_V1_0:Lcom/rapid7/client/dcerpc/Interface;

.field public static final enum SRVSVC_V3_0:Lcom/rapid7/client/dcerpc/Interface;

.field public static final enum SVCCTL_V2_0:Lcom/rapid7/client/dcerpc/Interface;

.field public static final enum WINREG_V1_0:Lcom/rapid7/client/dcerpc/Interface;


# instance fields
.field private final majorVersion:S

.field private final minorVersion:S

.field private final name:Ljava/lang/String;

.field private final repr:Ljava/lang/String;

.field private final uuid:[B


# direct methods
.method static constructor <clinit>()V
    .locals 15

    .line 1
    new-instance v0, Lcom/rapid7/client/dcerpc/Interface;

    .line 2
    .line 3
    const-string v1, "winreg interface"

    .line 4
    .line 5
    const-string v2, "338cd001-2244-31f1-aaaa-900038001003:v1.0"

    .line 6
    .line 7
    const-string v3, "WINREG_V1_0"

    .line 8
    .line 9
    const/4 v4, 0x0

    .line 10
    invoke-direct {v0, v3, v4, v1, v2}, Lcom/rapid7/client/dcerpc/Interface;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    .line 11
    .line 12
    .line 13
    sput-object v0, Lcom/rapid7/client/dcerpc/Interface;->WINREG_V1_0:Lcom/rapid7/client/dcerpc/Interface;

    .line 14
    .line 15
    new-instance v1, Lcom/rapid7/client/dcerpc/Interface;

    .line 16
    .line 17
    const-string v2, "srvsvc interface"

    .line 18
    .line 19
    const-string v3, "4b324fc8-1670-01d3-1278-5a47bf6ee188:v3.0"

    .line 20
    .line 21
    const-string v5, "SRVSVC_V3_0"

    .line 22
    .line 23
    const/4 v6, 0x1

    .line 24
    invoke-direct {v1, v5, v6, v2, v3}, Lcom/rapid7/client/dcerpc/Interface;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    .line 25
    .line 26
    .line 27
    sput-object v1, Lcom/rapid7/client/dcerpc/Interface;->SRVSVC_V3_0:Lcom/rapid7/client/dcerpc/Interface;

    .line 28
    .line 29
    new-instance v2, Lcom/rapid7/client/dcerpc/Interface;

    .line 30
    .line 31
    const-string v3, "lsarpc interface"

    .line 32
    .line 33
    const-string v5, "12345778-1234-ABCD-EF00-0123456789AB:v0.0"

    .line 34
    .line 35
    const-string v7, "LSASVC_V0_0"

    .line 36
    .line 37
    const/4 v8, 0x2

    .line 38
    invoke-direct {v2, v7, v8, v3, v5}, Lcom/rapid7/client/dcerpc/Interface;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    .line 39
    .line 40
    .line 41
    sput-object v2, Lcom/rapid7/client/dcerpc/Interface;->LSASVC_V0_0:Lcom/rapid7/client/dcerpc/Interface;

    .line 42
    .line 43
    new-instance v3, Lcom/rapid7/client/dcerpc/Interface;

    .line 44
    .line 45
    const-string v5, "samr interface"

    .line 46
    .line 47
    const-string v7, "12345778-1234-ABCD-EF00-0123456789AC:v1.0"

    .line 48
    .line 49
    const-string v9, "SAMSVC_V1_0"

    .line 50
    .line 51
    const/4 v10, 0x3

    .line 52
    invoke-direct {v3, v9, v10, v5, v7}, Lcom/rapid7/client/dcerpc/Interface;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    .line 53
    .line 54
    .line 55
    sput-object v3, Lcom/rapid7/client/dcerpc/Interface;->SAMSVC_V1_0:Lcom/rapid7/client/dcerpc/Interface;

    .line 56
    .line 57
    new-instance v5, Lcom/rapid7/client/dcerpc/Interface;

    .line 58
    .line 59
    const-string v7, "svcctl_interface"

    .line 60
    .line 61
    const-string v9, "367abb81-9844-35f1-ad32-98f038001003:v2.0"

    .line 62
    .line 63
    const-string v11, "SVCCTL_V2_0"

    .line 64
    .line 65
    const/4 v12, 0x4

    .line 66
    invoke-direct {v5, v11, v12, v7, v9}, Lcom/rapid7/client/dcerpc/Interface;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    .line 67
    .line 68
    .line 69
    sput-object v5, Lcom/rapid7/client/dcerpc/Interface;->SVCCTL_V2_0:Lcom/rapid7/client/dcerpc/Interface;

    .line 70
    .line 71
    new-instance v7, Lcom/rapid7/client/dcerpc/Interface;

    .line 72
    .line 73
    const-string v9, "NDR transfer syntax identifier"

    .line 74
    .line 75
    const-string v11, "8a885d04-1ceb-11c9-9fe8-08002b104860:v2.0"

    .line 76
    .line 77
    const-string v13, "NDR_32BIT_V2"

    .line 78
    .line 79
    const/4 v14, 0x5

    .line 80
    invoke-direct {v7, v13, v14, v9, v11}, Lcom/rapid7/client/dcerpc/Interface;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    .line 81
    .line 82
    .line 83
    sput-object v7, Lcom/rapid7/client/dcerpc/Interface;->NDR_32BIT_V2:Lcom/rapid7/client/dcerpc/Interface;

    .line 84
    .line 85
    const/4 v9, 0x6

    .line 86
    new-array v9, v9, [Lcom/rapid7/client/dcerpc/Interface;

    .line 87
    .line 88
    aput-object v0, v9, v4

    .line 89
    .line 90
    aput-object v1, v9, v6

    .line 91
    .line 92
    aput-object v2, v9, v8

    .line 93
    .line 94
    aput-object v3, v9, v10

    .line 95
    .line 96
    aput-object v5, v9, v12

    .line 97
    .line 98
    aput-object v7, v9, v14

    .line 99
    .line 100
    sput-object v9, Lcom/rapid7/client/dcerpc/Interface;->$VALUES:[Lcom/rapid7/client/dcerpc/Interface;

    .line 101
    .line 102
    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V
    .locals 17
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v1, p4

    .line 4
    .line 5
    invoke-direct/range {p0 .. p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 6
    .line 7
    .line 8
    const/16 v2, 0x10

    .line 9
    .line 10
    new-array v3, v2, [B

    .line 11
    .line 12
    iput-object v3, v0, Lcom/rapid7/client/dcerpc/Interface;->uuid:[B

    .line 13
    .line 14
    move-object/from16 v3, p3

    .line 15
    .line 16
    iput-object v3, v0, Lcom/rapid7/client/dcerpc/Interface;->name:Ljava/lang/String;

    .line 17
    .line 18
    iput-object v1, v0, Lcom/rapid7/client/dcerpc/Interface;->repr:Ljava/lang/String;

    .line 19
    .line 20
    const-string v3, ":"

    .line 21
    .line 22
    const/4 v4, 0x2

    .line 23
    invoke-virtual {v1, v3, v4}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    .line 24
    .line 25
    .line 26
    move-result-object v1

    .line 27
    const/4 v3, 0x0

    .line 28
    aget-object v5, v1, v3

    .line 29
    .line 30
    const-string v6, "-"

    .line 31
    .line 32
    const/4 v7, 0x5

    .line 33
    invoke-virtual {v5, v6, v7}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    .line 34
    .line 35
    .line 36
    move-result-object v5

    .line 37
    aget-object v6, v5, v3

    .line 38
    .line 39
    const/4 v7, 0x1

    .line 40
    aget-object v8, v5, v7

    .line 41
    .line 42
    aget-object v9, v5, v4

    .line 43
    .line 44
    const/4 v10, 0x3

    .line 45
    new-array v11, v10, [Ljava/lang/String;

    .line 46
    .line 47
    aput-object v6, v11, v3

    .line 48
    .line 49
    aput-object v8, v11, v7

    .line 50
    .line 51
    aput-object v9, v11, v4

    .line 52
    .line 53
    aget-object v6, v5, v10

    .line 54
    .line 55
    const/4 v8, 0x4

    .line 56
    aget-object v5, v5, v8

    .line 57
    .line 58
    new-array v9, v4, [Ljava/lang/String;

    .line 59
    .line 60
    aput-object v6, v9, v3

    .line 61
    .line 62
    aput-object v5, v9, v7

    .line 63
    .line 64
    const/4 v5, 0x0

    .line 65
    const/4 v6, 0x0

    .line 66
    const/4 v12, 0x4

    .line 67
    :goto_0
    if-ge v5, v10, :cond_3

    .line 68
    .line 69
    aget-object v13, v11, v5

    .line 70
    .line 71
    invoke-virtual {v13}, Ljava/lang/String;->getBytes()[B

    .line 72
    .line 73
    .line 74
    move-result-object v14

    .line 75
    invoke-virtual {v13}, Ljava/lang/String;->length()I

    .line 76
    .line 77
    .line 78
    move-result v13

    .line 79
    sub-int/2addr v13, v4

    .line 80
    :goto_1
    if-ltz v13, :cond_2

    .line 81
    .line 82
    move v15, v13

    .line 83
    :goto_2
    add-int/lit8 v8, v13, 0x2

    .line 84
    .line 85
    if-ge v15, v8, :cond_1

    .line 86
    .line 87
    aget-byte v8, v14, v15

    .line 88
    .line 89
    iget-object v10, v0, Lcom/rapid7/client/dcerpc/Interface;->uuid:[B

    .line 90
    .line 91
    aget-byte v16, v10, v6

    .line 92
    .line 93
    invoke-static {v8, v2}, Ljava/lang/Character;->digit(II)I

    .line 94
    .line 95
    .line 96
    move-result v8

    .line 97
    shl-int/2addr v8, v12

    .line 98
    int-to-byte v8, v8

    .line 99
    or-int v8, v16, v8

    .line 100
    .line 101
    int-to-byte v8, v8

    .line 102
    aput-byte v8, v10, v6

    .line 103
    .line 104
    if-nez v12, :cond_0

    .line 105
    .line 106
    add-int/2addr v6, v7

    .line 107
    const/4 v12, 0x4

    .line 108
    goto :goto_3

    .line 109
    :cond_0
    const/4 v12, 0x0

    .line 110
    :goto_3
    add-int/2addr v15, v7

    .line 111
    const/4 v10, 0x3

    .line 112
    goto :goto_2

    .line 113
    :cond_1
    add-int/lit8 v13, v13, -0x2

    .line 114
    .line 115
    const/4 v8, 0x4

    .line 116
    const/4 v10, 0x3

    .line 117
    goto :goto_1

    .line 118
    :cond_2
    add-int/2addr v5, v7

    .line 119
    const/4 v8, 0x4

    .line 120
    const/4 v10, 0x3

    .line 121
    goto :goto_0

    .line 122
    :cond_3
    const/4 v5, 0x0

    .line 123
    :goto_4
    if-ge v5, v4, :cond_6

    .line 124
    .line 125
    aget-object v8, v9, v5

    .line 126
    .line 127
    invoke-virtual {v8}, Ljava/lang/String;->getBytes()[B

    .line 128
    .line 129
    .line 130
    move-result-object v8

    .line 131
    array-length v10, v8

    .line 132
    const/4 v11, 0x0

    .line 133
    :goto_5
    if-ge v11, v10, :cond_5

    .line 134
    .line 135
    aget-byte v13, v8, v11

    .line 136
    .line 137
    iget-object v14, v0, Lcom/rapid7/client/dcerpc/Interface;->uuid:[B

    .line 138
    .line 139
    aget-byte v15, v14, v6

    .line 140
    .line 141
    invoke-static {v13, v2}, Ljava/lang/Character;->digit(II)I

    .line 142
    .line 143
    .line 144
    move-result v13

    .line 145
    shl-int/2addr v13, v12

    .line 146
    int-to-byte v13, v13

    .line 147
    or-int/2addr v13, v15

    .line 148
    int-to-byte v13, v13

    .line 149
    aput-byte v13, v14, v6

    .line 150
    .line 151
    if-nez v12, :cond_4

    .line 152
    .line 153
    add-int/2addr v6, v7

    .line 154
    const/4 v12, 0x4

    .line 155
    goto :goto_6

    .line 156
    :cond_4
    const/4 v12, 0x0

    .line 157
    :goto_6
    add-int/2addr v11, v7

    .line 158
    goto :goto_5

    .line 159
    :cond_5
    add-int/2addr v5, v7

    .line 160
    goto :goto_4

    .line 161
    :cond_6
    aget-object v1, v1, v7

    .line 162
    .line 163
    const-string v2, "\\."

    .line 164
    .line 165
    invoke-virtual {v1, v2, v4}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    .line 166
    .line 167
    .line 168
    move-result-object v1

    .line 169
    aget-object v2, v1, v3

    .line 170
    .line 171
    invoke-virtual {v2, v7}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    .line 172
    .line 173
    .line 174
    move-result-object v2

    .line 175
    invoke-static {v2}, Ljava/lang/Short;->valueOf(Ljava/lang/String;)Ljava/lang/Short;

    .line 176
    .line 177
    .line 178
    move-result-object v2

    .line 179
    invoke-virtual {v2}, Ljava/lang/Short;->shortValue()S

    .line 180
    .line 181
    .line 182
    move-result v2

    .line 183
    iput-short v2, v0, Lcom/rapid7/client/dcerpc/Interface;->majorVersion:S

    .line 184
    .line 185
    aget-object v1, v1, v7

    .line 186
    .line 187
    invoke-static {v1}, Ljava/lang/Short;->valueOf(Ljava/lang/String;)Ljava/lang/Short;

    .line 188
    .line 189
    .line 190
    move-result-object v1

    .line 191
    invoke-virtual {v1}, Ljava/lang/Short;->shortValue()S

    .line 192
    .line 193
    .line 194
    move-result v1

    .line 195
    iput-short v1, v0, Lcom/rapid7/client/dcerpc/Interface;->minorVersion:S

    .line 196
    .line 197
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/rapid7/client/dcerpc/Interface;
    .locals 1

    .line 1
    const-class v0, Lcom/rapid7/client/dcerpc/Interface;

    .line 2
    .line 3
    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    check-cast p0, Lcom/rapid7/client/dcerpc/Interface;

    .line 8
    .line 9
    return-object p0
.end method

.method public static values()[Lcom/rapid7/client/dcerpc/Interface;
    .locals 1

    .line 1
    sget-object v0, Lcom/rapid7/client/dcerpc/Interface;->$VALUES:[Lcom/rapid7/client/dcerpc/Interface;

    .line 2
    .line 3
    invoke-virtual {v0}, [Lcom/rapid7/client/dcerpc/Interface;->clone()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, [Lcom/rapid7/client/dcerpc/Interface;

    .line 8
    .line 9
    return-object v0
.end method


# virtual methods
.method public getMajorVersion()S
    .locals 1

    .line 1
    iget-short v0, p0, Lcom/rapid7/client/dcerpc/Interface;->majorVersion:S

    .line 2
    .line 3
    return v0
.end method

.method public getMinorVersion()S
    .locals 1

    .line 1
    iget-short v0, p0, Lcom/rapid7/client/dcerpc/Interface;->minorVersion:S

    .line 2
    .line 3
    return v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/rapid7/client/dcerpc/Interface;->name:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public getRepr()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/rapid7/client/dcerpc/Interface;->repr:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public getUUID()[B
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/rapid7/client/dcerpc/Interface;->uuid:[B

    .line 2
    .line 3
    return-object v0
.end method
