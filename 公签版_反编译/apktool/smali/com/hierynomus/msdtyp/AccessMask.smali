.class public final enum Lcom/hierynomus/msdtyp/AccessMask;
.super Ljava/lang/Enum;
.source "SourceFile"

# interfaces
.implements Lcom/hierynomus/protocol/commons/EnumWithValue;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/hierynomus/msdtyp/AccessMask;",
        ">;",
        "Lcom/hierynomus/protocol/commons/EnumWithValue<",
        "Lcom/hierynomus/msdtyp/AccessMask;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/hierynomus/msdtyp/AccessMask;

.field public static final enum ACCESS_SYSTEM_SECURITY:Lcom/hierynomus/msdtyp/AccessMask;

.field public static final enum ADS_RIGHT_DS_CONTROL_ACCESS:Lcom/hierynomus/msdtyp/AccessMask;

.field public static final enum ADS_RIGHT_DS_CREATE_CHILD:Lcom/hierynomus/msdtyp/AccessMask;

.field public static final enum ADS_RIGHT_DS_DELETE_CHILD:Lcom/hierynomus/msdtyp/AccessMask;

.field public static final enum ADS_RIGHT_DS_READ_PROP:Lcom/hierynomus/msdtyp/AccessMask;

.field public static final enum ADS_RIGHT_DS_SELF:Lcom/hierynomus/msdtyp/AccessMask;

.field public static final enum ADS_RIGHT_DS_WRITE_PROP:Lcom/hierynomus/msdtyp/AccessMask;

.field public static final enum DELETE:Lcom/hierynomus/msdtyp/AccessMask;

.field public static final enum FILE_ADD_FILE:Lcom/hierynomus/msdtyp/AccessMask;

.field public static final enum FILE_ADD_SUBDIRECTORY:Lcom/hierynomus/msdtyp/AccessMask;

.field public static final enum FILE_APPEND_DATA:Lcom/hierynomus/msdtyp/AccessMask;

.field public static final enum FILE_DELETE_CHILD:Lcom/hierynomus/msdtyp/AccessMask;

.field public static final enum FILE_EXECUTE:Lcom/hierynomus/msdtyp/AccessMask;

.field public static final enum FILE_LIST_DIRECTORY:Lcom/hierynomus/msdtyp/AccessMask;

.field public static final enum FILE_READ_ATTRIBUTES:Lcom/hierynomus/msdtyp/AccessMask;

.field public static final enum FILE_READ_DATA:Lcom/hierynomus/msdtyp/AccessMask;

.field public static final enum FILE_READ_EA:Lcom/hierynomus/msdtyp/AccessMask;

.field public static final enum FILE_TRAVERSE:Lcom/hierynomus/msdtyp/AccessMask;

.field public static final enum FILE_WRITE_ATTRIBUTES:Lcom/hierynomus/msdtyp/AccessMask;

.field public static final enum FILE_WRITE_DATA:Lcom/hierynomus/msdtyp/AccessMask;

.field public static final enum FILE_WRITE_EA:Lcom/hierynomus/msdtyp/AccessMask;

.field public static final enum GENERIC_ALL:Lcom/hierynomus/msdtyp/AccessMask;

.field public static final enum GENERIC_EXECUTE:Lcom/hierynomus/msdtyp/AccessMask;

.field public static final enum GENERIC_READ:Lcom/hierynomus/msdtyp/AccessMask;

.field public static final enum GENERIC_WRITE:Lcom/hierynomus/msdtyp/AccessMask;

.field public static final enum MAXIMUM_ALLOWED:Lcom/hierynomus/msdtyp/AccessMask;

.field public static final enum READ_CONTROL:Lcom/hierynomus/msdtyp/AccessMask;

.field public static final enum SYNCHRONIZE:Lcom/hierynomus/msdtyp/AccessMask;

.field public static final enum WRITE_DAC:Lcom/hierynomus/msdtyp/AccessMask;

.field public static final enum WRITE_OWNER:Lcom/hierynomus/msdtyp/AccessMask;


# instance fields
.field private value:J


# direct methods
.method private static synthetic $values()[Lcom/hierynomus/msdtyp/AccessMask;
    .locals 3

    .line 1
    const/16 v0, 0x1e

    .line 2
    .line 3
    new-array v0, v0, [Lcom/hierynomus/msdtyp/AccessMask;

    .line 4
    .line 5
    sget-object v1, Lcom/hierynomus/msdtyp/AccessMask;->FILE_READ_DATA:Lcom/hierynomus/msdtyp/AccessMask;

    .line 6
    .line 7
    const/4 v2, 0x0

    .line 8
    aput-object v1, v0, v2

    .line 9
    .line 10
    sget-object v1, Lcom/hierynomus/msdtyp/AccessMask;->FILE_WRITE_DATA:Lcom/hierynomus/msdtyp/AccessMask;

    .line 11
    .line 12
    const/4 v2, 0x1

    .line 13
    aput-object v1, v0, v2

    .line 14
    .line 15
    sget-object v1, Lcom/hierynomus/msdtyp/AccessMask;->FILE_APPEND_DATA:Lcom/hierynomus/msdtyp/AccessMask;

    .line 16
    .line 17
    const/4 v2, 0x2

    .line 18
    aput-object v1, v0, v2

    .line 19
    .line 20
    sget-object v1, Lcom/hierynomus/msdtyp/AccessMask;->FILE_EXECUTE:Lcom/hierynomus/msdtyp/AccessMask;

    .line 21
    .line 22
    const/4 v2, 0x3

    .line 23
    aput-object v1, v0, v2

    .line 24
    .line 25
    sget-object v1, Lcom/hierynomus/msdtyp/AccessMask;->FILE_LIST_DIRECTORY:Lcom/hierynomus/msdtyp/AccessMask;

    .line 26
    .line 27
    const/4 v2, 0x4

    .line 28
    aput-object v1, v0, v2

    .line 29
    .line 30
    sget-object v1, Lcom/hierynomus/msdtyp/AccessMask;->FILE_ADD_FILE:Lcom/hierynomus/msdtyp/AccessMask;

    .line 31
    .line 32
    const/4 v2, 0x5

    .line 33
    aput-object v1, v0, v2

    .line 34
    .line 35
    sget-object v1, Lcom/hierynomus/msdtyp/AccessMask;->FILE_ADD_SUBDIRECTORY:Lcom/hierynomus/msdtyp/AccessMask;

    .line 36
    .line 37
    const/4 v2, 0x6

    .line 38
    aput-object v1, v0, v2

    .line 39
    .line 40
    sget-object v1, Lcom/hierynomus/msdtyp/AccessMask;->FILE_TRAVERSE:Lcom/hierynomus/msdtyp/AccessMask;

    .line 41
    .line 42
    const/4 v2, 0x7

    .line 43
    aput-object v1, v0, v2

    .line 44
    .line 45
    sget-object v1, Lcom/hierynomus/msdtyp/AccessMask;->FILE_DELETE_CHILD:Lcom/hierynomus/msdtyp/AccessMask;

    .line 46
    .line 47
    const/16 v2, 0x8

    .line 48
    .line 49
    aput-object v1, v0, v2

    .line 50
    .line 51
    sget-object v1, Lcom/hierynomus/msdtyp/AccessMask;->FILE_READ_ATTRIBUTES:Lcom/hierynomus/msdtyp/AccessMask;

    .line 52
    .line 53
    const/16 v2, 0x9

    .line 54
    .line 55
    aput-object v1, v0, v2

    .line 56
    .line 57
    sget-object v1, Lcom/hierynomus/msdtyp/AccessMask;->FILE_WRITE_ATTRIBUTES:Lcom/hierynomus/msdtyp/AccessMask;

    .line 58
    .line 59
    const/16 v2, 0xa

    .line 60
    .line 61
    aput-object v1, v0, v2

    .line 62
    .line 63
    sget-object v1, Lcom/hierynomus/msdtyp/AccessMask;->FILE_READ_EA:Lcom/hierynomus/msdtyp/AccessMask;

    .line 64
    .line 65
    const/16 v2, 0xb

    .line 66
    .line 67
    aput-object v1, v0, v2

    .line 68
    .line 69
    sget-object v1, Lcom/hierynomus/msdtyp/AccessMask;->FILE_WRITE_EA:Lcom/hierynomus/msdtyp/AccessMask;

    .line 70
    .line 71
    const/16 v2, 0xc

    .line 72
    .line 73
    aput-object v1, v0, v2

    .line 74
    .line 75
    sget-object v1, Lcom/hierynomus/msdtyp/AccessMask;->DELETE:Lcom/hierynomus/msdtyp/AccessMask;

    .line 76
    .line 77
    const/16 v2, 0xd

    .line 78
    .line 79
    aput-object v1, v0, v2

    .line 80
    .line 81
    sget-object v1, Lcom/hierynomus/msdtyp/AccessMask;->READ_CONTROL:Lcom/hierynomus/msdtyp/AccessMask;

    .line 82
    .line 83
    const/16 v2, 0xe

    .line 84
    .line 85
    aput-object v1, v0, v2

    .line 86
    .line 87
    sget-object v1, Lcom/hierynomus/msdtyp/AccessMask;->WRITE_DAC:Lcom/hierynomus/msdtyp/AccessMask;

    .line 88
    .line 89
    const/16 v2, 0xf

    .line 90
    .line 91
    aput-object v1, v0, v2

    .line 92
    .line 93
    sget-object v1, Lcom/hierynomus/msdtyp/AccessMask;->WRITE_OWNER:Lcom/hierynomus/msdtyp/AccessMask;

    .line 94
    .line 95
    const/16 v2, 0x10

    .line 96
    .line 97
    aput-object v1, v0, v2

    .line 98
    .line 99
    sget-object v1, Lcom/hierynomus/msdtyp/AccessMask;->SYNCHRONIZE:Lcom/hierynomus/msdtyp/AccessMask;

    .line 100
    .line 101
    const/16 v2, 0x11

    .line 102
    .line 103
    aput-object v1, v0, v2

    .line 104
    .line 105
    sget-object v1, Lcom/hierynomus/msdtyp/AccessMask;->ACCESS_SYSTEM_SECURITY:Lcom/hierynomus/msdtyp/AccessMask;

    .line 106
    .line 107
    const/16 v2, 0x12

    .line 108
    .line 109
    aput-object v1, v0, v2

    .line 110
    .line 111
    sget-object v1, Lcom/hierynomus/msdtyp/AccessMask;->MAXIMUM_ALLOWED:Lcom/hierynomus/msdtyp/AccessMask;

    .line 112
    .line 113
    const/16 v2, 0x13

    .line 114
    .line 115
    aput-object v1, v0, v2

    .line 116
    .line 117
    sget-object v1, Lcom/hierynomus/msdtyp/AccessMask;->GENERIC_ALL:Lcom/hierynomus/msdtyp/AccessMask;

    .line 118
    .line 119
    const/16 v2, 0x14

    .line 120
    .line 121
    aput-object v1, v0, v2

    .line 122
    .line 123
    sget-object v1, Lcom/hierynomus/msdtyp/AccessMask;->GENERIC_EXECUTE:Lcom/hierynomus/msdtyp/AccessMask;

    .line 124
    .line 125
    const/16 v2, 0x15

    .line 126
    .line 127
    aput-object v1, v0, v2

    .line 128
    .line 129
    sget-object v1, Lcom/hierynomus/msdtyp/AccessMask;->GENERIC_WRITE:Lcom/hierynomus/msdtyp/AccessMask;

    .line 130
    .line 131
    const/16 v2, 0x16

    .line 132
    .line 133
    aput-object v1, v0, v2

    .line 134
    .line 135
    sget-object v1, Lcom/hierynomus/msdtyp/AccessMask;->GENERIC_READ:Lcom/hierynomus/msdtyp/AccessMask;

    .line 136
    .line 137
    const/16 v2, 0x17

    .line 138
    .line 139
    aput-object v1, v0, v2

    .line 140
    .line 141
    sget-object v1, Lcom/hierynomus/msdtyp/AccessMask;->ADS_RIGHT_DS_CONTROL_ACCESS:Lcom/hierynomus/msdtyp/AccessMask;

    .line 142
    .line 143
    const/16 v2, 0x18

    .line 144
    .line 145
    aput-object v1, v0, v2

    .line 146
    .line 147
    sget-object v1, Lcom/hierynomus/msdtyp/AccessMask;->ADS_RIGHT_DS_CREATE_CHILD:Lcom/hierynomus/msdtyp/AccessMask;

    .line 148
    .line 149
    const/16 v2, 0x19

    .line 150
    .line 151
    aput-object v1, v0, v2

    .line 152
    .line 153
    sget-object v1, Lcom/hierynomus/msdtyp/AccessMask;->ADS_RIGHT_DS_DELETE_CHILD:Lcom/hierynomus/msdtyp/AccessMask;

    .line 154
    .line 155
    const/16 v2, 0x1a

    .line 156
    .line 157
    aput-object v1, v0, v2

    .line 158
    .line 159
    sget-object v1, Lcom/hierynomus/msdtyp/AccessMask;->ADS_RIGHT_DS_READ_PROP:Lcom/hierynomus/msdtyp/AccessMask;

    .line 160
    .line 161
    const/16 v2, 0x1b

    .line 162
    .line 163
    aput-object v1, v0, v2

    .line 164
    .line 165
    sget-object v1, Lcom/hierynomus/msdtyp/AccessMask;->ADS_RIGHT_DS_WRITE_PROP:Lcom/hierynomus/msdtyp/AccessMask;

    .line 166
    .line 167
    const/16 v2, 0x1c

    .line 168
    .line 169
    aput-object v1, v0, v2

    .line 170
    .line 171
    sget-object v1, Lcom/hierynomus/msdtyp/AccessMask;->ADS_RIGHT_DS_SELF:Lcom/hierynomus/msdtyp/AccessMask;

    .line 172
    .line 173
    const/16 v2, 0x1d

    .line 174
    .line 175
    aput-object v1, v0, v2

    .line 176
    .line 177
    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 15

    .line 1
    new-instance v0, Lcom/hierynomus/msdtyp/AccessMask;

    .line 2
    .line 3
    const-string v1, "FILE_READ_DATA"

    .line 4
    .line 5
    const/4 v2, 0x0

    .line 6
    const-wide/16 v3, 0x1

    .line 7
    .line 8
    invoke-direct {v0, v1, v2, v3, v4}, Lcom/hierynomus/msdtyp/AccessMask;-><init>(Ljava/lang/String;IJ)V

    .line 9
    .line 10
    .line 11
    sput-object v0, Lcom/hierynomus/msdtyp/AccessMask;->FILE_READ_DATA:Lcom/hierynomus/msdtyp/AccessMask;

    .line 12
    .line 13
    new-instance v0, Lcom/hierynomus/msdtyp/AccessMask;

    .line 14
    .line 15
    const-string v1, "FILE_WRITE_DATA"

    .line 16
    .line 17
    const/4 v2, 0x1

    .line 18
    const-wide/16 v5, 0x2

    .line 19
    .line 20
    invoke-direct {v0, v1, v2, v5, v6}, Lcom/hierynomus/msdtyp/AccessMask;-><init>(Ljava/lang/String;IJ)V

    .line 21
    .line 22
    .line 23
    sput-object v0, Lcom/hierynomus/msdtyp/AccessMask;->FILE_WRITE_DATA:Lcom/hierynomus/msdtyp/AccessMask;

    .line 24
    .line 25
    new-instance v0, Lcom/hierynomus/msdtyp/AccessMask;

    .line 26
    .line 27
    const-string v1, "FILE_APPEND_DATA"

    .line 28
    .line 29
    const/4 v2, 0x2

    .line 30
    const-wide/16 v7, 0x4

    .line 31
    .line 32
    invoke-direct {v0, v1, v2, v7, v8}, Lcom/hierynomus/msdtyp/AccessMask;-><init>(Ljava/lang/String;IJ)V

    .line 33
    .line 34
    .line 35
    sput-object v0, Lcom/hierynomus/msdtyp/AccessMask;->FILE_APPEND_DATA:Lcom/hierynomus/msdtyp/AccessMask;

    .line 36
    .line 37
    new-instance v0, Lcom/hierynomus/msdtyp/AccessMask;

    .line 38
    .line 39
    const-string v1, "FILE_EXECUTE"

    .line 40
    .line 41
    const/4 v2, 0x3

    .line 42
    const-wide/16 v9, 0x20

    .line 43
    .line 44
    invoke-direct {v0, v1, v2, v9, v10}, Lcom/hierynomus/msdtyp/AccessMask;-><init>(Ljava/lang/String;IJ)V

    .line 45
    .line 46
    .line 47
    sput-object v0, Lcom/hierynomus/msdtyp/AccessMask;->FILE_EXECUTE:Lcom/hierynomus/msdtyp/AccessMask;

    .line 48
    .line 49
    new-instance v0, Lcom/hierynomus/msdtyp/AccessMask;

    .line 50
    .line 51
    const-string v1, "FILE_LIST_DIRECTORY"

    .line 52
    .line 53
    const/4 v2, 0x4

    .line 54
    invoke-direct {v0, v1, v2, v3, v4}, Lcom/hierynomus/msdtyp/AccessMask;-><init>(Ljava/lang/String;IJ)V

    .line 55
    .line 56
    .line 57
    sput-object v0, Lcom/hierynomus/msdtyp/AccessMask;->FILE_LIST_DIRECTORY:Lcom/hierynomus/msdtyp/AccessMask;

    .line 58
    .line 59
    new-instance v0, Lcom/hierynomus/msdtyp/AccessMask;

    .line 60
    .line 61
    const-string v1, "FILE_ADD_FILE"

    .line 62
    .line 63
    const/4 v2, 0x5

    .line 64
    invoke-direct {v0, v1, v2, v5, v6}, Lcom/hierynomus/msdtyp/AccessMask;-><init>(Ljava/lang/String;IJ)V

    .line 65
    .line 66
    .line 67
    sput-object v0, Lcom/hierynomus/msdtyp/AccessMask;->FILE_ADD_FILE:Lcom/hierynomus/msdtyp/AccessMask;

    .line 68
    .line 69
    new-instance v0, Lcom/hierynomus/msdtyp/AccessMask;

    .line 70
    .line 71
    const-string v1, "FILE_ADD_SUBDIRECTORY"

    .line 72
    .line 73
    const/4 v2, 0x6

    .line 74
    invoke-direct {v0, v1, v2, v7, v8}, Lcom/hierynomus/msdtyp/AccessMask;-><init>(Ljava/lang/String;IJ)V

    .line 75
    .line 76
    .line 77
    sput-object v0, Lcom/hierynomus/msdtyp/AccessMask;->FILE_ADD_SUBDIRECTORY:Lcom/hierynomus/msdtyp/AccessMask;

    .line 78
    .line 79
    new-instance v0, Lcom/hierynomus/msdtyp/AccessMask;

    .line 80
    .line 81
    const-string v1, "FILE_TRAVERSE"

    .line 82
    .line 83
    const/4 v2, 0x7

    .line 84
    invoke-direct {v0, v1, v2, v9, v10}, Lcom/hierynomus/msdtyp/AccessMask;-><init>(Ljava/lang/String;IJ)V

    .line 85
    .line 86
    .line 87
    sput-object v0, Lcom/hierynomus/msdtyp/AccessMask;->FILE_TRAVERSE:Lcom/hierynomus/msdtyp/AccessMask;

    .line 88
    .line 89
    new-instance v0, Lcom/hierynomus/msdtyp/AccessMask;

    .line 90
    .line 91
    const/16 v1, 0x8

    .line 92
    .line 93
    const-wide/16 v7, 0x40

    .line 94
    .line 95
    const-string v2, "FILE_DELETE_CHILD"

    .line 96
    .line 97
    invoke-direct {v0, v2, v1, v7, v8}, Lcom/hierynomus/msdtyp/AccessMask;-><init>(Ljava/lang/String;IJ)V

    .line 98
    .line 99
    .line 100
    sput-object v0, Lcom/hierynomus/msdtyp/AccessMask;->FILE_DELETE_CHILD:Lcom/hierynomus/msdtyp/AccessMask;

    .line 101
    .line 102
    new-instance v0, Lcom/hierynomus/msdtyp/AccessMask;

    .line 103
    .line 104
    const/16 v1, 0x9

    .line 105
    .line 106
    const-wide/16 v7, 0x80

    .line 107
    .line 108
    const-string v2, "FILE_READ_ATTRIBUTES"

    .line 109
    .line 110
    invoke-direct {v0, v2, v1, v7, v8}, Lcom/hierynomus/msdtyp/AccessMask;-><init>(Ljava/lang/String;IJ)V

    .line 111
    .line 112
    .line 113
    sput-object v0, Lcom/hierynomus/msdtyp/AccessMask;->FILE_READ_ATTRIBUTES:Lcom/hierynomus/msdtyp/AccessMask;

    .line 114
    .line 115
    new-instance v0, Lcom/hierynomus/msdtyp/AccessMask;

    .line 116
    .line 117
    const-string v1, "FILE_WRITE_ATTRIBUTES"

    .line 118
    .line 119
    const/16 v2, 0xa

    .line 120
    .line 121
    const-wide/16 v7, 0x100

    .line 122
    .line 123
    invoke-direct {v0, v1, v2, v7, v8}, Lcom/hierynomus/msdtyp/AccessMask;-><init>(Ljava/lang/String;IJ)V

    .line 124
    .line 125
    .line 126
    sput-object v0, Lcom/hierynomus/msdtyp/AccessMask;->FILE_WRITE_ATTRIBUTES:Lcom/hierynomus/msdtyp/AccessMask;

    .line 127
    .line 128
    new-instance v0, Lcom/hierynomus/msdtyp/AccessMask;

    .line 129
    .line 130
    const-string v1, "FILE_READ_EA"

    .line 131
    .line 132
    const/16 v2, 0xb

    .line 133
    .line 134
    const-wide/16 v11, 0x8

    .line 135
    .line 136
    invoke-direct {v0, v1, v2, v11, v12}, Lcom/hierynomus/msdtyp/AccessMask;-><init>(Ljava/lang/String;IJ)V

    .line 137
    .line 138
    .line 139
    sput-object v0, Lcom/hierynomus/msdtyp/AccessMask;->FILE_READ_EA:Lcom/hierynomus/msdtyp/AccessMask;

    .line 140
    .line 141
    new-instance v0, Lcom/hierynomus/msdtyp/AccessMask;

    .line 142
    .line 143
    const-string v1, "FILE_WRITE_EA"

    .line 144
    .line 145
    const/16 v2, 0xc

    .line 146
    .line 147
    const-wide/16 v13, 0x10

    .line 148
    .line 149
    invoke-direct {v0, v1, v2, v13, v14}, Lcom/hierynomus/msdtyp/AccessMask;-><init>(Ljava/lang/String;IJ)V

    .line 150
    .line 151
    .line 152
    sput-object v0, Lcom/hierynomus/msdtyp/AccessMask;->FILE_WRITE_EA:Lcom/hierynomus/msdtyp/AccessMask;

    .line 153
    .line 154
    new-instance v0, Lcom/hierynomus/msdtyp/AccessMask;

    .line 155
    .line 156
    const/16 v1, 0xd

    .line 157
    .line 158
    const-wide/32 v11, 0x10000

    .line 159
    .line 160
    .line 161
    const-string v2, "DELETE"

    .line 162
    .line 163
    invoke-direct {v0, v2, v1, v11, v12}, Lcom/hierynomus/msdtyp/AccessMask;-><init>(Ljava/lang/String;IJ)V

    .line 164
    .line 165
    .line 166
    sput-object v0, Lcom/hierynomus/msdtyp/AccessMask;->DELETE:Lcom/hierynomus/msdtyp/AccessMask;

    .line 167
    .line 168
    new-instance v0, Lcom/hierynomus/msdtyp/AccessMask;

    .line 169
    .line 170
    const/16 v1, 0xe

    .line 171
    .line 172
    const-wide/32 v11, 0x20000

    .line 173
    .line 174
    .line 175
    const-string v2, "READ_CONTROL"

    .line 176
    .line 177
    invoke-direct {v0, v2, v1, v11, v12}, Lcom/hierynomus/msdtyp/AccessMask;-><init>(Ljava/lang/String;IJ)V

    .line 178
    .line 179
    .line 180
    sput-object v0, Lcom/hierynomus/msdtyp/AccessMask;->READ_CONTROL:Lcom/hierynomus/msdtyp/AccessMask;

    .line 181
    .line 182
    new-instance v0, Lcom/hierynomus/msdtyp/AccessMask;

    .line 183
    .line 184
    const/16 v1, 0xf

    .line 185
    .line 186
    const-wide/32 v11, 0x40000

    .line 187
    .line 188
    .line 189
    const-string v2, "WRITE_DAC"

    .line 190
    .line 191
    invoke-direct {v0, v2, v1, v11, v12}, Lcom/hierynomus/msdtyp/AccessMask;-><init>(Ljava/lang/String;IJ)V

    .line 192
    .line 193
    .line 194
    sput-object v0, Lcom/hierynomus/msdtyp/AccessMask;->WRITE_DAC:Lcom/hierynomus/msdtyp/AccessMask;

    .line 195
    .line 196
    new-instance v0, Lcom/hierynomus/msdtyp/AccessMask;

    .line 197
    .line 198
    const/16 v1, 0x10

    .line 199
    .line 200
    const-wide/32 v11, 0x80000

    .line 201
    .line 202
    .line 203
    const-string v2, "WRITE_OWNER"

    .line 204
    .line 205
    invoke-direct {v0, v2, v1, v11, v12}, Lcom/hierynomus/msdtyp/AccessMask;-><init>(Ljava/lang/String;IJ)V

    .line 206
    .line 207
    .line 208
    sput-object v0, Lcom/hierynomus/msdtyp/AccessMask;->WRITE_OWNER:Lcom/hierynomus/msdtyp/AccessMask;

    .line 209
    .line 210
    new-instance v0, Lcom/hierynomus/msdtyp/AccessMask;

    .line 211
    .line 212
    const/16 v1, 0x11

    .line 213
    .line 214
    const-wide/32 v11, 0x100000

    .line 215
    .line 216
    .line 217
    const-string v2, "SYNCHRONIZE"

    .line 218
    .line 219
    invoke-direct {v0, v2, v1, v11, v12}, Lcom/hierynomus/msdtyp/AccessMask;-><init>(Ljava/lang/String;IJ)V

    .line 220
    .line 221
    .line 222
    sput-object v0, Lcom/hierynomus/msdtyp/AccessMask;->SYNCHRONIZE:Lcom/hierynomus/msdtyp/AccessMask;

    .line 223
    .line 224
    new-instance v0, Lcom/hierynomus/msdtyp/AccessMask;

    .line 225
    .line 226
    const/16 v1, 0x12

    .line 227
    .line 228
    const-wide/32 v11, 0x1000000

    .line 229
    .line 230
    .line 231
    const-string v2, "ACCESS_SYSTEM_SECURITY"

    .line 232
    .line 233
    invoke-direct {v0, v2, v1, v11, v12}, Lcom/hierynomus/msdtyp/AccessMask;-><init>(Ljava/lang/String;IJ)V

    .line 234
    .line 235
    .line 236
    sput-object v0, Lcom/hierynomus/msdtyp/AccessMask;->ACCESS_SYSTEM_SECURITY:Lcom/hierynomus/msdtyp/AccessMask;

    .line 237
    .line 238
    new-instance v0, Lcom/hierynomus/msdtyp/AccessMask;

    .line 239
    .line 240
    const/16 v1, 0x13

    .line 241
    .line 242
    const-wide/32 v11, 0x2000000

    .line 243
    .line 244
    .line 245
    const-string v2, "MAXIMUM_ALLOWED"

    .line 246
    .line 247
    invoke-direct {v0, v2, v1, v11, v12}, Lcom/hierynomus/msdtyp/AccessMask;-><init>(Ljava/lang/String;IJ)V

    .line 248
    .line 249
    .line 250
    sput-object v0, Lcom/hierynomus/msdtyp/AccessMask;->MAXIMUM_ALLOWED:Lcom/hierynomus/msdtyp/AccessMask;

    .line 251
    .line 252
    new-instance v0, Lcom/hierynomus/msdtyp/AccessMask;

    .line 253
    .line 254
    const/16 v1, 0x14

    .line 255
    .line 256
    const-wide/32 v11, 0x10000000

    .line 257
    .line 258
    .line 259
    const-string v2, "GENERIC_ALL"

    .line 260
    .line 261
    invoke-direct {v0, v2, v1, v11, v12}, Lcom/hierynomus/msdtyp/AccessMask;-><init>(Ljava/lang/String;IJ)V

    .line 262
    .line 263
    .line 264
    sput-object v0, Lcom/hierynomus/msdtyp/AccessMask;->GENERIC_ALL:Lcom/hierynomus/msdtyp/AccessMask;

    .line 265
    .line 266
    new-instance v0, Lcom/hierynomus/msdtyp/AccessMask;

    .line 267
    .line 268
    const/16 v1, 0x15

    .line 269
    .line 270
    const-wide/32 v11, 0x20000000

    .line 271
    .line 272
    .line 273
    const-string v2, "GENERIC_EXECUTE"

    .line 274
    .line 275
    invoke-direct {v0, v2, v1, v11, v12}, Lcom/hierynomus/msdtyp/AccessMask;-><init>(Ljava/lang/String;IJ)V

    .line 276
    .line 277
    .line 278
    sput-object v0, Lcom/hierynomus/msdtyp/AccessMask;->GENERIC_EXECUTE:Lcom/hierynomus/msdtyp/AccessMask;

    .line 279
    .line 280
    new-instance v0, Lcom/hierynomus/msdtyp/AccessMask;

    .line 281
    .line 282
    const/16 v1, 0x16

    .line 283
    .line 284
    const-wide/32 v11, 0x40000000

    .line 285
    .line 286
    .line 287
    const-string v2, "GENERIC_WRITE"

    .line 288
    .line 289
    invoke-direct {v0, v2, v1, v11, v12}, Lcom/hierynomus/msdtyp/AccessMask;-><init>(Ljava/lang/String;IJ)V

    .line 290
    .line 291
    .line 292
    sput-object v0, Lcom/hierynomus/msdtyp/AccessMask;->GENERIC_WRITE:Lcom/hierynomus/msdtyp/AccessMask;

    .line 293
    .line 294
    new-instance v0, Lcom/hierynomus/msdtyp/AccessMask;

    .line 295
    .line 296
    const/16 v1, 0x17

    .line 297
    .line 298
    const-wide v11, 0x80000000L

    .line 299
    .line 300
    .line 301
    .line 302
    .line 303
    const-string v2, "GENERIC_READ"

    .line 304
    .line 305
    invoke-direct {v0, v2, v1, v11, v12}, Lcom/hierynomus/msdtyp/AccessMask;-><init>(Ljava/lang/String;IJ)V

    .line 306
    .line 307
    .line 308
    sput-object v0, Lcom/hierynomus/msdtyp/AccessMask;->GENERIC_READ:Lcom/hierynomus/msdtyp/AccessMask;

    .line 309
    .line 310
    new-instance v0, Lcom/hierynomus/msdtyp/AccessMask;

    .line 311
    .line 312
    const-string v1, "ADS_RIGHT_DS_CONTROL_ACCESS"

    .line 313
    .line 314
    const/16 v2, 0x18

    .line 315
    .line 316
    invoke-direct {v0, v1, v2, v7, v8}, Lcom/hierynomus/msdtyp/AccessMask;-><init>(Ljava/lang/String;IJ)V

    .line 317
    .line 318
    .line 319
    sput-object v0, Lcom/hierynomus/msdtyp/AccessMask;->ADS_RIGHT_DS_CONTROL_ACCESS:Lcom/hierynomus/msdtyp/AccessMask;

    .line 320
    .line 321
    new-instance v0, Lcom/hierynomus/msdtyp/AccessMask;

    .line 322
    .line 323
    const-string v1, "ADS_RIGHT_DS_CREATE_CHILD"

    .line 324
    .line 325
    const/16 v2, 0x19

    .line 326
    .line 327
    invoke-direct {v0, v1, v2, v3, v4}, Lcom/hierynomus/msdtyp/AccessMask;-><init>(Ljava/lang/String;IJ)V

    .line 328
    .line 329
    .line 330
    sput-object v0, Lcom/hierynomus/msdtyp/AccessMask;->ADS_RIGHT_DS_CREATE_CHILD:Lcom/hierynomus/msdtyp/AccessMask;

    .line 331
    .line 332
    new-instance v0, Lcom/hierynomus/msdtyp/AccessMask;

    .line 333
    .line 334
    const-string v1, "ADS_RIGHT_DS_DELETE_CHILD"

    .line 335
    .line 336
    const/16 v2, 0x1a

    .line 337
    .line 338
    invoke-direct {v0, v1, v2, v5, v6}, Lcom/hierynomus/msdtyp/AccessMask;-><init>(Ljava/lang/String;IJ)V

    .line 339
    .line 340
    .line 341
    sput-object v0, Lcom/hierynomus/msdtyp/AccessMask;->ADS_RIGHT_DS_DELETE_CHILD:Lcom/hierynomus/msdtyp/AccessMask;

    .line 342
    .line 343
    new-instance v0, Lcom/hierynomus/msdtyp/AccessMask;

    .line 344
    .line 345
    const-string v1, "ADS_RIGHT_DS_READ_PROP"

    .line 346
    .line 347
    const/16 v2, 0x1b

    .line 348
    .line 349
    invoke-direct {v0, v1, v2, v13, v14}, Lcom/hierynomus/msdtyp/AccessMask;-><init>(Ljava/lang/String;IJ)V

    .line 350
    .line 351
    .line 352
    sput-object v0, Lcom/hierynomus/msdtyp/AccessMask;->ADS_RIGHT_DS_READ_PROP:Lcom/hierynomus/msdtyp/AccessMask;

    .line 353
    .line 354
    new-instance v0, Lcom/hierynomus/msdtyp/AccessMask;

    .line 355
    .line 356
    const-string v1, "ADS_RIGHT_DS_WRITE_PROP"

    .line 357
    .line 358
    const/16 v2, 0x1c

    .line 359
    .line 360
    invoke-direct {v0, v1, v2, v9, v10}, Lcom/hierynomus/msdtyp/AccessMask;-><init>(Ljava/lang/String;IJ)V

    .line 361
    .line 362
    .line 363
    sput-object v0, Lcom/hierynomus/msdtyp/AccessMask;->ADS_RIGHT_DS_WRITE_PROP:Lcom/hierynomus/msdtyp/AccessMask;

    .line 364
    .line 365
    new-instance v0, Lcom/hierynomus/msdtyp/AccessMask;

    .line 366
    .line 367
    const-string v1, "ADS_RIGHT_DS_SELF"

    .line 368
    .line 369
    const/16 v2, 0x1d

    .line 370
    .line 371
    const-wide/16 v3, 0x8

    .line 372
    .line 373
    invoke-direct {v0, v1, v2, v3, v4}, Lcom/hierynomus/msdtyp/AccessMask;-><init>(Ljava/lang/String;IJ)V

    .line 374
    .line 375
    .line 376
    sput-object v0, Lcom/hierynomus/msdtyp/AccessMask;->ADS_RIGHT_DS_SELF:Lcom/hierynomus/msdtyp/AccessMask;

    .line 377
    .line 378
    invoke-static {}, Lcom/hierynomus/msdtyp/AccessMask;->$values()[Lcom/hierynomus/msdtyp/AccessMask;

    .line 379
    .line 380
    .line 381
    move-result-object v0

    .line 382
    sput-object v0, Lcom/hierynomus/msdtyp/AccessMask;->$VALUES:[Lcom/hierynomus/msdtyp/AccessMask;

    .line 383
    .line 384
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
    iput-wide p3, p0, Lcom/hierynomus/msdtyp/AccessMask;->value:J

    .line 5
    .line 6
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/hierynomus/msdtyp/AccessMask;
    .locals 1

    .line 1
    const-class v0, Lcom/hierynomus/msdtyp/AccessMask;

    .line 2
    .line 3
    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    check-cast p0, Lcom/hierynomus/msdtyp/AccessMask;

    .line 8
    .line 9
    return-object p0
.end method

.method public static values()[Lcom/hierynomus/msdtyp/AccessMask;
    .locals 1

    .line 1
    sget-object v0, Lcom/hierynomus/msdtyp/AccessMask;->$VALUES:[Lcom/hierynomus/msdtyp/AccessMask;

    .line 2
    .line 3
    invoke-virtual {v0}, [Lcom/hierynomus/msdtyp/AccessMask;->clone()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, [Lcom/hierynomus/msdtyp/AccessMask;

    .line 8
    .line 9
    return-object v0
.end method


# virtual methods
.method public getValue()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/hierynomus/msdtyp/AccessMask;->value:J

    .line 2
    .line 3
    return-wide v0
.end method
