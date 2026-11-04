.class public final enum Lcom/hsae/autosdk/p001os/SocConst$VersionName;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/hsae/autosdk/p001os/SocConst;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "VersionName"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/hsae/autosdk/p001os/SocConst$VersionName;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/hsae/autosdk/p001os/SocConst$VersionName;

.field public static final enum AMP_HW:Lcom/hsae/autosdk/p001os/SocConst$VersionName;

.field public static final enum AMP_SW:Lcom/hsae/autosdk/p001os/SocConst$VersionName;

.field public static final enum AVM_HW:Lcom/hsae/autosdk/p001os/SocConst$VersionName;

.field public static final enum AVM_SW:Lcom/hsae/autosdk/p001os/SocConst$VersionName;

.field public static final enum AVM_VIN:Lcom/hsae/autosdk/p001os/SocConst$VersionName;

.field public static final enum BCM_HW:Lcom/hsae/autosdk/p001os/SocConst$VersionName;

.field public static final enum BCM_SW:Lcom/hsae/autosdk/p001os/SocConst$VersionName;

.field public static final enum BT:Lcom/hsae/autosdk/p001os/SocConst$VersionName;

.field public static final enum CAN:Lcom/hsae/autosdk/p001os/SocConst$VersionName;

.field public static final enum CPLD:Lcom/hsae/autosdk/p001os/SocConst$VersionName;

.field public static final enum CPU_HW:Lcom/hsae/autosdk/p001os/SocConst$VersionName;

.field public static final enum CPU_SW:Lcom/hsae/autosdk/p001os/SocConst$VersionName;

.field public static final enum DEFAULT:Lcom/hsae/autosdk/p001os/SocConst$VersionName;

.field public static final enum DVBT_HW:Lcom/hsae/autosdk/p001os/SocConst$VersionName;

.field public static final enum DVBT_SW:Lcom/hsae/autosdk/p001os/SocConst$VersionName;

.field public static final enum EV_HW:Lcom/hsae/autosdk/p001os/SocConst$VersionName;

.field public static final enum EV_SW:Lcom/hsae/autosdk/p001os/SocConst$VersionName;

.field public static final enum FLASH:Lcom/hsae/autosdk/p001os/SocConst$VersionName;

.field public static final enum FRD_HW:Lcom/hsae/autosdk/p001os/SocConst$VersionName;

.field public static final enum FRD_SW:Lcom/hsae/autosdk/p001os/SocConst$VersionName;

.field public static final enum HMI_HW:Lcom/hsae/autosdk/p001os/SocConst$VersionName;

.field public static final enum HMI_SW:Lcom/hsae/autosdk/p001os/SocConst$VersionName;

.field public static final enum INSTRUMENT_HW:Lcom/hsae/autosdk/p001os/SocConst$VersionName;

.field public static final enum INSTRUMENT_SW:Lcom/hsae/autosdk/p001os/SocConst$VersionName;

.field public static final enum MCAN:Lcom/hsae/autosdk/p001os/SocConst$VersionName;

.field public static final enum MCU:Lcom/hsae/autosdk/p001os/SocConst$VersionName;

.field public static final enum MCU_LOG:Lcom/hsae/autosdk/p001os/SocConst$VersionName;

.field public static final enum PRODUCT_SEQUENCE:Lcom/hsae/autosdk/p001os/SocConst$VersionName;

.field public static final enum TPMS_HW:Lcom/hsae/autosdk/p001os/SocConst$VersionName;

.field public static final enum TPMS_SW:Lcom/hsae/autosdk/p001os/SocConst$VersionName;

.field public static final enum VR:Lcom/hsae/autosdk/p001os/SocConst$VersionName;


# instance fields
.field private f19id:I


# direct methods
.method private static synthetic $values()[Lcom/hsae/autosdk/p001os/SocConst$VersionName;
    .locals 3

    .line 1
    const/16 v0, 0x1f

    .line 2
    .line 3
    new-array v0, v0, [Lcom/hsae/autosdk/p001os/SocConst$VersionName;

    .line 4
    .line 5
    sget-object v1, Lcom/hsae/autosdk/p001os/SocConst$VersionName;->DEFAULT:Lcom/hsae/autosdk/p001os/SocConst$VersionName;

    .line 6
    .line 7
    const/4 v2, 0x0

    .line 8
    aput-object v1, v0, v2

    .line 9
    .line 10
    sget-object v1, Lcom/hsae/autosdk/p001os/SocConst$VersionName;->MCU:Lcom/hsae/autosdk/p001os/SocConst$VersionName;

    .line 11
    .line 12
    const/4 v2, 0x1

    .line 13
    aput-object v1, v0, v2

    .line 14
    .line 15
    sget-object v1, Lcom/hsae/autosdk/p001os/SocConst$VersionName;->CPU_HW:Lcom/hsae/autosdk/p001os/SocConst$VersionName;

    .line 16
    .line 17
    const/4 v2, 0x2

    .line 18
    aput-object v1, v0, v2

    .line 19
    .line 20
    sget-object v1, Lcom/hsae/autosdk/p001os/SocConst$VersionName;->CPU_SW:Lcom/hsae/autosdk/p001os/SocConst$VersionName;

    .line 21
    .line 22
    const/4 v2, 0x3

    .line 23
    aput-object v1, v0, v2

    .line 24
    .line 25
    sget-object v1, Lcom/hsae/autosdk/p001os/SocConst$VersionName;->CAN:Lcom/hsae/autosdk/p001os/SocConst$VersionName;

    .line 26
    .line 27
    const/4 v2, 0x4

    .line 28
    aput-object v1, v0, v2

    .line 29
    .line 30
    sget-object v1, Lcom/hsae/autosdk/p001os/SocConst$VersionName;->CPLD:Lcom/hsae/autosdk/p001os/SocConst$VersionName;

    .line 31
    .line 32
    const/4 v2, 0x5

    .line 33
    aput-object v1, v0, v2

    .line 34
    .line 35
    sget-object v1, Lcom/hsae/autosdk/p001os/SocConst$VersionName;->PRODUCT_SEQUENCE:Lcom/hsae/autosdk/p001os/SocConst$VersionName;

    .line 36
    .line 37
    const/4 v2, 0x6

    .line 38
    aput-object v1, v0, v2

    .line 39
    .line 40
    sget-object v1, Lcom/hsae/autosdk/p001os/SocConst$VersionName;->VR:Lcom/hsae/autosdk/p001os/SocConst$VersionName;

    .line 41
    .line 42
    const/4 v2, 0x7

    .line 43
    aput-object v1, v0, v2

    .line 44
    .line 45
    sget-object v1, Lcom/hsae/autosdk/p001os/SocConst$VersionName;->BT:Lcom/hsae/autosdk/p001os/SocConst$VersionName;

    .line 46
    .line 47
    const/16 v2, 0x8

    .line 48
    .line 49
    aput-object v1, v0, v2

    .line 50
    .line 51
    sget-object v1, Lcom/hsae/autosdk/p001os/SocConst$VersionName;->EV_HW:Lcom/hsae/autosdk/p001os/SocConst$VersionName;

    .line 52
    .line 53
    const/16 v2, 0x9

    .line 54
    .line 55
    aput-object v1, v0, v2

    .line 56
    .line 57
    sget-object v1, Lcom/hsae/autosdk/p001os/SocConst$VersionName;->HMI_HW:Lcom/hsae/autosdk/p001os/SocConst$VersionName;

    .line 58
    .line 59
    const/16 v2, 0xa

    .line 60
    .line 61
    aput-object v1, v0, v2

    .line 62
    .line 63
    sget-object v1, Lcom/hsae/autosdk/p001os/SocConst$VersionName;->HMI_SW:Lcom/hsae/autosdk/p001os/SocConst$VersionName;

    .line 64
    .line 65
    const/16 v2, 0xb

    .line 66
    .line 67
    aput-object v1, v0, v2

    .line 68
    .line 69
    sget-object v1, Lcom/hsae/autosdk/p001os/SocConst$VersionName;->FLASH:Lcom/hsae/autosdk/p001os/SocConst$VersionName;

    .line 70
    .line 71
    const/16 v2, 0xc

    .line 72
    .line 73
    aput-object v1, v0, v2

    .line 74
    .line 75
    sget-object v1, Lcom/hsae/autosdk/p001os/SocConst$VersionName;->EV_SW:Lcom/hsae/autosdk/p001os/SocConst$VersionName;

    .line 76
    .line 77
    const/16 v2, 0xd

    .line 78
    .line 79
    aput-object v1, v0, v2

    .line 80
    .line 81
    sget-object v1, Lcom/hsae/autosdk/p001os/SocConst$VersionName;->AMP_HW:Lcom/hsae/autosdk/p001os/SocConst$VersionName;

    .line 82
    .line 83
    const/16 v2, 0xe

    .line 84
    .line 85
    aput-object v1, v0, v2

    .line 86
    .line 87
    sget-object v1, Lcom/hsae/autosdk/p001os/SocConst$VersionName;->AMP_SW:Lcom/hsae/autosdk/p001os/SocConst$VersionName;

    .line 88
    .line 89
    const/16 v2, 0xf

    .line 90
    .line 91
    aput-object v1, v0, v2

    .line 92
    .line 93
    sget-object v1, Lcom/hsae/autosdk/p001os/SocConst$VersionName;->TPMS_HW:Lcom/hsae/autosdk/p001os/SocConst$VersionName;

    .line 94
    .line 95
    const/16 v2, 0x10

    .line 96
    .line 97
    aput-object v1, v0, v2

    .line 98
    .line 99
    sget-object v1, Lcom/hsae/autosdk/p001os/SocConst$VersionName;->TPMS_SW:Lcom/hsae/autosdk/p001os/SocConst$VersionName;

    .line 100
    .line 101
    const/16 v2, 0x11

    .line 102
    .line 103
    aput-object v1, v0, v2

    .line 104
    .line 105
    sget-object v1, Lcom/hsae/autosdk/p001os/SocConst$VersionName;->BCM_HW:Lcom/hsae/autosdk/p001os/SocConst$VersionName;

    .line 106
    .line 107
    const/16 v2, 0x12

    .line 108
    .line 109
    aput-object v1, v0, v2

    .line 110
    .line 111
    sget-object v1, Lcom/hsae/autosdk/p001os/SocConst$VersionName;->BCM_SW:Lcom/hsae/autosdk/p001os/SocConst$VersionName;

    .line 112
    .line 113
    const/16 v2, 0x13

    .line 114
    .line 115
    aput-object v1, v0, v2

    .line 116
    .line 117
    sget-object v1, Lcom/hsae/autosdk/p001os/SocConst$VersionName;->FRD_HW:Lcom/hsae/autosdk/p001os/SocConst$VersionName;

    .line 118
    .line 119
    const/16 v2, 0x14

    .line 120
    .line 121
    aput-object v1, v0, v2

    .line 122
    .line 123
    sget-object v1, Lcom/hsae/autosdk/p001os/SocConst$VersionName;->FRD_SW:Lcom/hsae/autosdk/p001os/SocConst$VersionName;

    .line 124
    .line 125
    const/16 v2, 0x15

    .line 126
    .line 127
    aput-object v1, v0, v2

    .line 128
    .line 129
    sget-object v1, Lcom/hsae/autosdk/p001os/SocConst$VersionName;->DVBT_HW:Lcom/hsae/autosdk/p001os/SocConst$VersionName;

    .line 130
    .line 131
    const/16 v2, 0x16

    .line 132
    .line 133
    aput-object v1, v0, v2

    .line 134
    .line 135
    sget-object v1, Lcom/hsae/autosdk/p001os/SocConst$VersionName;->DVBT_SW:Lcom/hsae/autosdk/p001os/SocConst$VersionName;

    .line 136
    .line 137
    const/16 v2, 0x17

    .line 138
    .line 139
    aput-object v1, v0, v2

    .line 140
    .line 141
    sget-object v1, Lcom/hsae/autosdk/p001os/SocConst$VersionName;->MCU_LOG:Lcom/hsae/autosdk/p001os/SocConst$VersionName;

    .line 142
    .line 143
    const/16 v2, 0x18

    .line 144
    .line 145
    aput-object v1, v0, v2

    .line 146
    .line 147
    sget-object v1, Lcom/hsae/autosdk/p001os/SocConst$VersionName;->AVM_HW:Lcom/hsae/autosdk/p001os/SocConst$VersionName;

    .line 148
    .line 149
    const/16 v2, 0x19

    .line 150
    .line 151
    aput-object v1, v0, v2

    .line 152
    .line 153
    sget-object v1, Lcom/hsae/autosdk/p001os/SocConst$VersionName;->AVM_SW:Lcom/hsae/autosdk/p001os/SocConst$VersionName;

    .line 154
    .line 155
    const/16 v2, 0x1a

    .line 156
    .line 157
    aput-object v1, v0, v2

    .line 158
    .line 159
    sget-object v1, Lcom/hsae/autosdk/p001os/SocConst$VersionName;->AVM_VIN:Lcom/hsae/autosdk/p001os/SocConst$VersionName;

    .line 160
    .line 161
    const/16 v2, 0x1b

    .line 162
    .line 163
    aput-object v1, v0, v2

    .line 164
    .line 165
    sget-object v1, Lcom/hsae/autosdk/p001os/SocConst$VersionName;->INSTRUMENT_SW:Lcom/hsae/autosdk/p001os/SocConst$VersionName;

    .line 166
    .line 167
    const/16 v2, 0x1c

    .line 168
    .line 169
    aput-object v1, v0, v2

    .line 170
    .line 171
    sget-object v1, Lcom/hsae/autosdk/p001os/SocConst$VersionName;->INSTRUMENT_HW:Lcom/hsae/autosdk/p001os/SocConst$VersionName;

    .line 172
    .line 173
    const/16 v2, 0x1d

    .line 174
    .line 175
    aput-object v1, v0, v2

    .line 176
    .line 177
    sget-object v1, Lcom/hsae/autosdk/p001os/SocConst$VersionName;->MCAN:Lcom/hsae/autosdk/p001os/SocConst$VersionName;

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
    new-instance v0, Lcom/hsae/autosdk/p001os/SocConst$VersionName;

    .line 2
    .line 3
    const-string v1, "DEFAULT"

    .line 4
    .line 5
    const/4 v2, 0x0

    .line 6
    invoke-direct {v0, v1, v2, v2}, Lcom/hsae/autosdk/p001os/SocConst$VersionName;-><init>(Ljava/lang/String;II)V

    .line 7
    .line 8
    .line 9
    sput-object v0, Lcom/hsae/autosdk/p001os/SocConst$VersionName;->DEFAULT:Lcom/hsae/autosdk/p001os/SocConst$VersionName;

    .line 10
    .line 11
    new-instance v0, Lcom/hsae/autosdk/p001os/SocConst$VersionName;

    .line 12
    .line 13
    const-string v1, "MCU"

    .line 14
    .line 15
    const/4 v2, 0x1

    .line 16
    invoke-direct {v0, v1, v2, v2}, Lcom/hsae/autosdk/p001os/SocConst$VersionName;-><init>(Ljava/lang/String;II)V

    .line 17
    .line 18
    .line 19
    sput-object v0, Lcom/hsae/autosdk/p001os/SocConst$VersionName;->MCU:Lcom/hsae/autosdk/p001os/SocConst$VersionName;

    .line 20
    .line 21
    new-instance v0, Lcom/hsae/autosdk/p001os/SocConst$VersionName;

    .line 22
    .line 23
    const-string v1, "CPU_HW"

    .line 24
    .line 25
    const/4 v2, 0x2

    .line 26
    invoke-direct {v0, v1, v2, v2}, Lcom/hsae/autosdk/p001os/SocConst$VersionName;-><init>(Ljava/lang/String;II)V

    .line 27
    .line 28
    .line 29
    sput-object v0, Lcom/hsae/autosdk/p001os/SocConst$VersionName;->CPU_HW:Lcom/hsae/autosdk/p001os/SocConst$VersionName;

    .line 30
    .line 31
    new-instance v0, Lcom/hsae/autosdk/p001os/SocConst$VersionName;

    .line 32
    .line 33
    const-string v1, "CPU_SW"

    .line 34
    .line 35
    const/4 v2, 0x3

    .line 36
    const/4 v3, 0x5

    .line 37
    invoke-direct {v0, v1, v2, v3}, Lcom/hsae/autosdk/p001os/SocConst$VersionName;-><init>(Ljava/lang/String;II)V

    .line 38
    .line 39
    .line 40
    sput-object v0, Lcom/hsae/autosdk/p001os/SocConst$VersionName;->CPU_SW:Lcom/hsae/autosdk/p001os/SocConst$VersionName;

    .line 41
    .line 42
    new-instance v0, Lcom/hsae/autosdk/p001os/SocConst$VersionName;

    .line 43
    .line 44
    const-string v1, "CAN"

    .line 45
    .line 46
    const/4 v2, 0x4

    .line 47
    const/16 v4, 0xb

    .line 48
    .line 49
    invoke-direct {v0, v1, v2, v4}, Lcom/hsae/autosdk/p001os/SocConst$VersionName;-><init>(Ljava/lang/String;II)V

    .line 50
    .line 51
    .line 52
    sput-object v0, Lcom/hsae/autosdk/p001os/SocConst$VersionName;->CAN:Lcom/hsae/autosdk/p001os/SocConst$VersionName;

    .line 53
    .line 54
    new-instance v0, Lcom/hsae/autosdk/p001os/SocConst$VersionName;

    .line 55
    .line 56
    const-string v1, "CPLD"

    .line 57
    .line 58
    const/16 v2, 0xc

    .line 59
    .line 60
    invoke-direct {v0, v1, v3, v2}, Lcom/hsae/autosdk/p001os/SocConst$VersionName;-><init>(Ljava/lang/String;II)V

    .line 61
    .line 62
    .line 63
    sput-object v0, Lcom/hsae/autosdk/p001os/SocConst$VersionName;->CPLD:Lcom/hsae/autosdk/p001os/SocConst$VersionName;

    .line 64
    .line 65
    new-instance v0, Lcom/hsae/autosdk/p001os/SocConst$VersionName;

    .line 66
    .line 67
    const-string v1, "PRODUCT_SEQUENCE"

    .line 68
    .line 69
    const/4 v3, 0x6

    .line 70
    const/16 v5, 0xd

    .line 71
    .line 72
    invoke-direct {v0, v1, v3, v5}, Lcom/hsae/autosdk/p001os/SocConst$VersionName;-><init>(Ljava/lang/String;II)V

    .line 73
    .line 74
    .line 75
    sput-object v0, Lcom/hsae/autosdk/p001os/SocConst$VersionName;->PRODUCT_SEQUENCE:Lcom/hsae/autosdk/p001os/SocConst$VersionName;

    .line 76
    .line 77
    new-instance v0, Lcom/hsae/autosdk/p001os/SocConst$VersionName;

    .line 78
    .line 79
    const-string v1, "VR"

    .line 80
    .line 81
    const/4 v3, 0x7

    .line 82
    const/16 v6, 0xe

    .line 83
    .line 84
    invoke-direct {v0, v1, v3, v6}, Lcom/hsae/autosdk/p001os/SocConst$VersionName;-><init>(Ljava/lang/String;II)V

    .line 85
    .line 86
    .line 87
    sput-object v0, Lcom/hsae/autosdk/p001os/SocConst$VersionName;->VR:Lcom/hsae/autosdk/p001os/SocConst$VersionName;

    .line 88
    .line 89
    new-instance v0, Lcom/hsae/autosdk/p001os/SocConst$VersionName;

    .line 90
    .line 91
    const-string v1, "BT"

    .line 92
    .line 93
    const/16 v3, 0x8

    .line 94
    .line 95
    const/16 v7, 0xf

    .line 96
    .line 97
    invoke-direct {v0, v1, v3, v7}, Lcom/hsae/autosdk/p001os/SocConst$VersionName;-><init>(Ljava/lang/String;II)V

    .line 98
    .line 99
    .line 100
    sput-object v0, Lcom/hsae/autosdk/p001os/SocConst$VersionName;->BT:Lcom/hsae/autosdk/p001os/SocConst$VersionName;

    .line 101
    .line 102
    new-instance v0, Lcom/hsae/autosdk/p001os/SocConst$VersionName;

    .line 103
    .line 104
    const-string v1, "EV_HW"

    .line 105
    .line 106
    const/16 v3, 0x9

    .line 107
    .line 108
    const/16 v8, 0x10

    .line 109
    .line 110
    invoke-direct {v0, v1, v3, v8}, Lcom/hsae/autosdk/p001os/SocConst$VersionName;-><init>(Ljava/lang/String;II)V

    .line 111
    .line 112
    .line 113
    sput-object v0, Lcom/hsae/autosdk/p001os/SocConst$VersionName;->EV_HW:Lcom/hsae/autosdk/p001os/SocConst$VersionName;

    .line 114
    .line 115
    new-instance v0, Lcom/hsae/autosdk/p001os/SocConst$VersionName;

    .line 116
    .line 117
    const-string v1, "HMI_HW"

    .line 118
    .line 119
    const/16 v3, 0xa

    .line 120
    .line 121
    const/16 v9, 0x11

    .line 122
    .line 123
    invoke-direct {v0, v1, v3, v9}, Lcom/hsae/autosdk/p001os/SocConst$VersionName;-><init>(Ljava/lang/String;II)V

    .line 124
    .line 125
    .line 126
    sput-object v0, Lcom/hsae/autosdk/p001os/SocConst$VersionName;->HMI_HW:Lcom/hsae/autosdk/p001os/SocConst$VersionName;

    .line 127
    .line 128
    new-instance v0, Lcom/hsae/autosdk/p001os/SocConst$VersionName;

    .line 129
    .line 130
    const-string v1, "HMI_SW"

    .line 131
    .line 132
    const/16 v3, 0x12

    .line 133
    .line 134
    invoke-direct {v0, v1, v4, v3}, Lcom/hsae/autosdk/p001os/SocConst$VersionName;-><init>(Ljava/lang/String;II)V

    .line 135
    .line 136
    .line 137
    sput-object v0, Lcom/hsae/autosdk/p001os/SocConst$VersionName;->HMI_SW:Lcom/hsae/autosdk/p001os/SocConst$VersionName;

    .line 138
    .line 139
    new-instance v0, Lcom/hsae/autosdk/p001os/SocConst$VersionName;

    .line 140
    .line 141
    const-string v1, "FLASH"

    .line 142
    .line 143
    const/16 v4, 0x13

    .line 144
    .line 145
    invoke-direct {v0, v1, v2, v4}, Lcom/hsae/autosdk/p001os/SocConst$VersionName;-><init>(Ljava/lang/String;II)V

    .line 146
    .line 147
    .line 148
    sput-object v0, Lcom/hsae/autosdk/p001os/SocConst$VersionName;->FLASH:Lcom/hsae/autosdk/p001os/SocConst$VersionName;

    .line 149
    .line 150
    new-instance v0, Lcom/hsae/autosdk/p001os/SocConst$VersionName;

    .line 151
    .line 152
    const-string v1, "EV_SW"

    .line 153
    .line 154
    const/16 v2, 0x14

    .line 155
    .line 156
    invoke-direct {v0, v1, v5, v2}, Lcom/hsae/autosdk/p001os/SocConst$VersionName;-><init>(Ljava/lang/String;II)V

    .line 157
    .line 158
    .line 159
    sput-object v0, Lcom/hsae/autosdk/p001os/SocConst$VersionName;->EV_SW:Lcom/hsae/autosdk/p001os/SocConst$VersionName;

    .line 160
    .line 161
    new-instance v0, Lcom/hsae/autosdk/p001os/SocConst$VersionName;

    .line 162
    .line 163
    const-string v1, "AMP_HW"

    .line 164
    .line 165
    const/16 v5, 0x15

    .line 166
    .line 167
    invoke-direct {v0, v1, v6, v5}, Lcom/hsae/autosdk/p001os/SocConst$VersionName;-><init>(Ljava/lang/String;II)V

    .line 168
    .line 169
    .line 170
    sput-object v0, Lcom/hsae/autosdk/p001os/SocConst$VersionName;->AMP_HW:Lcom/hsae/autosdk/p001os/SocConst$VersionName;

    .line 171
    .line 172
    new-instance v0, Lcom/hsae/autosdk/p001os/SocConst$VersionName;

    .line 173
    .line 174
    const-string v1, "AMP_SW"

    .line 175
    .line 176
    const/16 v6, 0x16

    .line 177
    .line 178
    invoke-direct {v0, v1, v7, v6}, Lcom/hsae/autosdk/p001os/SocConst$VersionName;-><init>(Ljava/lang/String;II)V

    .line 179
    .line 180
    .line 181
    sput-object v0, Lcom/hsae/autosdk/p001os/SocConst$VersionName;->AMP_SW:Lcom/hsae/autosdk/p001os/SocConst$VersionName;

    .line 182
    .line 183
    new-instance v0, Lcom/hsae/autosdk/p001os/SocConst$VersionName;

    .line 184
    .line 185
    const-string v1, "TPMS_HW"

    .line 186
    .line 187
    const/16 v7, 0x17

    .line 188
    .line 189
    invoke-direct {v0, v1, v8, v7}, Lcom/hsae/autosdk/p001os/SocConst$VersionName;-><init>(Ljava/lang/String;II)V

    .line 190
    .line 191
    .line 192
    sput-object v0, Lcom/hsae/autosdk/p001os/SocConst$VersionName;->TPMS_HW:Lcom/hsae/autosdk/p001os/SocConst$VersionName;

    .line 193
    .line 194
    new-instance v0, Lcom/hsae/autosdk/p001os/SocConst$VersionName;

    .line 195
    .line 196
    const-string v1, "TPMS_SW"

    .line 197
    .line 198
    const/16 v8, 0x18

    .line 199
    .line 200
    invoke-direct {v0, v1, v9, v8}, Lcom/hsae/autosdk/p001os/SocConst$VersionName;-><init>(Ljava/lang/String;II)V

    .line 201
    .line 202
    .line 203
    sput-object v0, Lcom/hsae/autosdk/p001os/SocConst$VersionName;->TPMS_SW:Lcom/hsae/autosdk/p001os/SocConst$VersionName;

    .line 204
    .line 205
    new-instance v0, Lcom/hsae/autosdk/p001os/SocConst$VersionName;

    .line 206
    .line 207
    const-string v1, "BCM_HW"

    .line 208
    .line 209
    const/16 v9, 0x19

    .line 210
    .line 211
    invoke-direct {v0, v1, v3, v9}, Lcom/hsae/autosdk/p001os/SocConst$VersionName;-><init>(Ljava/lang/String;II)V

    .line 212
    .line 213
    .line 214
    sput-object v0, Lcom/hsae/autosdk/p001os/SocConst$VersionName;->BCM_HW:Lcom/hsae/autosdk/p001os/SocConst$VersionName;

    .line 215
    .line 216
    new-instance v0, Lcom/hsae/autosdk/p001os/SocConst$VersionName;

    .line 217
    .line 218
    const-string v1, "BCM_SW"

    .line 219
    .line 220
    const/16 v3, 0x1a

    .line 221
    .line 222
    invoke-direct {v0, v1, v4, v3}, Lcom/hsae/autosdk/p001os/SocConst$VersionName;-><init>(Ljava/lang/String;II)V

    .line 223
    .line 224
    .line 225
    sput-object v0, Lcom/hsae/autosdk/p001os/SocConst$VersionName;->BCM_SW:Lcom/hsae/autosdk/p001os/SocConst$VersionName;

    .line 226
    .line 227
    new-instance v0, Lcom/hsae/autosdk/p001os/SocConst$VersionName;

    .line 228
    .line 229
    const-string v1, "FRD_HW"

    .line 230
    .line 231
    const/16 v4, 0x1b

    .line 232
    .line 233
    invoke-direct {v0, v1, v2, v4}, Lcom/hsae/autosdk/p001os/SocConst$VersionName;-><init>(Ljava/lang/String;II)V

    .line 234
    .line 235
    .line 236
    sput-object v0, Lcom/hsae/autosdk/p001os/SocConst$VersionName;->FRD_HW:Lcom/hsae/autosdk/p001os/SocConst$VersionName;

    .line 237
    .line 238
    new-instance v0, Lcom/hsae/autosdk/p001os/SocConst$VersionName;

    .line 239
    .line 240
    const-string v1, "FRD_SW"

    .line 241
    .line 242
    const/16 v2, 0x1c

    .line 243
    .line 244
    invoke-direct {v0, v1, v5, v2}, Lcom/hsae/autosdk/p001os/SocConst$VersionName;-><init>(Ljava/lang/String;II)V

    .line 245
    .line 246
    .line 247
    sput-object v0, Lcom/hsae/autosdk/p001os/SocConst$VersionName;->FRD_SW:Lcom/hsae/autosdk/p001os/SocConst$VersionName;

    .line 248
    .line 249
    new-instance v0, Lcom/hsae/autosdk/p001os/SocConst$VersionName;

    .line 250
    .line 251
    const-string v1, "DVBT_HW"

    .line 252
    .line 253
    const/16 v5, 0x1d

    .line 254
    .line 255
    invoke-direct {v0, v1, v6, v5}, Lcom/hsae/autosdk/p001os/SocConst$VersionName;-><init>(Ljava/lang/String;II)V

    .line 256
    .line 257
    .line 258
    sput-object v0, Lcom/hsae/autosdk/p001os/SocConst$VersionName;->DVBT_HW:Lcom/hsae/autosdk/p001os/SocConst$VersionName;

    .line 259
    .line 260
    new-instance v0, Lcom/hsae/autosdk/p001os/SocConst$VersionName;

    .line 261
    .line 262
    const-string v1, "DVBT_SW"

    .line 263
    .line 264
    const/16 v5, 0x1e

    .line 265
    .line 266
    invoke-direct {v0, v1, v7, v5}, Lcom/hsae/autosdk/p001os/SocConst$VersionName;-><init>(Ljava/lang/String;II)V

    .line 267
    .line 268
    .line 269
    sput-object v0, Lcom/hsae/autosdk/p001os/SocConst$VersionName;->DVBT_SW:Lcom/hsae/autosdk/p001os/SocConst$VersionName;

    .line 270
    .line 271
    new-instance v0, Lcom/hsae/autosdk/p001os/SocConst$VersionName;

    .line 272
    .line 273
    const-string v1, "MCU_LOG"

    .line 274
    .line 275
    const/16 v5, 0x20

    .line 276
    .line 277
    invoke-direct {v0, v1, v8, v5}, Lcom/hsae/autosdk/p001os/SocConst$VersionName;-><init>(Ljava/lang/String;II)V

    .line 278
    .line 279
    .line 280
    sput-object v0, Lcom/hsae/autosdk/p001os/SocConst$VersionName;->MCU_LOG:Lcom/hsae/autosdk/p001os/SocConst$VersionName;

    .line 281
    .line 282
    new-instance v0, Lcom/hsae/autosdk/p001os/SocConst$VersionName;

    .line 283
    .line 284
    const-string v1, "AVM_HW"

    .line 285
    .line 286
    const/16 v5, 0x21

    .line 287
    .line 288
    invoke-direct {v0, v1, v9, v5}, Lcom/hsae/autosdk/p001os/SocConst$VersionName;-><init>(Ljava/lang/String;II)V

    .line 289
    .line 290
    .line 291
    sput-object v0, Lcom/hsae/autosdk/p001os/SocConst$VersionName;->AVM_HW:Lcom/hsae/autosdk/p001os/SocConst$VersionName;

    .line 292
    .line 293
    new-instance v0, Lcom/hsae/autosdk/p001os/SocConst$VersionName;

    .line 294
    .line 295
    const-string v1, "AVM_SW"

    .line 296
    .line 297
    const/16 v5, 0x22

    .line 298
    .line 299
    invoke-direct {v0, v1, v3, v5}, Lcom/hsae/autosdk/p001os/SocConst$VersionName;-><init>(Ljava/lang/String;II)V

    .line 300
    .line 301
    .line 302
    sput-object v0, Lcom/hsae/autosdk/p001os/SocConst$VersionName;->AVM_SW:Lcom/hsae/autosdk/p001os/SocConst$VersionName;

    .line 303
    .line 304
    new-instance v0, Lcom/hsae/autosdk/p001os/SocConst$VersionName;

    .line 305
    .line 306
    const-string v1, "AVM_VIN"

    .line 307
    .line 308
    const/16 v3, 0x23

    .line 309
    .line 310
    invoke-direct {v0, v1, v4, v3}, Lcom/hsae/autosdk/p001os/SocConst$VersionName;-><init>(Ljava/lang/String;II)V

    .line 311
    .line 312
    .line 313
    sput-object v0, Lcom/hsae/autosdk/p001os/SocConst$VersionName;->AVM_VIN:Lcom/hsae/autosdk/p001os/SocConst$VersionName;

    .line 314
    .line 315
    new-instance v0, Lcom/hsae/autosdk/p001os/SocConst$VersionName;

    .line 316
    .line 317
    const-string v1, "INSTRUMENT_SW"

    .line 318
    .line 319
    const/16 v3, 0x25

    .line 320
    .line 321
    invoke-direct {v0, v1, v2, v3}, Lcom/hsae/autosdk/p001os/SocConst$VersionName;-><init>(Ljava/lang/String;II)V

    .line 322
    .line 323
    .line 324
    sput-object v0, Lcom/hsae/autosdk/p001os/SocConst$VersionName;->INSTRUMENT_SW:Lcom/hsae/autosdk/p001os/SocConst$VersionName;

    .line 325
    .line 326
    new-instance v0, Lcom/hsae/autosdk/p001os/SocConst$VersionName;

    .line 327
    .line 328
    const/16 v1, 0x1d

    .line 329
    .line 330
    const/16 v2, 0x26

    .line 331
    .line 332
    const-string v3, "INSTRUMENT_HW"

    .line 333
    .line 334
    invoke-direct {v0, v3, v1, v2}, Lcom/hsae/autosdk/p001os/SocConst$VersionName;-><init>(Ljava/lang/String;II)V

    .line 335
    .line 336
    .line 337
    sput-object v0, Lcom/hsae/autosdk/p001os/SocConst$VersionName;->INSTRUMENT_HW:Lcom/hsae/autosdk/p001os/SocConst$VersionName;

    .line 338
    .line 339
    new-instance v0, Lcom/hsae/autosdk/p001os/SocConst$VersionName;

    .line 340
    .line 341
    const/16 v1, 0x1e

    .line 342
    .line 343
    const/16 v2, 0x27

    .line 344
    .line 345
    const-string v3, "MCAN"

    .line 346
    .line 347
    invoke-direct {v0, v3, v1, v2}, Lcom/hsae/autosdk/p001os/SocConst$VersionName;-><init>(Ljava/lang/String;II)V

    .line 348
    .line 349
    .line 350
    sput-object v0, Lcom/hsae/autosdk/p001os/SocConst$VersionName;->MCAN:Lcom/hsae/autosdk/p001os/SocConst$VersionName;

    .line 351
    .line 352
    invoke-static {}, Lcom/hsae/autosdk/p001os/SocConst$VersionName;->$values()[Lcom/hsae/autosdk/p001os/SocConst$VersionName;

    .line 353
    .line 354
    .line 355
    move-result-object v0

    .line 356
    sput-object v0, Lcom/hsae/autosdk/p001os/SocConst$VersionName;->$VALUES:[Lcom/hsae/autosdk/p001os/SocConst$VersionName;

    .line 357
    .line 358
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
    iput p3, p0, Lcom/hsae/autosdk/p001os/SocConst$VersionName;->f19id:I

    .line 5
    .line 6
    return-void
.end method

.method public static findById(I)Lcom/hsae/autosdk/p001os/SocConst$VersionName;
    .locals 5

    .line 1
    invoke-static {}, Lcom/hsae/autosdk/p001os/SocConst$VersionName;->values()[Lcom/hsae/autosdk/p001os/SocConst$VersionName;

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
    invoke-virtual {v3}, Lcom/hsae/autosdk/p001os/SocConst$VersionName;->m4id()I

    .line 12
    .line 13
    .line 14
    move-result v4

    .line 15
    if-ne v4, p0, :cond_0

    .line 16
    .line 17
    return-object v3

    .line 18
    :cond_0
    add-int/lit8 v2, v2, 0x1

    .line 19
    .line 20
    goto :goto_0

    .line 21
    :cond_1
    sget-object p0, Lcom/hsae/autosdk/p001os/SocConst$VersionName;->DEFAULT:Lcom/hsae/autosdk/p001os/SocConst$VersionName;

    .line 22
    .line 23
    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/hsae/autosdk/p001os/SocConst$VersionName;
    .locals 1

    .line 1
    const-class v0, Lcom/hsae/autosdk/p001os/SocConst$VersionName;

    .line 2
    .line 3
    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    check-cast p0, Lcom/hsae/autosdk/p001os/SocConst$VersionName;

    .line 8
    .line 9
    return-object p0
.end method

.method public static values()[Lcom/hsae/autosdk/p001os/SocConst$VersionName;
    .locals 1

    .line 1
    sget-object v0, Lcom/hsae/autosdk/p001os/SocConst$VersionName;->$VALUES:[Lcom/hsae/autosdk/p001os/SocConst$VersionName;

    .line 2
    .line 3
    invoke-virtual {v0}, [Lcom/hsae/autosdk/p001os/SocConst$VersionName;->clone()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, [Lcom/hsae/autosdk/p001os/SocConst$VersionName;

    .line 8
    .line 9
    return-object v0
.end method


# virtual methods
.method public m4id()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/hsae/autosdk/p001os/SocConst$VersionName;->f19id:I

    .line 2
    .line 3
    return v0
.end method
