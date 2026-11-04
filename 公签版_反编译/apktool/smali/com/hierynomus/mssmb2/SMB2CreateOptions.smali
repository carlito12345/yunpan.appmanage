.class public final enum Lcom/hierynomus/mssmb2/SMB2CreateOptions;
.super Ljava/lang/Enum;
.source "SourceFile"

# interfaces
.implements Lcom/hierynomus/protocol/commons/EnumWithValue;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/hierynomus/mssmb2/SMB2CreateOptions;",
        ">;",
        "Lcom/hierynomus/protocol/commons/EnumWithValue<",
        "Lcom/hierynomus/mssmb2/SMB2CreateOptions;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/hierynomus/mssmb2/SMB2CreateOptions;

.field public static final enum FILE_COMPLETE_IF_OPLOCKED:Lcom/hierynomus/mssmb2/SMB2CreateOptions;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final enum FILE_DELETE_ON_CLOSE:Lcom/hierynomus/mssmb2/SMB2CreateOptions;

.field public static final enum FILE_DIRECTORY_FILE:Lcom/hierynomus/mssmb2/SMB2CreateOptions;

.field public static final enum FILE_DISALLOW_EXCLUSIVE:Lcom/hierynomus/mssmb2/SMB2CreateOptions;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final enum FILE_NON_DIRECTORY_FILE:Lcom/hierynomus/mssmb2/SMB2CreateOptions;

.field public static final enum FILE_NO_COMPRESSION:Lcom/hierynomus/mssmb2/SMB2CreateOptions;

.field public static final enum FILE_NO_EA_KNOWLEDGE:Lcom/hierynomus/mssmb2/SMB2CreateOptions;

.field public static final enum FILE_NO_INTERMEDIATE_BUFFERING:Lcom/hierynomus/mssmb2/SMB2CreateOptions;

.field public static final enum FILE_OPEN_BY_FILE_ID:Lcom/hierynomus/mssmb2/SMB2CreateOptions;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final enum FILE_OPEN_FOR_BACKUP_INTENT:Lcom/hierynomus/mssmb2/SMB2CreateOptions;

.field public static final enum FILE_OPEN_FOR_FREE_SPACE_QUERY:Lcom/hierynomus/mssmb2/SMB2CreateOptions;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final enum FILE_OPEN_NO_RECALL:Lcom/hierynomus/mssmb2/SMB2CreateOptions;

.field public static final enum FILE_OPEN_REMOTE_INSTANCE:Lcom/hierynomus/mssmb2/SMB2CreateOptions;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final enum FILE_OPEN_REPARSE_POINT:Lcom/hierynomus/mssmb2/SMB2CreateOptions;

.field public static final enum FILE_OPEN_REQUIRING_OPLOCK:Lcom/hierynomus/mssmb2/SMB2CreateOptions;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final enum FILE_RANDOM_ACCESS:Lcom/hierynomus/mssmb2/SMB2CreateOptions;

.field public static final enum FILE_RESERVE_OPFILTER:Lcom/hierynomus/mssmb2/SMB2CreateOptions;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final enum FILE_SEQUENTIAL_ONLY:Lcom/hierynomus/mssmb2/SMB2CreateOptions;

.field public static final enum FILE_SYNCHRONOUS_IO_ALERT:Lcom/hierynomus/mssmb2/SMB2CreateOptions;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final enum FILE_SYNCHRONOUS_IO_NONALERT:Lcom/hierynomus/mssmb2/SMB2CreateOptions;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final enum FILE_WRITE_THROUGH:Lcom/hierynomus/mssmb2/SMB2CreateOptions;


# instance fields
.field private value:J


# direct methods
.method private static synthetic $values()[Lcom/hierynomus/mssmb2/SMB2CreateOptions;
    .locals 3

    .line 1
    const/16 v0, 0x15

    .line 2
    .line 3
    new-array v0, v0, [Lcom/hierynomus/mssmb2/SMB2CreateOptions;

    .line 4
    .line 5
    sget-object v1, Lcom/hierynomus/mssmb2/SMB2CreateOptions;->FILE_DIRECTORY_FILE:Lcom/hierynomus/mssmb2/SMB2CreateOptions;

    .line 6
    .line 7
    const/4 v2, 0x0

    .line 8
    aput-object v1, v0, v2

    .line 9
    .line 10
    sget-object v1, Lcom/hierynomus/mssmb2/SMB2CreateOptions;->FILE_WRITE_THROUGH:Lcom/hierynomus/mssmb2/SMB2CreateOptions;

    .line 11
    .line 12
    const/4 v2, 0x1

    .line 13
    aput-object v1, v0, v2

    .line 14
    .line 15
    sget-object v1, Lcom/hierynomus/mssmb2/SMB2CreateOptions;->FILE_SEQUENTIAL_ONLY:Lcom/hierynomus/mssmb2/SMB2CreateOptions;

    .line 16
    .line 17
    const/4 v2, 0x2

    .line 18
    aput-object v1, v0, v2

    .line 19
    .line 20
    sget-object v1, Lcom/hierynomus/mssmb2/SMB2CreateOptions;->FILE_NO_INTERMEDIATE_BUFFERING:Lcom/hierynomus/mssmb2/SMB2CreateOptions;

    .line 21
    .line 22
    const/4 v2, 0x3

    .line 23
    aput-object v1, v0, v2

    .line 24
    .line 25
    sget-object v1, Lcom/hierynomus/mssmb2/SMB2CreateOptions;->FILE_SYNCHRONOUS_IO_ALERT:Lcom/hierynomus/mssmb2/SMB2CreateOptions;

    .line 26
    .line 27
    const/4 v2, 0x4

    .line 28
    aput-object v1, v0, v2

    .line 29
    .line 30
    sget-object v1, Lcom/hierynomus/mssmb2/SMB2CreateOptions;->FILE_SYNCHRONOUS_IO_NONALERT:Lcom/hierynomus/mssmb2/SMB2CreateOptions;

    .line 31
    .line 32
    const/4 v2, 0x5

    .line 33
    aput-object v1, v0, v2

    .line 34
    .line 35
    sget-object v1, Lcom/hierynomus/mssmb2/SMB2CreateOptions;->FILE_NON_DIRECTORY_FILE:Lcom/hierynomus/mssmb2/SMB2CreateOptions;

    .line 36
    .line 37
    const/4 v2, 0x6

    .line 38
    aput-object v1, v0, v2

    .line 39
    .line 40
    sget-object v1, Lcom/hierynomus/mssmb2/SMB2CreateOptions;->FILE_COMPLETE_IF_OPLOCKED:Lcom/hierynomus/mssmb2/SMB2CreateOptions;

    .line 41
    .line 42
    const/4 v2, 0x7

    .line 43
    aput-object v1, v0, v2

    .line 44
    .line 45
    sget-object v1, Lcom/hierynomus/mssmb2/SMB2CreateOptions;->FILE_NO_EA_KNOWLEDGE:Lcom/hierynomus/mssmb2/SMB2CreateOptions;

    .line 46
    .line 47
    const/16 v2, 0x8

    .line 48
    .line 49
    aput-object v1, v0, v2

    .line 50
    .line 51
    sget-object v1, Lcom/hierynomus/mssmb2/SMB2CreateOptions;->FILE_RANDOM_ACCESS:Lcom/hierynomus/mssmb2/SMB2CreateOptions;

    .line 52
    .line 53
    const/16 v2, 0x9

    .line 54
    .line 55
    aput-object v1, v0, v2

    .line 56
    .line 57
    sget-object v1, Lcom/hierynomus/mssmb2/SMB2CreateOptions;->FILE_DELETE_ON_CLOSE:Lcom/hierynomus/mssmb2/SMB2CreateOptions;

    .line 58
    .line 59
    const/16 v2, 0xa

    .line 60
    .line 61
    aput-object v1, v0, v2

    .line 62
    .line 63
    sget-object v1, Lcom/hierynomus/mssmb2/SMB2CreateOptions;->FILE_OPEN_BY_FILE_ID:Lcom/hierynomus/mssmb2/SMB2CreateOptions;

    .line 64
    .line 65
    const/16 v2, 0xb

    .line 66
    .line 67
    aput-object v1, v0, v2

    .line 68
    .line 69
    sget-object v1, Lcom/hierynomus/mssmb2/SMB2CreateOptions;->FILE_OPEN_FOR_BACKUP_INTENT:Lcom/hierynomus/mssmb2/SMB2CreateOptions;

    .line 70
    .line 71
    const/16 v2, 0xc

    .line 72
    .line 73
    aput-object v1, v0, v2

    .line 74
    .line 75
    sget-object v1, Lcom/hierynomus/mssmb2/SMB2CreateOptions;->FILE_NO_COMPRESSION:Lcom/hierynomus/mssmb2/SMB2CreateOptions;

    .line 76
    .line 77
    const/16 v2, 0xd

    .line 78
    .line 79
    aput-object v1, v0, v2

    .line 80
    .line 81
    sget-object v1, Lcom/hierynomus/mssmb2/SMB2CreateOptions;->FILE_OPEN_REMOTE_INSTANCE:Lcom/hierynomus/mssmb2/SMB2CreateOptions;

    .line 82
    .line 83
    const/16 v2, 0xe

    .line 84
    .line 85
    aput-object v1, v0, v2

    .line 86
    .line 87
    sget-object v1, Lcom/hierynomus/mssmb2/SMB2CreateOptions;->FILE_OPEN_REQUIRING_OPLOCK:Lcom/hierynomus/mssmb2/SMB2CreateOptions;

    .line 88
    .line 89
    const/16 v2, 0xf

    .line 90
    .line 91
    aput-object v1, v0, v2

    .line 92
    .line 93
    sget-object v1, Lcom/hierynomus/mssmb2/SMB2CreateOptions;->FILE_DISALLOW_EXCLUSIVE:Lcom/hierynomus/mssmb2/SMB2CreateOptions;

    .line 94
    .line 95
    const/16 v2, 0x10

    .line 96
    .line 97
    aput-object v1, v0, v2

    .line 98
    .line 99
    sget-object v1, Lcom/hierynomus/mssmb2/SMB2CreateOptions;->FILE_RESERVE_OPFILTER:Lcom/hierynomus/mssmb2/SMB2CreateOptions;

    .line 100
    .line 101
    const/16 v2, 0x11

    .line 102
    .line 103
    aput-object v1, v0, v2

    .line 104
    .line 105
    sget-object v1, Lcom/hierynomus/mssmb2/SMB2CreateOptions;->FILE_OPEN_REPARSE_POINT:Lcom/hierynomus/mssmb2/SMB2CreateOptions;

    .line 106
    .line 107
    const/16 v2, 0x12

    .line 108
    .line 109
    aput-object v1, v0, v2

    .line 110
    .line 111
    sget-object v1, Lcom/hierynomus/mssmb2/SMB2CreateOptions;->FILE_OPEN_NO_RECALL:Lcom/hierynomus/mssmb2/SMB2CreateOptions;

    .line 112
    .line 113
    const/16 v2, 0x13

    .line 114
    .line 115
    aput-object v1, v0, v2

    .line 116
    .line 117
    sget-object v1, Lcom/hierynomus/mssmb2/SMB2CreateOptions;->FILE_OPEN_FOR_FREE_SPACE_QUERY:Lcom/hierynomus/mssmb2/SMB2CreateOptions;

    .line 118
    .line 119
    const/16 v2, 0x14

    .line 120
    .line 121
    aput-object v1, v0, v2

    .line 122
    .line 123
    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 5

    .line 1
    new-instance v0, Lcom/hierynomus/mssmb2/SMB2CreateOptions;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    const-wide/16 v2, 0x1

    .line 5
    .line 6
    const-string v4, "FILE_DIRECTORY_FILE"

    .line 7
    .line 8
    invoke-direct {v0, v4, v1, v2, v3}, Lcom/hierynomus/mssmb2/SMB2CreateOptions;-><init>(Ljava/lang/String;IJ)V

    .line 9
    .line 10
    .line 11
    sput-object v0, Lcom/hierynomus/mssmb2/SMB2CreateOptions;->FILE_DIRECTORY_FILE:Lcom/hierynomus/mssmb2/SMB2CreateOptions;

    .line 12
    .line 13
    new-instance v0, Lcom/hierynomus/mssmb2/SMB2CreateOptions;

    .line 14
    .line 15
    const/4 v1, 0x1

    .line 16
    const-wide/16 v2, 0x2

    .line 17
    .line 18
    const-string v4, "FILE_WRITE_THROUGH"

    .line 19
    .line 20
    invoke-direct {v0, v4, v1, v2, v3}, Lcom/hierynomus/mssmb2/SMB2CreateOptions;-><init>(Ljava/lang/String;IJ)V

    .line 21
    .line 22
    .line 23
    sput-object v0, Lcom/hierynomus/mssmb2/SMB2CreateOptions;->FILE_WRITE_THROUGH:Lcom/hierynomus/mssmb2/SMB2CreateOptions;

    .line 24
    .line 25
    new-instance v0, Lcom/hierynomus/mssmb2/SMB2CreateOptions;

    .line 26
    .line 27
    const/4 v1, 0x2

    .line 28
    const-wide/16 v2, 0x4

    .line 29
    .line 30
    const-string v4, "FILE_SEQUENTIAL_ONLY"

    .line 31
    .line 32
    invoke-direct {v0, v4, v1, v2, v3}, Lcom/hierynomus/mssmb2/SMB2CreateOptions;-><init>(Ljava/lang/String;IJ)V

    .line 33
    .line 34
    .line 35
    sput-object v0, Lcom/hierynomus/mssmb2/SMB2CreateOptions;->FILE_SEQUENTIAL_ONLY:Lcom/hierynomus/mssmb2/SMB2CreateOptions;

    .line 36
    .line 37
    new-instance v0, Lcom/hierynomus/mssmb2/SMB2CreateOptions;

    .line 38
    .line 39
    const/4 v1, 0x3

    .line 40
    const-wide/16 v2, 0x8

    .line 41
    .line 42
    const-string v4, "FILE_NO_INTERMEDIATE_BUFFERING"

    .line 43
    .line 44
    invoke-direct {v0, v4, v1, v2, v3}, Lcom/hierynomus/mssmb2/SMB2CreateOptions;-><init>(Ljava/lang/String;IJ)V

    .line 45
    .line 46
    .line 47
    sput-object v0, Lcom/hierynomus/mssmb2/SMB2CreateOptions;->FILE_NO_INTERMEDIATE_BUFFERING:Lcom/hierynomus/mssmb2/SMB2CreateOptions;

    .line 48
    .line 49
    new-instance v0, Lcom/hierynomus/mssmb2/SMB2CreateOptions;

    .line 50
    .line 51
    const/4 v1, 0x4

    .line 52
    const-wide/16 v2, 0x10

    .line 53
    .line 54
    const-string v4, "FILE_SYNCHRONOUS_IO_ALERT"

    .line 55
    .line 56
    invoke-direct {v0, v4, v1, v2, v3}, Lcom/hierynomus/mssmb2/SMB2CreateOptions;-><init>(Ljava/lang/String;IJ)V

    .line 57
    .line 58
    .line 59
    sput-object v0, Lcom/hierynomus/mssmb2/SMB2CreateOptions;->FILE_SYNCHRONOUS_IO_ALERT:Lcom/hierynomus/mssmb2/SMB2CreateOptions;

    .line 60
    .line 61
    new-instance v0, Lcom/hierynomus/mssmb2/SMB2CreateOptions;

    .line 62
    .line 63
    const/4 v1, 0x5

    .line 64
    const-wide/16 v2, 0x20

    .line 65
    .line 66
    const-string v4, "FILE_SYNCHRONOUS_IO_NONALERT"

    .line 67
    .line 68
    invoke-direct {v0, v4, v1, v2, v3}, Lcom/hierynomus/mssmb2/SMB2CreateOptions;-><init>(Ljava/lang/String;IJ)V

    .line 69
    .line 70
    .line 71
    sput-object v0, Lcom/hierynomus/mssmb2/SMB2CreateOptions;->FILE_SYNCHRONOUS_IO_NONALERT:Lcom/hierynomus/mssmb2/SMB2CreateOptions;

    .line 72
    .line 73
    new-instance v0, Lcom/hierynomus/mssmb2/SMB2CreateOptions;

    .line 74
    .line 75
    const/4 v1, 0x6

    .line 76
    const-wide/16 v2, 0x40

    .line 77
    .line 78
    const-string v4, "FILE_NON_DIRECTORY_FILE"

    .line 79
    .line 80
    invoke-direct {v0, v4, v1, v2, v3}, Lcom/hierynomus/mssmb2/SMB2CreateOptions;-><init>(Ljava/lang/String;IJ)V

    .line 81
    .line 82
    .line 83
    sput-object v0, Lcom/hierynomus/mssmb2/SMB2CreateOptions;->FILE_NON_DIRECTORY_FILE:Lcom/hierynomus/mssmb2/SMB2CreateOptions;

    .line 84
    .line 85
    new-instance v0, Lcom/hierynomus/mssmb2/SMB2CreateOptions;

    .line 86
    .line 87
    const/4 v1, 0x7

    .line 88
    const-wide/16 v2, 0x100

    .line 89
    .line 90
    const-string v4, "FILE_COMPLETE_IF_OPLOCKED"

    .line 91
    .line 92
    invoke-direct {v0, v4, v1, v2, v3}, Lcom/hierynomus/mssmb2/SMB2CreateOptions;-><init>(Ljava/lang/String;IJ)V

    .line 93
    .line 94
    .line 95
    sput-object v0, Lcom/hierynomus/mssmb2/SMB2CreateOptions;->FILE_COMPLETE_IF_OPLOCKED:Lcom/hierynomus/mssmb2/SMB2CreateOptions;

    .line 96
    .line 97
    new-instance v0, Lcom/hierynomus/mssmb2/SMB2CreateOptions;

    .line 98
    .line 99
    const/16 v1, 0x8

    .line 100
    .line 101
    const-wide/16 v2, 0x200

    .line 102
    .line 103
    const-string v4, "FILE_NO_EA_KNOWLEDGE"

    .line 104
    .line 105
    invoke-direct {v0, v4, v1, v2, v3}, Lcom/hierynomus/mssmb2/SMB2CreateOptions;-><init>(Ljava/lang/String;IJ)V

    .line 106
    .line 107
    .line 108
    sput-object v0, Lcom/hierynomus/mssmb2/SMB2CreateOptions;->FILE_NO_EA_KNOWLEDGE:Lcom/hierynomus/mssmb2/SMB2CreateOptions;

    .line 109
    .line 110
    new-instance v0, Lcom/hierynomus/mssmb2/SMB2CreateOptions;

    .line 111
    .line 112
    const/16 v1, 0x9

    .line 113
    .line 114
    const-wide/16 v2, 0x800

    .line 115
    .line 116
    const-string v4, "FILE_RANDOM_ACCESS"

    .line 117
    .line 118
    invoke-direct {v0, v4, v1, v2, v3}, Lcom/hierynomus/mssmb2/SMB2CreateOptions;-><init>(Ljava/lang/String;IJ)V

    .line 119
    .line 120
    .line 121
    sput-object v0, Lcom/hierynomus/mssmb2/SMB2CreateOptions;->FILE_RANDOM_ACCESS:Lcom/hierynomus/mssmb2/SMB2CreateOptions;

    .line 122
    .line 123
    new-instance v0, Lcom/hierynomus/mssmb2/SMB2CreateOptions;

    .line 124
    .line 125
    const/16 v1, 0xa

    .line 126
    .line 127
    const-wide/16 v2, 0x1000

    .line 128
    .line 129
    const-string v4, "FILE_DELETE_ON_CLOSE"

    .line 130
    .line 131
    invoke-direct {v0, v4, v1, v2, v3}, Lcom/hierynomus/mssmb2/SMB2CreateOptions;-><init>(Ljava/lang/String;IJ)V

    .line 132
    .line 133
    .line 134
    sput-object v0, Lcom/hierynomus/mssmb2/SMB2CreateOptions;->FILE_DELETE_ON_CLOSE:Lcom/hierynomus/mssmb2/SMB2CreateOptions;

    .line 135
    .line 136
    new-instance v0, Lcom/hierynomus/mssmb2/SMB2CreateOptions;

    .line 137
    .line 138
    const/16 v1, 0xb

    .line 139
    .line 140
    const-wide/16 v2, 0x2000

    .line 141
    .line 142
    const-string v4, "FILE_OPEN_BY_FILE_ID"

    .line 143
    .line 144
    invoke-direct {v0, v4, v1, v2, v3}, Lcom/hierynomus/mssmb2/SMB2CreateOptions;-><init>(Ljava/lang/String;IJ)V

    .line 145
    .line 146
    .line 147
    sput-object v0, Lcom/hierynomus/mssmb2/SMB2CreateOptions;->FILE_OPEN_BY_FILE_ID:Lcom/hierynomus/mssmb2/SMB2CreateOptions;

    .line 148
    .line 149
    new-instance v0, Lcom/hierynomus/mssmb2/SMB2CreateOptions;

    .line 150
    .line 151
    const/16 v1, 0xc

    .line 152
    .line 153
    const-wide/16 v2, 0x4000

    .line 154
    .line 155
    const-string v4, "FILE_OPEN_FOR_BACKUP_INTENT"

    .line 156
    .line 157
    invoke-direct {v0, v4, v1, v2, v3}, Lcom/hierynomus/mssmb2/SMB2CreateOptions;-><init>(Ljava/lang/String;IJ)V

    .line 158
    .line 159
    .line 160
    sput-object v0, Lcom/hierynomus/mssmb2/SMB2CreateOptions;->FILE_OPEN_FOR_BACKUP_INTENT:Lcom/hierynomus/mssmb2/SMB2CreateOptions;

    .line 161
    .line 162
    new-instance v0, Lcom/hierynomus/mssmb2/SMB2CreateOptions;

    .line 163
    .line 164
    const/16 v1, 0xd

    .line 165
    .line 166
    const-wide/32 v2, 0x8000

    .line 167
    .line 168
    .line 169
    const-string v4, "FILE_NO_COMPRESSION"

    .line 170
    .line 171
    invoke-direct {v0, v4, v1, v2, v3}, Lcom/hierynomus/mssmb2/SMB2CreateOptions;-><init>(Ljava/lang/String;IJ)V

    .line 172
    .line 173
    .line 174
    sput-object v0, Lcom/hierynomus/mssmb2/SMB2CreateOptions;->FILE_NO_COMPRESSION:Lcom/hierynomus/mssmb2/SMB2CreateOptions;

    .line 175
    .line 176
    new-instance v0, Lcom/hierynomus/mssmb2/SMB2CreateOptions;

    .line 177
    .line 178
    const/16 v1, 0xe

    .line 179
    .line 180
    const-wide/16 v2, 0x400

    .line 181
    .line 182
    const-string v4, "FILE_OPEN_REMOTE_INSTANCE"

    .line 183
    .line 184
    invoke-direct {v0, v4, v1, v2, v3}, Lcom/hierynomus/mssmb2/SMB2CreateOptions;-><init>(Ljava/lang/String;IJ)V

    .line 185
    .line 186
    .line 187
    sput-object v0, Lcom/hierynomus/mssmb2/SMB2CreateOptions;->FILE_OPEN_REMOTE_INSTANCE:Lcom/hierynomus/mssmb2/SMB2CreateOptions;

    .line 188
    .line 189
    new-instance v0, Lcom/hierynomus/mssmb2/SMB2CreateOptions;

    .line 190
    .line 191
    const/16 v1, 0xf

    .line 192
    .line 193
    const-wide/32 v2, 0x10000

    .line 194
    .line 195
    .line 196
    const-string v4, "FILE_OPEN_REQUIRING_OPLOCK"

    .line 197
    .line 198
    invoke-direct {v0, v4, v1, v2, v3}, Lcom/hierynomus/mssmb2/SMB2CreateOptions;-><init>(Ljava/lang/String;IJ)V

    .line 199
    .line 200
    .line 201
    sput-object v0, Lcom/hierynomus/mssmb2/SMB2CreateOptions;->FILE_OPEN_REQUIRING_OPLOCK:Lcom/hierynomus/mssmb2/SMB2CreateOptions;

    .line 202
    .line 203
    new-instance v0, Lcom/hierynomus/mssmb2/SMB2CreateOptions;

    .line 204
    .line 205
    const/16 v1, 0x10

    .line 206
    .line 207
    const-wide/32 v2, 0x20000

    .line 208
    .line 209
    .line 210
    const-string v4, "FILE_DISALLOW_EXCLUSIVE"

    .line 211
    .line 212
    invoke-direct {v0, v4, v1, v2, v3}, Lcom/hierynomus/mssmb2/SMB2CreateOptions;-><init>(Ljava/lang/String;IJ)V

    .line 213
    .line 214
    .line 215
    sput-object v0, Lcom/hierynomus/mssmb2/SMB2CreateOptions;->FILE_DISALLOW_EXCLUSIVE:Lcom/hierynomus/mssmb2/SMB2CreateOptions;

    .line 216
    .line 217
    new-instance v0, Lcom/hierynomus/mssmb2/SMB2CreateOptions;

    .line 218
    .line 219
    const/16 v1, 0x11

    .line 220
    .line 221
    const-wide/32 v2, 0x100000

    .line 222
    .line 223
    .line 224
    const-string v4, "FILE_RESERVE_OPFILTER"

    .line 225
    .line 226
    invoke-direct {v0, v4, v1, v2, v3}, Lcom/hierynomus/mssmb2/SMB2CreateOptions;-><init>(Ljava/lang/String;IJ)V

    .line 227
    .line 228
    .line 229
    sput-object v0, Lcom/hierynomus/mssmb2/SMB2CreateOptions;->FILE_RESERVE_OPFILTER:Lcom/hierynomus/mssmb2/SMB2CreateOptions;

    .line 230
    .line 231
    new-instance v0, Lcom/hierynomus/mssmb2/SMB2CreateOptions;

    .line 232
    .line 233
    const/16 v1, 0x12

    .line 234
    .line 235
    const-wide/32 v2, 0x200000

    .line 236
    .line 237
    .line 238
    const-string v4, "FILE_OPEN_REPARSE_POINT"

    .line 239
    .line 240
    invoke-direct {v0, v4, v1, v2, v3}, Lcom/hierynomus/mssmb2/SMB2CreateOptions;-><init>(Ljava/lang/String;IJ)V

    .line 241
    .line 242
    .line 243
    sput-object v0, Lcom/hierynomus/mssmb2/SMB2CreateOptions;->FILE_OPEN_REPARSE_POINT:Lcom/hierynomus/mssmb2/SMB2CreateOptions;

    .line 244
    .line 245
    new-instance v0, Lcom/hierynomus/mssmb2/SMB2CreateOptions;

    .line 246
    .line 247
    const/16 v1, 0x13

    .line 248
    .line 249
    const-wide/32 v2, 0x400000

    .line 250
    .line 251
    .line 252
    const-string v4, "FILE_OPEN_NO_RECALL"

    .line 253
    .line 254
    invoke-direct {v0, v4, v1, v2, v3}, Lcom/hierynomus/mssmb2/SMB2CreateOptions;-><init>(Ljava/lang/String;IJ)V

    .line 255
    .line 256
    .line 257
    sput-object v0, Lcom/hierynomus/mssmb2/SMB2CreateOptions;->FILE_OPEN_NO_RECALL:Lcom/hierynomus/mssmb2/SMB2CreateOptions;

    .line 258
    .line 259
    new-instance v0, Lcom/hierynomus/mssmb2/SMB2CreateOptions;

    .line 260
    .line 261
    const/16 v1, 0x14

    .line 262
    .line 263
    const-wide/32 v2, 0x800000

    .line 264
    .line 265
    .line 266
    const-string v4, "FILE_OPEN_FOR_FREE_SPACE_QUERY"

    .line 267
    .line 268
    invoke-direct {v0, v4, v1, v2, v3}, Lcom/hierynomus/mssmb2/SMB2CreateOptions;-><init>(Ljava/lang/String;IJ)V

    .line 269
    .line 270
    .line 271
    sput-object v0, Lcom/hierynomus/mssmb2/SMB2CreateOptions;->FILE_OPEN_FOR_FREE_SPACE_QUERY:Lcom/hierynomus/mssmb2/SMB2CreateOptions;

    .line 272
    .line 273
    invoke-static {}, Lcom/hierynomus/mssmb2/SMB2CreateOptions;->$values()[Lcom/hierynomus/mssmb2/SMB2CreateOptions;

    .line 274
    .line 275
    .line 276
    move-result-object v0

    .line 277
    sput-object v0, Lcom/hierynomus/mssmb2/SMB2CreateOptions;->$VALUES:[Lcom/hierynomus/mssmb2/SMB2CreateOptions;

    .line 278
    .line 279
    return-void
.end method

.method private constructor <init>(Ljava/lang/String;IJ)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 2
    .line 3
    .line 4
    iput-wide p3, p0, Lcom/hierynomus/mssmb2/SMB2CreateOptions;->value:J

    .line 5
    .line 6
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/hierynomus/mssmb2/SMB2CreateOptions;
    .locals 1

    .line 1
    const-class v0, Lcom/hierynomus/mssmb2/SMB2CreateOptions;

    .line 2
    .line 3
    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    check-cast p0, Lcom/hierynomus/mssmb2/SMB2CreateOptions;

    .line 8
    .line 9
    return-object p0
.end method

.method public static values()[Lcom/hierynomus/mssmb2/SMB2CreateOptions;
    .locals 1

    .line 1
    sget-object v0, Lcom/hierynomus/mssmb2/SMB2CreateOptions;->$VALUES:[Lcom/hierynomus/mssmb2/SMB2CreateOptions;

    .line 2
    .line 3
    invoke-virtual {v0}, [Lcom/hierynomus/mssmb2/SMB2CreateOptions;->clone()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, [Lcom/hierynomus/mssmb2/SMB2CreateOptions;

    .line 8
    .line 9
    return-object v0
.end method


# virtual methods
.method public getValue()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/hierynomus/mssmb2/SMB2CreateOptions;->value:J

    .line 2
    .line 3
    return-wide v0
.end method
