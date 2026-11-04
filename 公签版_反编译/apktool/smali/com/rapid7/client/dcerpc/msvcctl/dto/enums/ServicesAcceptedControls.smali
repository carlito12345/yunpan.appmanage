.class public final enum Lcom/rapid7/client/dcerpc/msvcctl/dto/enums/ServicesAcceptedControls;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/rapid7/client/dcerpc/msvcctl/dto/enums/ServicesAcceptedControls;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/rapid7/client/dcerpc/msvcctl/dto/enums/ServicesAcceptedControls;

.field private static final MS_TYPEDMAP:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Lcom/rapid7/client/dcerpc/msvcctl/dto/enums/ServicesAcceptedControls;",
            ">;"
        }
    .end annotation
.end field

.field public static final enum SERVICE_ACCEPT_HARDWAREPROFILECHANGE:Lcom/rapid7/client/dcerpc/msvcctl/dto/enums/ServicesAcceptedControls;

.field public static final enum SERVICE_ACCEPT_NETBINDCHANGE:Lcom/rapid7/client/dcerpc/msvcctl/dto/enums/ServicesAcceptedControls;

.field public static final enum SERVICE_ACCEPT_NONE:Lcom/rapid7/client/dcerpc/msvcctl/dto/enums/ServicesAcceptedControls;

.field public static final enum SERVICE_ACCEPT_PARAMCHANGE:Lcom/rapid7/client/dcerpc/msvcctl/dto/enums/ServicesAcceptedControls;

.field public static final enum SERVICE_ACCEPT_PAUSE_CONTINUE:Lcom/rapid7/client/dcerpc/msvcctl/dto/enums/ServicesAcceptedControls;

.field public static final enum SERVICE_ACCEPT_POWEREVENT:Lcom/rapid7/client/dcerpc/msvcctl/dto/enums/ServicesAcceptedControls;

.field public static final enum SERVICE_ACCEPT_PRESHUTDOWN:Lcom/rapid7/client/dcerpc/msvcctl/dto/enums/ServicesAcceptedControls;

.field public static final enum SERVICE_ACCEPT_SESSIONCHANGE:Lcom/rapid7/client/dcerpc/msvcctl/dto/enums/ServicesAcceptedControls;

.field public static final enum SERVICE_ACCEPT_SHUTDOWN:Lcom/rapid7/client/dcerpc/msvcctl/dto/enums/ServicesAcceptedControls;

.field public static final enum SERVICE_ACCEPT_STOP:Lcom/rapid7/client/dcerpc/msvcctl/dto/enums/ServicesAcceptedControls;

.field public static final enum SERVICE_ACCEPT_TIMECHANGE:Lcom/rapid7/client/dcerpc/msvcctl/dto/enums/ServicesAcceptedControls;

.field public static final enum SERVICE_ACCEPT_TRIGGEREVENT:Lcom/rapid7/client/dcerpc/msvcctl/dto/enums/ServicesAcceptedControls;

.field public static final enum UNKNOWN:Lcom/rapid7/client/dcerpc/msvcctl/dto/enums/ServicesAcceptedControls;


# instance fields
.field private final m_value:I


# direct methods
.method static constructor <clinit>()V
    .locals 16

    .line 1
    new-instance v0, Lcom/rapid7/client/dcerpc/msvcctl/dto/enums/ServicesAcceptedControls;

    .line 2
    .line 3
    const/16 v1, 0x400

    .line 4
    .line 5
    const-string v2, "SERVICE_ACCEPT_TRIGGEREVENT"

    .line 6
    .line 7
    const/4 v3, 0x0

    .line 8
    invoke-direct {v0, v2, v3, v1}, Lcom/rapid7/client/dcerpc/msvcctl/dto/enums/ServicesAcceptedControls;-><init>(Ljava/lang/String;II)V

    .line 9
    .line 10
    .line 11
    sput-object v0, Lcom/rapid7/client/dcerpc/msvcctl/dto/enums/ServicesAcceptedControls;->SERVICE_ACCEPT_TRIGGEREVENT:Lcom/rapid7/client/dcerpc/msvcctl/dto/enums/ServicesAcceptedControls;

    .line 12
    .line 13
    new-instance v1, Lcom/rapid7/client/dcerpc/msvcctl/dto/enums/ServicesAcceptedControls;

    .line 14
    .line 15
    const/16 v2, 0x200

    .line 16
    .line 17
    const-string v4, "SERVICE_ACCEPT_TIMECHANGE"

    .line 18
    .line 19
    const/4 v5, 0x1

    .line 20
    invoke-direct {v1, v4, v5, v2}, Lcom/rapid7/client/dcerpc/msvcctl/dto/enums/ServicesAcceptedControls;-><init>(Ljava/lang/String;II)V

    .line 21
    .line 22
    .line 23
    sput-object v1, Lcom/rapid7/client/dcerpc/msvcctl/dto/enums/ServicesAcceptedControls;->SERVICE_ACCEPT_TIMECHANGE:Lcom/rapid7/client/dcerpc/msvcctl/dto/enums/ServicesAcceptedControls;

    .line 24
    .line 25
    new-instance v2, Lcom/rapid7/client/dcerpc/msvcctl/dto/enums/ServicesAcceptedControls;

    .line 26
    .line 27
    const/16 v4, 0x100

    .line 28
    .line 29
    const-string v6, "SERVICE_ACCEPT_PRESHUTDOWN"

    .line 30
    .line 31
    const/4 v7, 0x2

    .line 32
    invoke-direct {v2, v6, v7, v4}, Lcom/rapid7/client/dcerpc/msvcctl/dto/enums/ServicesAcceptedControls;-><init>(Ljava/lang/String;II)V

    .line 33
    .line 34
    .line 35
    sput-object v2, Lcom/rapid7/client/dcerpc/msvcctl/dto/enums/ServicesAcceptedControls;->SERVICE_ACCEPT_PRESHUTDOWN:Lcom/rapid7/client/dcerpc/msvcctl/dto/enums/ServicesAcceptedControls;

    .line 36
    .line 37
    new-instance v4, Lcom/rapid7/client/dcerpc/msvcctl/dto/enums/ServicesAcceptedControls;

    .line 38
    .line 39
    const/4 v6, 0x3

    .line 40
    const/16 v8, 0x80

    .line 41
    .line 42
    const-string v9, "SERVICE_ACCEPT_SESSIONCHANGE"

    .line 43
    .line 44
    invoke-direct {v4, v9, v6, v8}, Lcom/rapid7/client/dcerpc/msvcctl/dto/enums/ServicesAcceptedControls;-><init>(Ljava/lang/String;II)V

    .line 45
    .line 46
    .line 47
    sput-object v4, Lcom/rapid7/client/dcerpc/msvcctl/dto/enums/ServicesAcceptedControls;->SERVICE_ACCEPT_SESSIONCHANGE:Lcom/rapid7/client/dcerpc/msvcctl/dto/enums/ServicesAcceptedControls;

    .line 48
    .line 49
    new-instance v8, Lcom/rapid7/client/dcerpc/msvcctl/dto/enums/ServicesAcceptedControls;

    .line 50
    .line 51
    const/16 v9, 0x40

    .line 52
    .line 53
    const-string v10, "SERVICE_ACCEPT_POWEREVENT"

    .line 54
    .line 55
    const/4 v11, 0x4

    .line 56
    invoke-direct {v8, v10, v11, v9}, Lcom/rapid7/client/dcerpc/msvcctl/dto/enums/ServicesAcceptedControls;-><init>(Ljava/lang/String;II)V

    .line 57
    .line 58
    .line 59
    sput-object v8, Lcom/rapid7/client/dcerpc/msvcctl/dto/enums/ServicesAcceptedControls;->SERVICE_ACCEPT_POWEREVENT:Lcom/rapid7/client/dcerpc/msvcctl/dto/enums/ServicesAcceptedControls;

    .line 60
    .line 61
    new-instance v9, Lcom/rapid7/client/dcerpc/msvcctl/dto/enums/ServicesAcceptedControls;

    .line 62
    .line 63
    const/4 v10, 0x5

    .line 64
    const/16 v12, 0x20

    .line 65
    .line 66
    const-string v13, "SERVICE_ACCEPT_HARDWAREPROFILECHANGE"

    .line 67
    .line 68
    invoke-direct {v9, v13, v10, v12}, Lcom/rapid7/client/dcerpc/msvcctl/dto/enums/ServicesAcceptedControls;-><init>(Ljava/lang/String;II)V

    .line 69
    .line 70
    .line 71
    sput-object v9, Lcom/rapid7/client/dcerpc/msvcctl/dto/enums/ServicesAcceptedControls;->SERVICE_ACCEPT_HARDWAREPROFILECHANGE:Lcom/rapid7/client/dcerpc/msvcctl/dto/enums/ServicesAcceptedControls;

    .line 72
    .line 73
    new-instance v12, Lcom/rapid7/client/dcerpc/msvcctl/dto/enums/ServicesAcceptedControls;

    .line 74
    .line 75
    const/4 v13, 0x6

    .line 76
    const/16 v14, 0x10

    .line 77
    .line 78
    const-string v15, "SERVICE_ACCEPT_NETBINDCHANGE"

    .line 79
    .line 80
    invoke-direct {v12, v15, v13, v14}, Lcom/rapid7/client/dcerpc/msvcctl/dto/enums/ServicesAcceptedControls;-><init>(Ljava/lang/String;II)V

    .line 81
    .line 82
    .line 83
    sput-object v12, Lcom/rapid7/client/dcerpc/msvcctl/dto/enums/ServicesAcceptedControls;->SERVICE_ACCEPT_NETBINDCHANGE:Lcom/rapid7/client/dcerpc/msvcctl/dto/enums/ServicesAcceptedControls;

    .line 84
    .line 85
    new-instance v14, Lcom/rapid7/client/dcerpc/msvcctl/dto/enums/ServicesAcceptedControls;

    .line 86
    .line 87
    const-string v15, "SERVICE_ACCEPT_PARAMCHANGE"

    .line 88
    .line 89
    const/4 v13, 0x7

    .line 90
    const/16 v10, 0x8

    .line 91
    .line 92
    invoke-direct {v14, v15, v13, v10}, Lcom/rapid7/client/dcerpc/msvcctl/dto/enums/ServicesAcceptedControls;-><init>(Ljava/lang/String;II)V

    .line 93
    .line 94
    .line 95
    sput-object v14, Lcom/rapid7/client/dcerpc/msvcctl/dto/enums/ServicesAcceptedControls;->SERVICE_ACCEPT_PARAMCHANGE:Lcom/rapid7/client/dcerpc/msvcctl/dto/enums/ServicesAcceptedControls;

    .line 96
    .line 97
    new-instance v15, Lcom/rapid7/client/dcerpc/msvcctl/dto/enums/ServicesAcceptedControls;

    .line 98
    .line 99
    const-string v13, "SERVICE_ACCEPT_SHUTDOWN"

    .line 100
    .line 101
    invoke-direct {v15, v13, v10, v11}, Lcom/rapid7/client/dcerpc/msvcctl/dto/enums/ServicesAcceptedControls;-><init>(Ljava/lang/String;II)V

    .line 102
    .line 103
    .line 104
    sput-object v15, Lcom/rapid7/client/dcerpc/msvcctl/dto/enums/ServicesAcceptedControls;->SERVICE_ACCEPT_SHUTDOWN:Lcom/rapid7/client/dcerpc/msvcctl/dto/enums/ServicesAcceptedControls;

    .line 105
    .line 106
    new-instance v13, Lcom/rapid7/client/dcerpc/msvcctl/dto/enums/ServicesAcceptedControls;

    .line 107
    .line 108
    const-string v10, "SERVICE_ACCEPT_PAUSE_CONTINUE"

    .line 109
    .line 110
    const/16 v11, 0x9

    .line 111
    .line 112
    invoke-direct {v13, v10, v11, v7}, Lcom/rapid7/client/dcerpc/msvcctl/dto/enums/ServicesAcceptedControls;-><init>(Ljava/lang/String;II)V

    .line 113
    .line 114
    .line 115
    sput-object v13, Lcom/rapid7/client/dcerpc/msvcctl/dto/enums/ServicesAcceptedControls;->SERVICE_ACCEPT_PAUSE_CONTINUE:Lcom/rapid7/client/dcerpc/msvcctl/dto/enums/ServicesAcceptedControls;

    .line 116
    .line 117
    new-instance v10, Lcom/rapid7/client/dcerpc/msvcctl/dto/enums/ServicesAcceptedControls;

    .line 118
    .line 119
    const-string v11, "SERVICE_ACCEPT_STOP"

    .line 120
    .line 121
    const/16 v6, 0xa

    .line 122
    .line 123
    invoke-direct {v10, v11, v6, v5}, Lcom/rapid7/client/dcerpc/msvcctl/dto/enums/ServicesAcceptedControls;-><init>(Ljava/lang/String;II)V

    .line 124
    .line 125
    .line 126
    sput-object v10, Lcom/rapid7/client/dcerpc/msvcctl/dto/enums/ServicesAcceptedControls;->SERVICE_ACCEPT_STOP:Lcom/rapid7/client/dcerpc/msvcctl/dto/enums/ServicesAcceptedControls;

    .line 127
    .line 128
    new-instance v11, Lcom/rapid7/client/dcerpc/msvcctl/dto/enums/ServicesAcceptedControls;

    .line 129
    .line 130
    const-string v6, "SERVICE_ACCEPT_NONE"

    .line 131
    .line 132
    const/16 v7, 0xb

    .line 133
    .line 134
    invoke-direct {v11, v6, v7, v3}, Lcom/rapid7/client/dcerpc/msvcctl/dto/enums/ServicesAcceptedControls;-><init>(Ljava/lang/String;II)V

    .line 135
    .line 136
    .line 137
    sput-object v11, Lcom/rapid7/client/dcerpc/msvcctl/dto/enums/ServicesAcceptedControls;->SERVICE_ACCEPT_NONE:Lcom/rapid7/client/dcerpc/msvcctl/dto/enums/ServicesAcceptedControls;

    .line 138
    .line 139
    new-instance v6, Lcom/rapid7/client/dcerpc/msvcctl/dto/enums/ServicesAcceptedControls;

    .line 140
    .line 141
    const/16 v7, 0xc

    .line 142
    .line 143
    const/4 v5, -0x1

    .line 144
    const-string v3, "UNKNOWN"

    .line 145
    .line 146
    invoke-direct {v6, v3, v7, v5}, Lcom/rapid7/client/dcerpc/msvcctl/dto/enums/ServicesAcceptedControls;-><init>(Ljava/lang/String;II)V

    .line 147
    .line 148
    .line 149
    sput-object v6, Lcom/rapid7/client/dcerpc/msvcctl/dto/enums/ServicesAcceptedControls;->UNKNOWN:Lcom/rapid7/client/dcerpc/msvcctl/dto/enums/ServicesAcceptedControls;

    .line 150
    .line 151
    const/16 v3, 0xd

    .line 152
    .line 153
    new-array v3, v3, [Lcom/rapid7/client/dcerpc/msvcctl/dto/enums/ServicesAcceptedControls;

    .line 154
    .line 155
    const/4 v5, 0x0

    .line 156
    aput-object v0, v3, v5

    .line 157
    .line 158
    const/4 v0, 0x1

    .line 159
    aput-object v1, v3, v0

    .line 160
    .line 161
    const/4 v0, 0x2

    .line 162
    aput-object v2, v3, v0

    .line 163
    .line 164
    const/4 v0, 0x3

    .line 165
    aput-object v4, v3, v0

    .line 166
    .line 167
    const/4 v0, 0x4

    .line 168
    aput-object v8, v3, v0

    .line 169
    .line 170
    const/4 v0, 0x5

    .line 171
    aput-object v9, v3, v0

    .line 172
    .line 173
    const/4 v0, 0x6

    .line 174
    aput-object v12, v3, v0

    .line 175
    .line 176
    const/4 v0, 0x7

    .line 177
    aput-object v14, v3, v0

    .line 178
    .line 179
    const/16 v0, 0x8

    .line 180
    .line 181
    aput-object v15, v3, v0

    .line 182
    .line 183
    const/16 v0, 0x9

    .line 184
    .line 185
    aput-object v13, v3, v0

    .line 186
    .line 187
    const/16 v0, 0xa

    .line 188
    .line 189
    aput-object v10, v3, v0

    .line 190
    .line 191
    const/16 v0, 0xb

    .line 192
    .line 193
    aput-object v11, v3, v0

    .line 194
    .line 195
    aput-object v6, v3, v7

    .line 196
    .line 197
    sput-object v3, Lcom/rapid7/client/dcerpc/msvcctl/dto/enums/ServicesAcceptedControls;->$VALUES:[Lcom/rapid7/client/dcerpc/msvcctl/dto/enums/ServicesAcceptedControls;

    .line 198
    .line 199
    new-instance v0, Ljava/util/HashMap;

    .line 200
    .line 201
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 202
    .line 203
    .line 204
    sput-object v0, Lcom/rapid7/client/dcerpc/msvcctl/dto/enums/ServicesAcceptedControls;->MS_TYPEDMAP:Ljava/util/Map;

    .line 205
    .line 206
    invoke-static {}, Lcom/rapid7/client/dcerpc/msvcctl/dto/enums/ServicesAcceptedControls;->values()[Lcom/rapid7/client/dcerpc/msvcctl/dto/enums/ServicesAcceptedControls;

    .line 207
    .line 208
    .line 209
    move-result-object v0

    .line 210
    array-length v1, v0

    .line 211
    const/4 v3, 0x0

    .line 212
    :goto_0
    if-ge v3, v1, :cond_0

    .line 213
    .line 214
    aget-object v2, v0, v3

    .line 215
    .line 216
    sget-object v4, Lcom/rapid7/client/dcerpc/msvcctl/dto/enums/ServicesAcceptedControls;->MS_TYPEDMAP:Ljava/util/Map;

    .line 217
    .line 218
    invoke-virtual {v2}, Lcom/rapid7/client/dcerpc/msvcctl/dto/enums/ServicesAcceptedControls;->getValue()I

    .line 219
    .line 220
    .line 221
    move-result v5

    .line 222
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 223
    .line 224
    .line 225
    move-result-object v5

    .line 226
    invoke-interface {v4, v5, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 227
    .line 228
    .line 229
    const/4 v2, 0x1

    .line 230
    add-int/2addr v3, v2

    .line 231
    goto :goto_0

    .line 232
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
    iput p3, p0, Lcom/rapid7/client/dcerpc/msvcctl/dto/enums/ServicesAcceptedControls;->m_value:I

    .line 5
    .line 6
    return-void
.end method

.method public static fromInt(I)Lcom/rapid7/client/dcerpc/msvcctl/dto/enums/ServicesAcceptedControls;
    .locals 1

    .line 1
    sget-object v0, Lcom/rapid7/client/dcerpc/msvcctl/dto/enums/ServicesAcceptedControls;->MS_TYPEDMAP:Ljava/util/Map;

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
    check-cast p0, Lcom/rapid7/client/dcerpc/msvcctl/dto/enums/ServicesAcceptedControls;

    .line 12
    .line 13
    if-nez p0, :cond_0

    .line 14
    .line 15
    sget-object p0, Lcom/rapid7/client/dcerpc/msvcctl/dto/enums/ServicesAcceptedControls;->UNKNOWN:Lcom/rapid7/client/dcerpc/msvcctl/dto/enums/ServicesAcceptedControls;

    .line 16
    .line 17
    :cond_0
    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/rapid7/client/dcerpc/msvcctl/dto/enums/ServicesAcceptedControls;
    .locals 1

    .line 1
    const-class v0, Lcom/rapid7/client/dcerpc/msvcctl/dto/enums/ServicesAcceptedControls;

    .line 2
    .line 3
    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    check-cast p0, Lcom/rapid7/client/dcerpc/msvcctl/dto/enums/ServicesAcceptedControls;

    .line 8
    .line 9
    return-object p0
.end method

.method public static values()[Lcom/rapid7/client/dcerpc/msvcctl/dto/enums/ServicesAcceptedControls;
    .locals 1

    .line 1
    sget-object v0, Lcom/rapid7/client/dcerpc/msvcctl/dto/enums/ServicesAcceptedControls;->$VALUES:[Lcom/rapid7/client/dcerpc/msvcctl/dto/enums/ServicesAcceptedControls;

    .line 2
    .line 3
    invoke-virtual {v0}, [Lcom/rapid7/client/dcerpc/msvcctl/dto/enums/ServicesAcceptedControls;->clone()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, [Lcom/rapid7/client/dcerpc/msvcctl/dto/enums/ServicesAcceptedControls;

    .line 8
    .line 9
    return-object v0
.end method


# virtual methods
.method public getValue()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/rapid7/client/dcerpc/msvcctl/dto/enums/ServicesAcceptedControls;->m_value:I

    .line 2
    .line 3
    return v0
.end method
