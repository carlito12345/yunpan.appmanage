.class public final enum Lcom/rapid7/client/dcerpc/PDUType;
.super Ljava/lang/Enum;
.source "SourceFile"

# interfaces
.implements Lcom/hierynomus/protocol/commons/EnumWithValue;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/rapid7/client/dcerpc/PDUType;",
        ">;",
        "Lcom/hierynomus/protocol/commons/EnumWithValue<",
        "Lcom/rapid7/client/dcerpc/PDUType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/rapid7/client/dcerpc/PDUType;

.field public static final enum ACK:Lcom/rapid7/client/dcerpc/PDUType;

.field public static final enum ALTER_CONTEXT:Lcom/rapid7/client/dcerpc/PDUType;

.field public static final enum ALTER_CONTEXT_RESP:Lcom/rapid7/client/dcerpc/PDUType;

.field public static final enum BIND:Lcom/rapid7/client/dcerpc/PDUType;

.field public static final enum BIND_ACK:Lcom/rapid7/client/dcerpc/PDUType;

.field public static final enum BIND_NAK:Lcom/rapid7/client/dcerpc/PDUType;

.field public static final enum CANCEL_ACK:Lcom/rapid7/client/dcerpc/PDUType;

.field public static final enum CL_CANCEL:Lcom/rapid7/client/dcerpc/PDUType;

.field public static final enum CO_CANCEL:Lcom/rapid7/client/dcerpc/PDUType;

.field public static final enum FACK:Lcom/rapid7/client/dcerpc/PDUType;

.field public static final enum FAULT:Lcom/rapid7/client/dcerpc/PDUType;

.field public static final enum NOCALL:Lcom/rapid7/client/dcerpc/PDUType;

.field public static final enum ORPHANED:Lcom/rapid7/client/dcerpc/PDUType;

.field public static final enum PING:Lcom/rapid7/client/dcerpc/PDUType;

.field public static final enum REJECT:Lcom/rapid7/client/dcerpc/PDUType;

.field public static final enum REQUEST:Lcom/rapid7/client/dcerpc/PDUType;

.field public static final enum RESPONSE:Lcom/rapid7/client/dcerpc/PDUType;

.field public static final enum SHUTDOWN:Lcom/rapid7/client/dcerpc/PDUType;

.field public static final enum WORKING:Lcom/rapid7/client/dcerpc/PDUType;


# instance fields
.field private final value:I


# direct methods
.method static constructor <clinit>()V
    .locals 22

    .line 1
    new-instance v0, Lcom/rapid7/client/dcerpc/PDUType;

    .line 2
    .line 3
    const-string v1, "REQUEST"

    .line 4
    .line 5
    const/4 v2, 0x0

    .line 6
    invoke-direct {v0, v1, v2, v2}, Lcom/rapid7/client/dcerpc/PDUType;-><init>(Ljava/lang/String;II)V

    .line 7
    .line 8
    .line 9
    sput-object v0, Lcom/rapid7/client/dcerpc/PDUType;->REQUEST:Lcom/rapid7/client/dcerpc/PDUType;

    .line 10
    .line 11
    new-instance v1, Lcom/rapid7/client/dcerpc/PDUType;

    .line 12
    .line 13
    const-string v3, "PING"

    .line 14
    .line 15
    const/4 v4, 0x1

    .line 16
    invoke-direct {v1, v3, v4, v4}, Lcom/rapid7/client/dcerpc/PDUType;-><init>(Ljava/lang/String;II)V

    .line 17
    .line 18
    .line 19
    sput-object v1, Lcom/rapid7/client/dcerpc/PDUType;->PING:Lcom/rapid7/client/dcerpc/PDUType;

    .line 20
    .line 21
    new-instance v3, Lcom/rapid7/client/dcerpc/PDUType;

    .line 22
    .line 23
    const-string v5, "RESPONSE"

    .line 24
    .line 25
    const/4 v6, 0x2

    .line 26
    invoke-direct {v3, v5, v6, v6}, Lcom/rapid7/client/dcerpc/PDUType;-><init>(Ljava/lang/String;II)V

    .line 27
    .line 28
    .line 29
    sput-object v3, Lcom/rapid7/client/dcerpc/PDUType;->RESPONSE:Lcom/rapid7/client/dcerpc/PDUType;

    .line 30
    .line 31
    new-instance v5, Lcom/rapid7/client/dcerpc/PDUType;

    .line 32
    .line 33
    const-string v7, "FAULT"

    .line 34
    .line 35
    const/4 v8, 0x3

    .line 36
    invoke-direct {v5, v7, v8, v8}, Lcom/rapid7/client/dcerpc/PDUType;-><init>(Ljava/lang/String;II)V

    .line 37
    .line 38
    .line 39
    sput-object v5, Lcom/rapid7/client/dcerpc/PDUType;->FAULT:Lcom/rapid7/client/dcerpc/PDUType;

    .line 40
    .line 41
    new-instance v7, Lcom/rapid7/client/dcerpc/PDUType;

    .line 42
    .line 43
    const-string v9, "WORKING"

    .line 44
    .line 45
    const/4 v10, 0x4

    .line 46
    invoke-direct {v7, v9, v10, v10}, Lcom/rapid7/client/dcerpc/PDUType;-><init>(Ljava/lang/String;II)V

    .line 47
    .line 48
    .line 49
    sput-object v7, Lcom/rapid7/client/dcerpc/PDUType;->WORKING:Lcom/rapid7/client/dcerpc/PDUType;

    .line 50
    .line 51
    new-instance v9, Lcom/rapid7/client/dcerpc/PDUType;

    .line 52
    .line 53
    const-string v11, "NOCALL"

    .line 54
    .line 55
    const/4 v12, 0x5

    .line 56
    invoke-direct {v9, v11, v12, v12}, Lcom/rapid7/client/dcerpc/PDUType;-><init>(Ljava/lang/String;II)V

    .line 57
    .line 58
    .line 59
    sput-object v9, Lcom/rapid7/client/dcerpc/PDUType;->NOCALL:Lcom/rapid7/client/dcerpc/PDUType;

    .line 60
    .line 61
    new-instance v11, Lcom/rapid7/client/dcerpc/PDUType;

    .line 62
    .line 63
    const-string v13, "REJECT"

    .line 64
    .line 65
    const/4 v14, 0x6

    .line 66
    invoke-direct {v11, v13, v14, v14}, Lcom/rapid7/client/dcerpc/PDUType;-><init>(Ljava/lang/String;II)V

    .line 67
    .line 68
    .line 69
    sput-object v11, Lcom/rapid7/client/dcerpc/PDUType;->REJECT:Lcom/rapid7/client/dcerpc/PDUType;

    .line 70
    .line 71
    new-instance v13, Lcom/rapid7/client/dcerpc/PDUType;

    .line 72
    .line 73
    const-string v15, "ACK"

    .line 74
    .line 75
    const/4 v14, 0x7

    .line 76
    invoke-direct {v13, v15, v14, v14}, Lcom/rapid7/client/dcerpc/PDUType;-><init>(Ljava/lang/String;II)V

    .line 77
    .line 78
    .line 79
    sput-object v13, Lcom/rapid7/client/dcerpc/PDUType;->ACK:Lcom/rapid7/client/dcerpc/PDUType;

    .line 80
    .line 81
    new-instance v15, Lcom/rapid7/client/dcerpc/PDUType;

    .line 82
    .line 83
    const-string v14, "CL_CANCEL"

    .line 84
    .line 85
    const/16 v12, 0x8

    .line 86
    .line 87
    invoke-direct {v15, v14, v12, v12}, Lcom/rapid7/client/dcerpc/PDUType;-><init>(Ljava/lang/String;II)V

    .line 88
    .line 89
    .line 90
    sput-object v15, Lcom/rapid7/client/dcerpc/PDUType;->CL_CANCEL:Lcom/rapid7/client/dcerpc/PDUType;

    .line 91
    .line 92
    new-instance v14, Lcom/rapid7/client/dcerpc/PDUType;

    .line 93
    .line 94
    const-string v12, "FACK"

    .line 95
    .line 96
    const/16 v10, 0x9

    .line 97
    .line 98
    invoke-direct {v14, v12, v10, v10}, Lcom/rapid7/client/dcerpc/PDUType;-><init>(Ljava/lang/String;II)V

    .line 99
    .line 100
    .line 101
    sput-object v14, Lcom/rapid7/client/dcerpc/PDUType;->FACK:Lcom/rapid7/client/dcerpc/PDUType;

    .line 102
    .line 103
    new-instance v12, Lcom/rapid7/client/dcerpc/PDUType;

    .line 104
    .line 105
    const-string v10, "CANCEL_ACK"

    .line 106
    .line 107
    const/16 v8, 0xa

    .line 108
    .line 109
    invoke-direct {v12, v10, v8, v8}, Lcom/rapid7/client/dcerpc/PDUType;-><init>(Ljava/lang/String;II)V

    .line 110
    .line 111
    .line 112
    sput-object v12, Lcom/rapid7/client/dcerpc/PDUType;->CANCEL_ACK:Lcom/rapid7/client/dcerpc/PDUType;

    .line 113
    .line 114
    new-instance v10, Lcom/rapid7/client/dcerpc/PDUType;

    .line 115
    .line 116
    const-string v8, "BIND"

    .line 117
    .line 118
    const/16 v6, 0xb

    .line 119
    .line 120
    invoke-direct {v10, v8, v6, v6}, Lcom/rapid7/client/dcerpc/PDUType;-><init>(Ljava/lang/String;II)V

    .line 121
    .line 122
    .line 123
    sput-object v10, Lcom/rapid7/client/dcerpc/PDUType;->BIND:Lcom/rapid7/client/dcerpc/PDUType;

    .line 124
    .line 125
    new-instance v8, Lcom/rapid7/client/dcerpc/PDUType;

    .line 126
    .line 127
    const-string v6, "BIND_ACK"

    .line 128
    .line 129
    const/16 v4, 0xc

    .line 130
    .line 131
    invoke-direct {v8, v6, v4, v4}, Lcom/rapid7/client/dcerpc/PDUType;-><init>(Ljava/lang/String;II)V

    .line 132
    .line 133
    .line 134
    sput-object v8, Lcom/rapid7/client/dcerpc/PDUType;->BIND_ACK:Lcom/rapid7/client/dcerpc/PDUType;

    .line 135
    .line 136
    new-instance v6, Lcom/rapid7/client/dcerpc/PDUType;

    .line 137
    .line 138
    const-string v4, "BIND_NAK"

    .line 139
    .line 140
    const/16 v2, 0xd

    .line 141
    .line 142
    invoke-direct {v6, v4, v2, v2}, Lcom/rapid7/client/dcerpc/PDUType;-><init>(Ljava/lang/String;II)V

    .line 143
    .line 144
    .line 145
    sput-object v6, Lcom/rapid7/client/dcerpc/PDUType;->BIND_NAK:Lcom/rapid7/client/dcerpc/PDUType;

    .line 146
    .line 147
    new-instance v4, Lcom/rapid7/client/dcerpc/PDUType;

    .line 148
    .line 149
    const-string v2, "ALTER_CONTEXT"

    .line 150
    .line 151
    move-object/from16 v16, v6

    .line 152
    .line 153
    const/16 v6, 0xe

    .line 154
    .line 155
    invoke-direct {v4, v2, v6, v6}, Lcom/rapid7/client/dcerpc/PDUType;-><init>(Ljava/lang/String;II)V

    .line 156
    .line 157
    .line 158
    sput-object v4, Lcom/rapid7/client/dcerpc/PDUType;->ALTER_CONTEXT:Lcom/rapid7/client/dcerpc/PDUType;

    .line 159
    .line 160
    new-instance v2, Lcom/rapid7/client/dcerpc/PDUType;

    .line 161
    .line 162
    const-string v6, "ALTER_CONTEXT_RESP"

    .line 163
    .line 164
    move-object/from16 v17, v4

    .line 165
    .line 166
    const/16 v4, 0xf

    .line 167
    .line 168
    invoke-direct {v2, v6, v4, v4}, Lcom/rapid7/client/dcerpc/PDUType;-><init>(Ljava/lang/String;II)V

    .line 169
    .line 170
    .line 171
    sput-object v2, Lcom/rapid7/client/dcerpc/PDUType;->ALTER_CONTEXT_RESP:Lcom/rapid7/client/dcerpc/PDUType;

    .line 172
    .line 173
    new-instance v6, Lcom/rapid7/client/dcerpc/PDUType;

    .line 174
    .line 175
    const-string v4, "SHUTDOWN"

    .line 176
    .line 177
    move-object/from16 v18, v2

    .line 178
    .line 179
    const/16 v2, 0x10

    .line 180
    .line 181
    move-object/from16 v19, v8

    .line 182
    .line 183
    const/16 v8, 0x11

    .line 184
    .line 185
    invoke-direct {v6, v4, v2, v8}, Lcom/rapid7/client/dcerpc/PDUType;-><init>(Ljava/lang/String;II)V

    .line 186
    .line 187
    .line 188
    sput-object v6, Lcom/rapid7/client/dcerpc/PDUType;->SHUTDOWN:Lcom/rapid7/client/dcerpc/PDUType;

    .line 189
    .line 190
    new-instance v4, Lcom/rapid7/client/dcerpc/PDUType;

    .line 191
    .line 192
    const-string v2, "CO_CANCEL"

    .line 193
    .line 194
    move-object/from16 v20, v6

    .line 195
    .line 196
    const/16 v6, 0x12

    .line 197
    .line 198
    invoke-direct {v4, v2, v8, v6}, Lcom/rapid7/client/dcerpc/PDUType;-><init>(Ljava/lang/String;II)V

    .line 199
    .line 200
    .line 201
    sput-object v4, Lcom/rapid7/client/dcerpc/PDUType;->CO_CANCEL:Lcom/rapid7/client/dcerpc/PDUType;

    .line 202
    .line 203
    new-instance v2, Lcom/rapid7/client/dcerpc/PDUType;

    .line 204
    .line 205
    const-string v8, "ORPHANED"

    .line 206
    .line 207
    move-object/from16 v21, v4

    .line 208
    .line 209
    const/16 v4, 0x13

    .line 210
    .line 211
    invoke-direct {v2, v8, v6, v4}, Lcom/rapid7/client/dcerpc/PDUType;-><init>(Ljava/lang/String;II)V

    .line 212
    .line 213
    .line 214
    sput-object v2, Lcom/rapid7/client/dcerpc/PDUType;->ORPHANED:Lcom/rapid7/client/dcerpc/PDUType;

    .line 215
    .line 216
    new-array v4, v4, [Lcom/rapid7/client/dcerpc/PDUType;

    .line 217
    .line 218
    const/4 v8, 0x0

    .line 219
    aput-object v0, v4, v8

    .line 220
    .line 221
    const/4 v0, 0x1

    .line 222
    aput-object v1, v4, v0

    .line 223
    .line 224
    const/4 v0, 0x2

    .line 225
    aput-object v3, v4, v0

    .line 226
    .line 227
    const/4 v0, 0x3

    .line 228
    aput-object v5, v4, v0

    .line 229
    .line 230
    const/4 v0, 0x4

    .line 231
    aput-object v7, v4, v0

    .line 232
    .line 233
    const/4 v0, 0x5

    .line 234
    aput-object v9, v4, v0

    .line 235
    .line 236
    const/4 v0, 0x6

    .line 237
    aput-object v11, v4, v0

    .line 238
    .line 239
    const/4 v0, 0x7

    .line 240
    aput-object v13, v4, v0

    .line 241
    .line 242
    const/16 v0, 0x8

    .line 243
    .line 244
    aput-object v15, v4, v0

    .line 245
    .line 246
    const/16 v0, 0x9

    .line 247
    .line 248
    aput-object v14, v4, v0

    .line 249
    .line 250
    const/16 v0, 0xa

    .line 251
    .line 252
    aput-object v12, v4, v0

    .line 253
    .line 254
    const/16 v0, 0xb

    .line 255
    .line 256
    aput-object v10, v4, v0

    .line 257
    .line 258
    const/16 v0, 0xc

    .line 259
    .line 260
    aput-object v19, v4, v0

    .line 261
    .line 262
    const/16 v0, 0xd

    .line 263
    .line 264
    aput-object v16, v4, v0

    .line 265
    .line 266
    const/16 v0, 0xe

    .line 267
    .line 268
    aput-object v17, v4, v0

    .line 269
    .line 270
    const/16 v0, 0xf

    .line 271
    .line 272
    aput-object v18, v4, v0

    .line 273
    .line 274
    const/16 v0, 0x10

    .line 275
    .line 276
    aput-object v20, v4, v0

    .line 277
    .line 278
    const/16 v0, 0x11

    .line 279
    .line 280
    aput-object v21, v4, v0

    .line 281
    .line 282
    aput-object v2, v4, v6

    .line 283
    .line 284
    sput-object v4, Lcom/rapid7/client/dcerpc/PDUType;->$VALUES:[Lcom/rapid7/client/dcerpc/PDUType;

    .line 285
    .line 286
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
    iput p3, p0, Lcom/rapid7/client/dcerpc/PDUType;->value:I

    .line 5
    .line 6
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/rapid7/client/dcerpc/PDUType;
    .locals 1

    .line 1
    const-class v0, Lcom/rapid7/client/dcerpc/PDUType;

    .line 2
    .line 3
    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    check-cast p0, Lcom/rapid7/client/dcerpc/PDUType;

    .line 8
    .line 9
    return-object p0
.end method

.method public static values()[Lcom/rapid7/client/dcerpc/PDUType;
    .locals 1

    .line 1
    sget-object v0, Lcom/rapid7/client/dcerpc/PDUType;->$VALUES:[Lcom/rapid7/client/dcerpc/PDUType;

    .line 2
    .line 3
    invoke-virtual {v0}, [Lcom/rapid7/client/dcerpc/PDUType;->clone()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, [Lcom/rapid7/client/dcerpc/PDUType;

    .line 8
    .line 9
    return-object v0
.end method


# virtual methods
.method public getValue()J
    .locals 2

    .line 1
    iget v0, p0, Lcom/rapid7/client/dcerpc/PDUType;->value:I

    .line 2
    .line 3
    int-to-long v0, v0

    .line 4
    return-wide v0
.end method
