.class public final enum Lcom/rapid7/client/dcerpc/dto/SIDUse;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/rapid7/client/dcerpc/dto/SIDUse;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/rapid7/client/dcerpc/dto/SIDUse;

.field public static final enum SID_TYPE_ALIAS:Lcom/rapid7/client/dcerpc/dto/SIDUse;

.field public static final enum SID_TYPE_COMPUTER:Lcom/rapid7/client/dcerpc/dto/SIDUse;

.field public static final enum SID_TYPE_DELETED_ACCOUNT:Lcom/rapid7/client/dcerpc/dto/SIDUse;

.field public static final enum SID_TYPE_DOMAIN:Lcom/rapid7/client/dcerpc/dto/SIDUse;

.field public static final enum SID_TYPE_GROUP:Lcom/rapid7/client/dcerpc/dto/SIDUse;

.field public static final enum SID_TYPE_INVALID:Lcom/rapid7/client/dcerpc/dto/SIDUse;

.field public static final enum SID_TYPE_LABEL:Lcom/rapid7/client/dcerpc/dto/SIDUse;

.field public static final enum SID_TYPE_UNKNOWN:Lcom/rapid7/client/dcerpc/dto/SIDUse;

.field public static final enum SID_TYPE_USER:Lcom/rapid7/client/dcerpc/dto/SIDUse;

.field public static final enum SID_TYPE_WELL_KNOWN_GROUP:Lcom/rapid7/client/dcerpc/dto/SIDUse;

.field private static final VALUE_MAP:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Short;",
            "Lcom/rapid7/client/dcerpc/dto/SIDUse;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final value:S


# direct methods
.method static constructor <clinit>()V
    .locals 16

    .line 1
    new-instance v0, Lcom/rapid7/client/dcerpc/dto/SIDUse;

    .line 2
    .line 3
    const-string v1, "SID_TYPE_USER"

    .line 4
    .line 5
    const/4 v2, 0x0

    .line 6
    const/4 v3, 0x1

    .line 7
    invoke-direct {v0, v1, v2, v3}, Lcom/rapid7/client/dcerpc/dto/SIDUse;-><init>(Ljava/lang/String;IS)V

    .line 8
    .line 9
    .line 10
    sput-object v0, Lcom/rapid7/client/dcerpc/dto/SIDUse;->SID_TYPE_USER:Lcom/rapid7/client/dcerpc/dto/SIDUse;

    .line 11
    .line 12
    new-instance v1, Lcom/rapid7/client/dcerpc/dto/SIDUse;

    .line 13
    .line 14
    const-string v4, "SID_TYPE_GROUP"

    .line 15
    .line 16
    const/4 v5, 0x2

    .line 17
    invoke-direct {v1, v4, v3, v5}, Lcom/rapid7/client/dcerpc/dto/SIDUse;-><init>(Ljava/lang/String;IS)V

    .line 18
    .line 19
    .line 20
    sput-object v1, Lcom/rapid7/client/dcerpc/dto/SIDUse;->SID_TYPE_GROUP:Lcom/rapid7/client/dcerpc/dto/SIDUse;

    .line 21
    .line 22
    new-instance v4, Lcom/rapid7/client/dcerpc/dto/SIDUse;

    .line 23
    .line 24
    const-string v6, "SID_TYPE_DOMAIN"

    .line 25
    .line 26
    const/4 v7, 0x3

    .line 27
    invoke-direct {v4, v6, v5, v7}, Lcom/rapid7/client/dcerpc/dto/SIDUse;-><init>(Ljava/lang/String;IS)V

    .line 28
    .line 29
    .line 30
    sput-object v4, Lcom/rapid7/client/dcerpc/dto/SIDUse;->SID_TYPE_DOMAIN:Lcom/rapid7/client/dcerpc/dto/SIDUse;

    .line 31
    .line 32
    new-instance v6, Lcom/rapid7/client/dcerpc/dto/SIDUse;

    .line 33
    .line 34
    const-string v8, "SID_TYPE_ALIAS"

    .line 35
    .line 36
    const/4 v9, 0x4

    .line 37
    invoke-direct {v6, v8, v7, v9}, Lcom/rapid7/client/dcerpc/dto/SIDUse;-><init>(Ljava/lang/String;IS)V

    .line 38
    .line 39
    .line 40
    sput-object v6, Lcom/rapid7/client/dcerpc/dto/SIDUse;->SID_TYPE_ALIAS:Lcom/rapid7/client/dcerpc/dto/SIDUse;

    .line 41
    .line 42
    new-instance v8, Lcom/rapid7/client/dcerpc/dto/SIDUse;

    .line 43
    .line 44
    const-string v10, "SID_TYPE_WELL_KNOWN_GROUP"

    .line 45
    .line 46
    const/4 v11, 0x5

    .line 47
    invoke-direct {v8, v10, v9, v11}, Lcom/rapid7/client/dcerpc/dto/SIDUse;-><init>(Ljava/lang/String;IS)V

    .line 48
    .line 49
    .line 50
    sput-object v8, Lcom/rapid7/client/dcerpc/dto/SIDUse;->SID_TYPE_WELL_KNOWN_GROUP:Lcom/rapid7/client/dcerpc/dto/SIDUse;

    .line 51
    .line 52
    new-instance v10, Lcom/rapid7/client/dcerpc/dto/SIDUse;

    .line 53
    .line 54
    const-string v12, "SID_TYPE_DELETED_ACCOUNT"

    .line 55
    .line 56
    const/4 v13, 0x6

    .line 57
    invoke-direct {v10, v12, v11, v13}, Lcom/rapid7/client/dcerpc/dto/SIDUse;-><init>(Ljava/lang/String;IS)V

    .line 58
    .line 59
    .line 60
    sput-object v10, Lcom/rapid7/client/dcerpc/dto/SIDUse;->SID_TYPE_DELETED_ACCOUNT:Lcom/rapid7/client/dcerpc/dto/SIDUse;

    .line 61
    .line 62
    new-instance v12, Lcom/rapid7/client/dcerpc/dto/SIDUse;

    .line 63
    .line 64
    const-string v14, "SID_TYPE_INVALID"

    .line 65
    .line 66
    const/4 v15, 0x7

    .line 67
    invoke-direct {v12, v14, v13, v15}, Lcom/rapid7/client/dcerpc/dto/SIDUse;-><init>(Ljava/lang/String;IS)V

    .line 68
    .line 69
    .line 70
    sput-object v12, Lcom/rapid7/client/dcerpc/dto/SIDUse;->SID_TYPE_INVALID:Lcom/rapid7/client/dcerpc/dto/SIDUse;

    .line 71
    .line 72
    new-instance v14, Lcom/rapid7/client/dcerpc/dto/SIDUse;

    .line 73
    .line 74
    const-string v13, "SID_TYPE_UNKNOWN"

    .line 75
    .line 76
    const/16 v11, 0x8

    .line 77
    .line 78
    invoke-direct {v14, v13, v15, v11}, Lcom/rapid7/client/dcerpc/dto/SIDUse;-><init>(Ljava/lang/String;IS)V

    .line 79
    .line 80
    .line 81
    sput-object v14, Lcom/rapid7/client/dcerpc/dto/SIDUse;->SID_TYPE_UNKNOWN:Lcom/rapid7/client/dcerpc/dto/SIDUse;

    .line 82
    .line 83
    new-instance v13, Lcom/rapid7/client/dcerpc/dto/SIDUse;

    .line 84
    .line 85
    const-string v15, "SID_TYPE_COMPUTER"

    .line 86
    .line 87
    const/16 v9, 0x9

    .line 88
    .line 89
    invoke-direct {v13, v15, v11, v9}, Lcom/rapid7/client/dcerpc/dto/SIDUse;-><init>(Ljava/lang/String;IS)V

    .line 90
    .line 91
    .line 92
    sput-object v13, Lcom/rapid7/client/dcerpc/dto/SIDUse;->SID_TYPE_COMPUTER:Lcom/rapid7/client/dcerpc/dto/SIDUse;

    .line 93
    .line 94
    new-instance v15, Lcom/rapid7/client/dcerpc/dto/SIDUse;

    .line 95
    .line 96
    const-string v11, "SID_TYPE_LABEL"

    .line 97
    .line 98
    const/16 v7, 0xa

    .line 99
    .line 100
    invoke-direct {v15, v11, v9, v7}, Lcom/rapid7/client/dcerpc/dto/SIDUse;-><init>(Ljava/lang/String;IS)V

    .line 101
    .line 102
    .line 103
    sput-object v15, Lcom/rapid7/client/dcerpc/dto/SIDUse;->SID_TYPE_LABEL:Lcom/rapid7/client/dcerpc/dto/SIDUse;

    .line 104
    .line 105
    new-array v7, v7, [Lcom/rapid7/client/dcerpc/dto/SIDUse;

    .line 106
    .line 107
    aput-object v0, v7, v2

    .line 108
    .line 109
    aput-object v1, v7, v3

    .line 110
    .line 111
    aput-object v4, v7, v5

    .line 112
    .line 113
    const/4 v0, 0x3

    .line 114
    aput-object v6, v7, v0

    .line 115
    .line 116
    const/4 v0, 0x4

    .line 117
    aput-object v8, v7, v0

    .line 118
    .line 119
    const/4 v0, 0x5

    .line 120
    aput-object v10, v7, v0

    .line 121
    .line 122
    const/4 v0, 0x6

    .line 123
    aput-object v12, v7, v0

    .line 124
    .line 125
    const/4 v0, 0x7

    .line 126
    aput-object v14, v7, v0

    .line 127
    .line 128
    const/16 v0, 0x8

    .line 129
    .line 130
    aput-object v13, v7, v0

    .line 131
    .line 132
    aput-object v15, v7, v9

    .line 133
    .line 134
    sput-object v7, Lcom/rapid7/client/dcerpc/dto/SIDUse;->$VALUES:[Lcom/rapid7/client/dcerpc/dto/SIDUse;

    .line 135
    .line 136
    new-instance v0, Ljava/util/HashMap;

    .line 137
    .line 138
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 139
    .line 140
    .line 141
    sput-object v0, Lcom/rapid7/client/dcerpc/dto/SIDUse;->VALUE_MAP:Ljava/util/Map;

    .line 142
    .line 143
    invoke-static {}, Lcom/rapid7/client/dcerpc/dto/SIDUse;->values()[Lcom/rapid7/client/dcerpc/dto/SIDUse;

    .line 144
    .line 145
    .line 146
    move-result-object v0

    .line 147
    array-length v1, v0

    .line 148
    :goto_0
    if-ge v2, v1, :cond_0

    .line 149
    .line 150
    aget-object v4, v0, v2

    .line 151
    .line 152
    sget-object v5, Lcom/rapid7/client/dcerpc/dto/SIDUse;->VALUE_MAP:Ljava/util/Map;

    .line 153
    .line 154
    invoke-virtual {v4}, Lcom/rapid7/client/dcerpc/dto/SIDUse;->getValue()S

    .line 155
    .line 156
    .line 157
    move-result v6

    .line 158
    invoke-static {v6}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    .line 159
    .line 160
    .line 161
    move-result-object v6

    .line 162
    invoke-interface {v5, v6, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 163
    .line 164
    .line 165
    add-int/2addr v2, v3

    .line 166
    goto :goto_0

    .line 167
    :cond_0
    return-void
.end method

.method private constructor <init>(Ljava/lang/String;IS)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(S)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 2
    .line 3
    .line 4
    iput-short p3, p0, Lcom/rapid7/client/dcerpc/dto/SIDUse;->value:S

    .line 5
    .line 6
    return-void
.end method

.method public static fromValue(S)Lcom/rapid7/client/dcerpc/dto/SIDUse;
    .locals 1

    .line 1
    sget-object v0, Lcom/rapid7/client/dcerpc/dto/SIDUse;->VALUE_MAP:Ljava/util/Map;

    .line 2
    .line 3
    invoke-static {p0}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 8
    .line 9
    .line 10
    move-result-object p0

    .line 11
    check-cast p0, Lcom/rapid7/client/dcerpc/dto/SIDUse;

    .line 12
    .line 13
    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/rapid7/client/dcerpc/dto/SIDUse;
    .locals 1

    .line 1
    const-class v0, Lcom/rapid7/client/dcerpc/dto/SIDUse;

    .line 2
    .line 3
    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    check-cast p0, Lcom/rapid7/client/dcerpc/dto/SIDUse;

    .line 8
    .line 9
    return-object p0
.end method

.method public static values()[Lcom/rapid7/client/dcerpc/dto/SIDUse;
    .locals 1

    .line 1
    sget-object v0, Lcom/rapid7/client/dcerpc/dto/SIDUse;->$VALUES:[Lcom/rapid7/client/dcerpc/dto/SIDUse;

    .line 2
    .line 3
    invoke-virtual {v0}, [Lcom/rapid7/client/dcerpc/dto/SIDUse;->clone()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, [Lcom/rapid7/client/dcerpc/dto/SIDUse;

    .line 8
    .line 9
    return-object v0
.end method


# virtual methods
.method public getValue()S
    .locals 1

    .line 1
    iget-short v0, p0, Lcom/rapid7/client/dcerpc/dto/SIDUse;->value:S

    .line 2
    .line 3
    return v0
.end method
