.class public final enum Lcom/hierynomus/msdtyp/ace/AceType;
.super Ljava/lang/Enum;
.source "SourceFile"

# interfaces
.implements Lcom/hierynomus/protocol/commons/EnumWithValue;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/hierynomus/msdtyp/ace/AceType;",
        ">;",
        "Lcom/hierynomus/protocol/commons/EnumWithValue<",
        "Lcom/hierynomus/msdtyp/ace/AceType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/hierynomus/msdtyp/ace/AceType;

.field public static final enum ACCESS_ALLOWED_ACE_TYPE:Lcom/hierynomus/msdtyp/ace/AceType;

.field public static final enum ACCESS_ALLOWED_CALLBACK_ACE_TYPE:Lcom/hierynomus/msdtyp/ace/AceType;

.field public static final enum ACCESS_ALLOWED_CALLBACK_OBJECT_ACE_TYPE:Lcom/hierynomus/msdtyp/ace/AceType;

.field public static final enum ACCESS_ALLOWED_COMPOUND_ACE_TYPE:Lcom/hierynomus/msdtyp/ace/AceType;

.field public static final enum ACCESS_ALLOWED_OBJECT_ACE_TYPE:Lcom/hierynomus/msdtyp/ace/AceType;

.field public static final enum ACCESS_DENIED_ACE_TYPE:Lcom/hierynomus/msdtyp/ace/AceType;

.field public static final enum ACCESS_DENIED_CALLBACK_ACE_TYPE:Lcom/hierynomus/msdtyp/ace/AceType;

.field public static final enum ACCESS_DENIED_CALLBACK_OBJECT_ACE_TYPE:Lcom/hierynomus/msdtyp/ace/AceType;

.field public static final enum ACCESS_DENIED_OBJECT_ACE_TYPE:Lcom/hierynomus/msdtyp/ace/AceType;

.field public static final enum SYSTEM_ALARM_ACE_TYPE:Lcom/hierynomus/msdtyp/ace/AceType;

.field public static final enum SYSTEM_ALARM_CALLBACK_ACE_TYPE:Lcom/hierynomus/msdtyp/ace/AceType;

.field public static final enum SYSTEM_ALARM_CALLBACK_OBJECT_ACE_TYPE:Lcom/hierynomus/msdtyp/ace/AceType;

.field public static final enum SYSTEM_ALARM_OBJECT_ACE_TYPE:Lcom/hierynomus/msdtyp/ace/AceType;

.field public static final enum SYSTEM_AUDIT_ACE_TYPE:Lcom/hierynomus/msdtyp/ace/AceType;

.field public static final enum SYSTEM_AUDIT_CALLBACK_ACE_TYPE:Lcom/hierynomus/msdtyp/ace/AceType;

.field public static final enum SYSTEM_AUDIT_CALLBACK_OBJECT_ACE_TYPE:Lcom/hierynomus/msdtyp/ace/AceType;

.field public static final enum SYSTEM_AUDIT_OBJECT_ACE_TYPE:Lcom/hierynomus/msdtyp/ace/AceType;

.field public static final enum SYSTEM_MANDATORY_LABEL_ACE_TYPE:Lcom/hierynomus/msdtyp/ace/AceType;

.field public static final enum SYSTEM_RESOURCE_ATTRIBUTE_ACE_TYPE:Lcom/hierynomus/msdtyp/ace/AceType;

.field public static final enum SYSTEM_SCOPED_POLICY_ID_ACE_TYPE:Lcom/hierynomus/msdtyp/ace/AceType;


# instance fields
.field private value:J


# direct methods
.method private static synthetic $values()[Lcom/hierynomus/msdtyp/ace/AceType;
    .locals 3

    .line 1
    const/16 v0, 0x14

    .line 2
    .line 3
    new-array v0, v0, [Lcom/hierynomus/msdtyp/ace/AceType;

    .line 4
    .line 5
    sget-object v1, Lcom/hierynomus/msdtyp/ace/AceType;->ACCESS_ALLOWED_ACE_TYPE:Lcom/hierynomus/msdtyp/ace/AceType;

    .line 6
    .line 7
    const/4 v2, 0x0

    .line 8
    aput-object v1, v0, v2

    .line 9
    .line 10
    sget-object v1, Lcom/hierynomus/msdtyp/ace/AceType;->ACCESS_DENIED_ACE_TYPE:Lcom/hierynomus/msdtyp/ace/AceType;

    .line 11
    .line 12
    const/4 v2, 0x1

    .line 13
    aput-object v1, v0, v2

    .line 14
    .line 15
    sget-object v1, Lcom/hierynomus/msdtyp/ace/AceType;->SYSTEM_AUDIT_ACE_TYPE:Lcom/hierynomus/msdtyp/ace/AceType;

    .line 16
    .line 17
    const/4 v2, 0x2

    .line 18
    aput-object v1, v0, v2

    .line 19
    .line 20
    sget-object v1, Lcom/hierynomus/msdtyp/ace/AceType;->SYSTEM_ALARM_ACE_TYPE:Lcom/hierynomus/msdtyp/ace/AceType;

    .line 21
    .line 22
    const/4 v2, 0x3

    .line 23
    aput-object v1, v0, v2

    .line 24
    .line 25
    sget-object v1, Lcom/hierynomus/msdtyp/ace/AceType;->ACCESS_ALLOWED_COMPOUND_ACE_TYPE:Lcom/hierynomus/msdtyp/ace/AceType;

    .line 26
    .line 27
    const/4 v2, 0x4

    .line 28
    aput-object v1, v0, v2

    .line 29
    .line 30
    sget-object v1, Lcom/hierynomus/msdtyp/ace/AceType;->ACCESS_ALLOWED_OBJECT_ACE_TYPE:Lcom/hierynomus/msdtyp/ace/AceType;

    .line 31
    .line 32
    const/4 v2, 0x5

    .line 33
    aput-object v1, v0, v2

    .line 34
    .line 35
    sget-object v1, Lcom/hierynomus/msdtyp/ace/AceType;->ACCESS_DENIED_OBJECT_ACE_TYPE:Lcom/hierynomus/msdtyp/ace/AceType;

    .line 36
    .line 37
    const/4 v2, 0x6

    .line 38
    aput-object v1, v0, v2

    .line 39
    .line 40
    sget-object v1, Lcom/hierynomus/msdtyp/ace/AceType;->SYSTEM_AUDIT_OBJECT_ACE_TYPE:Lcom/hierynomus/msdtyp/ace/AceType;

    .line 41
    .line 42
    const/4 v2, 0x7

    .line 43
    aput-object v1, v0, v2

    .line 44
    .line 45
    sget-object v1, Lcom/hierynomus/msdtyp/ace/AceType;->SYSTEM_ALARM_OBJECT_ACE_TYPE:Lcom/hierynomus/msdtyp/ace/AceType;

    .line 46
    .line 47
    const/16 v2, 0x8

    .line 48
    .line 49
    aput-object v1, v0, v2

    .line 50
    .line 51
    sget-object v1, Lcom/hierynomus/msdtyp/ace/AceType;->ACCESS_ALLOWED_CALLBACK_ACE_TYPE:Lcom/hierynomus/msdtyp/ace/AceType;

    .line 52
    .line 53
    const/16 v2, 0x9

    .line 54
    .line 55
    aput-object v1, v0, v2

    .line 56
    .line 57
    sget-object v1, Lcom/hierynomus/msdtyp/ace/AceType;->ACCESS_DENIED_CALLBACK_ACE_TYPE:Lcom/hierynomus/msdtyp/ace/AceType;

    .line 58
    .line 59
    const/16 v2, 0xa

    .line 60
    .line 61
    aput-object v1, v0, v2

    .line 62
    .line 63
    sget-object v1, Lcom/hierynomus/msdtyp/ace/AceType;->ACCESS_ALLOWED_CALLBACK_OBJECT_ACE_TYPE:Lcom/hierynomus/msdtyp/ace/AceType;

    .line 64
    .line 65
    const/16 v2, 0xb

    .line 66
    .line 67
    aput-object v1, v0, v2

    .line 68
    .line 69
    sget-object v1, Lcom/hierynomus/msdtyp/ace/AceType;->ACCESS_DENIED_CALLBACK_OBJECT_ACE_TYPE:Lcom/hierynomus/msdtyp/ace/AceType;

    .line 70
    .line 71
    const/16 v2, 0xc

    .line 72
    .line 73
    aput-object v1, v0, v2

    .line 74
    .line 75
    sget-object v1, Lcom/hierynomus/msdtyp/ace/AceType;->SYSTEM_AUDIT_CALLBACK_ACE_TYPE:Lcom/hierynomus/msdtyp/ace/AceType;

    .line 76
    .line 77
    const/16 v2, 0xd

    .line 78
    .line 79
    aput-object v1, v0, v2

    .line 80
    .line 81
    sget-object v1, Lcom/hierynomus/msdtyp/ace/AceType;->SYSTEM_ALARM_CALLBACK_ACE_TYPE:Lcom/hierynomus/msdtyp/ace/AceType;

    .line 82
    .line 83
    const/16 v2, 0xe

    .line 84
    .line 85
    aput-object v1, v0, v2

    .line 86
    .line 87
    sget-object v1, Lcom/hierynomus/msdtyp/ace/AceType;->SYSTEM_AUDIT_CALLBACK_OBJECT_ACE_TYPE:Lcom/hierynomus/msdtyp/ace/AceType;

    .line 88
    .line 89
    const/16 v2, 0xf

    .line 90
    .line 91
    aput-object v1, v0, v2

    .line 92
    .line 93
    sget-object v1, Lcom/hierynomus/msdtyp/ace/AceType;->SYSTEM_ALARM_CALLBACK_OBJECT_ACE_TYPE:Lcom/hierynomus/msdtyp/ace/AceType;

    .line 94
    .line 95
    const/16 v2, 0x10

    .line 96
    .line 97
    aput-object v1, v0, v2

    .line 98
    .line 99
    sget-object v1, Lcom/hierynomus/msdtyp/ace/AceType;->SYSTEM_MANDATORY_LABEL_ACE_TYPE:Lcom/hierynomus/msdtyp/ace/AceType;

    .line 100
    .line 101
    const/16 v2, 0x11

    .line 102
    .line 103
    aput-object v1, v0, v2

    .line 104
    .line 105
    sget-object v1, Lcom/hierynomus/msdtyp/ace/AceType;->SYSTEM_RESOURCE_ATTRIBUTE_ACE_TYPE:Lcom/hierynomus/msdtyp/ace/AceType;

    .line 106
    .line 107
    const/16 v2, 0x12

    .line 108
    .line 109
    aput-object v1, v0, v2

    .line 110
    .line 111
    sget-object v1, Lcom/hierynomus/msdtyp/ace/AceType;->SYSTEM_SCOPED_POLICY_ID_ACE_TYPE:Lcom/hierynomus/msdtyp/ace/AceType;

    .line 112
    .line 113
    const/16 v2, 0x13

    .line 114
    .line 115
    aput-object v1, v0, v2

    .line 116
    .line 117
    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 5

    .line 1
    new-instance v0, Lcom/hierynomus/msdtyp/ace/AceType;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    const-wide/16 v2, 0x0

    .line 5
    .line 6
    const-string v4, "ACCESS_ALLOWED_ACE_TYPE"

    .line 7
    .line 8
    invoke-direct {v0, v4, v1, v2, v3}, Lcom/hierynomus/msdtyp/ace/AceType;-><init>(Ljava/lang/String;IJ)V

    .line 9
    .line 10
    .line 11
    sput-object v0, Lcom/hierynomus/msdtyp/ace/AceType;->ACCESS_ALLOWED_ACE_TYPE:Lcom/hierynomus/msdtyp/ace/AceType;

    .line 12
    .line 13
    new-instance v0, Lcom/hierynomus/msdtyp/ace/AceType;

    .line 14
    .line 15
    const/4 v1, 0x1

    .line 16
    const-wide/16 v2, 0x1

    .line 17
    .line 18
    const-string v4, "ACCESS_DENIED_ACE_TYPE"

    .line 19
    .line 20
    invoke-direct {v0, v4, v1, v2, v3}, Lcom/hierynomus/msdtyp/ace/AceType;-><init>(Ljava/lang/String;IJ)V

    .line 21
    .line 22
    .line 23
    sput-object v0, Lcom/hierynomus/msdtyp/ace/AceType;->ACCESS_DENIED_ACE_TYPE:Lcom/hierynomus/msdtyp/ace/AceType;

    .line 24
    .line 25
    new-instance v0, Lcom/hierynomus/msdtyp/ace/AceType;

    .line 26
    .line 27
    const/4 v1, 0x2

    .line 28
    const-wide/16 v2, 0x2

    .line 29
    .line 30
    const-string v4, "SYSTEM_AUDIT_ACE_TYPE"

    .line 31
    .line 32
    invoke-direct {v0, v4, v1, v2, v3}, Lcom/hierynomus/msdtyp/ace/AceType;-><init>(Ljava/lang/String;IJ)V

    .line 33
    .line 34
    .line 35
    sput-object v0, Lcom/hierynomus/msdtyp/ace/AceType;->SYSTEM_AUDIT_ACE_TYPE:Lcom/hierynomus/msdtyp/ace/AceType;

    .line 36
    .line 37
    new-instance v0, Lcom/hierynomus/msdtyp/ace/AceType;

    .line 38
    .line 39
    const/4 v1, 0x3

    .line 40
    const-wide/16 v2, 0x3

    .line 41
    .line 42
    const-string v4, "SYSTEM_ALARM_ACE_TYPE"

    .line 43
    .line 44
    invoke-direct {v0, v4, v1, v2, v3}, Lcom/hierynomus/msdtyp/ace/AceType;-><init>(Ljava/lang/String;IJ)V

    .line 45
    .line 46
    .line 47
    sput-object v0, Lcom/hierynomus/msdtyp/ace/AceType;->SYSTEM_ALARM_ACE_TYPE:Lcom/hierynomus/msdtyp/ace/AceType;

    .line 48
    .line 49
    new-instance v0, Lcom/hierynomus/msdtyp/ace/AceType;

    .line 50
    .line 51
    const/4 v1, 0x4

    .line 52
    const-wide/16 v2, 0x4

    .line 53
    .line 54
    const-string v4, "ACCESS_ALLOWED_COMPOUND_ACE_TYPE"

    .line 55
    .line 56
    invoke-direct {v0, v4, v1, v2, v3}, Lcom/hierynomus/msdtyp/ace/AceType;-><init>(Ljava/lang/String;IJ)V

    .line 57
    .line 58
    .line 59
    sput-object v0, Lcom/hierynomus/msdtyp/ace/AceType;->ACCESS_ALLOWED_COMPOUND_ACE_TYPE:Lcom/hierynomus/msdtyp/ace/AceType;

    .line 60
    .line 61
    new-instance v0, Lcom/hierynomus/msdtyp/ace/AceType;

    .line 62
    .line 63
    const/4 v1, 0x5

    .line 64
    const-wide/16 v2, 0x5

    .line 65
    .line 66
    const-string v4, "ACCESS_ALLOWED_OBJECT_ACE_TYPE"

    .line 67
    .line 68
    invoke-direct {v0, v4, v1, v2, v3}, Lcom/hierynomus/msdtyp/ace/AceType;-><init>(Ljava/lang/String;IJ)V

    .line 69
    .line 70
    .line 71
    sput-object v0, Lcom/hierynomus/msdtyp/ace/AceType;->ACCESS_ALLOWED_OBJECT_ACE_TYPE:Lcom/hierynomus/msdtyp/ace/AceType;

    .line 72
    .line 73
    new-instance v0, Lcom/hierynomus/msdtyp/ace/AceType;

    .line 74
    .line 75
    const/4 v1, 0x6

    .line 76
    const-wide/16 v2, 0x6

    .line 77
    .line 78
    const-string v4, "ACCESS_DENIED_OBJECT_ACE_TYPE"

    .line 79
    .line 80
    invoke-direct {v0, v4, v1, v2, v3}, Lcom/hierynomus/msdtyp/ace/AceType;-><init>(Ljava/lang/String;IJ)V

    .line 81
    .line 82
    .line 83
    sput-object v0, Lcom/hierynomus/msdtyp/ace/AceType;->ACCESS_DENIED_OBJECT_ACE_TYPE:Lcom/hierynomus/msdtyp/ace/AceType;

    .line 84
    .line 85
    new-instance v0, Lcom/hierynomus/msdtyp/ace/AceType;

    .line 86
    .line 87
    const/4 v1, 0x7

    .line 88
    const-wide/16 v2, 0x7

    .line 89
    .line 90
    const-string v4, "SYSTEM_AUDIT_OBJECT_ACE_TYPE"

    .line 91
    .line 92
    invoke-direct {v0, v4, v1, v2, v3}, Lcom/hierynomus/msdtyp/ace/AceType;-><init>(Ljava/lang/String;IJ)V

    .line 93
    .line 94
    .line 95
    sput-object v0, Lcom/hierynomus/msdtyp/ace/AceType;->SYSTEM_AUDIT_OBJECT_ACE_TYPE:Lcom/hierynomus/msdtyp/ace/AceType;

    .line 96
    .line 97
    new-instance v0, Lcom/hierynomus/msdtyp/ace/AceType;

    .line 98
    .line 99
    const/16 v1, 0x8

    .line 100
    .line 101
    const-wide/16 v2, 0x8

    .line 102
    .line 103
    const-string v4, "SYSTEM_ALARM_OBJECT_ACE_TYPE"

    .line 104
    .line 105
    invoke-direct {v0, v4, v1, v2, v3}, Lcom/hierynomus/msdtyp/ace/AceType;-><init>(Ljava/lang/String;IJ)V

    .line 106
    .line 107
    .line 108
    sput-object v0, Lcom/hierynomus/msdtyp/ace/AceType;->SYSTEM_ALARM_OBJECT_ACE_TYPE:Lcom/hierynomus/msdtyp/ace/AceType;

    .line 109
    .line 110
    new-instance v0, Lcom/hierynomus/msdtyp/ace/AceType;

    .line 111
    .line 112
    const/16 v1, 0x9

    .line 113
    .line 114
    const-wide/16 v2, 0x9

    .line 115
    .line 116
    const-string v4, "ACCESS_ALLOWED_CALLBACK_ACE_TYPE"

    .line 117
    .line 118
    invoke-direct {v0, v4, v1, v2, v3}, Lcom/hierynomus/msdtyp/ace/AceType;-><init>(Ljava/lang/String;IJ)V

    .line 119
    .line 120
    .line 121
    sput-object v0, Lcom/hierynomus/msdtyp/ace/AceType;->ACCESS_ALLOWED_CALLBACK_ACE_TYPE:Lcom/hierynomus/msdtyp/ace/AceType;

    .line 122
    .line 123
    new-instance v0, Lcom/hierynomus/msdtyp/ace/AceType;

    .line 124
    .line 125
    const/16 v1, 0xa

    .line 126
    .line 127
    const-wide/16 v2, 0xa

    .line 128
    .line 129
    const-string v4, "ACCESS_DENIED_CALLBACK_ACE_TYPE"

    .line 130
    .line 131
    invoke-direct {v0, v4, v1, v2, v3}, Lcom/hierynomus/msdtyp/ace/AceType;-><init>(Ljava/lang/String;IJ)V

    .line 132
    .line 133
    .line 134
    sput-object v0, Lcom/hierynomus/msdtyp/ace/AceType;->ACCESS_DENIED_CALLBACK_ACE_TYPE:Lcom/hierynomus/msdtyp/ace/AceType;

    .line 135
    .line 136
    new-instance v0, Lcom/hierynomus/msdtyp/ace/AceType;

    .line 137
    .line 138
    const/16 v1, 0xb

    .line 139
    .line 140
    const-wide/16 v2, 0xb

    .line 141
    .line 142
    const-string v4, "ACCESS_ALLOWED_CALLBACK_OBJECT_ACE_TYPE"

    .line 143
    .line 144
    invoke-direct {v0, v4, v1, v2, v3}, Lcom/hierynomus/msdtyp/ace/AceType;-><init>(Ljava/lang/String;IJ)V

    .line 145
    .line 146
    .line 147
    sput-object v0, Lcom/hierynomus/msdtyp/ace/AceType;->ACCESS_ALLOWED_CALLBACK_OBJECT_ACE_TYPE:Lcom/hierynomus/msdtyp/ace/AceType;

    .line 148
    .line 149
    new-instance v0, Lcom/hierynomus/msdtyp/ace/AceType;

    .line 150
    .line 151
    const/16 v1, 0xc

    .line 152
    .line 153
    const-wide/16 v2, 0xc

    .line 154
    .line 155
    const-string v4, "ACCESS_DENIED_CALLBACK_OBJECT_ACE_TYPE"

    .line 156
    .line 157
    invoke-direct {v0, v4, v1, v2, v3}, Lcom/hierynomus/msdtyp/ace/AceType;-><init>(Ljava/lang/String;IJ)V

    .line 158
    .line 159
    .line 160
    sput-object v0, Lcom/hierynomus/msdtyp/ace/AceType;->ACCESS_DENIED_CALLBACK_OBJECT_ACE_TYPE:Lcom/hierynomus/msdtyp/ace/AceType;

    .line 161
    .line 162
    new-instance v0, Lcom/hierynomus/msdtyp/ace/AceType;

    .line 163
    .line 164
    const/16 v1, 0xd

    .line 165
    .line 166
    const-wide/16 v2, 0xd

    .line 167
    .line 168
    const-string v4, "SYSTEM_AUDIT_CALLBACK_ACE_TYPE"

    .line 169
    .line 170
    invoke-direct {v0, v4, v1, v2, v3}, Lcom/hierynomus/msdtyp/ace/AceType;-><init>(Ljava/lang/String;IJ)V

    .line 171
    .line 172
    .line 173
    sput-object v0, Lcom/hierynomus/msdtyp/ace/AceType;->SYSTEM_AUDIT_CALLBACK_ACE_TYPE:Lcom/hierynomus/msdtyp/ace/AceType;

    .line 174
    .line 175
    new-instance v0, Lcom/hierynomus/msdtyp/ace/AceType;

    .line 176
    .line 177
    const/16 v1, 0xe

    .line 178
    .line 179
    const-wide/16 v2, 0xe

    .line 180
    .line 181
    const-string v4, "SYSTEM_ALARM_CALLBACK_ACE_TYPE"

    .line 182
    .line 183
    invoke-direct {v0, v4, v1, v2, v3}, Lcom/hierynomus/msdtyp/ace/AceType;-><init>(Ljava/lang/String;IJ)V

    .line 184
    .line 185
    .line 186
    sput-object v0, Lcom/hierynomus/msdtyp/ace/AceType;->SYSTEM_ALARM_CALLBACK_ACE_TYPE:Lcom/hierynomus/msdtyp/ace/AceType;

    .line 187
    .line 188
    new-instance v0, Lcom/hierynomus/msdtyp/ace/AceType;

    .line 189
    .line 190
    const/16 v1, 0xf

    .line 191
    .line 192
    const-wide/16 v2, 0xf

    .line 193
    .line 194
    const-string v4, "SYSTEM_AUDIT_CALLBACK_OBJECT_ACE_TYPE"

    .line 195
    .line 196
    invoke-direct {v0, v4, v1, v2, v3}, Lcom/hierynomus/msdtyp/ace/AceType;-><init>(Ljava/lang/String;IJ)V

    .line 197
    .line 198
    .line 199
    sput-object v0, Lcom/hierynomus/msdtyp/ace/AceType;->SYSTEM_AUDIT_CALLBACK_OBJECT_ACE_TYPE:Lcom/hierynomus/msdtyp/ace/AceType;

    .line 200
    .line 201
    new-instance v0, Lcom/hierynomus/msdtyp/ace/AceType;

    .line 202
    .line 203
    const/16 v1, 0x10

    .line 204
    .line 205
    const-wide/16 v2, 0x10

    .line 206
    .line 207
    const-string v4, "SYSTEM_ALARM_CALLBACK_OBJECT_ACE_TYPE"

    .line 208
    .line 209
    invoke-direct {v0, v4, v1, v2, v3}, Lcom/hierynomus/msdtyp/ace/AceType;-><init>(Ljava/lang/String;IJ)V

    .line 210
    .line 211
    .line 212
    sput-object v0, Lcom/hierynomus/msdtyp/ace/AceType;->SYSTEM_ALARM_CALLBACK_OBJECT_ACE_TYPE:Lcom/hierynomus/msdtyp/ace/AceType;

    .line 213
    .line 214
    new-instance v0, Lcom/hierynomus/msdtyp/ace/AceType;

    .line 215
    .line 216
    const/16 v1, 0x11

    .line 217
    .line 218
    const-wide/16 v2, 0x11

    .line 219
    .line 220
    const-string v4, "SYSTEM_MANDATORY_LABEL_ACE_TYPE"

    .line 221
    .line 222
    invoke-direct {v0, v4, v1, v2, v3}, Lcom/hierynomus/msdtyp/ace/AceType;-><init>(Ljava/lang/String;IJ)V

    .line 223
    .line 224
    .line 225
    sput-object v0, Lcom/hierynomus/msdtyp/ace/AceType;->SYSTEM_MANDATORY_LABEL_ACE_TYPE:Lcom/hierynomus/msdtyp/ace/AceType;

    .line 226
    .line 227
    new-instance v0, Lcom/hierynomus/msdtyp/ace/AceType;

    .line 228
    .line 229
    const/16 v1, 0x12

    .line 230
    .line 231
    const-wide/16 v2, 0x12

    .line 232
    .line 233
    const-string v4, "SYSTEM_RESOURCE_ATTRIBUTE_ACE_TYPE"

    .line 234
    .line 235
    invoke-direct {v0, v4, v1, v2, v3}, Lcom/hierynomus/msdtyp/ace/AceType;-><init>(Ljava/lang/String;IJ)V

    .line 236
    .line 237
    .line 238
    sput-object v0, Lcom/hierynomus/msdtyp/ace/AceType;->SYSTEM_RESOURCE_ATTRIBUTE_ACE_TYPE:Lcom/hierynomus/msdtyp/ace/AceType;

    .line 239
    .line 240
    new-instance v0, Lcom/hierynomus/msdtyp/ace/AceType;

    .line 241
    .line 242
    const/16 v1, 0x13

    .line 243
    .line 244
    const-wide/16 v2, 0x13

    .line 245
    .line 246
    const-string v4, "SYSTEM_SCOPED_POLICY_ID_ACE_TYPE"

    .line 247
    .line 248
    invoke-direct {v0, v4, v1, v2, v3}, Lcom/hierynomus/msdtyp/ace/AceType;-><init>(Ljava/lang/String;IJ)V

    .line 249
    .line 250
    .line 251
    sput-object v0, Lcom/hierynomus/msdtyp/ace/AceType;->SYSTEM_SCOPED_POLICY_ID_ACE_TYPE:Lcom/hierynomus/msdtyp/ace/AceType;

    .line 252
    .line 253
    invoke-static {}, Lcom/hierynomus/msdtyp/ace/AceType;->$values()[Lcom/hierynomus/msdtyp/ace/AceType;

    .line 254
    .line 255
    .line 256
    move-result-object v0

    .line 257
    sput-object v0, Lcom/hierynomus/msdtyp/ace/AceType;->$VALUES:[Lcom/hierynomus/msdtyp/ace/AceType;

    .line 258
    .line 259
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
    iput-wide p3, p0, Lcom/hierynomus/msdtyp/ace/AceType;->value:J

    .line 5
    .line 6
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/hierynomus/msdtyp/ace/AceType;
    .locals 1

    .line 1
    const-class v0, Lcom/hierynomus/msdtyp/ace/AceType;

    .line 2
    .line 3
    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    check-cast p0, Lcom/hierynomus/msdtyp/ace/AceType;

    .line 8
    .line 9
    return-object p0
.end method

.method public static values()[Lcom/hierynomus/msdtyp/ace/AceType;
    .locals 1

    .line 1
    sget-object v0, Lcom/hierynomus/msdtyp/ace/AceType;->$VALUES:[Lcom/hierynomus/msdtyp/ace/AceType;

    .line 2
    .line 3
    invoke-virtual {v0}, [Lcom/hierynomus/msdtyp/ace/AceType;->clone()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, [Lcom/hierynomus/msdtyp/ace/AceType;

    .line 8
    .line 9
    return-object v0
.end method


# virtual methods
.method public getValue()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/hierynomus/msdtyp/ace/AceType;->value:J

    .line 2
    .line 3
    return-wide v0
.end method
