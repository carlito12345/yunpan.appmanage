.class public final enum Lcom/rapid7/client/dcerpc/msrrp/dto/RegistryHive;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/rapid7/client/dcerpc/msrrp/dto/RegistryHive;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/rapid7/client/dcerpc/msrrp/dto/RegistryHive;

.field public static final enum HKEY_CLASSES_ROOT:Lcom/rapid7/client/dcerpc/msrrp/dto/RegistryHive;

.field public static final enum HKEY_CURRENT_CONFIG:Lcom/rapid7/client/dcerpc/msrrp/dto/RegistryHive;

.field public static final enum HKEY_CURRENT_USER:Lcom/rapid7/client/dcerpc/msrrp/dto/RegistryHive;

.field public static final enum HKEY_LOCAL_MACHINE:Lcom/rapid7/client/dcerpc/msrrp/dto/RegistryHive;

.field public static final enum HKEY_PERFORMANCE_DATA:Lcom/rapid7/client/dcerpc/msrrp/dto/RegistryHive;

.field public static final enum HKEY_PERFORMANCE_NLSTEXT:Lcom/rapid7/client/dcerpc/msrrp/dto/RegistryHive;

.field public static final enum HKEY_PERFORMANCE_TEXT:Lcom/rapid7/client/dcerpc/msrrp/dto/RegistryHive;

.field public static final enum HKEY_USERS:Lcom/rapid7/client/dcerpc/msrrp/dto/RegistryHive;

.field private static final registryHiveByName:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/rapid7/client/dcerpc/msrrp/dto/RegistryHive;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final fullName:Ljava/lang/String;

.field private final opName:Ljava/lang/String;

.field private final opNum:S

.field private final shortName:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 22

    .line 1
    new-instance v7, Lcom/rapid7/client/dcerpc/msrrp/dto/RegistryHive;

    .line 2
    .line 3
    const-string v5, "OpenClassesRoot"

    .line 4
    .line 5
    const/4 v6, 0x0

    .line 6
    const-string v1, "HKEY_CLASSES_ROOT"

    .line 7
    .line 8
    const/4 v2, 0x0

    .line 9
    const-string v3, "HKEY_CLASSES_ROOT"

    .line 10
    .line 11
    const-string v4, "HKCR"

    .line 12
    .line 13
    move-object v0, v7

    .line 14
    invoke-direct/range {v0 .. v6}, Lcom/rapid7/client/dcerpc/msrrp/dto/RegistryHive;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;S)V

    .line 15
    .line 16
    .line 17
    sput-object v7, Lcom/rapid7/client/dcerpc/msrrp/dto/RegistryHive;->HKEY_CLASSES_ROOT:Lcom/rapid7/client/dcerpc/msrrp/dto/RegistryHive;

    .line 18
    .line 19
    new-instance v0, Lcom/rapid7/client/dcerpc/msrrp/dto/RegistryHive;

    .line 20
    .line 21
    const-string v13, "OpenCurrentConfig"

    .line 22
    .line 23
    const/16 v14, 0x1b

    .line 24
    .line 25
    const-string v9, "HKEY_CURRENT_CONFIG"

    .line 26
    .line 27
    const/4 v10, 0x1

    .line 28
    const-string v11, "HKEY_CURRENT_CONFIG"

    .line 29
    .line 30
    const-string v12, "HKCC"

    .line 31
    .line 32
    move-object v8, v0

    .line 33
    invoke-direct/range {v8 .. v14}, Lcom/rapid7/client/dcerpc/msrrp/dto/RegistryHive;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;S)V

    .line 34
    .line 35
    .line 36
    sput-object v0, Lcom/rapid7/client/dcerpc/msrrp/dto/RegistryHive;->HKEY_CURRENT_CONFIG:Lcom/rapid7/client/dcerpc/msrrp/dto/RegistryHive;

    .line 37
    .line 38
    new-instance v1, Lcom/rapid7/client/dcerpc/msrrp/dto/RegistryHive;

    .line 39
    .line 40
    const-string v20, "OpenCurrentUser"

    .line 41
    .line 42
    const/16 v21, 0x1

    .line 43
    .line 44
    const-string v16, "HKEY_CURRENT_USER"

    .line 45
    .line 46
    const/16 v17, 0x2

    .line 47
    .line 48
    const-string v18, "HKEY_CURRENT_USER"

    .line 49
    .line 50
    const-string v19, "HKCU"

    .line 51
    .line 52
    move-object v15, v1

    .line 53
    invoke-direct/range {v15 .. v21}, Lcom/rapid7/client/dcerpc/msrrp/dto/RegistryHive;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;S)V

    .line 54
    .line 55
    .line 56
    sput-object v1, Lcom/rapid7/client/dcerpc/msrrp/dto/RegistryHive;->HKEY_CURRENT_USER:Lcom/rapid7/client/dcerpc/msrrp/dto/RegistryHive;

    .line 57
    .line 58
    new-instance v2, Lcom/rapid7/client/dcerpc/msrrp/dto/RegistryHive;

    .line 59
    .line 60
    const-string v13, "OpenLocalMachine"

    .line 61
    .line 62
    const/4 v14, 0x2

    .line 63
    const-string v9, "HKEY_LOCAL_MACHINE"

    .line 64
    .line 65
    const/4 v10, 0x3

    .line 66
    const-string v11, "HKEY_LOCAL_MACHINE"

    .line 67
    .line 68
    const-string v12, "HKLM"

    .line 69
    .line 70
    move-object v8, v2

    .line 71
    invoke-direct/range {v8 .. v14}, Lcom/rapid7/client/dcerpc/msrrp/dto/RegistryHive;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;S)V

    .line 72
    .line 73
    .line 74
    sput-object v2, Lcom/rapid7/client/dcerpc/msrrp/dto/RegistryHive;->HKEY_LOCAL_MACHINE:Lcom/rapid7/client/dcerpc/msrrp/dto/RegistryHive;

    .line 75
    .line 76
    new-instance v3, Lcom/rapid7/client/dcerpc/msrrp/dto/RegistryHive;

    .line 77
    .line 78
    const-string v20, "OpenPerformanceData"

    .line 79
    .line 80
    const/16 v21, 0x3

    .line 81
    .line 82
    const-string v16, "HKEY_PERFORMANCE_DATA"

    .line 83
    .line 84
    const/16 v17, 0x4

    .line 85
    .line 86
    const-string v18, "HKEY_PERFORMANCE_DATA"

    .line 87
    .line 88
    const-string v19, ""

    .line 89
    .line 90
    move-object v15, v3

    .line 91
    invoke-direct/range {v15 .. v21}, Lcom/rapid7/client/dcerpc/msrrp/dto/RegistryHive;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;S)V

    .line 92
    .line 93
    .line 94
    sput-object v3, Lcom/rapid7/client/dcerpc/msrrp/dto/RegistryHive;->HKEY_PERFORMANCE_DATA:Lcom/rapid7/client/dcerpc/msrrp/dto/RegistryHive;

    .line 95
    .line 96
    new-instance v4, Lcom/rapid7/client/dcerpc/msrrp/dto/RegistryHive;

    .line 97
    .line 98
    const-string v13, "OpenPerformanceNlsText"

    .line 99
    .line 100
    const/16 v14, 0x21

    .line 101
    .line 102
    const-string v9, "HKEY_PERFORMANCE_NLSTEXT"

    .line 103
    .line 104
    const/4 v10, 0x5

    .line 105
    const-string v11, "HKEY_PERFORMANCE_NLSTEXT"

    .line 106
    .line 107
    const-string v12, ""

    .line 108
    .line 109
    move-object v8, v4

    .line 110
    invoke-direct/range {v8 .. v14}, Lcom/rapid7/client/dcerpc/msrrp/dto/RegistryHive;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;S)V

    .line 111
    .line 112
    .line 113
    sput-object v4, Lcom/rapid7/client/dcerpc/msrrp/dto/RegistryHive;->HKEY_PERFORMANCE_NLSTEXT:Lcom/rapid7/client/dcerpc/msrrp/dto/RegistryHive;

    .line 114
    .line 115
    new-instance v5, Lcom/rapid7/client/dcerpc/msrrp/dto/RegistryHive;

    .line 116
    .line 117
    const-string v20, "OpenPerformanceText"

    .line 118
    .line 119
    const/16 v21, 0x20

    .line 120
    .line 121
    const-string v16, "HKEY_PERFORMANCE_TEXT"

    .line 122
    .line 123
    const/16 v17, 0x6

    .line 124
    .line 125
    const-string v18, "HKEY_PERFORMANCE_TEXT"

    .line 126
    .line 127
    const-string v19, ""

    .line 128
    .line 129
    move-object v15, v5

    .line 130
    invoke-direct/range {v15 .. v21}, Lcom/rapid7/client/dcerpc/msrrp/dto/RegistryHive;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;S)V

    .line 131
    .line 132
    .line 133
    sput-object v5, Lcom/rapid7/client/dcerpc/msrrp/dto/RegistryHive;->HKEY_PERFORMANCE_TEXT:Lcom/rapid7/client/dcerpc/msrrp/dto/RegistryHive;

    .line 134
    .line 135
    new-instance v6, Lcom/rapid7/client/dcerpc/msrrp/dto/RegistryHive;

    .line 136
    .line 137
    const-string v13, "OpenUsers"

    .line 138
    .line 139
    const/4 v14, 0x4

    .line 140
    const-string v9, "HKEY_USERS"

    .line 141
    .line 142
    const/4 v10, 0x7

    .line 143
    const-string v11, "HKEY_USERS"

    .line 144
    .line 145
    const-string v12, "HKU"

    .line 146
    .line 147
    move-object v8, v6

    .line 148
    invoke-direct/range {v8 .. v14}, Lcom/rapid7/client/dcerpc/msrrp/dto/RegistryHive;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;S)V

    .line 149
    .line 150
    .line 151
    sput-object v6, Lcom/rapid7/client/dcerpc/msrrp/dto/RegistryHive;->HKEY_USERS:Lcom/rapid7/client/dcerpc/msrrp/dto/RegistryHive;

    .line 152
    .line 153
    const/16 v8, 0x8

    .line 154
    .line 155
    new-array v8, v8, [Lcom/rapid7/client/dcerpc/msrrp/dto/RegistryHive;

    .line 156
    .line 157
    const/4 v9, 0x0

    .line 158
    aput-object v7, v8, v9

    .line 159
    .line 160
    const/4 v7, 0x1

    .line 161
    aput-object v0, v8, v7

    .line 162
    .line 163
    const/4 v0, 0x2

    .line 164
    aput-object v1, v8, v0

    .line 165
    .line 166
    const/4 v0, 0x3

    .line 167
    aput-object v2, v8, v0

    .line 168
    .line 169
    const/4 v0, 0x4

    .line 170
    aput-object v3, v8, v0

    .line 171
    .line 172
    const/4 v0, 0x5

    .line 173
    aput-object v4, v8, v0

    .line 174
    .line 175
    const/4 v0, 0x6

    .line 176
    aput-object v5, v8, v0

    .line 177
    .line 178
    const/4 v0, 0x7

    .line 179
    aput-object v6, v8, v0

    .line 180
    .line 181
    sput-object v8, Lcom/rapid7/client/dcerpc/msrrp/dto/RegistryHive;->$VALUES:[Lcom/rapid7/client/dcerpc/msrrp/dto/RegistryHive;

    .line 182
    .line 183
    new-instance v0, Ljava/util/HashMap;

    .line 184
    .line 185
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 186
    .line 187
    .line 188
    sput-object v0, Lcom/rapid7/client/dcerpc/msrrp/dto/RegistryHive;->registryHiveByName:Ljava/util/Map;

    .line 189
    .line 190
    invoke-static {}, Lcom/rapid7/client/dcerpc/msrrp/dto/RegistryHive;->values()[Lcom/rapid7/client/dcerpc/msrrp/dto/RegistryHive;

    .line 191
    .line 192
    .line 193
    move-result-object v0

    .line 194
    array-length v1, v0

    .line 195
    :goto_0
    if-ge v9, v1, :cond_1

    .line 196
    .line 197
    aget-object v2, v0, v9

    .line 198
    .line 199
    invoke-virtual {v2}, Lcom/rapid7/client/dcerpc/msrrp/dto/RegistryHive;->getFullName()Ljava/lang/String;

    .line 200
    .line 201
    .line 202
    move-result-object v3

    .line 203
    sget-object v4, Lcom/rapid7/client/dcerpc/msrrp/dto/RegistryHive;->registryHiveByName:Ljava/util/Map;

    .line 204
    .line 205
    invoke-interface {v4, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 206
    .line 207
    .line 208
    invoke-virtual {v2}, Lcom/rapid7/client/dcerpc/msrrp/dto/RegistryHive;->getShortName()Ljava/lang/String;

    .line 209
    .line 210
    .line 211
    move-result-object v3

    .line 212
    invoke-virtual {v3}, Ljava/lang/String;->isEmpty()Z

    .line 213
    .line 214
    .line 215
    move-result v5

    .line 216
    if-nez v5, :cond_0

    .line 217
    .line 218
    invoke-interface {v4, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 219
    .line 220
    .line 221
    :cond_0
    add-int/2addr v9, v7

    .line 222
    goto :goto_0

    .line 223
    :cond_1
    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;S)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "S)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 2
    .line 3
    .line 4
    iput-object p3, p0, Lcom/rapid7/client/dcerpc/msrrp/dto/RegistryHive;->fullName:Ljava/lang/String;

    .line 5
    .line 6
    iput-object p4, p0, Lcom/rapid7/client/dcerpc/msrrp/dto/RegistryHive;->shortName:Ljava/lang/String;

    .line 7
    .line 8
    iput-object p5, p0, Lcom/rapid7/client/dcerpc/msrrp/dto/RegistryHive;->opName:Ljava/lang/String;

    .line 9
    .line 10
    iput-short p6, p0, Lcom/rapid7/client/dcerpc/msrrp/dto/RegistryHive;->opNum:S

    .line 11
    .line 12
    return-void
.end method

.method public static getRegistryHiveByName(Ljava/lang/String;)Lcom/rapid7/client/dcerpc/msrrp/dto/RegistryHive;
    .locals 1

    .line 1
    sget-object v0, Lcom/rapid7/client/dcerpc/msrrp/dto/RegistryHive;->registryHiveByName:Ljava/util/Map;

    .line 2
    .line 3
    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    invoke-virtual {p0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    .line 8
    .line 9
    .line 10
    move-result-object p0

    .line 11
    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 12
    .line 13
    .line 14
    move-result-object p0

    .line 15
    check-cast p0, Lcom/rapid7/client/dcerpc/msrrp/dto/RegistryHive;

    .line 16
    .line 17
    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/rapid7/client/dcerpc/msrrp/dto/RegistryHive;
    .locals 1

    .line 1
    const-class v0, Lcom/rapid7/client/dcerpc/msrrp/dto/RegistryHive;

    .line 2
    .line 3
    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    check-cast p0, Lcom/rapid7/client/dcerpc/msrrp/dto/RegistryHive;

    .line 8
    .line 9
    return-object p0
.end method

.method public static values()[Lcom/rapid7/client/dcerpc/msrrp/dto/RegistryHive;
    .locals 1

    .line 1
    sget-object v0, Lcom/rapid7/client/dcerpc/msrrp/dto/RegistryHive;->$VALUES:[Lcom/rapid7/client/dcerpc/msrrp/dto/RegistryHive;

    .line 2
    .line 3
    invoke-virtual {v0}, [Lcom/rapid7/client/dcerpc/msrrp/dto/RegistryHive;->clone()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, [Lcom/rapid7/client/dcerpc/msrrp/dto/RegistryHive;

    .line 8
    .line 9
    return-object v0
.end method


# virtual methods
.method public getFullName()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/rapid7/client/dcerpc/msrrp/dto/RegistryHive;->fullName:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public getOpName()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/rapid7/client/dcerpc/msrrp/dto/RegistryHive;->opName:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public getOpNum()S
    .locals 1

    .line 1
    iget-short v0, p0, Lcom/rapid7/client/dcerpc/msrrp/dto/RegistryHive;->opNum:S

    .line 2
    .line 3
    return v0
.end method

.method public getRequest(I)Lcom/rapid7/client/dcerpc/msrrp/messages/HandleRequest;
    .locals 2

    .line 1
    new-instance v0, Lcom/rapid7/client/dcerpc/msrrp/messages/HandleRequest;

    .line 2
    .line 3
    iget-short v1, p0, Lcom/rapid7/client/dcerpc/msrrp/dto/RegistryHive;->opNum:S

    .line 4
    .line 5
    invoke-direct {v0, v1, p1}, Lcom/rapid7/client/dcerpc/msrrp/messages/HandleRequest;-><init>(SI)V

    .line 6
    .line 7
    .line 8
    return-object v0
.end method

.method public getShortName()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/rapid7/client/dcerpc/msrrp/dto/RegistryHive;->shortName:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method
