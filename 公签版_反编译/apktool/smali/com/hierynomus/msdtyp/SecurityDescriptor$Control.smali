.class public final enum Lcom/hierynomus/msdtyp/SecurityDescriptor$Control;
.super Ljava/lang/Enum;
.source "SourceFile"

# interfaces
.implements Lcom/hierynomus/protocol/commons/EnumWithValue;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/hierynomus/msdtyp/SecurityDescriptor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Control"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/hierynomus/msdtyp/SecurityDescriptor$Control;",
        ">;",
        "Lcom/hierynomus/protocol/commons/EnumWithValue<",
        "Lcom/hierynomus/msdtyp/SecurityDescriptor$Control;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/hierynomus/msdtyp/SecurityDescriptor$Control;

.field public static final enum DC:Lcom/hierynomus/msdtyp/SecurityDescriptor$Control;

.field public static final enum DD:Lcom/hierynomus/msdtyp/SecurityDescriptor$Control;

.field public static final enum DI:Lcom/hierynomus/msdtyp/SecurityDescriptor$Control;

.field public static final enum DP:Lcom/hierynomus/msdtyp/SecurityDescriptor$Control;

.field public static final enum DT:Lcom/hierynomus/msdtyp/SecurityDescriptor$Control;

.field public static final enum GD:Lcom/hierynomus/msdtyp/SecurityDescriptor$Control;

.field public static final enum NONE:Lcom/hierynomus/msdtyp/SecurityDescriptor$Control;

.field public static final enum OD:Lcom/hierynomus/msdtyp/SecurityDescriptor$Control;

.field public static final enum PD:Lcom/hierynomus/msdtyp/SecurityDescriptor$Control;

.field public static final enum PS:Lcom/hierynomus/msdtyp/SecurityDescriptor$Control;

.field public static final enum RM:Lcom/hierynomus/msdtyp/SecurityDescriptor$Control;

.field public static final enum SC:Lcom/hierynomus/msdtyp/SecurityDescriptor$Control;

.field public static final enum SD:Lcom/hierynomus/msdtyp/SecurityDescriptor$Control;

.field public static final enum SI:Lcom/hierynomus/msdtyp/SecurityDescriptor$Control;

.field public static final enum SP:Lcom/hierynomus/msdtyp/SecurityDescriptor$Control;

.field public static final enum SR:Lcom/hierynomus/msdtyp/SecurityDescriptor$Control;

.field public static final enum SS:Lcom/hierynomus/msdtyp/SecurityDescriptor$Control;


# instance fields
.field private value:J


# direct methods
.method private static synthetic $values()[Lcom/hierynomus/msdtyp/SecurityDescriptor$Control;
    .locals 3

    .line 1
    const/16 v0, 0x11

    .line 2
    .line 3
    new-array v0, v0, [Lcom/hierynomus/msdtyp/SecurityDescriptor$Control;

    .line 4
    .line 5
    sget-object v1, Lcom/hierynomus/msdtyp/SecurityDescriptor$Control;->NONE:Lcom/hierynomus/msdtyp/SecurityDescriptor$Control;

    .line 6
    .line 7
    const/4 v2, 0x0

    .line 8
    aput-object v1, v0, v2

    .line 9
    .line 10
    sget-object v1, Lcom/hierynomus/msdtyp/SecurityDescriptor$Control;->OD:Lcom/hierynomus/msdtyp/SecurityDescriptor$Control;

    .line 11
    .line 12
    const/4 v2, 0x1

    .line 13
    aput-object v1, v0, v2

    .line 14
    .line 15
    sget-object v1, Lcom/hierynomus/msdtyp/SecurityDescriptor$Control;->GD:Lcom/hierynomus/msdtyp/SecurityDescriptor$Control;

    .line 16
    .line 17
    const/4 v2, 0x2

    .line 18
    aput-object v1, v0, v2

    .line 19
    .line 20
    sget-object v1, Lcom/hierynomus/msdtyp/SecurityDescriptor$Control;->DP:Lcom/hierynomus/msdtyp/SecurityDescriptor$Control;

    .line 21
    .line 22
    const/4 v2, 0x3

    .line 23
    aput-object v1, v0, v2

    .line 24
    .line 25
    sget-object v1, Lcom/hierynomus/msdtyp/SecurityDescriptor$Control;->DD:Lcom/hierynomus/msdtyp/SecurityDescriptor$Control;

    .line 26
    .line 27
    const/4 v2, 0x4

    .line 28
    aput-object v1, v0, v2

    .line 29
    .line 30
    sget-object v1, Lcom/hierynomus/msdtyp/SecurityDescriptor$Control;->SP:Lcom/hierynomus/msdtyp/SecurityDescriptor$Control;

    .line 31
    .line 32
    const/4 v2, 0x5

    .line 33
    aput-object v1, v0, v2

    .line 34
    .line 35
    sget-object v1, Lcom/hierynomus/msdtyp/SecurityDescriptor$Control;->SD:Lcom/hierynomus/msdtyp/SecurityDescriptor$Control;

    .line 36
    .line 37
    const/4 v2, 0x6

    .line 38
    aput-object v1, v0, v2

    .line 39
    .line 40
    sget-object v1, Lcom/hierynomus/msdtyp/SecurityDescriptor$Control;->SS:Lcom/hierynomus/msdtyp/SecurityDescriptor$Control;

    .line 41
    .line 42
    const/4 v2, 0x7

    .line 43
    aput-object v1, v0, v2

    .line 44
    .line 45
    sget-object v1, Lcom/hierynomus/msdtyp/SecurityDescriptor$Control;->DT:Lcom/hierynomus/msdtyp/SecurityDescriptor$Control;

    .line 46
    .line 47
    const/16 v2, 0x8

    .line 48
    .line 49
    aput-object v1, v0, v2

    .line 50
    .line 51
    sget-object v1, Lcom/hierynomus/msdtyp/SecurityDescriptor$Control;->DC:Lcom/hierynomus/msdtyp/SecurityDescriptor$Control;

    .line 52
    .line 53
    const/16 v2, 0x9

    .line 54
    .line 55
    aput-object v1, v0, v2

    .line 56
    .line 57
    sget-object v1, Lcom/hierynomus/msdtyp/SecurityDescriptor$Control;->SC:Lcom/hierynomus/msdtyp/SecurityDescriptor$Control;

    .line 58
    .line 59
    const/16 v2, 0xa

    .line 60
    .line 61
    aput-object v1, v0, v2

    .line 62
    .line 63
    sget-object v1, Lcom/hierynomus/msdtyp/SecurityDescriptor$Control;->DI:Lcom/hierynomus/msdtyp/SecurityDescriptor$Control;

    .line 64
    .line 65
    const/16 v2, 0xb

    .line 66
    .line 67
    aput-object v1, v0, v2

    .line 68
    .line 69
    sget-object v1, Lcom/hierynomus/msdtyp/SecurityDescriptor$Control;->SI:Lcom/hierynomus/msdtyp/SecurityDescriptor$Control;

    .line 70
    .line 71
    const/16 v2, 0xc

    .line 72
    .line 73
    aput-object v1, v0, v2

    .line 74
    .line 75
    sget-object v1, Lcom/hierynomus/msdtyp/SecurityDescriptor$Control;->PD:Lcom/hierynomus/msdtyp/SecurityDescriptor$Control;

    .line 76
    .line 77
    const/16 v2, 0xd

    .line 78
    .line 79
    aput-object v1, v0, v2

    .line 80
    .line 81
    sget-object v1, Lcom/hierynomus/msdtyp/SecurityDescriptor$Control;->PS:Lcom/hierynomus/msdtyp/SecurityDescriptor$Control;

    .line 82
    .line 83
    const/16 v2, 0xe

    .line 84
    .line 85
    aput-object v1, v0, v2

    .line 86
    .line 87
    sget-object v1, Lcom/hierynomus/msdtyp/SecurityDescriptor$Control;->RM:Lcom/hierynomus/msdtyp/SecurityDescriptor$Control;

    .line 88
    .line 89
    const/16 v2, 0xf

    .line 90
    .line 91
    aput-object v1, v0, v2

    .line 92
    .line 93
    sget-object v1, Lcom/hierynomus/msdtyp/SecurityDescriptor$Control;->SR:Lcom/hierynomus/msdtyp/SecurityDescriptor$Control;

    .line 94
    .line 95
    const/16 v2, 0x10

    .line 96
    .line 97
    aput-object v1, v0, v2

    .line 98
    .line 99
    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 5

    .line 1
    new-instance v0, Lcom/hierynomus/msdtyp/SecurityDescriptor$Control;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    const-wide/16 v2, 0x0

    .line 5
    .line 6
    const-string v4, "NONE"

    .line 7
    .line 8
    invoke-direct {v0, v4, v1, v2, v3}, Lcom/hierynomus/msdtyp/SecurityDescriptor$Control;-><init>(Ljava/lang/String;IJ)V

    .line 9
    .line 10
    .line 11
    sput-object v0, Lcom/hierynomus/msdtyp/SecurityDescriptor$Control;->NONE:Lcom/hierynomus/msdtyp/SecurityDescriptor$Control;

    .line 12
    .line 13
    new-instance v0, Lcom/hierynomus/msdtyp/SecurityDescriptor$Control;

    .line 14
    .line 15
    const/4 v1, 0x1

    .line 16
    const-wide/16 v2, 0x1

    .line 17
    .line 18
    const-string v4, "OD"

    .line 19
    .line 20
    invoke-direct {v0, v4, v1, v2, v3}, Lcom/hierynomus/msdtyp/SecurityDescriptor$Control;-><init>(Ljava/lang/String;IJ)V

    .line 21
    .line 22
    .line 23
    sput-object v0, Lcom/hierynomus/msdtyp/SecurityDescriptor$Control;->OD:Lcom/hierynomus/msdtyp/SecurityDescriptor$Control;

    .line 24
    .line 25
    new-instance v0, Lcom/hierynomus/msdtyp/SecurityDescriptor$Control;

    .line 26
    .line 27
    const/4 v1, 0x2

    .line 28
    const-wide/16 v2, 0x2

    .line 29
    .line 30
    const-string v4, "GD"

    .line 31
    .line 32
    invoke-direct {v0, v4, v1, v2, v3}, Lcom/hierynomus/msdtyp/SecurityDescriptor$Control;-><init>(Ljava/lang/String;IJ)V

    .line 33
    .line 34
    .line 35
    sput-object v0, Lcom/hierynomus/msdtyp/SecurityDescriptor$Control;->GD:Lcom/hierynomus/msdtyp/SecurityDescriptor$Control;

    .line 36
    .line 37
    new-instance v0, Lcom/hierynomus/msdtyp/SecurityDescriptor$Control;

    .line 38
    .line 39
    const/4 v1, 0x3

    .line 40
    const-wide/16 v2, 0x4

    .line 41
    .line 42
    const-string v4, "DP"

    .line 43
    .line 44
    invoke-direct {v0, v4, v1, v2, v3}, Lcom/hierynomus/msdtyp/SecurityDescriptor$Control;-><init>(Ljava/lang/String;IJ)V

    .line 45
    .line 46
    .line 47
    sput-object v0, Lcom/hierynomus/msdtyp/SecurityDescriptor$Control;->DP:Lcom/hierynomus/msdtyp/SecurityDescriptor$Control;

    .line 48
    .line 49
    new-instance v0, Lcom/hierynomus/msdtyp/SecurityDescriptor$Control;

    .line 50
    .line 51
    const/4 v1, 0x4

    .line 52
    const-wide/16 v2, 0x8

    .line 53
    .line 54
    const-string v4, "DD"

    .line 55
    .line 56
    invoke-direct {v0, v4, v1, v2, v3}, Lcom/hierynomus/msdtyp/SecurityDescriptor$Control;-><init>(Ljava/lang/String;IJ)V

    .line 57
    .line 58
    .line 59
    sput-object v0, Lcom/hierynomus/msdtyp/SecurityDescriptor$Control;->DD:Lcom/hierynomus/msdtyp/SecurityDescriptor$Control;

    .line 60
    .line 61
    new-instance v0, Lcom/hierynomus/msdtyp/SecurityDescriptor$Control;

    .line 62
    .line 63
    const/4 v1, 0x5

    .line 64
    const-wide/16 v2, 0x10

    .line 65
    .line 66
    const-string v4, "SP"

    .line 67
    .line 68
    invoke-direct {v0, v4, v1, v2, v3}, Lcom/hierynomus/msdtyp/SecurityDescriptor$Control;-><init>(Ljava/lang/String;IJ)V

    .line 69
    .line 70
    .line 71
    sput-object v0, Lcom/hierynomus/msdtyp/SecurityDescriptor$Control;->SP:Lcom/hierynomus/msdtyp/SecurityDescriptor$Control;

    .line 72
    .line 73
    new-instance v0, Lcom/hierynomus/msdtyp/SecurityDescriptor$Control;

    .line 74
    .line 75
    const/4 v1, 0x6

    .line 76
    const-wide/16 v2, 0x20

    .line 77
    .line 78
    const-string v4, "SD"

    .line 79
    .line 80
    invoke-direct {v0, v4, v1, v2, v3}, Lcom/hierynomus/msdtyp/SecurityDescriptor$Control;-><init>(Ljava/lang/String;IJ)V

    .line 81
    .line 82
    .line 83
    sput-object v0, Lcom/hierynomus/msdtyp/SecurityDescriptor$Control;->SD:Lcom/hierynomus/msdtyp/SecurityDescriptor$Control;

    .line 84
    .line 85
    new-instance v0, Lcom/hierynomus/msdtyp/SecurityDescriptor$Control;

    .line 86
    .line 87
    const/4 v1, 0x7

    .line 88
    const-wide/16 v2, 0x40

    .line 89
    .line 90
    const-string v4, "SS"

    .line 91
    .line 92
    invoke-direct {v0, v4, v1, v2, v3}, Lcom/hierynomus/msdtyp/SecurityDescriptor$Control;-><init>(Ljava/lang/String;IJ)V

    .line 93
    .line 94
    .line 95
    sput-object v0, Lcom/hierynomus/msdtyp/SecurityDescriptor$Control;->SS:Lcom/hierynomus/msdtyp/SecurityDescriptor$Control;

    .line 96
    .line 97
    new-instance v0, Lcom/hierynomus/msdtyp/SecurityDescriptor$Control;

    .line 98
    .line 99
    const/16 v1, 0x8

    .line 100
    .line 101
    const-wide/16 v2, 0x80

    .line 102
    .line 103
    const-string v4, "DT"

    .line 104
    .line 105
    invoke-direct {v0, v4, v1, v2, v3}, Lcom/hierynomus/msdtyp/SecurityDescriptor$Control;-><init>(Ljava/lang/String;IJ)V

    .line 106
    .line 107
    .line 108
    sput-object v0, Lcom/hierynomus/msdtyp/SecurityDescriptor$Control;->DT:Lcom/hierynomus/msdtyp/SecurityDescriptor$Control;

    .line 109
    .line 110
    new-instance v0, Lcom/hierynomus/msdtyp/SecurityDescriptor$Control;

    .line 111
    .line 112
    const/16 v1, 0x9

    .line 113
    .line 114
    const-wide/16 v2, 0x100

    .line 115
    .line 116
    const-string v4, "DC"

    .line 117
    .line 118
    invoke-direct {v0, v4, v1, v2, v3}, Lcom/hierynomus/msdtyp/SecurityDescriptor$Control;-><init>(Ljava/lang/String;IJ)V

    .line 119
    .line 120
    .line 121
    sput-object v0, Lcom/hierynomus/msdtyp/SecurityDescriptor$Control;->DC:Lcom/hierynomus/msdtyp/SecurityDescriptor$Control;

    .line 122
    .line 123
    new-instance v0, Lcom/hierynomus/msdtyp/SecurityDescriptor$Control;

    .line 124
    .line 125
    const/16 v1, 0xa

    .line 126
    .line 127
    const-wide/16 v2, 0x200

    .line 128
    .line 129
    const-string v4, "SC"

    .line 130
    .line 131
    invoke-direct {v0, v4, v1, v2, v3}, Lcom/hierynomus/msdtyp/SecurityDescriptor$Control;-><init>(Ljava/lang/String;IJ)V

    .line 132
    .line 133
    .line 134
    sput-object v0, Lcom/hierynomus/msdtyp/SecurityDescriptor$Control;->SC:Lcom/hierynomus/msdtyp/SecurityDescriptor$Control;

    .line 135
    .line 136
    new-instance v0, Lcom/hierynomus/msdtyp/SecurityDescriptor$Control;

    .line 137
    .line 138
    const/16 v1, 0xb

    .line 139
    .line 140
    const-wide/16 v2, 0x400

    .line 141
    .line 142
    const-string v4, "DI"

    .line 143
    .line 144
    invoke-direct {v0, v4, v1, v2, v3}, Lcom/hierynomus/msdtyp/SecurityDescriptor$Control;-><init>(Ljava/lang/String;IJ)V

    .line 145
    .line 146
    .line 147
    sput-object v0, Lcom/hierynomus/msdtyp/SecurityDescriptor$Control;->DI:Lcom/hierynomus/msdtyp/SecurityDescriptor$Control;

    .line 148
    .line 149
    new-instance v0, Lcom/hierynomus/msdtyp/SecurityDescriptor$Control;

    .line 150
    .line 151
    const/16 v1, 0xc

    .line 152
    .line 153
    const-wide/16 v2, 0x800

    .line 154
    .line 155
    const-string v4, "SI"

    .line 156
    .line 157
    invoke-direct {v0, v4, v1, v2, v3}, Lcom/hierynomus/msdtyp/SecurityDescriptor$Control;-><init>(Ljava/lang/String;IJ)V

    .line 158
    .line 159
    .line 160
    sput-object v0, Lcom/hierynomus/msdtyp/SecurityDescriptor$Control;->SI:Lcom/hierynomus/msdtyp/SecurityDescriptor$Control;

    .line 161
    .line 162
    new-instance v0, Lcom/hierynomus/msdtyp/SecurityDescriptor$Control;

    .line 163
    .line 164
    const/16 v1, 0xd

    .line 165
    .line 166
    const-wide/16 v2, 0x1000

    .line 167
    .line 168
    const-string v4, "PD"

    .line 169
    .line 170
    invoke-direct {v0, v4, v1, v2, v3}, Lcom/hierynomus/msdtyp/SecurityDescriptor$Control;-><init>(Ljava/lang/String;IJ)V

    .line 171
    .line 172
    .line 173
    sput-object v0, Lcom/hierynomus/msdtyp/SecurityDescriptor$Control;->PD:Lcom/hierynomus/msdtyp/SecurityDescriptor$Control;

    .line 174
    .line 175
    new-instance v0, Lcom/hierynomus/msdtyp/SecurityDescriptor$Control;

    .line 176
    .line 177
    const/16 v1, 0xe

    .line 178
    .line 179
    const-wide/16 v2, 0x2000

    .line 180
    .line 181
    const-string v4, "PS"

    .line 182
    .line 183
    invoke-direct {v0, v4, v1, v2, v3}, Lcom/hierynomus/msdtyp/SecurityDescriptor$Control;-><init>(Ljava/lang/String;IJ)V

    .line 184
    .line 185
    .line 186
    sput-object v0, Lcom/hierynomus/msdtyp/SecurityDescriptor$Control;->PS:Lcom/hierynomus/msdtyp/SecurityDescriptor$Control;

    .line 187
    .line 188
    new-instance v0, Lcom/hierynomus/msdtyp/SecurityDescriptor$Control;

    .line 189
    .line 190
    const/16 v1, 0xf

    .line 191
    .line 192
    const-wide/16 v2, 0x4000

    .line 193
    .line 194
    const-string v4, "RM"

    .line 195
    .line 196
    invoke-direct {v0, v4, v1, v2, v3}, Lcom/hierynomus/msdtyp/SecurityDescriptor$Control;-><init>(Ljava/lang/String;IJ)V

    .line 197
    .line 198
    .line 199
    sput-object v0, Lcom/hierynomus/msdtyp/SecurityDescriptor$Control;->RM:Lcom/hierynomus/msdtyp/SecurityDescriptor$Control;

    .line 200
    .line 201
    new-instance v0, Lcom/hierynomus/msdtyp/SecurityDescriptor$Control;

    .line 202
    .line 203
    const/16 v1, 0x10

    .line 204
    .line 205
    const-wide/32 v2, 0x8000

    .line 206
    .line 207
    .line 208
    const-string v4, "SR"

    .line 209
    .line 210
    invoke-direct {v0, v4, v1, v2, v3}, Lcom/hierynomus/msdtyp/SecurityDescriptor$Control;-><init>(Ljava/lang/String;IJ)V

    .line 211
    .line 212
    .line 213
    sput-object v0, Lcom/hierynomus/msdtyp/SecurityDescriptor$Control;->SR:Lcom/hierynomus/msdtyp/SecurityDescriptor$Control;

    .line 214
    .line 215
    invoke-static {}, Lcom/hierynomus/msdtyp/SecurityDescriptor$Control;->$values()[Lcom/hierynomus/msdtyp/SecurityDescriptor$Control;

    .line 216
    .line 217
    .line 218
    move-result-object v0

    .line 219
    sput-object v0, Lcom/hierynomus/msdtyp/SecurityDescriptor$Control;->$VALUES:[Lcom/hierynomus/msdtyp/SecurityDescriptor$Control;

    .line 220
    .line 221
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
    iput-wide p3, p0, Lcom/hierynomus/msdtyp/SecurityDescriptor$Control;->value:J

    .line 5
    .line 6
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/hierynomus/msdtyp/SecurityDescriptor$Control;
    .locals 1

    .line 1
    const-class v0, Lcom/hierynomus/msdtyp/SecurityDescriptor$Control;

    .line 2
    .line 3
    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    check-cast p0, Lcom/hierynomus/msdtyp/SecurityDescriptor$Control;

    .line 8
    .line 9
    return-object p0
.end method

.method public static values()[Lcom/hierynomus/msdtyp/SecurityDescriptor$Control;
    .locals 1

    .line 1
    sget-object v0, Lcom/hierynomus/msdtyp/SecurityDescriptor$Control;->$VALUES:[Lcom/hierynomus/msdtyp/SecurityDescriptor$Control;

    .line 2
    .line 3
    invoke-virtual {v0}, [Lcom/hierynomus/msdtyp/SecurityDescriptor$Control;->clone()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, [Lcom/hierynomus/msdtyp/SecurityDescriptor$Control;

    .line 8
    .line 9
    return-object v0
.end method


# virtual methods
.method public getValue()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/hierynomus/msdtyp/SecurityDescriptor$Control;->value:J

    .line 2
    .line 3
    return-wide v0
.end method
