.class public final enum Lcom/hsae/autosdk/hmi/HmiConst$HMI;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/hsae/autosdk/hmi/HmiConst;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "HMI"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/hsae/autosdk/hmi/HmiConst$HMI$TouchKey;,
        Lcom/hsae/autosdk/hmi/HmiConst$HMI$AirPanel;,
        Lcom/hsae/autosdk/hmi/HmiConst$HMI$State;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/hsae/autosdk/hmi/HmiConst$HMI;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/hsae/autosdk/hmi/HmiConst$HMI;

.field public static final enum ALLEY:Lcom/hsae/autosdk/hmi/HmiConst$HMI;

.field public static final enum ANSWER_CALL:Lcom/hsae/autosdk/hmi/HmiConst$HMI;

.field public static final enum BACK:Lcom/hsae/autosdk/hmi/HmiConst$HMI;

.field public static final enum END_CALL:Lcom/hsae/autosdk/hmi/HmiConst$HMI;

.field public static final enum EV:Lcom/hsae/autosdk/hmi/HmiConst$HMI;

.field public static final enum HOME:Lcom/hsae/autosdk/hmi/HmiConst$HMI;

.field public static final enum HOTKEY:Lcom/hsae/autosdk/hmi/HmiConst$HMI;

.field public static final enum MEDIA:Lcom/hsae/autosdk/hmi/HmiConst$HMI;

.field public static final enum MODE:Lcom/hsae/autosdk/hmi/HmiConst$HMI;

.field public static final enum MUTE:Lcom/hsae/autosdk/hmi/HmiConst$HMI;

.field public static final enum NAVI:Lcom/hsae/autosdk/hmi/HmiConst$HMI;

.field public static final enum NIGHT_MODE:Lcom/hsae/autosdk/hmi/HmiConst$HMI;

.field public static final enum OK:Lcom/hsae/autosdk/hmi/HmiConst$HMI;

.field public static final enum PHONE:Lcom/hsae/autosdk/hmi/HmiConst$HMI;

.field public static final enum POWER:Lcom/hsae/autosdk/hmi/HmiConst$HMI;

.field public static final enum RETURN:Lcom/hsae/autosdk/hmi/HmiConst$HMI;

.field public static final enum SEEKDOWN:Lcom/hsae/autosdk/hmi/HmiConst$HMI;

.field public static final enum SEEKUP:Lcom/hsae/autosdk/hmi/HmiConst$HMI;

.field public static final enum SETTING:Lcom/hsae/autosdk/hmi/HmiConst$HMI;

.field public static final enum SOURCE:Lcom/hsae/autosdk/hmi/HmiConst$HMI;

.field public static final enum SOURCE_RE:Lcom/hsae/autosdk/hmi/HmiConst$HMI;

.field public static final enum START_VR:Lcom/hsae/autosdk/hmi/HmiConst$HMI;

.field public static final enum TRACK_DOWN:Lcom/hsae/autosdk/hmi/HmiConst$HMI;

.field public static final enum TRACK_UP:Lcom/hsae/autosdk/hmi/HmiConst$HMI;

.field public static final enum TUNE:Lcom/hsae/autosdk/hmi/HmiConst$HMI;

.field public static final enum VOLUME_LEFT:Lcom/hsae/autosdk/hmi/HmiConst$HMI;

.field public static final enum VOLUME_RIGHT:Lcom/hsae/autosdk/hmi/HmiConst$HMI;

.field public static final enum W_SEEK_DOWN:Lcom/hsae/autosdk/hmi/HmiConst$HMI;

.field public static final enum W_SEEK_UP:Lcom/hsae/autosdk/hmi/HmiConst$HMI;

.field public static final enum W_VOLUME_DOWN:Lcom/hsae/autosdk/hmi/HmiConst$HMI;

.field public static final enum W_VOLUME_UP:Lcom/hsae/autosdk/hmi/HmiConst$HMI;


# instance fields
.field private f8id:I


# direct methods
.method private static synthetic $values()[Lcom/hsae/autosdk/hmi/HmiConst$HMI;
    .locals 3

    .line 1
    const/16 v0, 0x1f

    .line 2
    .line 3
    new-array v0, v0, [Lcom/hsae/autosdk/hmi/HmiConst$HMI;

    .line 4
    .line 5
    sget-object v1, Lcom/hsae/autosdk/hmi/HmiConst$HMI;->SEEKUP:Lcom/hsae/autosdk/hmi/HmiConst$HMI;

    .line 6
    .line 7
    const/4 v2, 0x0

    .line 8
    aput-object v1, v0, v2

    .line 9
    .line 10
    sget-object v1, Lcom/hsae/autosdk/hmi/HmiConst$HMI;->SEEKDOWN:Lcom/hsae/autosdk/hmi/HmiConst$HMI;

    .line 11
    .line 12
    const/4 v2, 0x1

    .line 13
    aput-object v1, v0, v2

    .line 14
    .line 15
    sget-object v1, Lcom/hsae/autosdk/hmi/HmiConst$HMI;->MUTE:Lcom/hsae/autosdk/hmi/HmiConst$HMI;

    .line 16
    .line 17
    const/4 v2, 0x2

    .line 18
    aput-object v1, v0, v2

    .line 19
    .line 20
    sget-object v1, Lcom/hsae/autosdk/hmi/HmiConst$HMI;->VOLUME_LEFT:Lcom/hsae/autosdk/hmi/HmiConst$HMI;

    .line 21
    .line 22
    const/4 v2, 0x3

    .line 23
    aput-object v1, v0, v2

    .line 24
    .line 25
    sget-object v1, Lcom/hsae/autosdk/hmi/HmiConst$HMI;->VOLUME_RIGHT:Lcom/hsae/autosdk/hmi/HmiConst$HMI;

    .line 26
    .line 27
    const/4 v2, 0x4

    .line 28
    aput-object v1, v0, v2

    .line 29
    .line 30
    sget-object v1, Lcom/hsae/autosdk/hmi/HmiConst$HMI;->POWER:Lcom/hsae/autosdk/hmi/HmiConst$HMI;

    .line 31
    .line 32
    const/4 v2, 0x5

    .line 33
    aput-object v1, v0, v2

    .line 34
    .line 35
    sget-object v1, Lcom/hsae/autosdk/hmi/HmiConst$HMI;->W_SEEK_UP:Lcom/hsae/autosdk/hmi/HmiConst$HMI;

    .line 36
    .line 37
    const/4 v2, 0x6

    .line 38
    aput-object v1, v0, v2

    .line 39
    .line 40
    sget-object v1, Lcom/hsae/autosdk/hmi/HmiConst$HMI;->W_SEEK_DOWN:Lcom/hsae/autosdk/hmi/HmiConst$HMI;

    .line 41
    .line 42
    const/4 v2, 0x7

    .line 43
    aput-object v1, v0, v2

    .line 44
    .line 45
    sget-object v1, Lcom/hsae/autosdk/hmi/HmiConst$HMI;->W_VOLUME_UP:Lcom/hsae/autosdk/hmi/HmiConst$HMI;

    .line 46
    .line 47
    const/16 v2, 0x8

    .line 48
    .line 49
    aput-object v1, v0, v2

    .line 50
    .line 51
    sget-object v1, Lcom/hsae/autosdk/hmi/HmiConst$HMI;->W_VOLUME_DOWN:Lcom/hsae/autosdk/hmi/HmiConst$HMI;

    .line 52
    .line 53
    const/16 v2, 0x9

    .line 54
    .line 55
    aput-object v1, v0, v2

    .line 56
    .line 57
    sget-object v1, Lcom/hsae/autosdk/hmi/HmiConst$HMI;->ANSWER_CALL:Lcom/hsae/autosdk/hmi/HmiConst$HMI;

    .line 58
    .line 59
    const/16 v2, 0xa

    .line 60
    .line 61
    aput-object v1, v0, v2

    .line 62
    .line 63
    sget-object v1, Lcom/hsae/autosdk/hmi/HmiConst$HMI;->END_CALL:Lcom/hsae/autosdk/hmi/HmiConst$HMI;

    .line 64
    .line 65
    const/16 v2, 0xb

    .line 66
    .line 67
    aput-object v1, v0, v2

    .line 68
    .line 69
    sget-object v1, Lcom/hsae/autosdk/hmi/HmiConst$HMI;->MEDIA:Lcom/hsae/autosdk/hmi/HmiConst$HMI;

    .line 70
    .line 71
    const/16 v2, 0xc

    .line 72
    .line 73
    aput-object v1, v0, v2

    .line 74
    .line 75
    sget-object v1, Lcom/hsae/autosdk/hmi/HmiConst$HMI;->RETURN:Lcom/hsae/autosdk/hmi/HmiConst$HMI;

    .line 76
    .line 77
    const/16 v2, 0xd

    .line 78
    .line 79
    aput-object v1, v0, v2

    .line 80
    .line 81
    sget-object v1, Lcom/hsae/autosdk/hmi/HmiConst$HMI;->START_VR:Lcom/hsae/autosdk/hmi/HmiConst$HMI;

    .line 82
    .line 83
    const/16 v2, 0xe

    .line 84
    .line 85
    aput-object v1, v0, v2

    .line 86
    .line 87
    sget-object v1, Lcom/hsae/autosdk/hmi/HmiConst$HMI;->MODE:Lcom/hsae/autosdk/hmi/HmiConst$HMI;

    .line 88
    .line 89
    const/16 v2, 0xf

    .line 90
    .line 91
    aput-object v1, v0, v2

    .line 92
    .line 93
    sget-object v1, Lcom/hsae/autosdk/hmi/HmiConst$HMI;->SOURCE:Lcom/hsae/autosdk/hmi/HmiConst$HMI;

    .line 94
    .line 95
    const/16 v2, 0x10

    .line 96
    .line 97
    aput-object v1, v0, v2

    .line 98
    .line 99
    sget-object v1, Lcom/hsae/autosdk/hmi/HmiConst$HMI;->SOURCE_RE:Lcom/hsae/autosdk/hmi/HmiConst$HMI;

    .line 100
    .line 101
    const/16 v2, 0x11

    .line 102
    .line 103
    aput-object v1, v0, v2

    .line 104
    .line 105
    sget-object v1, Lcom/hsae/autosdk/hmi/HmiConst$HMI;->HOTKEY:Lcom/hsae/autosdk/hmi/HmiConst$HMI;

    .line 106
    .line 107
    const/16 v2, 0x12

    .line 108
    .line 109
    aput-object v1, v0, v2

    .line 110
    .line 111
    sget-object v1, Lcom/hsae/autosdk/hmi/HmiConst$HMI;->EV:Lcom/hsae/autosdk/hmi/HmiConst$HMI;

    .line 112
    .line 113
    const/16 v2, 0x13

    .line 114
    .line 115
    aput-object v1, v0, v2

    .line 116
    .line 117
    sget-object v1, Lcom/hsae/autosdk/hmi/HmiConst$HMI;->ALLEY:Lcom/hsae/autosdk/hmi/HmiConst$HMI;

    .line 118
    .line 119
    const/16 v2, 0x14

    .line 120
    .line 121
    aput-object v1, v0, v2

    .line 122
    .line 123
    sget-object v1, Lcom/hsae/autosdk/hmi/HmiConst$HMI;->HOME:Lcom/hsae/autosdk/hmi/HmiConst$HMI;

    .line 124
    .line 125
    const/16 v2, 0x15

    .line 126
    .line 127
    aput-object v1, v0, v2

    .line 128
    .line 129
    sget-object v1, Lcom/hsae/autosdk/hmi/HmiConst$HMI;->NIGHT_MODE:Lcom/hsae/autosdk/hmi/HmiConst$HMI;

    .line 130
    .line 131
    const/16 v2, 0x16

    .line 132
    .line 133
    aput-object v1, v0, v2

    .line 134
    .line 135
    sget-object v1, Lcom/hsae/autosdk/hmi/HmiConst$HMI;->SETTING:Lcom/hsae/autosdk/hmi/HmiConst$HMI;

    .line 136
    .line 137
    const/16 v2, 0x17

    .line 138
    .line 139
    aput-object v1, v0, v2

    .line 140
    .line 141
    sget-object v1, Lcom/hsae/autosdk/hmi/HmiConst$HMI;->BACK:Lcom/hsae/autosdk/hmi/HmiConst$HMI;

    .line 142
    .line 143
    const/16 v2, 0x18

    .line 144
    .line 145
    aput-object v1, v0, v2

    .line 146
    .line 147
    sget-object v1, Lcom/hsae/autosdk/hmi/HmiConst$HMI;->NAVI:Lcom/hsae/autosdk/hmi/HmiConst$HMI;

    .line 148
    .line 149
    const/16 v2, 0x19

    .line 150
    .line 151
    aput-object v1, v0, v2

    .line 152
    .line 153
    sget-object v1, Lcom/hsae/autosdk/hmi/HmiConst$HMI;->PHONE:Lcom/hsae/autosdk/hmi/HmiConst$HMI;

    .line 154
    .line 155
    const/16 v2, 0x1a

    .line 156
    .line 157
    aput-object v1, v0, v2

    .line 158
    .line 159
    sget-object v1, Lcom/hsae/autosdk/hmi/HmiConst$HMI;->TUNE:Lcom/hsae/autosdk/hmi/HmiConst$HMI;

    .line 160
    .line 161
    const/16 v2, 0x1b

    .line 162
    .line 163
    aput-object v1, v0, v2

    .line 164
    .line 165
    sget-object v1, Lcom/hsae/autosdk/hmi/HmiConst$HMI;->TRACK_UP:Lcom/hsae/autosdk/hmi/HmiConst$HMI;

    .line 166
    .line 167
    const/16 v2, 0x1c

    .line 168
    .line 169
    aput-object v1, v0, v2

    .line 170
    .line 171
    sget-object v1, Lcom/hsae/autosdk/hmi/HmiConst$HMI;->TRACK_DOWN:Lcom/hsae/autosdk/hmi/HmiConst$HMI;

    .line 172
    .line 173
    const/16 v2, 0x1d

    .line 174
    .line 175
    aput-object v1, v0, v2

    .line 176
    .line 177
    sget-object v1, Lcom/hsae/autosdk/hmi/HmiConst$HMI;->OK:Lcom/hsae/autosdk/hmi/HmiConst$HMI;

    .line 178
    .line 179
    const/16 v2, 0x1e

    .line 180
    .line 181
    aput-object v1, v0, v2

    .line 182
    .line 183
    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 10

    .line 1
    new-instance v0, Lcom/hsae/autosdk/hmi/HmiConst$HMI;

    .line 2
    .line 3
    const-string v1, "SEEKUP"

    .line 4
    .line 5
    const/4 v2, 0x0

    .line 6
    const/4 v3, 0x4

    .line 7
    invoke-direct {v0, v1, v2, v3}, Lcom/hsae/autosdk/hmi/HmiConst$HMI;-><init>(Ljava/lang/String;II)V

    .line 8
    .line 9
    .line 10
    sput-object v0, Lcom/hsae/autosdk/hmi/HmiConst$HMI;->SEEKUP:Lcom/hsae/autosdk/hmi/HmiConst$HMI;

    .line 11
    .line 12
    new-instance v0, Lcom/hsae/autosdk/hmi/HmiConst$HMI;

    .line 13
    .line 14
    const-string v1, "SEEKDOWN"

    .line 15
    .line 16
    const/4 v2, 0x1

    .line 17
    const/16 v4, 0x8

    .line 18
    .line 19
    invoke-direct {v0, v1, v2, v4}, Lcom/hsae/autosdk/hmi/HmiConst$HMI;-><init>(Ljava/lang/String;II)V

    .line 20
    .line 21
    .line 22
    sput-object v0, Lcom/hsae/autosdk/hmi/HmiConst$HMI;->SEEKDOWN:Lcom/hsae/autosdk/hmi/HmiConst$HMI;

    .line 23
    .line 24
    new-instance v0, Lcom/hsae/autosdk/hmi/HmiConst$HMI;

    .line 25
    .line 26
    const-string v1, "MUTE"

    .line 27
    .line 28
    const/4 v2, 0x2

    .line 29
    const/16 v5, 0x9

    .line 30
    .line 31
    invoke-direct {v0, v1, v2, v5}, Lcom/hsae/autosdk/hmi/HmiConst$HMI;-><init>(Ljava/lang/String;II)V

    .line 32
    .line 33
    .line 34
    sput-object v0, Lcom/hsae/autosdk/hmi/HmiConst$HMI;->MUTE:Lcom/hsae/autosdk/hmi/HmiConst$HMI;

    .line 35
    .line 36
    new-instance v0, Lcom/hsae/autosdk/hmi/HmiConst$HMI;

    .line 37
    .line 38
    const-string v1, "VOLUME_LEFT"

    .line 39
    .line 40
    const/4 v2, 0x3

    .line 41
    const/16 v6, 0x11

    .line 42
    .line 43
    invoke-direct {v0, v1, v2, v6}, Lcom/hsae/autosdk/hmi/HmiConst$HMI;-><init>(Ljava/lang/String;II)V

    .line 44
    .line 45
    .line 46
    sput-object v0, Lcom/hsae/autosdk/hmi/HmiConst$HMI;->VOLUME_LEFT:Lcom/hsae/autosdk/hmi/HmiConst$HMI;

    .line 47
    .line 48
    new-instance v0, Lcom/hsae/autosdk/hmi/HmiConst$HMI;

    .line 49
    .line 50
    const-string v1, "VOLUME_RIGHT"

    .line 51
    .line 52
    const/16 v2, 0x12

    .line 53
    .line 54
    invoke-direct {v0, v1, v3, v2}, Lcom/hsae/autosdk/hmi/HmiConst$HMI;-><init>(Ljava/lang/String;II)V

    .line 55
    .line 56
    .line 57
    sput-object v0, Lcom/hsae/autosdk/hmi/HmiConst$HMI;->VOLUME_RIGHT:Lcom/hsae/autosdk/hmi/HmiConst$HMI;

    .line 58
    .line 59
    new-instance v0, Lcom/hsae/autosdk/hmi/HmiConst$HMI;

    .line 60
    .line 61
    const-string v1, "POWER"

    .line 62
    .line 63
    const/4 v3, 0x5

    .line 64
    const/16 v7, 0x13

    .line 65
    .line 66
    invoke-direct {v0, v1, v3, v7}, Lcom/hsae/autosdk/hmi/HmiConst$HMI;-><init>(Ljava/lang/String;II)V

    .line 67
    .line 68
    .line 69
    sput-object v0, Lcom/hsae/autosdk/hmi/HmiConst$HMI;->POWER:Lcom/hsae/autosdk/hmi/HmiConst$HMI;

    .line 70
    .line 71
    new-instance v0, Lcom/hsae/autosdk/hmi/HmiConst$HMI;

    .line 72
    .line 73
    const-string v1, "W_SEEK_UP"

    .line 74
    .line 75
    const/4 v3, 0x6

    .line 76
    const/16 v8, 0x1a

    .line 77
    .line 78
    invoke-direct {v0, v1, v3, v8}, Lcom/hsae/autosdk/hmi/HmiConst$HMI;-><init>(Ljava/lang/String;II)V

    .line 79
    .line 80
    .line 81
    sput-object v0, Lcom/hsae/autosdk/hmi/HmiConst$HMI;->W_SEEK_UP:Lcom/hsae/autosdk/hmi/HmiConst$HMI;

    .line 82
    .line 83
    new-instance v0, Lcom/hsae/autosdk/hmi/HmiConst$HMI;

    .line 84
    .line 85
    const-string v1, "W_SEEK_DOWN"

    .line 86
    .line 87
    const/4 v3, 0x7

    .line 88
    const/16 v9, 0x1b

    .line 89
    .line 90
    invoke-direct {v0, v1, v3, v9}, Lcom/hsae/autosdk/hmi/HmiConst$HMI;-><init>(Ljava/lang/String;II)V

    .line 91
    .line 92
    .line 93
    sput-object v0, Lcom/hsae/autosdk/hmi/HmiConst$HMI;->W_SEEK_DOWN:Lcom/hsae/autosdk/hmi/HmiConst$HMI;

    .line 94
    .line 95
    new-instance v0, Lcom/hsae/autosdk/hmi/HmiConst$HMI;

    .line 96
    .line 97
    const-string v1, "W_VOLUME_UP"

    .line 98
    .line 99
    const/16 v3, 0x1e

    .line 100
    .line 101
    invoke-direct {v0, v1, v4, v3}, Lcom/hsae/autosdk/hmi/HmiConst$HMI;-><init>(Ljava/lang/String;II)V

    .line 102
    .line 103
    .line 104
    sput-object v0, Lcom/hsae/autosdk/hmi/HmiConst$HMI;->W_VOLUME_UP:Lcom/hsae/autosdk/hmi/HmiConst$HMI;

    .line 105
    .line 106
    new-instance v0, Lcom/hsae/autosdk/hmi/HmiConst$HMI;

    .line 107
    .line 108
    const-string v1, "W_VOLUME_DOWN"

    .line 109
    .line 110
    const/16 v4, 0x1f

    .line 111
    .line 112
    invoke-direct {v0, v1, v5, v4}, Lcom/hsae/autosdk/hmi/HmiConst$HMI;-><init>(Ljava/lang/String;II)V

    .line 113
    .line 114
    .line 115
    sput-object v0, Lcom/hsae/autosdk/hmi/HmiConst$HMI;->W_VOLUME_DOWN:Lcom/hsae/autosdk/hmi/HmiConst$HMI;

    .line 116
    .line 117
    new-instance v0, Lcom/hsae/autosdk/hmi/HmiConst$HMI;

    .line 118
    .line 119
    const/16 v1, 0xa

    .line 120
    .line 121
    const/16 v4, 0x20

    .line 122
    .line 123
    const-string v5, "ANSWER_CALL"

    .line 124
    .line 125
    invoke-direct {v0, v5, v1, v4}, Lcom/hsae/autosdk/hmi/HmiConst$HMI;-><init>(Ljava/lang/String;II)V

    .line 126
    .line 127
    .line 128
    sput-object v0, Lcom/hsae/autosdk/hmi/HmiConst$HMI;->ANSWER_CALL:Lcom/hsae/autosdk/hmi/HmiConst$HMI;

    .line 129
    .line 130
    new-instance v0, Lcom/hsae/autosdk/hmi/HmiConst$HMI;

    .line 131
    .line 132
    const/16 v1, 0xb

    .line 133
    .line 134
    const/16 v4, 0x21

    .line 135
    .line 136
    const-string v5, "END_CALL"

    .line 137
    .line 138
    invoke-direct {v0, v5, v1, v4}, Lcom/hsae/autosdk/hmi/HmiConst$HMI;-><init>(Ljava/lang/String;II)V

    .line 139
    .line 140
    .line 141
    sput-object v0, Lcom/hsae/autosdk/hmi/HmiConst$HMI;->END_CALL:Lcom/hsae/autosdk/hmi/HmiConst$HMI;

    .line 142
    .line 143
    new-instance v0, Lcom/hsae/autosdk/hmi/HmiConst$HMI;

    .line 144
    .line 145
    const/16 v1, 0xc

    .line 146
    .line 147
    const/16 v4, 0x22

    .line 148
    .line 149
    const-string v5, "MEDIA"

    .line 150
    .line 151
    invoke-direct {v0, v5, v1, v4}, Lcom/hsae/autosdk/hmi/HmiConst$HMI;-><init>(Ljava/lang/String;II)V

    .line 152
    .line 153
    .line 154
    sput-object v0, Lcom/hsae/autosdk/hmi/HmiConst$HMI;->MEDIA:Lcom/hsae/autosdk/hmi/HmiConst$HMI;

    .line 155
    .line 156
    new-instance v0, Lcom/hsae/autosdk/hmi/HmiConst$HMI;

    .line 157
    .line 158
    const/16 v1, 0xd

    .line 159
    .line 160
    const/16 v4, 0x2b

    .line 161
    .line 162
    const-string v5, "RETURN"

    .line 163
    .line 164
    invoke-direct {v0, v5, v1, v4}, Lcom/hsae/autosdk/hmi/HmiConst$HMI;-><init>(Ljava/lang/String;II)V

    .line 165
    .line 166
    .line 167
    sput-object v0, Lcom/hsae/autosdk/hmi/HmiConst$HMI;->RETURN:Lcom/hsae/autosdk/hmi/HmiConst$HMI;

    .line 168
    .line 169
    new-instance v0, Lcom/hsae/autosdk/hmi/HmiConst$HMI;

    .line 170
    .line 171
    const/16 v1, 0xe

    .line 172
    .line 173
    const/16 v4, 0x2c

    .line 174
    .line 175
    const-string v5, "START_VR"

    .line 176
    .line 177
    invoke-direct {v0, v5, v1, v4}, Lcom/hsae/autosdk/hmi/HmiConst$HMI;-><init>(Ljava/lang/String;II)V

    .line 178
    .line 179
    .line 180
    sput-object v0, Lcom/hsae/autosdk/hmi/HmiConst$HMI;->START_VR:Lcom/hsae/autosdk/hmi/HmiConst$HMI;

    .line 181
    .line 182
    new-instance v0, Lcom/hsae/autosdk/hmi/HmiConst$HMI;

    .line 183
    .line 184
    const/16 v1, 0xf

    .line 185
    .line 186
    const/16 v4, 0x3a

    .line 187
    .line 188
    const-string v5, "MODE"

    .line 189
    .line 190
    invoke-direct {v0, v5, v1, v4}, Lcom/hsae/autosdk/hmi/HmiConst$HMI;-><init>(Ljava/lang/String;II)V

    .line 191
    .line 192
    .line 193
    sput-object v0, Lcom/hsae/autosdk/hmi/HmiConst$HMI;->MODE:Lcom/hsae/autosdk/hmi/HmiConst$HMI;

    .line 194
    .line 195
    new-instance v0, Lcom/hsae/autosdk/hmi/HmiConst$HMI;

    .line 196
    .line 197
    const/16 v1, 0x10

    .line 198
    .line 199
    const/16 v4, 0x3c

    .line 200
    .line 201
    const-string v5, "SOURCE"

    .line 202
    .line 203
    invoke-direct {v0, v5, v1, v4}, Lcom/hsae/autosdk/hmi/HmiConst$HMI;-><init>(Ljava/lang/String;II)V

    .line 204
    .line 205
    .line 206
    sput-object v0, Lcom/hsae/autosdk/hmi/HmiConst$HMI;->SOURCE:Lcom/hsae/autosdk/hmi/HmiConst$HMI;

    .line 207
    .line 208
    new-instance v0, Lcom/hsae/autosdk/hmi/HmiConst$HMI;

    .line 209
    .line 210
    const-string v1, "SOURCE_RE"

    .line 211
    .line 212
    const/16 v4, 0x3f

    .line 213
    .line 214
    invoke-direct {v0, v1, v6, v4}, Lcom/hsae/autosdk/hmi/HmiConst$HMI;-><init>(Ljava/lang/String;II)V

    .line 215
    .line 216
    .line 217
    sput-object v0, Lcom/hsae/autosdk/hmi/HmiConst$HMI;->SOURCE_RE:Lcom/hsae/autosdk/hmi/HmiConst$HMI;

    .line 218
    .line 219
    new-instance v0, Lcom/hsae/autosdk/hmi/HmiConst$HMI;

    .line 220
    .line 221
    const-string v1, "HOTKEY"

    .line 222
    .line 223
    const/16 v4, 0x51

    .line 224
    .line 225
    invoke-direct {v0, v1, v2, v4}, Lcom/hsae/autosdk/hmi/HmiConst$HMI;-><init>(Ljava/lang/String;II)V

    .line 226
    .line 227
    .line 228
    sput-object v0, Lcom/hsae/autosdk/hmi/HmiConst$HMI;->HOTKEY:Lcom/hsae/autosdk/hmi/HmiConst$HMI;

    .line 229
    .line 230
    new-instance v0, Lcom/hsae/autosdk/hmi/HmiConst$HMI;

    .line 231
    .line 232
    const-string v1, "EV"

    .line 233
    .line 234
    const/16 v2, 0x52

    .line 235
    .line 236
    invoke-direct {v0, v1, v7, v2}, Lcom/hsae/autosdk/hmi/HmiConst$HMI;-><init>(Ljava/lang/String;II)V

    .line 237
    .line 238
    .line 239
    sput-object v0, Lcom/hsae/autosdk/hmi/HmiConst$HMI;->EV:Lcom/hsae/autosdk/hmi/HmiConst$HMI;

    .line 240
    .line 241
    new-instance v0, Lcom/hsae/autosdk/hmi/HmiConst$HMI;

    .line 242
    .line 243
    const/16 v1, 0x14

    .line 244
    .line 245
    const/16 v2, 0x53

    .line 246
    .line 247
    const-string v4, "ALLEY"

    .line 248
    .line 249
    invoke-direct {v0, v4, v1, v2}, Lcom/hsae/autosdk/hmi/HmiConst$HMI;-><init>(Ljava/lang/String;II)V

    .line 250
    .line 251
    .line 252
    sput-object v0, Lcom/hsae/autosdk/hmi/HmiConst$HMI;->ALLEY:Lcom/hsae/autosdk/hmi/HmiConst$HMI;

    .line 253
    .line 254
    new-instance v0, Lcom/hsae/autosdk/hmi/HmiConst$HMI;

    .line 255
    .line 256
    const/16 v1, 0x15

    .line 257
    .line 258
    const/16 v2, 0x54

    .line 259
    .line 260
    const-string v4, "HOME"

    .line 261
    .line 262
    invoke-direct {v0, v4, v1, v2}, Lcom/hsae/autosdk/hmi/HmiConst$HMI;-><init>(Ljava/lang/String;II)V

    .line 263
    .line 264
    .line 265
    sput-object v0, Lcom/hsae/autosdk/hmi/HmiConst$HMI;->HOME:Lcom/hsae/autosdk/hmi/HmiConst$HMI;

    .line 266
    .line 267
    new-instance v0, Lcom/hsae/autosdk/hmi/HmiConst$HMI;

    .line 268
    .line 269
    const/16 v1, 0x16

    .line 270
    .line 271
    const/16 v2, 0x55

    .line 272
    .line 273
    const-string v4, "NIGHT_MODE"

    .line 274
    .line 275
    invoke-direct {v0, v4, v1, v2}, Lcom/hsae/autosdk/hmi/HmiConst$HMI;-><init>(Ljava/lang/String;II)V

    .line 276
    .line 277
    .line 278
    sput-object v0, Lcom/hsae/autosdk/hmi/HmiConst$HMI;->NIGHT_MODE:Lcom/hsae/autosdk/hmi/HmiConst$HMI;

    .line 279
    .line 280
    new-instance v0, Lcom/hsae/autosdk/hmi/HmiConst$HMI;

    .line 281
    .line 282
    const/16 v1, 0x17

    .line 283
    .line 284
    const/16 v2, 0x75

    .line 285
    .line 286
    const-string v4, "SETTING"

    .line 287
    .line 288
    invoke-direct {v0, v4, v1, v2}, Lcom/hsae/autosdk/hmi/HmiConst$HMI;-><init>(Ljava/lang/String;II)V

    .line 289
    .line 290
    .line 291
    sput-object v0, Lcom/hsae/autosdk/hmi/HmiConst$HMI;->SETTING:Lcom/hsae/autosdk/hmi/HmiConst$HMI;

    .line 292
    .line 293
    new-instance v0, Lcom/hsae/autosdk/hmi/HmiConst$HMI;

    .line 294
    .line 295
    const/16 v1, 0x18

    .line 296
    .line 297
    const/16 v2, 0x76

    .line 298
    .line 299
    const-string v4, "BACK"

    .line 300
    .line 301
    invoke-direct {v0, v4, v1, v2}, Lcom/hsae/autosdk/hmi/HmiConst$HMI;-><init>(Ljava/lang/String;II)V

    .line 302
    .line 303
    .line 304
    sput-object v0, Lcom/hsae/autosdk/hmi/HmiConst$HMI;->BACK:Lcom/hsae/autosdk/hmi/HmiConst$HMI;

    .line 305
    .line 306
    new-instance v0, Lcom/hsae/autosdk/hmi/HmiConst$HMI;

    .line 307
    .line 308
    const/16 v1, 0x19

    .line 309
    .line 310
    const/16 v2, 0x77

    .line 311
    .line 312
    const-string v4, "NAVI"

    .line 313
    .line 314
    invoke-direct {v0, v4, v1, v2}, Lcom/hsae/autosdk/hmi/HmiConst$HMI;-><init>(Ljava/lang/String;II)V

    .line 315
    .line 316
    .line 317
    sput-object v0, Lcom/hsae/autosdk/hmi/HmiConst$HMI;->NAVI:Lcom/hsae/autosdk/hmi/HmiConst$HMI;

    .line 318
    .line 319
    new-instance v0, Lcom/hsae/autosdk/hmi/HmiConst$HMI;

    .line 320
    .line 321
    const-string v1, "PHONE"

    .line 322
    .line 323
    const/16 v2, 0x78

    .line 324
    .line 325
    invoke-direct {v0, v1, v8, v2}, Lcom/hsae/autosdk/hmi/HmiConst$HMI;-><init>(Ljava/lang/String;II)V

    .line 326
    .line 327
    .line 328
    sput-object v0, Lcom/hsae/autosdk/hmi/HmiConst$HMI;->PHONE:Lcom/hsae/autosdk/hmi/HmiConst$HMI;

    .line 329
    .line 330
    new-instance v0, Lcom/hsae/autosdk/hmi/HmiConst$HMI;

    .line 331
    .line 332
    const-string v1, "TUNE"

    .line 333
    .line 334
    const/16 v2, 0x79

    .line 335
    .line 336
    invoke-direct {v0, v1, v9, v2}, Lcom/hsae/autosdk/hmi/HmiConst$HMI;-><init>(Ljava/lang/String;II)V

    .line 337
    .line 338
    .line 339
    sput-object v0, Lcom/hsae/autosdk/hmi/HmiConst$HMI;->TUNE:Lcom/hsae/autosdk/hmi/HmiConst$HMI;

    .line 340
    .line 341
    new-instance v0, Lcom/hsae/autosdk/hmi/HmiConst$HMI;

    .line 342
    .line 343
    const/16 v1, 0x1c

    .line 344
    .line 345
    const/16 v2, 0x7a

    .line 346
    .line 347
    const-string v4, "TRACK_UP"

    .line 348
    .line 349
    invoke-direct {v0, v4, v1, v2}, Lcom/hsae/autosdk/hmi/HmiConst$HMI;-><init>(Ljava/lang/String;II)V

    .line 350
    .line 351
    .line 352
    sput-object v0, Lcom/hsae/autosdk/hmi/HmiConst$HMI;->TRACK_UP:Lcom/hsae/autosdk/hmi/HmiConst$HMI;

    .line 353
    .line 354
    new-instance v0, Lcom/hsae/autosdk/hmi/HmiConst$HMI;

    .line 355
    .line 356
    const/16 v1, 0x1d

    .line 357
    .line 358
    const/16 v2, 0x7b

    .line 359
    .line 360
    const-string v4, "TRACK_DOWN"

    .line 361
    .line 362
    invoke-direct {v0, v4, v1, v2}, Lcom/hsae/autosdk/hmi/HmiConst$HMI;-><init>(Ljava/lang/String;II)V

    .line 363
    .line 364
    .line 365
    sput-object v0, Lcom/hsae/autosdk/hmi/HmiConst$HMI;->TRACK_DOWN:Lcom/hsae/autosdk/hmi/HmiConst$HMI;

    .line 366
    .line 367
    new-instance v0, Lcom/hsae/autosdk/hmi/HmiConst$HMI;

    .line 368
    .line 369
    const-string v1, "OK"

    .line 370
    .line 371
    const/16 v2, 0x7c

    .line 372
    .line 373
    invoke-direct {v0, v1, v3, v2}, Lcom/hsae/autosdk/hmi/HmiConst$HMI;-><init>(Ljava/lang/String;II)V

    .line 374
    .line 375
    .line 376
    sput-object v0, Lcom/hsae/autosdk/hmi/HmiConst$HMI;->OK:Lcom/hsae/autosdk/hmi/HmiConst$HMI;

    .line 377
    .line 378
    invoke-static {}, Lcom/hsae/autosdk/hmi/HmiConst$HMI;->$values()[Lcom/hsae/autosdk/hmi/HmiConst$HMI;

    .line 379
    .line 380
    .line 381
    move-result-object v0

    .line 382
    sput-object v0, Lcom/hsae/autosdk/hmi/HmiConst$HMI;->$VALUES:[Lcom/hsae/autosdk/hmi/HmiConst$HMI;

    .line 383
    .line 384
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
    iput p3, p0, Lcom/hsae/autosdk/hmi/HmiConst$HMI;->f8id:I

    .line 5
    .line 6
    return-void
.end method

.method public static final findById(I)Lcom/hsae/autosdk/hmi/HmiConst$HMI;
    .locals 5

    .line 1
    invoke-static {}, Lcom/hsae/autosdk/hmi/HmiConst$HMI;->values()[Lcom/hsae/autosdk/hmi/HmiConst$HMI;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    array-length v1, v0

    .line 6
    const/4 v2, 0x0

    .line 7
    :goto_0
    if-ge v2, v1, :cond_1

    .line 8
    .line 9
    aget-object v3, v0, v2

    .line 10
    .line 11
    iget v4, v3, Lcom/hsae/autosdk/hmi/HmiConst$HMI;->f8id:I

    .line 12
    .line 13
    if-ne v4, p0, :cond_0

    .line 14
    .line 15
    return-object v3

    .line 16
    :cond_0
    add-int/lit8 v2, v2, 0x1

    .line 17
    .line 18
    goto :goto_0

    .line 19
    :cond_1
    const/4 p0, 0x0

    .line 20
    return-object p0
.end method

.method public static final toString(I)Ljava/lang/String;
    .locals 5

    .line 1
    invoke-static {}, Lcom/hsae/autosdk/hmi/HmiConst$HMI;->values()[Lcom/hsae/autosdk/hmi/HmiConst$HMI;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    array-length v1, v0

    .line 6
    const/4 v2, 0x0

    .line 7
    :goto_0
    if-ge v2, v1, :cond_1

    .line 8
    .line 9
    aget-object v3, v0, v2

    .line 10
    .line 11
    iget v4, v3, Lcom/hsae/autosdk/hmi/HmiConst$HMI;->f8id:I

    .line 12
    .line 13
    if-ne v4, p0, :cond_0

    .line 14
    .line 15
    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 16
    .line 17
    .line 18
    move-result-object p0

    .line 19
    return-object p0

    .line 20
    :cond_0
    add-int/lit8 v2, v2, 0x1

    .line 21
    .line 22
    goto :goto_0

    .line 23
    :cond_1
    invoke-static {p0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 24
    .line 25
    .line 26
    move-result-object p0

    .line 27
    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/hsae/autosdk/hmi/HmiConst$HMI;
    .locals 1

    .line 1
    const-class v0, Lcom/hsae/autosdk/hmi/HmiConst$HMI;

    .line 2
    .line 3
    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    check-cast p0, Lcom/hsae/autosdk/hmi/HmiConst$HMI;

    .line 8
    .line 9
    return-object p0
.end method

.method public static values()[Lcom/hsae/autosdk/hmi/HmiConst$HMI;
    .locals 1

    .line 1
    sget-object v0, Lcom/hsae/autosdk/hmi/HmiConst$HMI;->$VALUES:[Lcom/hsae/autosdk/hmi/HmiConst$HMI;

    .line 2
    .line 3
    invoke-virtual {v0}, [Lcom/hsae/autosdk/hmi/HmiConst$HMI;->clone()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, [Lcom/hsae/autosdk/hmi/HmiConst$HMI;

    .line 8
    .line 9
    return-object v0
.end method


# virtual methods
.method public m25id()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/hsae/autosdk/hmi/HmiConst$HMI;->f8id:I

    .line 2
    .line 3
    return v0
.end method
