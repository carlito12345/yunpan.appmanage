.class public final enum Lcom/hierynomus/ntlm/messages/NtlmNegotiateFlag;
.super Ljava/lang/Enum;
.source "SourceFile"

# interfaces
.implements Lcom/hierynomus/protocol/commons/EnumWithValue;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/hierynomus/ntlm/messages/NtlmNegotiateFlag;",
        ">;",
        "Lcom/hierynomus/protocol/commons/EnumWithValue<",
        "Lcom/hierynomus/ntlm/messages/NtlmNegotiateFlag;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/hierynomus/ntlm/messages/NtlmNegotiateFlag;

.field public static final enum NTLMSSP_NEGOTIATE_128:Lcom/hierynomus/ntlm/messages/NtlmNegotiateFlag;

.field public static final enum NTLMSSP_NEGOTIATE_56:Lcom/hierynomus/ntlm/messages/NtlmNegotiateFlag;

.field public static final enum NTLMSSP_NEGOTIATE_ALWAYS_SIGN:Lcom/hierynomus/ntlm/messages/NtlmNegotiateFlag;

.field public static final enum NTLMSSP_NEGOTIATE_ANONYMOUS:Lcom/hierynomus/ntlm/messages/NtlmNegotiateFlag;

.field public static final enum NTLMSSP_NEGOTIATE_DATAGRAM:Lcom/hierynomus/ntlm/messages/NtlmNegotiateFlag;

.field public static final enum NTLMSSP_NEGOTIATE_EXTENDED_SESSIONSECURITY:Lcom/hierynomus/ntlm/messages/NtlmNegotiateFlag;

.field public static final enum NTLMSSP_NEGOTIATE_IDENTIFY:Lcom/hierynomus/ntlm/messages/NtlmNegotiateFlag;

.field public static final enum NTLMSSP_NEGOTIATE_KEY_EXCH:Lcom/hierynomus/ntlm/messages/NtlmNegotiateFlag;

.field public static final enum NTLMSSP_NEGOTIATE_LM_KEY:Lcom/hierynomus/ntlm/messages/NtlmNegotiateFlag;

.field public static final enum NTLMSSP_NEGOTIATE_NTLM:Lcom/hierynomus/ntlm/messages/NtlmNegotiateFlag;

.field public static final enum NTLMSSP_NEGOTIATE_OEM_DOMAIN_SUPPLIED:Lcom/hierynomus/ntlm/messages/NtlmNegotiateFlag;

.field public static final enum NTLMSSP_NEGOTIATE_OEM_WORKSTATION_SUPPLIED:Lcom/hierynomus/ntlm/messages/NtlmNegotiateFlag;

.field public static final enum NTLMSSP_NEGOTIATE_SEAL:Lcom/hierynomus/ntlm/messages/NtlmNegotiateFlag;

.field public static final enum NTLMSSP_NEGOTIATE_SIGN:Lcom/hierynomus/ntlm/messages/NtlmNegotiateFlag;

.field public static final enum NTLMSSP_NEGOTIATE_TARGET_INFO:Lcom/hierynomus/ntlm/messages/NtlmNegotiateFlag;

.field public static final enum NTLMSSP_NEGOTIATE_UNICODE:Lcom/hierynomus/ntlm/messages/NtlmNegotiateFlag;

.field public static final enum NTLMSSP_NEGOTIATE_VERSION:Lcom/hierynomus/ntlm/messages/NtlmNegotiateFlag;

.field public static final enum NTLMSSP_REQUEST_NON_NT_SESSION_KEY:Lcom/hierynomus/ntlm/messages/NtlmNegotiateFlag;

.field public static final enum NTLMSSP_REQUEST_TARGET:Lcom/hierynomus/ntlm/messages/NtlmNegotiateFlag;

.field public static final enum NTLMSSP_TARGET_TYPE_DOMAIN:Lcom/hierynomus/ntlm/messages/NtlmNegotiateFlag;

.field public static final enum NTLMSSP_TARGET_TYPE_SERVER:Lcom/hierynomus/ntlm/messages/NtlmNegotiateFlag;

.field public static final enum NTLM_NEGOTIATE_OEM:Lcom/hierynomus/ntlm/messages/NtlmNegotiateFlag;


# instance fields
.field private value:J


# direct methods
.method private static synthetic $values()[Lcom/hierynomus/ntlm/messages/NtlmNegotiateFlag;
    .locals 3

    .line 1
    const/16 v0, 0x16

    .line 2
    .line 3
    new-array v0, v0, [Lcom/hierynomus/ntlm/messages/NtlmNegotiateFlag;

    .line 4
    .line 5
    sget-object v1, Lcom/hierynomus/ntlm/messages/NtlmNegotiateFlag;->NTLMSSP_NEGOTIATE_56:Lcom/hierynomus/ntlm/messages/NtlmNegotiateFlag;

    .line 6
    .line 7
    const/4 v2, 0x0

    .line 8
    aput-object v1, v0, v2

    .line 9
    .line 10
    sget-object v1, Lcom/hierynomus/ntlm/messages/NtlmNegotiateFlag;->NTLMSSP_NEGOTIATE_KEY_EXCH:Lcom/hierynomus/ntlm/messages/NtlmNegotiateFlag;

    .line 11
    .line 12
    const/4 v2, 0x1

    .line 13
    aput-object v1, v0, v2

    .line 14
    .line 15
    sget-object v1, Lcom/hierynomus/ntlm/messages/NtlmNegotiateFlag;->NTLMSSP_NEGOTIATE_128:Lcom/hierynomus/ntlm/messages/NtlmNegotiateFlag;

    .line 16
    .line 17
    const/4 v2, 0x2

    .line 18
    aput-object v1, v0, v2

    .line 19
    .line 20
    sget-object v1, Lcom/hierynomus/ntlm/messages/NtlmNegotiateFlag;->NTLMSSP_NEGOTIATE_VERSION:Lcom/hierynomus/ntlm/messages/NtlmNegotiateFlag;

    .line 21
    .line 22
    const/4 v2, 0x3

    .line 23
    aput-object v1, v0, v2

    .line 24
    .line 25
    sget-object v1, Lcom/hierynomus/ntlm/messages/NtlmNegotiateFlag;->NTLMSSP_NEGOTIATE_TARGET_INFO:Lcom/hierynomus/ntlm/messages/NtlmNegotiateFlag;

    .line 26
    .line 27
    const/4 v2, 0x4

    .line 28
    aput-object v1, v0, v2

    .line 29
    .line 30
    sget-object v1, Lcom/hierynomus/ntlm/messages/NtlmNegotiateFlag;->NTLMSSP_REQUEST_NON_NT_SESSION_KEY:Lcom/hierynomus/ntlm/messages/NtlmNegotiateFlag;

    .line 31
    .line 32
    const/4 v2, 0x5

    .line 33
    aput-object v1, v0, v2

    .line 34
    .line 35
    sget-object v1, Lcom/hierynomus/ntlm/messages/NtlmNegotiateFlag;->NTLMSSP_NEGOTIATE_IDENTIFY:Lcom/hierynomus/ntlm/messages/NtlmNegotiateFlag;

    .line 36
    .line 37
    const/4 v2, 0x6

    .line 38
    aput-object v1, v0, v2

    .line 39
    .line 40
    sget-object v1, Lcom/hierynomus/ntlm/messages/NtlmNegotiateFlag;->NTLMSSP_NEGOTIATE_EXTENDED_SESSIONSECURITY:Lcom/hierynomus/ntlm/messages/NtlmNegotiateFlag;

    .line 41
    .line 42
    const/4 v2, 0x7

    .line 43
    aput-object v1, v0, v2

    .line 44
    .line 45
    sget-object v1, Lcom/hierynomus/ntlm/messages/NtlmNegotiateFlag;->NTLMSSP_TARGET_TYPE_SERVER:Lcom/hierynomus/ntlm/messages/NtlmNegotiateFlag;

    .line 46
    .line 47
    const/16 v2, 0x8

    .line 48
    .line 49
    aput-object v1, v0, v2

    .line 50
    .line 51
    sget-object v1, Lcom/hierynomus/ntlm/messages/NtlmNegotiateFlag;->NTLMSSP_TARGET_TYPE_DOMAIN:Lcom/hierynomus/ntlm/messages/NtlmNegotiateFlag;

    .line 52
    .line 53
    const/16 v2, 0x9

    .line 54
    .line 55
    aput-object v1, v0, v2

    .line 56
    .line 57
    sget-object v1, Lcom/hierynomus/ntlm/messages/NtlmNegotiateFlag;->NTLMSSP_NEGOTIATE_ALWAYS_SIGN:Lcom/hierynomus/ntlm/messages/NtlmNegotiateFlag;

    .line 58
    .line 59
    const/16 v2, 0xa

    .line 60
    .line 61
    aput-object v1, v0, v2

    .line 62
    .line 63
    sget-object v1, Lcom/hierynomus/ntlm/messages/NtlmNegotiateFlag;->NTLMSSP_NEGOTIATE_OEM_WORKSTATION_SUPPLIED:Lcom/hierynomus/ntlm/messages/NtlmNegotiateFlag;

    .line 64
    .line 65
    const/16 v2, 0xb

    .line 66
    .line 67
    aput-object v1, v0, v2

    .line 68
    .line 69
    sget-object v1, Lcom/hierynomus/ntlm/messages/NtlmNegotiateFlag;->NTLMSSP_NEGOTIATE_OEM_DOMAIN_SUPPLIED:Lcom/hierynomus/ntlm/messages/NtlmNegotiateFlag;

    .line 70
    .line 71
    const/16 v2, 0xc

    .line 72
    .line 73
    aput-object v1, v0, v2

    .line 74
    .line 75
    sget-object v1, Lcom/hierynomus/ntlm/messages/NtlmNegotiateFlag;->NTLMSSP_NEGOTIATE_ANONYMOUS:Lcom/hierynomus/ntlm/messages/NtlmNegotiateFlag;

    .line 76
    .line 77
    const/16 v2, 0xd

    .line 78
    .line 79
    aput-object v1, v0, v2

    .line 80
    .line 81
    sget-object v1, Lcom/hierynomus/ntlm/messages/NtlmNegotiateFlag;->NTLMSSP_NEGOTIATE_NTLM:Lcom/hierynomus/ntlm/messages/NtlmNegotiateFlag;

    .line 82
    .line 83
    const/16 v2, 0xe

    .line 84
    .line 85
    aput-object v1, v0, v2

    .line 86
    .line 87
    sget-object v1, Lcom/hierynomus/ntlm/messages/NtlmNegotiateFlag;->NTLMSSP_NEGOTIATE_LM_KEY:Lcom/hierynomus/ntlm/messages/NtlmNegotiateFlag;

    .line 88
    .line 89
    const/16 v2, 0xf

    .line 90
    .line 91
    aput-object v1, v0, v2

    .line 92
    .line 93
    sget-object v1, Lcom/hierynomus/ntlm/messages/NtlmNegotiateFlag;->NTLMSSP_NEGOTIATE_DATAGRAM:Lcom/hierynomus/ntlm/messages/NtlmNegotiateFlag;

    .line 94
    .line 95
    const/16 v2, 0x10

    .line 96
    .line 97
    aput-object v1, v0, v2

    .line 98
    .line 99
    sget-object v1, Lcom/hierynomus/ntlm/messages/NtlmNegotiateFlag;->NTLMSSP_NEGOTIATE_SEAL:Lcom/hierynomus/ntlm/messages/NtlmNegotiateFlag;

    .line 100
    .line 101
    const/16 v2, 0x11

    .line 102
    .line 103
    aput-object v1, v0, v2

    .line 104
    .line 105
    sget-object v1, Lcom/hierynomus/ntlm/messages/NtlmNegotiateFlag;->NTLMSSP_NEGOTIATE_SIGN:Lcom/hierynomus/ntlm/messages/NtlmNegotiateFlag;

    .line 106
    .line 107
    const/16 v2, 0x12

    .line 108
    .line 109
    aput-object v1, v0, v2

    .line 110
    .line 111
    sget-object v1, Lcom/hierynomus/ntlm/messages/NtlmNegotiateFlag;->NTLMSSP_REQUEST_TARGET:Lcom/hierynomus/ntlm/messages/NtlmNegotiateFlag;

    .line 112
    .line 113
    const/16 v2, 0x13

    .line 114
    .line 115
    aput-object v1, v0, v2

    .line 116
    .line 117
    sget-object v1, Lcom/hierynomus/ntlm/messages/NtlmNegotiateFlag;->NTLM_NEGOTIATE_OEM:Lcom/hierynomus/ntlm/messages/NtlmNegotiateFlag;

    .line 118
    .line 119
    const/16 v2, 0x14

    .line 120
    .line 121
    aput-object v1, v0, v2

    .line 122
    .line 123
    sget-object v1, Lcom/hierynomus/ntlm/messages/NtlmNegotiateFlag;->NTLMSSP_NEGOTIATE_UNICODE:Lcom/hierynomus/ntlm/messages/NtlmNegotiateFlag;

    .line 124
    .line 125
    const/16 v2, 0x15

    .line 126
    .line 127
    aput-object v1, v0, v2

    .line 128
    .line 129
    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 5

    .line 1
    new-instance v0, Lcom/hierynomus/ntlm/messages/NtlmNegotiateFlag;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    const-wide v2, 0x80000000L

    .line 5
    .line 6
    .line 7
    .line 8
    .line 9
    const-string v4, "NTLMSSP_NEGOTIATE_56"

    .line 10
    .line 11
    invoke-direct {v0, v4, v1, v2, v3}, Lcom/hierynomus/ntlm/messages/NtlmNegotiateFlag;-><init>(Ljava/lang/String;IJ)V

    .line 12
    .line 13
    .line 14
    sput-object v0, Lcom/hierynomus/ntlm/messages/NtlmNegotiateFlag;->NTLMSSP_NEGOTIATE_56:Lcom/hierynomus/ntlm/messages/NtlmNegotiateFlag;

    .line 15
    .line 16
    new-instance v0, Lcom/hierynomus/ntlm/messages/NtlmNegotiateFlag;

    .line 17
    .line 18
    const/4 v1, 0x1

    .line 19
    const-wide/32 v2, 0x40000000

    .line 20
    .line 21
    .line 22
    const-string v4, "NTLMSSP_NEGOTIATE_KEY_EXCH"

    .line 23
    .line 24
    invoke-direct {v0, v4, v1, v2, v3}, Lcom/hierynomus/ntlm/messages/NtlmNegotiateFlag;-><init>(Ljava/lang/String;IJ)V

    .line 25
    .line 26
    .line 27
    sput-object v0, Lcom/hierynomus/ntlm/messages/NtlmNegotiateFlag;->NTLMSSP_NEGOTIATE_KEY_EXCH:Lcom/hierynomus/ntlm/messages/NtlmNegotiateFlag;

    .line 28
    .line 29
    new-instance v0, Lcom/hierynomus/ntlm/messages/NtlmNegotiateFlag;

    .line 30
    .line 31
    const/4 v1, 0x2

    .line 32
    const-wide/32 v2, 0x20000000

    .line 33
    .line 34
    .line 35
    const-string v4, "NTLMSSP_NEGOTIATE_128"

    .line 36
    .line 37
    invoke-direct {v0, v4, v1, v2, v3}, Lcom/hierynomus/ntlm/messages/NtlmNegotiateFlag;-><init>(Ljava/lang/String;IJ)V

    .line 38
    .line 39
    .line 40
    sput-object v0, Lcom/hierynomus/ntlm/messages/NtlmNegotiateFlag;->NTLMSSP_NEGOTIATE_128:Lcom/hierynomus/ntlm/messages/NtlmNegotiateFlag;

    .line 41
    .line 42
    new-instance v0, Lcom/hierynomus/ntlm/messages/NtlmNegotiateFlag;

    .line 43
    .line 44
    const/4 v1, 0x3

    .line 45
    const-wide/32 v2, 0x2000000

    .line 46
    .line 47
    .line 48
    const-string v4, "NTLMSSP_NEGOTIATE_VERSION"

    .line 49
    .line 50
    invoke-direct {v0, v4, v1, v2, v3}, Lcom/hierynomus/ntlm/messages/NtlmNegotiateFlag;-><init>(Ljava/lang/String;IJ)V

    .line 51
    .line 52
    .line 53
    sput-object v0, Lcom/hierynomus/ntlm/messages/NtlmNegotiateFlag;->NTLMSSP_NEGOTIATE_VERSION:Lcom/hierynomus/ntlm/messages/NtlmNegotiateFlag;

    .line 54
    .line 55
    new-instance v0, Lcom/hierynomus/ntlm/messages/NtlmNegotiateFlag;

    .line 56
    .line 57
    const/4 v1, 0x4

    .line 58
    const-wide/32 v2, 0x800000

    .line 59
    .line 60
    .line 61
    const-string v4, "NTLMSSP_NEGOTIATE_TARGET_INFO"

    .line 62
    .line 63
    invoke-direct {v0, v4, v1, v2, v3}, Lcom/hierynomus/ntlm/messages/NtlmNegotiateFlag;-><init>(Ljava/lang/String;IJ)V

    .line 64
    .line 65
    .line 66
    sput-object v0, Lcom/hierynomus/ntlm/messages/NtlmNegotiateFlag;->NTLMSSP_NEGOTIATE_TARGET_INFO:Lcom/hierynomus/ntlm/messages/NtlmNegotiateFlag;

    .line 67
    .line 68
    new-instance v0, Lcom/hierynomus/ntlm/messages/NtlmNegotiateFlag;

    .line 69
    .line 70
    const/4 v1, 0x5

    .line 71
    const-wide/32 v2, 0x400000

    .line 72
    .line 73
    .line 74
    const-string v4, "NTLMSSP_REQUEST_NON_NT_SESSION_KEY"

    .line 75
    .line 76
    invoke-direct {v0, v4, v1, v2, v3}, Lcom/hierynomus/ntlm/messages/NtlmNegotiateFlag;-><init>(Ljava/lang/String;IJ)V

    .line 77
    .line 78
    .line 79
    sput-object v0, Lcom/hierynomus/ntlm/messages/NtlmNegotiateFlag;->NTLMSSP_REQUEST_NON_NT_SESSION_KEY:Lcom/hierynomus/ntlm/messages/NtlmNegotiateFlag;

    .line 80
    .line 81
    new-instance v0, Lcom/hierynomus/ntlm/messages/NtlmNegotiateFlag;

    .line 82
    .line 83
    const/4 v1, 0x6

    .line 84
    const-wide/32 v2, 0x100000

    .line 85
    .line 86
    .line 87
    const-string v4, "NTLMSSP_NEGOTIATE_IDENTIFY"

    .line 88
    .line 89
    invoke-direct {v0, v4, v1, v2, v3}, Lcom/hierynomus/ntlm/messages/NtlmNegotiateFlag;-><init>(Ljava/lang/String;IJ)V

    .line 90
    .line 91
    .line 92
    sput-object v0, Lcom/hierynomus/ntlm/messages/NtlmNegotiateFlag;->NTLMSSP_NEGOTIATE_IDENTIFY:Lcom/hierynomus/ntlm/messages/NtlmNegotiateFlag;

    .line 93
    .line 94
    new-instance v0, Lcom/hierynomus/ntlm/messages/NtlmNegotiateFlag;

    .line 95
    .line 96
    const/4 v1, 0x7

    .line 97
    const-wide/32 v2, 0x80000

    .line 98
    .line 99
    .line 100
    const-string v4, "NTLMSSP_NEGOTIATE_EXTENDED_SESSIONSECURITY"

    .line 101
    .line 102
    invoke-direct {v0, v4, v1, v2, v3}, Lcom/hierynomus/ntlm/messages/NtlmNegotiateFlag;-><init>(Ljava/lang/String;IJ)V

    .line 103
    .line 104
    .line 105
    sput-object v0, Lcom/hierynomus/ntlm/messages/NtlmNegotiateFlag;->NTLMSSP_NEGOTIATE_EXTENDED_SESSIONSECURITY:Lcom/hierynomus/ntlm/messages/NtlmNegotiateFlag;

    .line 106
    .line 107
    new-instance v0, Lcom/hierynomus/ntlm/messages/NtlmNegotiateFlag;

    .line 108
    .line 109
    const/16 v1, 0x8

    .line 110
    .line 111
    const-wide/32 v2, 0x20000

    .line 112
    .line 113
    .line 114
    const-string v4, "NTLMSSP_TARGET_TYPE_SERVER"

    .line 115
    .line 116
    invoke-direct {v0, v4, v1, v2, v3}, Lcom/hierynomus/ntlm/messages/NtlmNegotiateFlag;-><init>(Ljava/lang/String;IJ)V

    .line 117
    .line 118
    .line 119
    sput-object v0, Lcom/hierynomus/ntlm/messages/NtlmNegotiateFlag;->NTLMSSP_TARGET_TYPE_SERVER:Lcom/hierynomus/ntlm/messages/NtlmNegotiateFlag;

    .line 120
    .line 121
    new-instance v0, Lcom/hierynomus/ntlm/messages/NtlmNegotiateFlag;

    .line 122
    .line 123
    const/16 v1, 0x9

    .line 124
    .line 125
    const-wide/32 v2, 0x10000

    .line 126
    .line 127
    .line 128
    const-string v4, "NTLMSSP_TARGET_TYPE_DOMAIN"

    .line 129
    .line 130
    invoke-direct {v0, v4, v1, v2, v3}, Lcom/hierynomus/ntlm/messages/NtlmNegotiateFlag;-><init>(Ljava/lang/String;IJ)V

    .line 131
    .line 132
    .line 133
    sput-object v0, Lcom/hierynomus/ntlm/messages/NtlmNegotiateFlag;->NTLMSSP_TARGET_TYPE_DOMAIN:Lcom/hierynomus/ntlm/messages/NtlmNegotiateFlag;

    .line 134
    .line 135
    new-instance v0, Lcom/hierynomus/ntlm/messages/NtlmNegotiateFlag;

    .line 136
    .line 137
    const/16 v1, 0xa

    .line 138
    .line 139
    const-wide/32 v2, 0x8000

    .line 140
    .line 141
    .line 142
    const-string v4, "NTLMSSP_NEGOTIATE_ALWAYS_SIGN"

    .line 143
    .line 144
    invoke-direct {v0, v4, v1, v2, v3}, Lcom/hierynomus/ntlm/messages/NtlmNegotiateFlag;-><init>(Ljava/lang/String;IJ)V

    .line 145
    .line 146
    .line 147
    sput-object v0, Lcom/hierynomus/ntlm/messages/NtlmNegotiateFlag;->NTLMSSP_NEGOTIATE_ALWAYS_SIGN:Lcom/hierynomus/ntlm/messages/NtlmNegotiateFlag;

    .line 148
    .line 149
    new-instance v0, Lcom/hierynomus/ntlm/messages/NtlmNegotiateFlag;

    .line 150
    .line 151
    const/16 v1, 0xb

    .line 152
    .line 153
    const-wide/16 v2, 0x2000

    .line 154
    .line 155
    const-string v4, "NTLMSSP_NEGOTIATE_OEM_WORKSTATION_SUPPLIED"

    .line 156
    .line 157
    invoke-direct {v0, v4, v1, v2, v3}, Lcom/hierynomus/ntlm/messages/NtlmNegotiateFlag;-><init>(Ljava/lang/String;IJ)V

    .line 158
    .line 159
    .line 160
    sput-object v0, Lcom/hierynomus/ntlm/messages/NtlmNegotiateFlag;->NTLMSSP_NEGOTIATE_OEM_WORKSTATION_SUPPLIED:Lcom/hierynomus/ntlm/messages/NtlmNegotiateFlag;

    .line 161
    .line 162
    new-instance v0, Lcom/hierynomus/ntlm/messages/NtlmNegotiateFlag;

    .line 163
    .line 164
    const/16 v1, 0xc

    .line 165
    .line 166
    const-wide/16 v2, 0x1000

    .line 167
    .line 168
    const-string v4, "NTLMSSP_NEGOTIATE_OEM_DOMAIN_SUPPLIED"

    .line 169
    .line 170
    invoke-direct {v0, v4, v1, v2, v3}, Lcom/hierynomus/ntlm/messages/NtlmNegotiateFlag;-><init>(Ljava/lang/String;IJ)V

    .line 171
    .line 172
    .line 173
    sput-object v0, Lcom/hierynomus/ntlm/messages/NtlmNegotiateFlag;->NTLMSSP_NEGOTIATE_OEM_DOMAIN_SUPPLIED:Lcom/hierynomus/ntlm/messages/NtlmNegotiateFlag;

    .line 174
    .line 175
    new-instance v0, Lcom/hierynomus/ntlm/messages/NtlmNegotiateFlag;

    .line 176
    .line 177
    const/16 v1, 0xd

    .line 178
    .line 179
    const-wide/16 v2, 0x800

    .line 180
    .line 181
    const-string v4, "NTLMSSP_NEGOTIATE_ANONYMOUS"

    .line 182
    .line 183
    invoke-direct {v0, v4, v1, v2, v3}, Lcom/hierynomus/ntlm/messages/NtlmNegotiateFlag;-><init>(Ljava/lang/String;IJ)V

    .line 184
    .line 185
    .line 186
    sput-object v0, Lcom/hierynomus/ntlm/messages/NtlmNegotiateFlag;->NTLMSSP_NEGOTIATE_ANONYMOUS:Lcom/hierynomus/ntlm/messages/NtlmNegotiateFlag;

    .line 187
    .line 188
    new-instance v0, Lcom/hierynomus/ntlm/messages/NtlmNegotiateFlag;

    .line 189
    .line 190
    const/16 v1, 0xe

    .line 191
    .line 192
    const-wide/16 v2, 0x200

    .line 193
    .line 194
    const-string v4, "NTLMSSP_NEGOTIATE_NTLM"

    .line 195
    .line 196
    invoke-direct {v0, v4, v1, v2, v3}, Lcom/hierynomus/ntlm/messages/NtlmNegotiateFlag;-><init>(Ljava/lang/String;IJ)V

    .line 197
    .line 198
    .line 199
    sput-object v0, Lcom/hierynomus/ntlm/messages/NtlmNegotiateFlag;->NTLMSSP_NEGOTIATE_NTLM:Lcom/hierynomus/ntlm/messages/NtlmNegotiateFlag;

    .line 200
    .line 201
    new-instance v0, Lcom/hierynomus/ntlm/messages/NtlmNegotiateFlag;

    .line 202
    .line 203
    const/16 v1, 0xf

    .line 204
    .line 205
    const-wide/16 v2, 0x80

    .line 206
    .line 207
    const-string v4, "NTLMSSP_NEGOTIATE_LM_KEY"

    .line 208
    .line 209
    invoke-direct {v0, v4, v1, v2, v3}, Lcom/hierynomus/ntlm/messages/NtlmNegotiateFlag;-><init>(Ljava/lang/String;IJ)V

    .line 210
    .line 211
    .line 212
    sput-object v0, Lcom/hierynomus/ntlm/messages/NtlmNegotiateFlag;->NTLMSSP_NEGOTIATE_LM_KEY:Lcom/hierynomus/ntlm/messages/NtlmNegotiateFlag;

    .line 213
    .line 214
    new-instance v0, Lcom/hierynomus/ntlm/messages/NtlmNegotiateFlag;

    .line 215
    .line 216
    const/16 v1, 0x10

    .line 217
    .line 218
    const-wide/16 v2, 0x40

    .line 219
    .line 220
    const-string v4, "NTLMSSP_NEGOTIATE_DATAGRAM"

    .line 221
    .line 222
    invoke-direct {v0, v4, v1, v2, v3}, Lcom/hierynomus/ntlm/messages/NtlmNegotiateFlag;-><init>(Ljava/lang/String;IJ)V

    .line 223
    .line 224
    .line 225
    sput-object v0, Lcom/hierynomus/ntlm/messages/NtlmNegotiateFlag;->NTLMSSP_NEGOTIATE_DATAGRAM:Lcom/hierynomus/ntlm/messages/NtlmNegotiateFlag;

    .line 226
    .line 227
    new-instance v0, Lcom/hierynomus/ntlm/messages/NtlmNegotiateFlag;

    .line 228
    .line 229
    const/16 v1, 0x11

    .line 230
    .line 231
    const-wide/16 v2, 0x20

    .line 232
    .line 233
    const-string v4, "NTLMSSP_NEGOTIATE_SEAL"

    .line 234
    .line 235
    invoke-direct {v0, v4, v1, v2, v3}, Lcom/hierynomus/ntlm/messages/NtlmNegotiateFlag;-><init>(Ljava/lang/String;IJ)V

    .line 236
    .line 237
    .line 238
    sput-object v0, Lcom/hierynomus/ntlm/messages/NtlmNegotiateFlag;->NTLMSSP_NEGOTIATE_SEAL:Lcom/hierynomus/ntlm/messages/NtlmNegotiateFlag;

    .line 239
    .line 240
    new-instance v0, Lcom/hierynomus/ntlm/messages/NtlmNegotiateFlag;

    .line 241
    .line 242
    const/16 v1, 0x12

    .line 243
    .line 244
    const-wide/16 v2, 0x10

    .line 245
    .line 246
    const-string v4, "NTLMSSP_NEGOTIATE_SIGN"

    .line 247
    .line 248
    invoke-direct {v0, v4, v1, v2, v3}, Lcom/hierynomus/ntlm/messages/NtlmNegotiateFlag;-><init>(Ljava/lang/String;IJ)V

    .line 249
    .line 250
    .line 251
    sput-object v0, Lcom/hierynomus/ntlm/messages/NtlmNegotiateFlag;->NTLMSSP_NEGOTIATE_SIGN:Lcom/hierynomus/ntlm/messages/NtlmNegotiateFlag;

    .line 252
    .line 253
    new-instance v0, Lcom/hierynomus/ntlm/messages/NtlmNegotiateFlag;

    .line 254
    .line 255
    const/16 v1, 0x13

    .line 256
    .line 257
    const-wide/16 v2, 0x4

    .line 258
    .line 259
    const-string v4, "NTLMSSP_REQUEST_TARGET"

    .line 260
    .line 261
    invoke-direct {v0, v4, v1, v2, v3}, Lcom/hierynomus/ntlm/messages/NtlmNegotiateFlag;-><init>(Ljava/lang/String;IJ)V

    .line 262
    .line 263
    .line 264
    sput-object v0, Lcom/hierynomus/ntlm/messages/NtlmNegotiateFlag;->NTLMSSP_REQUEST_TARGET:Lcom/hierynomus/ntlm/messages/NtlmNegotiateFlag;

    .line 265
    .line 266
    new-instance v0, Lcom/hierynomus/ntlm/messages/NtlmNegotiateFlag;

    .line 267
    .line 268
    const/16 v1, 0x14

    .line 269
    .line 270
    const-wide/16 v2, 0x2

    .line 271
    .line 272
    const-string v4, "NTLM_NEGOTIATE_OEM"

    .line 273
    .line 274
    invoke-direct {v0, v4, v1, v2, v3}, Lcom/hierynomus/ntlm/messages/NtlmNegotiateFlag;-><init>(Ljava/lang/String;IJ)V

    .line 275
    .line 276
    .line 277
    sput-object v0, Lcom/hierynomus/ntlm/messages/NtlmNegotiateFlag;->NTLM_NEGOTIATE_OEM:Lcom/hierynomus/ntlm/messages/NtlmNegotiateFlag;

    .line 278
    .line 279
    new-instance v0, Lcom/hierynomus/ntlm/messages/NtlmNegotiateFlag;

    .line 280
    .line 281
    const/16 v1, 0x15

    .line 282
    .line 283
    const-wide/16 v2, 0x1

    .line 284
    .line 285
    const-string v4, "NTLMSSP_NEGOTIATE_UNICODE"

    .line 286
    .line 287
    invoke-direct {v0, v4, v1, v2, v3}, Lcom/hierynomus/ntlm/messages/NtlmNegotiateFlag;-><init>(Ljava/lang/String;IJ)V

    .line 288
    .line 289
    .line 290
    sput-object v0, Lcom/hierynomus/ntlm/messages/NtlmNegotiateFlag;->NTLMSSP_NEGOTIATE_UNICODE:Lcom/hierynomus/ntlm/messages/NtlmNegotiateFlag;

    .line 291
    .line 292
    invoke-static {}, Lcom/hierynomus/ntlm/messages/NtlmNegotiateFlag;->$values()[Lcom/hierynomus/ntlm/messages/NtlmNegotiateFlag;

    .line 293
    .line 294
    .line 295
    move-result-object v0

    .line 296
    sput-object v0, Lcom/hierynomus/ntlm/messages/NtlmNegotiateFlag;->$VALUES:[Lcom/hierynomus/ntlm/messages/NtlmNegotiateFlag;

    .line 297
    .line 298
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
    iput-wide p3, p0, Lcom/hierynomus/ntlm/messages/NtlmNegotiateFlag;->value:J

    .line 5
    .line 6
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/hierynomus/ntlm/messages/NtlmNegotiateFlag;
    .locals 1

    .line 1
    const-class v0, Lcom/hierynomus/ntlm/messages/NtlmNegotiateFlag;

    .line 2
    .line 3
    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    check-cast p0, Lcom/hierynomus/ntlm/messages/NtlmNegotiateFlag;

    .line 8
    .line 9
    return-object p0
.end method

.method public static values()[Lcom/hierynomus/ntlm/messages/NtlmNegotiateFlag;
    .locals 1

    .line 1
    sget-object v0, Lcom/hierynomus/ntlm/messages/NtlmNegotiateFlag;->$VALUES:[Lcom/hierynomus/ntlm/messages/NtlmNegotiateFlag;

    .line 2
    .line 3
    invoke-virtual {v0}, [Lcom/hierynomus/ntlm/messages/NtlmNegotiateFlag;->clone()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, [Lcom/hierynomus/ntlm/messages/NtlmNegotiateFlag;

    .line 8
    .line 9
    return-object v0
.end method


# virtual methods
.method public getValue()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/hierynomus/ntlm/messages/NtlmNegotiateFlag;->value:J

    .line 2
    .line 3
    return-wide v0
.end method
