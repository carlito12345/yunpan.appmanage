.class public final enum Lcom/rapid7/client/dcerpc/mssrvs/dto/NetprPathType;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/rapid7/client/dcerpc/mssrvs/dto/NetprPathType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/rapid7/client/dcerpc/mssrvs/dto/NetprPathType;

.field public static final enum ITYPE_DEVICE_COM:Lcom/rapid7/client/dcerpc/mssrvs/dto/NetprPathType;

.field public static final enum ITYPE_DEVICE_CON:Lcom/rapid7/client/dcerpc/mssrvs/dto/NetprPathType;

.field public static final enum ITYPE_DEVICE_DISK:Lcom/rapid7/client/dcerpc/mssrvs/dto/NetprPathType;

.field public static final enum ITYPE_DEVICE_LPT:Lcom/rapid7/client/dcerpc/mssrvs/dto/NetprPathType;

.field public static final enum ITYPE_DEVICE_NUL:Lcom/rapid7/client/dcerpc/mssrvs/dto/NetprPathType;

.field public static final enum ITYPE_PATH_ABSD:Lcom/rapid7/client/dcerpc/mssrvs/dto/NetprPathType;

.field public static final enum ITYPE_PATH_ABSD_WC:Lcom/rapid7/client/dcerpc/mssrvs/dto/NetprPathType;

.field public static final enum ITYPE_PATH_ABSND:Lcom/rapid7/client/dcerpc/mssrvs/dto/NetprPathType;

.field public static final enum ITYPE_PATH_ABSND_WC:Lcom/rapid7/client/dcerpc/mssrvs/dto/NetprPathType;

.field public static final enum ITYPE_PATH_RELD:Lcom/rapid7/client/dcerpc/mssrvs/dto/NetprPathType;

.field public static final enum ITYPE_PATH_RELD_WC:Lcom/rapid7/client/dcerpc/mssrvs/dto/NetprPathType;

.field public static final enum ITYPE_PATH_RELND:Lcom/rapid7/client/dcerpc/mssrvs/dto/NetprPathType;

.field public static final enum ITYPE_PATH_RELND_WC:Lcom/rapid7/client/dcerpc/mssrvs/dto/NetprPathType;

.field public static final enum ITYPE_PATH_SYS_COMM:Lcom/rapid7/client/dcerpc/mssrvs/dto/NetprPathType;

.field public static final enum ITYPE_PATH_SYS_COMM_M:Lcom/rapid7/client/dcerpc/mssrvs/dto/NetprPathType;

.field public static final enum ITYPE_PATH_SYS_MSLOT:Lcom/rapid7/client/dcerpc/mssrvs/dto/NetprPathType;

.field public static final enum ITYPE_PATH_SYS_MSLOT_M:Lcom/rapid7/client/dcerpc/mssrvs/dto/NetprPathType;

.field public static final enum ITYPE_PATH_SYS_PIPE:Lcom/rapid7/client/dcerpc/mssrvs/dto/NetprPathType;

.field public static final enum ITYPE_PATH_SYS_PIPE_M:Lcom/rapid7/client/dcerpc/mssrvs/dto/NetprPathType;

.field public static final enum ITYPE_PATH_SYS_PRINT:Lcom/rapid7/client/dcerpc/mssrvs/dto/NetprPathType;

.field public static final enum ITYPE_PATH_SYS_PRINT_M:Lcom/rapid7/client/dcerpc/mssrvs/dto/NetprPathType;

.field public static final enum ITYPE_PATH_SYS_QUEUE:Lcom/rapid7/client/dcerpc/mssrvs/dto/NetprPathType;

.field public static final enum ITYPE_PATH_SYS_QUEUE_M:Lcom/rapid7/client/dcerpc/mssrvs/dto/NetprPathType;

.field public static final enum ITYPE_PATH_SYS_SEM:Lcom/rapid7/client/dcerpc/mssrvs/dto/NetprPathType;

.field public static final enum ITYPE_PATH_SYS_SEM_M:Lcom/rapid7/client/dcerpc/mssrvs/dto/NetprPathType;

.field public static final enum ITYPE_PATH_SYS_SHMEM:Lcom/rapid7/client/dcerpc/mssrvs/dto/NetprPathType;

.field public static final enum ITYPE_PATH_SYS_SHMEM_M:Lcom/rapid7/client/dcerpc/mssrvs/dto/NetprPathType;

.field public static final enum ITYPE_UNC:Lcom/rapid7/client/dcerpc/mssrvs/dto/NetprPathType;

.field public static final enum ITYPE_UNC_COMPNAME:Lcom/rapid7/client/dcerpc/mssrvs/dto/NetprPathType;

.field public static final enum ITYPE_UNC_SYS_MSLOT:Lcom/rapid7/client/dcerpc/mssrvs/dto/NetprPathType;

.field public static final enum ITYPE_UNC_SYS_PIPE:Lcom/rapid7/client/dcerpc/mssrvs/dto/NetprPathType;

.field public static final enum ITYPE_UNC_SYS_QUEUE:Lcom/rapid7/client/dcerpc/mssrvs/dto/NetprPathType;

.field public static final enum ITYPE_UNC_SYS_SEM:Lcom/rapid7/client/dcerpc/mssrvs/dto/NetprPathType;

.field public static final enum ITYPE_UNC_SYS_SHMEM:Lcom/rapid7/client/dcerpc/mssrvs/dto/NetprPathType;

.field public static final enum ITYPE_UNC_WC:Lcom/rapid7/client/dcerpc/mssrvs/dto/NetprPathType;

.field public static final enum ITYPE_UNC_WC_PATH:Lcom/rapid7/client/dcerpc/mssrvs/dto/NetprPathType;

.field private static final ids:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Lcom/rapid7/client/dcerpc/mssrvs/dto/NetprPathType;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final id:I


# direct methods
.method static constructor <clinit>()V
    .locals 39

    .line 1
    new-instance v0, Lcom/rapid7/client/dcerpc/mssrvs/dto/NetprPathType;

    .line 2
    .line 3
    const/16 v1, 0x1030

    .line 4
    .line 5
    const-string v2, "ITYPE_UNC_COMPNAME"

    .line 6
    .line 7
    const/4 v3, 0x0

    .line 8
    invoke-direct {v0, v2, v3, v1}, Lcom/rapid7/client/dcerpc/mssrvs/dto/NetprPathType;-><init>(Ljava/lang/String;II)V

    .line 9
    .line 10
    .line 11
    sput-object v0, Lcom/rapid7/client/dcerpc/mssrvs/dto/NetprPathType;->ITYPE_UNC_COMPNAME:Lcom/rapid7/client/dcerpc/mssrvs/dto/NetprPathType;

    .line 12
    .line 13
    new-instance v1, Lcom/rapid7/client/dcerpc/mssrvs/dto/NetprPathType;

    .line 14
    .line 15
    const/4 v2, 0x1

    .line 16
    const/16 v4, 0x1031

    .line 17
    .line 18
    const-string v5, "ITYPE_UNC_WC"

    .line 19
    .line 20
    invoke-direct {v1, v5, v2, v4}, Lcom/rapid7/client/dcerpc/mssrvs/dto/NetprPathType;-><init>(Ljava/lang/String;II)V

    .line 21
    .line 22
    .line 23
    sput-object v1, Lcom/rapid7/client/dcerpc/mssrvs/dto/NetprPathType;->ITYPE_UNC_WC:Lcom/rapid7/client/dcerpc/mssrvs/dto/NetprPathType;

    .line 24
    .line 25
    new-instance v4, Lcom/rapid7/client/dcerpc/mssrvs/dto/NetprPathType;

    .line 26
    .line 27
    const/4 v5, 0x2

    .line 28
    const/16 v6, 0x1000

    .line 29
    .line 30
    const-string v7, "ITYPE_UNC"

    .line 31
    .line 32
    invoke-direct {v4, v7, v5, v6}, Lcom/rapid7/client/dcerpc/mssrvs/dto/NetprPathType;-><init>(Ljava/lang/String;II)V

    .line 33
    .line 34
    .line 35
    sput-object v4, Lcom/rapid7/client/dcerpc/mssrvs/dto/NetprPathType;->ITYPE_UNC:Lcom/rapid7/client/dcerpc/mssrvs/dto/NetprPathType;

    .line 36
    .line 37
    new-instance v6, Lcom/rapid7/client/dcerpc/mssrvs/dto/NetprPathType;

    .line 38
    .line 39
    const/4 v7, 0x3

    .line 40
    const/16 v8, 0x1001

    .line 41
    .line 42
    const-string v9, "ITYPE_UNC_WC_PATH"

    .line 43
    .line 44
    invoke-direct {v6, v9, v7, v8}, Lcom/rapid7/client/dcerpc/mssrvs/dto/NetprPathType;-><init>(Ljava/lang/String;II)V

    .line 45
    .line 46
    .line 47
    sput-object v6, Lcom/rapid7/client/dcerpc/mssrvs/dto/NetprPathType;->ITYPE_UNC_WC_PATH:Lcom/rapid7/client/dcerpc/mssrvs/dto/NetprPathType;

    .line 48
    .line 49
    new-instance v8, Lcom/rapid7/client/dcerpc/mssrvs/dto/NetprPathType;

    .line 50
    .line 51
    const/4 v9, 0x4

    .line 52
    const/16 v10, 0x1900

    .line 53
    .line 54
    const-string v11, "ITYPE_UNC_SYS_SEM"

    .line 55
    .line 56
    invoke-direct {v8, v11, v9, v10}, Lcom/rapid7/client/dcerpc/mssrvs/dto/NetprPathType;-><init>(Ljava/lang/String;II)V

    .line 57
    .line 58
    .line 59
    sput-object v8, Lcom/rapid7/client/dcerpc/mssrvs/dto/NetprPathType;->ITYPE_UNC_SYS_SEM:Lcom/rapid7/client/dcerpc/mssrvs/dto/NetprPathType;

    .line 60
    .line 61
    new-instance v10, Lcom/rapid7/client/dcerpc/mssrvs/dto/NetprPathType;

    .line 62
    .line 63
    const/4 v11, 0x5

    .line 64
    const/16 v12, 0x1a00

    .line 65
    .line 66
    const-string v13, "ITYPE_UNC_SYS_SHMEM"

    .line 67
    .line 68
    invoke-direct {v10, v13, v11, v12}, Lcom/rapid7/client/dcerpc/mssrvs/dto/NetprPathType;-><init>(Ljava/lang/String;II)V

    .line 69
    .line 70
    .line 71
    sput-object v10, Lcom/rapid7/client/dcerpc/mssrvs/dto/NetprPathType;->ITYPE_UNC_SYS_SHMEM:Lcom/rapid7/client/dcerpc/mssrvs/dto/NetprPathType;

    .line 72
    .line 73
    new-instance v12, Lcom/rapid7/client/dcerpc/mssrvs/dto/NetprPathType;

    .line 74
    .line 75
    const/4 v13, 0x6

    .line 76
    const/16 v14, 0x1800

    .line 77
    .line 78
    const-string v15, "ITYPE_UNC_SYS_MSLOT"

    .line 79
    .line 80
    invoke-direct {v12, v15, v13, v14}, Lcom/rapid7/client/dcerpc/mssrvs/dto/NetprPathType;-><init>(Ljava/lang/String;II)V

    .line 81
    .line 82
    .line 83
    sput-object v12, Lcom/rapid7/client/dcerpc/mssrvs/dto/NetprPathType;->ITYPE_UNC_SYS_MSLOT:Lcom/rapid7/client/dcerpc/mssrvs/dto/NetprPathType;

    .line 84
    .line 85
    new-instance v14, Lcom/rapid7/client/dcerpc/mssrvs/dto/NetprPathType;

    .line 86
    .line 87
    const/4 v15, 0x7

    .line 88
    const/16 v13, 0x1b00

    .line 89
    .line 90
    const-string v11, "ITYPE_UNC_SYS_PIPE"

    .line 91
    .line 92
    invoke-direct {v14, v11, v15, v13}, Lcom/rapid7/client/dcerpc/mssrvs/dto/NetprPathType;-><init>(Ljava/lang/String;II)V

    .line 93
    .line 94
    .line 95
    sput-object v14, Lcom/rapid7/client/dcerpc/mssrvs/dto/NetprPathType;->ITYPE_UNC_SYS_PIPE:Lcom/rapid7/client/dcerpc/mssrvs/dto/NetprPathType;

    .line 96
    .line 97
    new-instance v11, Lcom/rapid7/client/dcerpc/mssrvs/dto/NetprPathType;

    .line 98
    .line 99
    const/16 v13, 0x8

    .line 100
    .line 101
    const/16 v15, 0x1e00

    .line 102
    .line 103
    const-string v9, "ITYPE_UNC_SYS_QUEUE"

    .line 104
    .line 105
    invoke-direct {v11, v9, v13, v15}, Lcom/rapid7/client/dcerpc/mssrvs/dto/NetprPathType;-><init>(Ljava/lang/String;II)V

    .line 106
    .line 107
    .line 108
    sput-object v11, Lcom/rapid7/client/dcerpc/mssrvs/dto/NetprPathType;->ITYPE_UNC_SYS_QUEUE:Lcom/rapid7/client/dcerpc/mssrvs/dto/NetprPathType;

    .line 109
    .line 110
    new-instance v9, Lcom/rapid7/client/dcerpc/mssrvs/dto/NetprPathType;

    .line 111
    .line 112
    const/16 v15, 0x9

    .line 113
    .line 114
    const/16 v13, 0x2002

    .line 115
    .line 116
    const-string v7, "ITYPE_PATH_ABSND"

    .line 117
    .line 118
    invoke-direct {v9, v7, v15, v13}, Lcom/rapid7/client/dcerpc/mssrvs/dto/NetprPathType;-><init>(Ljava/lang/String;II)V

    .line 119
    .line 120
    .line 121
    sput-object v9, Lcom/rapid7/client/dcerpc/mssrvs/dto/NetprPathType;->ITYPE_PATH_ABSND:Lcom/rapid7/client/dcerpc/mssrvs/dto/NetprPathType;

    .line 122
    .line 123
    new-instance v7, Lcom/rapid7/client/dcerpc/mssrvs/dto/NetprPathType;

    .line 124
    .line 125
    const/16 v13, 0xa

    .line 126
    .line 127
    const/16 v15, 0x2006

    .line 128
    .line 129
    const-string v5, "ITYPE_PATH_ABSD"

    .line 130
    .line 131
    invoke-direct {v7, v5, v13, v15}, Lcom/rapid7/client/dcerpc/mssrvs/dto/NetprPathType;-><init>(Ljava/lang/String;II)V

    .line 132
    .line 133
    .line 134
    sput-object v7, Lcom/rapid7/client/dcerpc/mssrvs/dto/NetprPathType;->ITYPE_PATH_ABSD:Lcom/rapid7/client/dcerpc/mssrvs/dto/NetprPathType;

    .line 135
    .line 136
    new-instance v5, Lcom/rapid7/client/dcerpc/mssrvs/dto/NetprPathType;

    .line 137
    .line 138
    const/16 v15, 0xb

    .line 139
    .line 140
    const/16 v13, 0x2000

    .line 141
    .line 142
    const-string v2, "ITYPE_PATH_RELND"

    .line 143
    .line 144
    invoke-direct {v5, v2, v15, v13}, Lcom/rapid7/client/dcerpc/mssrvs/dto/NetprPathType;-><init>(Ljava/lang/String;II)V

    .line 145
    .line 146
    .line 147
    sput-object v5, Lcom/rapid7/client/dcerpc/mssrvs/dto/NetprPathType;->ITYPE_PATH_RELND:Lcom/rapid7/client/dcerpc/mssrvs/dto/NetprPathType;

    .line 148
    .line 149
    new-instance v2, Lcom/rapid7/client/dcerpc/mssrvs/dto/NetprPathType;

    .line 150
    .line 151
    const/16 v13, 0xc

    .line 152
    .line 153
    const/16 v15, 0x2004

    .line 154
    .line 155
    const-string v3, "ITYPE_PATH_RELD"

    .line 156
    .line 157
    invoke-direct {v2, v3, v13, v15}, Lcom/rapid7/client/dcerpc/mssrvs/dto/NetprPathType;-><init>(Ljava/lang/String;II)V

    .line 158
    .line 159
    .line 160
    sput-object v2, Lcom/rapid7/client/dcerpc/mssrvs/dto/NetprPathType;->ITYPE_PATH_RELD:Lcom/rapid7/client/dcerpc/mssrvs/dto/NetprPathType;

    .line 161
    .line 162
    new-instance v3, Lcom/rapid7/client/dcerpc/mssrvs/dto/NetprPathType;

    .line 163
    .line 164
    const/16 v15, 0xd

    .line 165
    .line 166
    const/16 v13, 0x2003

    .line 167
    .line 168
    move-object/from16 v16, v2

    .line 169
    .line 170
    const-string v2, "ITYPE_PATH_ABSND_WC"

    .line 171
    .line 172
    invoke-direct {v3, v2, v15, v13}, Lcom/rapid7/client/dcerpc/mssrvs/dto/NetprPathType;-><init>(Ljava/lang/String;II)V

    .line 173
    .line 174
    .line 175
    sput-object v3, Lcom/rapid7/client/dcerpc/mssrvs/dto/NetprPathType;->ITYPE_PATH_ABSND_WC:Lcom/rapid7/client/dcerpc/mssrvs/dto/NetprPathType;

    .line 176
    .line 177
    new-instance v2, Lcom/rapid7/client/dcerpc/mssrvs/dto/NetprPathType;

    .line 178
    .line 179
    const/16 v13, 0xe

    .line 180
    .line 181
    const/16 v15, 0x2007

    .line 182
    .line 183
    move-object/from16 v17, v3

    .line 184
    .line 185
    const-string v3, "ITYPE_PATH_ABSD_WC"

    .line 186
    .line 187
    invoke-direct {v2, v3, v13, v15}, Lcom/rapid7/client/dcerpc/mssrvs/dto/NetprPathType;-><init>(Ljava/lang/String;II)V

    .line 188
    .line 189
    .line 190
    sput-object v2, Lcom/rapid7/client/dcerpc/mssrvs/dto/NetprPathType;->ITYPE_PATH_ABSD_WC:Lcom/rapid7/client/dcerpc/mssrvs/dto/NetprPathType;

    .line 191
    .line 192
    new-instance v3, Lcom/rapid7/client/dcerpc/mssrvs/dto/NetprPathType;

    .line 193
    .line 194
    const/16 v15, 0xf

    .line 195
    .line 196
    const/16 v13, 0x2001

    .line 197
    .line 198
    move-object/from16 v18, v2

    .line 199
    .line 200
    const-string v2, "ITYPE_PATH_RELND_WC"

    .line 201
    .line 202
    invoke-direct {v3, v2, v15, v13}, Lcom/rapid7/client/dcerpc/mssrvs/dto/NetprPathType;-><init>(Ljava/lang/String;II)V

    .line 203
    .line 204
    .line 205
    sput-object v3, Lcom/rapid7/client/dcerpc/mssrvs/dto/NetprPathType;->ITYPE_PATH_RELND_WC:Lcom/rapid7/client/dcerpc/mssrvs/dto/NetprPathType;

    .line 206
    .line 207
    new-instance v2, Lcom/rapid7/client/dcerpc/mssrvs/dto/NetprPathType;

    .line 208
    .line 209
    const/16 v13, 0x10

    .line 210
    .line 211
    const/16 v15, 0x2005

    .line 212
    .line 213
    move-object/from16 v19, v3

    .line 214
    .line 215
    const-string v3, "ITYPE_PATH_RELD_WC"

    .line 216
    .line 217
    invoke-direct {v2, v3, v13, v15}, Lcom/rapid7/client/dcerpc/mssrvs/dto/NetprPathType;-><init>(Ljava/lang/String;II)V

    .line 218
    .line 219
    .line 220
    sput-object v2, Lcom/rapid7/client/dcerpc/mssrvs/dto/NetprPathType;->ITYPE_PATH_RELD_WC:Lcom/rapid7/client/dcerpc/mssrvs/dto/NetprPathType;

    .line 221
    .line 222
    new-instance v3, Lcom/rapid7/client/dcerpc/mssrvs/dto/NetprPathType;

    .line 223
    .line 224
    const/16 v15, 0x11

    .line 225
    .line 226
    const/16 v13, 0x2902

    .line 227
    .line 228
    move-object/from16 v20, v2

    .line 229
    .line 230
    const-string v2, "ITYPE_PATH_SYS_SEM"

    .line 231
    .line 232
    invoke-direct {v3, v2, v15, v13}, Lcom/rapid7/client/dcerpc/mssrvs/dto/NetprPathType;-><init>(Ljava/lang/String;II)V

    .line 233
    .line 234
    .line 235
    sput-object v3, Lcom/rapid7/client/dcerpc/mssrvs/dto/NetprPathType;->ITYPE_PATH_SYS_SEM:Lcom/rapid7/client/dcerpc/mssrvs/dto/NetprPathType;

    .line 236
    .line 237
    new-instance v2, Lcom/rapid7/client/dcerpc/mssrvs/dto/NetprPathType;

    .line 238
    .line 239
    const/16 v13, 0x12

    .line 240
    .line 241
    const/16 v15, 0x2a02

    .line 242
    .line 243
    move-object/from16 v21, v3

    .line 244
    .line 245
    const-string v3, "ITYPE_PATH_SYS_SHMEM"

    .line 246
    .line 247
    invoke-direct {v2, v3, v13, v15}, Lcom/rapid7/client/dcerpc/mssrvs/dto/NetprPathType;-><init>(Ljava/lang/String;II)V

    .line 248
    .line 249
    .line 250
    sput-object v2, Lcom/rapid7/client/dcerpc/mssrvs/dto/NetprPathType;->ITYPE_PATH_SYS_SHMEM:Lcom/rapid7/client/dcerpc/mssrvs/dto/NetprPathType;

    .line 251
    .line 252
    new-instance v3, Lcom/rapid7/client/dcerpc/mssrvs/dto/NetprPathType;

    .line 253
    .line 254
    const/16 v15, 0x13

    .line 255
    .line 256
    const/16 v13, 0x2802

    .line 257
    .line 258
    move-object/from16 v22, v2

    .line 259
    .line 260
    const-string v2, "ITYPE_PATH_SYS_MSLOT"

    .line 261
    .line 262
    invoke-direct {v3, v2, v15, v13}, Lcom/rapid7/client/dcerpc/mssrvs/dto/NetprPathType;-><init>(Ljava/lang/String;II)V

    .line 263
    .line 264
    .line 265
    sput-object v3, Lcom/rapid7/client/dcerpc/mssrvs/dto/NetprPathType;->ITYPE_PATH_SYS_MSLOT:Lcom/rapid7/client/dcerpc/mssrvs/dto/NetprPathType;

    .line 266
    .line 267
    new-instance v2, Lcom/rapid7/client/dcerpc/mssrvs/dto/NetprPathType;

    .line 268
    .line 269
    const/16 v13, 0x14

    .line 270
    .line 271
    const/16 v15, 0x2b02

    .line 272
    .line 273
    move-object/from16 v23, v3

    .line 274
    .line 275
    const-string v3, "ITYPE_PATH_SYS_PIPE"

    .line 276
    .line 277
    invoke-direct {v2, v3, v13, v15}, Lcom/rapid7/client/dcerpc/mssrvs/dto/NetprPathType;-><init>(Ljava/lang/String;II)V

    .line 278
    .line 279
    .line 280
    sput-object v2, Lcom/rapid7/client/dcerpc/mssrvs/dto/NetprPathType;->ITYPE_PATH_SYS_PIPE:Lcom/rapid7/client/dcerpc/mssrvs/dto/NetprPathType;

    .line 281
    .line 282
    new-instance v3, Lcom/rapid7/client/dcerpc/mssrvs/dto/NetprPathType;

    .line 283
    .line 284
    const/16 v15, 0x15

    .line 285
    .line 286
    const/16 v13, 0x2c02

    .line 287
    .line 288
    move-object/from16 v24, v2

    .line 289
    .line 290
    const-string v2, "ITYPE_PATH_SYS_COMM"

    .line 291
    .line 292
    invoke-direct {v3, v2, v15, v13}, Lcom/rapid7/client/dcerpc/mssrvs/dto/NetprPathType;-><init>(Ljava/lang/String;II)V

    .line 293
    .line 294
    .line 295
    sput-object v3, Lcom/rapid7/client/dcerpc/mssrvs/dto/NetprPathType;->ITYPE_PATH_SYS_COMM:Lcom/rapid7/client/dcerpc/mssrvs/dto/NetprPathType;

    .line 296
    .line 297
    new-instance v2, Lcom/rapid7/client/dcerpc/mssrvs/dto/NetprPathType;

    .line 298
    .line 299
    const/16 v13, 0x16

    .line 300
    .line 301
    const/16 v15, 0x2d02

    .line 302
    .line 303
    move-object/from16 v25, v3

    .line 304
    .line 305
    const-string v3, "ITYPE_PATH_SYS_PRINT"

    .line 306
    .line 307
    invoke-direct {v2, v3, v13, v15}, Lcom/rapid7/client/dcerpc/mssrvs/dto/NetprPathType;-><init>(Ljava/lang/String;II)V

    .line 308
    .line 309
    .line 310
    sput-object v2, Lcom/rapid7/client/dcerpc/mssrvs/dto/NetprPathType;->ITYPE_PATH_SYS_PRINT:Lcom/rapid7/client/dcerpc/mssrvs/dto/NetprPathType;

    .line 311
    .line 312
    new-instance v3, Lcom/rapid7/client/dcerpc/mssrvs/dto/NetprPathType;

    .line 313
    .line 314
    const/16 v13, 0x17

    .line 315
    .line 316
    const/16 v15, 0x2e02

    .line 317
    .line 318
    move-object/from16 v26, v2

    .line 319
    .line 320
    const-string v2, "ITYPE_PATH_SYS_QUEUE"

    .line 321
    .line 322
    invoke-direct {v3, v2, v13, v15}, Lcom/rapid7/client/dcerpc/mssrvs/dto/NetprPathType;-><init>(Ljava/lang/String;II)V

    .line 323
    .line 324
    .line 325
    sput-object v3, Lcom/rapid7/client/dcerpc/mssrvs/dto/NetprPathType;->ITYPE_PATH_SYS_QUEUE:Lcom/rapid7/client/dcerpc/mssrvs/dto/NetprPathType;

    .line 326
    .line 327
    new-instance v2, Lcom/rapid7/client/dcerpc/mssrvs/dto/NetprPathType;

    .line 328
    .line 329
    const/16 v13, 0x18

    .line 330
    .line 331
    const v15, 0xa902

    .line 332
    .line 333
    .line 334
    move-object/from16 v27, v3

    .line 335
    .line 336
    const-string v3, "ITYPE_PATH_SYS_SEM_M"

    .line 337
    .line 338
    invoke-direct {v2, v3, v13, v15}, Lcom/rapid7/client/dcerpc/mssrvs/dto/NetprPathType;-><init>(Ljava/lang/String;II)V

    .line 339
    .line 340
    .line 341
    sput-object v2, Lcom/rapid7/client/dcerpc/mssrvs/dto/NetprPathType;->ITYPE_PATH_SYS_SEM_M:Lcom/rapid7/client/dcerpc/mssrvs/dto/NetprPathType;

    .line 342
    .line 343
    new-instance v3, Lcom/rapid7/client/dcerpc/mssrvs/dto/NetprPathType;

    .line 344
    .line 345
    const/16 v13, 0x19

    .line 346
    .line 347
    const v15, 0xaa02

    .line 348
    .line 349
    .line 350
    move-object/from16 v28, v2

    .line 351
    .line 352
    const-string v2, "ITYPE_PATH_SYS_SHMEM_M"

    .line 353
    .line 354
    invoke-direct {v3, v2, v13, v15}, Lcom/rapid7/client/dcerpc/mssrvs/dto/NetprPathType;-><init>(Ljava/lang/String;II)V

    .line 355
    .line 356
    .line 357
    sput-object v3, Lcom/rapid7/client/dcerpc/mssrvs/dto/NetprPathType;->ITYPE_PATH_SYS_SHMEM_M:Lcom/rapid7/client/dcerpc/mssrvs/dto/NetprPathType;

    .line 358
    .line 359
    new-instance v2, Lcom/rapid7/client/dcerpc/mssrvs/dto/NetprPathType;

    .line 360
    .line 361
    const/16 v13, 0x1a

    .line 362
    .line 363
    const v15, 0xa802

    .line 364
    .line 365
    .line 366
    move-object/from16 v29, v3

    .line 367
    .line 368
    const-string v3, "ITYPE_PATH_SYS_MSLOT_M"

    .line 369
    .line 370
    invoke-direct {v2, v3, v13, v15}, Lcom/rapid7/client/dcerpc/mssrvs/dto/NetprPathType;-><init>(Ljava/lang/String;II)V

    .line 371
    .line 372
    .line 373
    sput-object v2, Lcom/rapid7/client/dcerpc/mssrvs/dto/NetprPathType;->ITYPE_PATH_SYS_MSLOT_M:Lcom/rapid7/client/dcerpc/mssrvs/dto/NetprPathType;

    .line 374
    .line 375
    new-instance v3, Lcom/rapid7/client/dcerpc/mssrvs/dto/NetprPathType;

    .line 376
    .line 377
    const/16 v13, 0x1b

    .line 378
    .line 379
    const v15, 0xab02

    .line 380
    .line 381
    .line 382
    move-object/from16 v30, v2

    .line 383
    .line 384
    const-string v2, "ITYPE_PATH_SYS_PIPE_M"

    .line 385
    .line 386
    invoke-direct {v3, v2, v13, v15}, Lcom/rapid7/client/dcerpc/mssrvs/dto/NetprPathType;-><init>(Ljava/lang/String;II)V

    .line 387
    .line 388
    .line 389
    sput-object v3, Lcom/rapid7/client/dcerpc/mssrvs/dto/NetprPathType;->ITYPE_PATH_SYS_PIPE_M:Lcom/rapid7/client/dcerpc/mssrvs/dto/NetprPathType;

    .line 390
    .line 391
    new-instance v2, Lcom/rapid7/client/dcerpc/mssrvs/dto/NetprPathType;

    .line 392
    .line 393
    const/16 v13, 0x1c

    .line 394
    .line 395
    const v15, 0xac02

    .line 396
    .line 397
    .line 398
    move-object/from16 v31, v3

    .line 399
    .line 400
    const-string v3, "ITYPE_PATH_SYS_COMM_M"

    .line 401
    .line 402
    invoke-direct {v2, v3, v13, v15}, Lcom/rapid7/client/dcerpc/mssrvs/dto/NetprPathType;-><init>(Ljava/lang/String;II)V

    .line 403
    .line 404
    .line 405
    sput-object v2, Lcom/rapid7/client/dcerpc/mssrvs/dto/NetprPathType;->ITYPE_PATH_SYS_COMM_M:Lcom/rapid7/client/dcerpc/mssrvs/dto/NetprPathType;

    .line 406
    .line 407
    new-instance v3, Lcom/rapid7/client/dcerpc/mssrvs/dto/NetprPathType;

    .line 408
    .line 409
    const/16 v13, 0x1d

    .line 410
    .line 411
    const v15, 0xad02

    .line 412
    .line 413
    .line 414
    move-object/from16 v32, v2

    .line 415
    .line 416
    const-string v2, "ITYPE_PATH_SYS_PRINT_M"

    .line 417
    .line 418
    invoke-direct {v3, v2, v13, v15}, Lcom/rapid7/client/dcerpc/mssrvs/dto/NetprPathType;-><init>(Ljava/lang/String;II)V

    .line 419
    .line 420
    .line 421
    sput-object v3, Lcom/rapid7/client/dcerpc/mssrvs/dto/NetprPathType;->ITYPE_PATH_SYS_PRINT_M:Lcom/rapid7/client/dcerpc/mssrvs/dto/NetprPathType;

    .line 422
    .line 423
    new-instance v2, Lcom/rapid7/client/dcerpc/mssrvs/dto/NetprPathType;

    .line 424
    .line 425
    const/16 v13, 0x1e

    .line 426
    .line 427
    const v15, 0xae02

    .line 428
    .line 429
    .line 430
    move-object/from16 v33, v3

    .line 431
    .line 432
    const-string v3, "ITYPE_PATH_SYS_QUEUE_M"

    .line 433
    .line 434
    invoke-direct {v2, v3, v13, v15}, Lcom/rapid7/client/dcerpc/mssrvs/dto/NetprPathType;-><init>(Ljava/lang/String;II)V

    .line 435
    .line 436
    .line 437
    sput-object v2, Lcom/rapid7/client/dcerpc/mssrvs/dto/NetprPathType;->ITYPE_PATH_SYS_QUEUE_M:Lcom/rapid7/client/dcerpc/mssrvs/dto/NetprPathType;

    .line 438
    .line 439
    new-instance v3, Lcom/rapid7/client/dcerpc/mssrvs/dto/NetprPathType;

    .line 440
    .line 441
    const/16 v13, 0x1f

    .line 442
    .line 443
    const/16 v15, 0x4000

    .line 444
    .line 445
    move-object/from16 v34, v2

    .line 446
    .line 447
    const-string v2, "ITYPE_DEVICE_DISK"

    .line 448
    .line 449
    invoke-direct {v3, v2, v13, v15}, Lcom/rapid7/client/dcerpc/mssrvs/dto/NetprPathType;-><init>(Ljava/lang/String;II)V

    .line 450
    .line 451
    .line 452
    sput-object v3, Lcom/rapid7/client/dcerpc/mssrvs/dto/NetprPathType;->ITYPE_DEVICE_DISK:Lcom/rapid7/client/dcerpc/mssrvs/dto/NetprPathType;

    .line 453
    .line 454
    new-instance v2, Lcom/rapid7/client/dcerpc/mssrvs/dto/NetprPathType;

    .line 455
    .line 456
    const/16 v13, 0x20

    .line 457
    .line 458
    const/16 v15, 0x4010

    .line 459
    .line 460
    move-object/from16 v35, v3

    .line 461
    .line 462
    const-string v3, "ITYPE_DEVICE_LPT"

    .line 463
    .line 464
    invoke-direct {v2, v3, v13, v15}, Lcom/rapid7/client/dcerpc/mssrvs/dto/NetprPathType;-><init>(Ljava/lang/String;II)V

    .line 465
    .line 466
    .line 467
    sput-object v2, Lcom/rapid7/client/dcerpc/mssrvs/dto/NetprPathType;->ITYPE_DEVICE_LPT:Lcom/rapid7/client/dcerpc/mssrvs/dto/NetprPathType;

    .line 468
    .line 469
    new-instance v3, Lcom/rapid7/client/dcerpc/mssrvs/dto/NetprPathType;

    .line 470
    .line 471
    const/16 v13, 0x21

    .line 472
    .line 473
    const/16 v15, 0x4020

    .line 474
    .line 475
    move-object/from16 v36, v2

    .line 476
    .line 477
    const-string v2, "ITYPE_DEVICE_COM"

    .line 478
    .line 479
    invoke-direct {v3, v2, v13, v15}, Lcom/rapid7/client/dcerpc/mssrvs/dto/NetprPathType;-><init>(Ljava/lang/String;II)V

    .line 480
    .line 481
    .line 482
    sput-object v3, Lcom/rapid7/client/dcerpc/mssrvs/dto/NetprPathType;->ITYPE_DEVICE_COM:Lcom/rapid7/client/dcerpc/mssrvs/dto/NetprPathType;

    .line 483
    .line 484
    new-instance v2, Lcom/rapid7/client/dcerpc/mssrvs/dto/NetprPathType;

    .line 485
    .line 486
    const/16 v13, 0x22

    .line 487
    .line 488
    const/16 v15, 0x4040

    .line 489
    .line 490
    move-object/from16 v37, v3

    .line 491
    .line 492
    const-string v3, "ITYPE_DEVICE_CON"

    .line 493
    .line 494
    invoke-direct {v2, v3, v13, v15}, Lcom/rapid7/client/dcerpc/mssrvs/dto/NetprPathType;-><init>(Ljava/lang/String;II)V

    .line 495
    .line 496
    .line 497
    sput-object v2, Lcom/rapid7/client/dcerpc/mssrvs/dto/NetprPathType;->ITYPE_DEVICE_CON:Lcom/rapid7/client/dcerpc/mssrvs/dto/NetprPathType;

    .line 498
    .line 499
    new-instance v3, Lcom/rapid7/client/dcerpc/mssrvs/dto/NetprPathType;

    .line 500
    .line 501
    const/16 v13, 0x23

    .line 502
    .line 503
    const/16 v15, 0x4050

    .line 504
    .line 505
    move-object/from16 v38, v2

    .line 506
    .line 507
    const-string v2, "ITYPE_DEVICE_NUL"

    .line 508
    .line 509
    invoke-direct {v3, v2, v13, v15}, Lcom/rapid7/client/dcerpc/mssrvs/dto/NetprPathType;-><init>(Ljava/lang/String;II)V

    .line 510
    .line 511
    .line 512
    sput-object v3, Lcom/rapid7/client/dcerpc/mssrvs/dto/NetprPathType;->ITYPE_DEVICE_NUL:Lcom/rapid7/client/dcerpc/mssrvs/dto/NetprPathType;

    .line 513
    .line 514
    const/16 v2, 0x24

    .line 515
    .line 516
    new-array v2, v2, [Lcom/rapid7/client/dcerpc/mssrvs/dto/NetprPathType;

    .line 517
    .line 518
    const/4 v13, 0x0

    .line 519
    aput-object v0, v2, v13

    .line 520
    .line 521
    const/4 v0, 0x1

    .line 522
    aput-object v1, v2, v0

    .line 523
    .line 524
    const/4 v0, 0x2

    .line 525
    aput-object v4, v2, v0

    .line 526
    .line 527
    const/4 v0, 0x3

    .line 528
    aput-object v6, v2, v0

    .line 529
    .line 530
    const/4 v0, 0x4

    .line 531
    aput-object v8, v2, v0

    .line 532
    .line 533
    const/4 v0, 0x5

    .line 534
    aput-object v10, v2, v0

    .line 535
    .line 536
    const/4 v0, 0x6

    .line 537
    aput-object v12, v2, v0

    .line 538
    .line 539
    const/4 v0, 0x7

    .line 540
    aput-object v14, v2, v0

    .line 541
    .line 542
    const/16 v0, 0x8

    .line 543
    .line 544
    aput-object v11, v2, v0

    .line 545
    .line 546
    const/16 v0, 0x9

    .line 547
    .line 548
    aput-object v9, v2, v0

    .line 549
    .line 550
    const/16 v0, 0xa

    .line 551
    .line 552
    aput-object v7, v2, v0

    .line 553
    .line 554
    const/16 v0, 0xb

    .line 555
    .line 556
    aput-object v5, v2, v0

    .line 557
    .line 558
    const/16 v0, 0xc

    .line 559
    .line 560
    aput-object v16, v2, v0

    .line 561
    .line 562
    const/16 v0, 0xd

    .line 563
    .line 564
    aput-object v17, v2, v0

    .line 565
    .line 566
    const/16 v0, 0xe

    .line 567
    .line 568
    aput-object v18, v2, v0

    .line 569
    .line 570
    const/16 v0, 0xf

    .line 571
    .line 572
    aput-object v19, v2, v0

    .line 573
    .line 574
    const/16 v0, 0x10

    .line 575
    .line 576
    aput-object v20, v2, v0

    .line 577
    .line 578
    const/16 v0, 0x11

    .line 579
    .line 580
    aput-object v21, v2, v0

    .line 581
    .line 582
    const/16 v0, 0x12

    .line 583
    .line 584
    aput-object v22, v2, v0

    .line 585
    .line 586
    const/16 v0, 0x13

    .line 587
    .line 588
    aput-object v23, v2, v0

    .line 589
    .line 590
    const/16 v0, 0x14

    .line 591
    .line 592
    aput-object v24, v2, v0

    .line 593
    .line 594
    const/16 v0, 0x15

    .line 595
    .line 596
    aput-object v25, v2, v0

    .line 597
    .line 598
    const/16 v0, 0x16

    .line 599
    .line 600
    aput-object v26, v2, v0

    .line 601
    .line 602
    const/16 v0, 0x17

    .line 603
    .line 604
    aput-object v27, v2, v0

    .line 605
    .line 606
    const/16 v0, 0x18

    .line 607
    .line 608
    aput-object v28, v2, v0

    .line 609
    .line 610
    const/16 v0, 0x19

    .line 611
    .line 612
    aput-object v29, v2, v0

    .line 613
    .line 614
    const/16 v0, 0x1a

    .line 615
    .line 616
    aput-object v30, v2, v0

    .line 617
    .line 618
    const/16 v0, 0x1b

    .line 619
    .line 620
    aput-object v31, v2, v0

    .line 621
    .line 622
    const/16 v0, 0x1c

    .line 623
    .line 624
    aput-object v32, v2, v0

    .line 625
    .line 626
    const/16 v0, 0x1d

    .line 627
    .line 628
    aput-object v33, v2, v0

    .line 629
    .line 630
    const/16 v0, 0x1e

    .line 631
    .line 632
    aput-object v34, v2, v0

    .line 633
    .line 634
    const/16 v0, 0x1f

    .line 635
    .line 636
    aput-object v35, v2, v0

    .line 637
    .line 638
    const/16 v0, 0x20

    .line 639
    .line 640
    aput-object v36, v2, v0

    .line 641
    .line 642
    const/16 v0, 0x21

    .line 643
    .line 644
    aput-object v37, v2, v0

    .line 645
    .line 646
    const/16 v0, 0x22

    .line 647
    .line 648
    aput-object v38, v2, v0

    .line 649
    .line 650
    const/16 v0, 0x23

    .line 651
    .line 652
    aput-object v3, v2, v0

    .line 653
    .line 654
    sput-object v2, Lcom/rapid7/client/dcerpc/mssrvs/dto/NetprPathType;->$VALUES:[Lcom/rapid7/client/dcerpc/mssrvs/dto/NetprPathType;

    .line 655
    .line 656
    new-instance v0, Ljava/util/HashMap;

    .line 657
    .line 658
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 659
    .line 660
    .line 661
    sput-object v0, Lcom/rapid7/client/dcerpc/mssrvs/dto/NetprPathType;->ids:Ljava/util/Map;

    .line 662
    .line 663
    invoke-static {}, Lcom/rapid7/client/dcerpc/mssrvs/dto/NetprPathType;->values()[Lcom/rapid7/client/dcerpc/mssrvs/dto/NetprPathType;

    .line 664
    .line 665
    .line 666
    move-result-object v0

    .line 667
    array-length v1, v0

    .line 668
    const/4 v3, 0x0

    .line 669
    :goto_0
    if-ge v3, v1, :cond_0

    .line 670
    .line 671
    aget-object v2, v0, v3

    .line 672
    .line 673
    sget-object v4, Lcom/rapid7/client/dcerpc/mssrvs/dto/NetprPathType;->ids:Ljava/util/Map;

    .line 674
    .line 675
    invoke-virtual {v2}, Lcom/rapid7/client/dcerpc/mssrvs/dto/NetprPathType;->getId()I

    .line 676
    .line 677
    .line 678
    move-result v5

    .line 679
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 680
    .line 681
    .line 682
    move-result-object v5

    .line 683
    invoke-interface {v4, v5, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 684
    .line 685
    .line 686
    const/4 v2, 0x1

    .line 687
    add-int/2addr v3, v2

    .line 688
    goto :goto_0

    .line 689
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
    iput p3, p0, Lcom/rapid7/client/dcerpc/mssrvs/dto/NetprPathType;->id:I

    .line 5
    .line 6
    return-void
.end method

.method public static getid(I)Lcom/rapid7/client/dcerpc/mssrvs/dto/NetprPathType;
    .locals 1

    .line 1
    sget-object v0, Lcom/rapid7/client/dcerpc/mssrvs/dto/NetprPathType;->ids:Ljava/util/Map;

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
    check-cast p0, Lcom/rapid7/client/dcerpc/mssrvs/dto/NetprPathType;

    .line 12
    .line 13
    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/rapid7/client/dcerpc/mssrvs/dto/NetprPathType;
    .locals 1

    .line 1
    const-class v0, Lcom/rapid7/client/dcerpc/mssrvs/dto/NetprPathType;

    .line 2
    .line 3
    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    check-cast p0, Lcom/rapid7/client/dcerpc/mssrvs/dto/NetprPathType;

    .line 8
    .line 9
    return-object p0
.end method

.method public static values()[Lcom/rapid7/client/dcerpc/mssrvs/dto/NetprPathType;
    .locals 1

    .line 1
    sget-object v0, Lcom/rapid7/client/dcerpc/mssrvs/dto/NetprPathType;->$VALUES:[Lcom/rapid7/client/dcerpc/mssrvs/dto/NetprPathType;

    .line 2
    .line 3
    invoke-virtual {v0}, [Lcom/rapid7/client/dcerpc/mssrvs/dto/NetprPathType;->clone()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, [Lcom/rapid7/client/dcerpc/mssrvs/dto/NetprPathType;

    .line 8
    .line 9
    return-object v0
.end method


# virtual methods
.method public getId()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/rapid7/client/dcerpc/mssrvs/dto/NetprPathType;->id:I

    .line 2
    .line 3
    return v0
.end method

.method public is(I)Z
    .locals 1

    .line 1
    iget v0, p0, Lcom/rapid7/client/dcerpc/mssrvs/dto/NetprPathType;->id:I

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
