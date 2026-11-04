.class public final enum Lcom/rapid7/client/dcerpc/msrrp/dto/RegistryValueType;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/rapid7/client/dcerpc/msrrp/dto/RegistryValueType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/rapid7/client/dcerpc/msrrp/dto/RegistryValueType;

.field public static final enum REG_BINARY:Lcom/rapid7/client/dcerpc/msrrp/dto/RegistryValueType;

.field public static final enum REG_DWORD:Lcom/rapid7/client/dcerpc/msrrp/dto/RegistryValueType;

.field public static final enum REG_DWORD_BIG_ENDIAN:Lcom/rapid7/client/dcerpc/msrrp/dto/RegistryValueType;

.field public static final enum REG_EXPAND_SZ:Lcom/rapid7/client/dcerpc/msrrp/dto/RegistryValueType;

.field public static final enum REG_FULL_RESOURCE_DESCRIPTOR:Lcom/rapid7/client/dcerpc/msrrp/dto/RegistryValueType;

.field public static final enum REG_LINK:Lcom/rapid7/client/dcerpc/msrrp/dto/RegistryValueType;

.field public static final enum REG_MULTI_SZ:Lcom/rapid7/client/dcerpc/msrrp/dto/RegistryValueType;

.field public static final enum REG_NONE:Lcom/rapid7/client/dcerpc/msrrp/dto/RegistryValueType;

.field public static final enum REG_QWORD:Lcom/rapid7/client/dcerpc/msrrp/dto/RegistryValueType;

.field public static final enum REG_RESOURCE_LIST:Lcom/rapid7/client/dcerpc/msrrp/dto/RegistryValueType;

.field public static final enum REG_RESOURCE_REQUIREMENTS_LIST:Lcom/rapid7/client/dcerpc/msrrp/dto/RegistryValueType;

.field public static final enum REG_SZ:Lcom/rapid7/client/dcerpc/msrrp/dto/RegistryValueType;

.field private static final registryValueTypes:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Lcom/rapid7/client/dcerpc/msrrp/dto/RegistryValueType;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final typeID:I


# direct methods
.method static constructor <clinit>()V
    .locals 16

    .line 1
    new-instance v0, Lcom/rapid7/client/dcerpc/msrrp/dto/RegistryValueType;

    .line 2
    .line 3
    const-string v1, "REG_NONE"

    .line 4
    .line 5
    const/4 v2, 0x0

    .line 6
    invoke-direct {v0, v1, v2, v2}, Lcom/rapid7/client/dcerpc/msrrp/dto/RegistryValueType;-><init>(Ljava/lang/String;II)V

    .line 7
    .line 8
    .line 9
    sput-object v0, Lcom/rapid7/client/dcerpc/msrrp/dto/RegistryValueType;->REG_NONE:Lcom/rapid7/client/dcerpc/msrrp/dto/RegistryValueType;

    .line 10
    .line 11
    new-instance v1, Lcom/rapid7/client/dcerpc/msrrp/dto/RegistryValueType;

    .line 12
    .line 13
    const-string v3, "REG_SZ"

    .line 14
    .line 15
    const/4 v4, 0x1

    .line 16
    invoke-direct {v1, v3, v4, v4}, Lcom/rapid7/client/dcerpc/msrrp/dto/RegistryValueType;-><init>(Ljava/lang/String;II)V

    .line 17
    .line 18
    .line 19
    sput-object v1, Lcom/rapid7/client/dcerpc/msrrp/dto/RegistryValueType;->REG_SZ:Lcom/rapid7/client/dcerpc/msrrp/dto/RegistryValueType;

    .line 20
    .line 21
    new-instance v3, Lcom/rapid7/client/dcerpc/msrrp/dto/RegistryValueType;

    .line 22
    .line 23
    const-string v5, "REG_EXPAND_SZ"

    .line 24
    .line 25
    const/4 v6, 0x2

    .line 26
    invoke-direct {v3, v5, v6, v6}, Lcom/rapid7/client/dcerpc/msrrp/dto/RegistryValueType;-><init>(Ljava/lang/String;II)V

    .line 27
    .line 28
    .line 29
    sput-object v3, Lcom/rapid7/client/dcerpc/msrrp/dto/RegistryValueType;->REG_EXPAND_SZ:Lcom/rapid7/client/dcerpc/msrrp/dto/RegistryValueType;

    .line 30
    .line 31
    new-instance v5, Lcom/rapid7/client/dcerpc/msrrp/dto/RegistryValueType;

    .line 32
    .line 33
    const-string v7, "REG_BINARY"

    .line 34
    .line 35
    const/4 v8, 0x3

    .line 36
    invoke-direct {v5, v7, v8, v8}, Lcom/rapid7/client/dcerpc/msrrp/dto/RegistryValueType;-><init>(Ljava/lang/String;II)V

    .line 37
    .line 38
    .line 39
    sput-object v5, Lcom/rapid7/client/dcerpc/msrrp/dto/RegistryValueType;->REG_BINARY:Lcom/rapid7/client/dcerpc/msrrp/dto/RegistryValueType;

    .line 40
    .line 41
    new-instance v7, Lcom/rapid7/client/dcerpc/msrrp/dto/RegistryValueType;

    .line 42
    .line 43
    const-string v9, "REG_DWORD"

    .line 44
    .line 45
    const/4 v10, 0x4

    .line 46
    invoke-direct {v7, v9, v10, v10}, Lcom/rapid7/client/dcerpc/msrrp/dto/RegistryValueType;-><init>(Ljava/lang/String;II)V

    .line 47
    .line 48
    .line 49
    sput-object v7, Lcom/rapid7/client/dcerpc/msrrp/dto/RegistryValueType;->REG_DWORD:Lcom/rapid7/client/dcerpc/msrrp/dto/RegistryValueType;

    .line 50
    .line 51
    new-instance v9, Lcom/rapid7/client/dcerpc/msrrp/dto/RegistryValueType;

    .line 52
    .line 53
    const-string v11, "REG_DWORD_BIG_ENDIAN"

    .line 54
    .line 55
    const/4 v12, 0x5

    .line 56
    invoke-direct {v9, v11, v12, v12}, Lcom/rapid7/client/dcerpc/msrrp/dto/RegistryValueType;-><init>(Ljava/lang/String;II)V

    .line 57
    .line 58
    .line 59
    sput-object v9, Lcom/rapid7/client/dcerpc/msrrp/dto/RegistryValueType;->REG_DWORD_BIG_ENDIAN:Lcom/rapid7/client/dcerpc/msrrp/dto/RegistryValueType;

    .line 60
    .line 61
    new-instance v11, Lcom/rapid7/client/dcerpc/msrrp/dto/RegistryValueType;

    .line 62
    .line 63
    const-string v13, "REG_LINK"

    .line 64
    .line 65
    const/4 v14, 0x6

    .line 66
    invoke-direct {v11, v13, v14, v14}, Lcom/rapid7/client/dcerpc/msrrp/dto/RegistryValueType;-><init>(Ljava/lang/String;II)V

    .line 67
    .line 68
    .line 69
    sput-object v11, Lcom/rapid7/client/dcerpc/msrrp/dto/RegistryValueType;->REG_LINK:Lcom/rapid7/client/dcerpc/msrrp/dto/RegistryValueType;

    .line 70
    .line 71
    new-instance v13, Lcom/rapid7/client/dcerpc/msrrp/dto/RegistryValueType;

    .line 72
    .line 73
    const-string v15, "REG_MULTI_SZ"

    .line 74
    .line 75
    const/4 v14, 0x7

    .line 76
    invoke-direct {v13, v15, v14, v14}, Lcom/rapid7/client/dcerpc/msrrp/dto/RegistryValueType;-><init>(Ljava/lang/String;II)V

    .line 77
    .line 78
    .line 79
    sput-object v13, Lcom/rapid7/client/dcerpc/msrrp/dto/RegistryValueType;->REG_MULTI_SZ:Lcom/rapid7/client/dcerpc/msrrp/dto/RegistryValueType;

    .line 80
    .line 81
    new-instance v15, Lcom/rapid7/client/dcerpc/msrrp/dto/RegistryValueType;

    .line 82
    .line 83
    const-string v14, "REG_RESOURCE_LIST"

    .line 84
    .line 85
    const/16 v12, 0x8

    .line 86
    .line 87
    invoke-direct {v15, v14, v12, v12}, Lcom/rapid7/client/dcerpc/msrrp/dto/RegistryValueType;-><init>(Ljava/lang/String;II)V

    .line 88
    .line 89
    .line 90
    sput-object v15, Lcom/rapid7/client/dcerpc/msrrp/dto/RegistryValueType;->REG_RESOURCE_LIST:Lcom/rapid7/client/dcerpc/msrrp/dto/RegistryValueType;

    .line 91
    .line 92
    new-instance v14, Lcom/rapid7/client/dcerpc/msrrp/dto/RegistryValueType;

    .line 93
    .line 94
    const-string v12, "REG_FULL_RESOURCE_DESCRIPTOR"

    .line 95
    .line 96
    const/16 v10, 0x9

    .line 97
    .line 98
    invoke-direct {v14, v12, v10, v10}, Lcom/rapid7/client/dcerpc/msrrp/dto/RegistryValueType;-><init>(Ljava/lang/String;II)V

    .line 99
    .line 100
    .line 101
    sput-object v14, Lcom/rapid7/client/dcerpc/msrrp/dto/RegistryValueType;->REG_FULL_RESOURCE_DESCRIPTOR:Lcom/rapid7/client/dcerpc/msrrp/dto/RegistryValueType;

    .line 102
    .line 103
    new-instance v12, Lcom/rapid7/client/dcerpc/msrrp/dto/RegistryValueType;

    .line 104
    .line 105
    const-string v10, "REG_RESOURCE_REQUIREMENTS_LIST"

    .line 106
    .line 107
    const/16 v8, 0xa

    .line 108
    .line 109
    invoke-direct {v12, v10, v8, v8}, Lcom/rapid7/client/dcerpc/msrrp/dto/RegistryValueType;-><init>(Ljava/lang/String;II)V

    .line 110
    .line 111
    .line 112
    sput-object v12, Lcom/rapid7/client/dcerpc/msrrp/dto/RegistryValueType;->REG_RESOURCE_REQUIREMENTS_LIST:Lcom/rapid7/client/dcerpc/msrrp/dto/RegistryValueType;

    .line 113
    .line 114
    new-instance v10, Lcom/rapid7/client/dcerpc/msrrp/dto/RegistryValueType;

    .line 115
    .line 116
    const-string v8, "REG_QWORD"

    .line 117
    .line 118
    const/16 v6, 0xb

    .line 119
    .line 120
    invoke-direct {v10, v8, v6, v6}, Lcom/rapid7/client/dcerpc/msrrp/dto/RegistryValueType;-><init>(Ljava/lang/String;II)V

    .line 121
    .line 122
    .line 123
    sput-object v10, Lcom/rapid7/client/dcerpc/msrrp/dto/RegistryValueType;->REG_QWORD:Lcom/rapid7/client/dcerpc/msrrp/dto/RegistryValueType;

    .line 124
    .line 125
    const/16 v8, 0xc

    .line 126
    .line 127
    new-array v8, v8, [Lcom/rapid7/client/dcerpc/msrrp/dto/RegistryValueType;

    .line 128
    .line 129
    aput-object v0, v8, v2

    .line 130
    .line 131
    aput-object v1, v8, v4

    .line 132
    .line 133
    const/4 v0, 0x2

    .line 134
    aput-object v3, v8, v0

    .line 135
    .line 136
    const/4 v0, 0x3

    .line 137
    aput-object v5, v8, v0

    .line 138
    .line 139
    const/4 v0, 0x4

    .line 140
    aput-object v7, v8, v0

    .line 141
    .line 142
    const/4 v0, 0x5

    .line 143
    aput-object v9, v8, v0

    .line 144
    .line 145
    const/4 v0, 0x6

    .line 146
    aput-object v11, v8, v0

    .line 147
    .line 148
    const/4 v0, 0x7

    .line 149
    aput-object v13, v8, v0

    .line 150
    .line 151
    const/16 v0, 0x8

    .line 152
    .line 153
    aput-object v15, v8, v0

    .line 154
    .line 155
    const/16 v0, 0x9

    .line 156
    .line 157
    aput-object v14, v8, v0

    .line 158
    .line 159
    const/16 v0, 0xa

    .line 160
    .line 161
    aput-object v12, v8, v0

    .line 162
    .line 163
    aput-object v10, v8, v6

    .line 164
    .line 165
    sput-object v8, Lcom/rapid7/client/dcerpc/msrrp/dto/RegistryValueType;->$VALUES:[Lcom/rapid7/client/dcerpc/msrrp/dto/RegistryValueType;

    .line 166
    .line 167
    new-instance v0, Ljava/util/HashMap;

    .line 168
    .line 169
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 170
    .line 171
    .line 172
    sput-object v0, Lcom/rapid7/client/dcerpc/msrrp/dto/RegistryValueType;->registryValueTypes:Ljava/util/Map;

    .line 173
    .line 174
    invoke-static {}, Lcom/rapid7/client/dcerpc/msrrp/dto/RegistryValueType;->values()[Lcom/rapid7/client/dcerpc/msrrp/dto/RegistryValueType;

    .line 175
    .line 176
    .line 177
    move-result-object v0

    .line 178
    array-length v1, v0

    .line 179
    :goto_0
    if-ge v2, v1, :cond_0

    .line 180
    .line 181
    aget-object v3, v0, v2

    .line 182
    .line 183
    sget-object v5, Lcom/rapid7/client/dcerpc/msrrp/dto/RegistryValueType;->registryValueTypes:Ljava/util/Map;

    .line 184
    .line 185
    invoke-virtual {v3}, Lcom/rapid7/client/dcerpc/msrrp/dto/RegistryValueType;->getTypeID()I

    .line 186
    .line 187
    .line 188
    move-result v6

    .line 189
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 190
    .line 191
    .line 192
    move-result-object v6

    .line 193
    invoke-interface {v5, v6, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 194
    .line 195
    .line 196
    add-int/2addr v2, v4

    .line 197
    goto :goto_0

    .line 198
    :cond_0
    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 2
    .line 3
    .line 4
    iput p3, p0, Lcom/rapid7/client/dcerpc/msrrp/dto/RegistryValueType;->typeID:I

    .line 5
    .line 6
    return-void
.end method

.method public static getRegistryValueType(I)Lcom/rapid7/client/dcerpc/msrrp/dto/RegistryValueType;
    .locals 1

    .line 1
    sget-object v0, Lcom/rapid7/client/dcerpc/msrrp/dto/RegistryValueType;->registryValueTypes:Ljava/util/Map;

    .line 2
    .line 3
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

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
    check-cast p0, Lcom/rapid7/client/dcerpc/msrrp/dto/RegistryValueType;

    .line 12
    .line 13
    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/rapid7/client/dcerpc/msrrp/dto/RegistryValueType;
    .locals 1

    .line 1
    const-class v0, Lcom/rapid7/client/dcerpc/msrrp/dto/RegistryValueType;

    .line 2
    .line 3
    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    check-cast p0, Lcom/rapid7/client/dcerpc/msrrp/dto/RegistryValueType;

    .line 8
    .line 9
    return-object p0
.end method

.method public static values()[Lcom/rapid7/client/dcerpc/msrrp/dto/RegistryValueType;
    .locals 1

    .line 1
    sget-object v0, Lcom/rapid7/client/dcerpc/msrrp/dto/RegistryValueType;->$VALUES:[Lcom/rapid7/client/dcerpc/msrrp/dto/RegistryValueType;

    .line 2
    .line 3
    invoke-virtual {v0}, [Lcom/rapid7/client/dcerpc/msrrp/dto/RegistryValueType;->clone()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, [Lcom/rapid7/client/dcerpc/msrrp/dto/RegistryValueType;

    .line 8
    .line 9
    return-object v0
.end method


# virtual methods
.method public getTypeID()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/rapid7/client/dcerpc/msrrp/dto/RegistryValueType;->typeID:I

    .line 2
    .line 3
    return v0
.end method

.method public is(I)Z
    .locals 1

    .line 1
    iget v0, p0, Lcom/rapid7/client/dcerpc/msrrp/dto/RegistryValueType;->typeID:I

    .line 2
    .line 3
    if-ne v0, p1, :cond_0

    .line 4
    .line 5
    const/4 p1, 0x1

    .line 6
    goto :goto_0

    .line 7
    :cond_0
    const/4 p1, 0x0

    .line 8
    :goto_0
    return p1
.end method
