.class public final enum Lcom/hsae/autosdk/settings/AutoSettingsConst$Audio$EnumC0036EQ;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/hsae/autosdk/settings/AutoSettingsConst$Audio;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "EnumC0036EQ"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/hsae/autosdk/settings/AutoSettingsConst$Audio$EnumC0036EQ$CustomEntry;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/hsae/autosdk/settings/AutoSettingsConst$Audio$EnumC0036EQ;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/hsae/autosdk/settings/AutoSettingsConst$Audio$EnumC0036EQ;

.field public static final enum CLASSICAL:Lcom/hsae/autosdk/settings/AutoSettingsConst$Audio$EnumC0036EQ;

.field public static final enum CUSTOM:Lcom/hsae/autosdk/settings/AutoSettingsConst$Audio$EnumC0036EQ;

.field public static final enum DANCE:Lcom/hsae/autosdk/settings/AutoSettingsConst$Audio$EnumC0036EQ;

.field public static final enum DEFAULT:Lcom/hsae/autosdk/settings/AutoSettingsConst$Audio$EnumC0036EQ;

.field private static final EQ_CLASSICAL:[I

.field private static final EQ_CUSTOM:[I

.field private static final EQ_DANCE:[I

.field private static final EQ_DEFAULT:[I

.field private static final EQ_JAZZ:[I

.field private static final EQ_POP:[I

.field private static final EQ_ROCK:[I

.field private static final EQ_VOCAL:[I

.field public static final enum JAZZ:Lcom/hsae/autosdk/settings/AutoSettingsConst$Audio$EnumC0036EQ;

.field public static final enum POP:Lcom/hsae/autosdk/settings/AutoSettingsConst$Audio$EnumC0036EQ;

.field public static final enum ROCK:Lcom/hsae/autosdk/settings/AutoSettingsConst$Audio$EnumC0036EQ;

.field public static final enum VOCAL:Lcom/hsae/autosdk/settings/AutoSettingsConst$Audio$EnumC0036EQ;


# instance fields
.field private f24id:I


# direct methods
.method private static synthetic $values()[Lcom/hsae/autosdk/settings/AutoSettingsConst$Audio$EnumC0036EQ;
    .locals 3

    .line 1
    const/16 v0, 0x8

    .line 2
    .line 3
    new-array v0, v0, [Lcom/hsae/autosdk/settings/AutoSettingsConst$Audio$EnumC0036EQ;

    .line 4
    .line 5
    sget-object v1, Lcom/hsae/autosdk/settings/AutoSettingsConst$Audio$EnumC0036EQ;->DEFAULT:Lcom/hsae/autosdk/settings/AutoSettingsConst$Audio$EnumC0036EQ;

    .line 6
    .line 7
    const/4 v2, 0x0

    .line 8
    aput-object v1, v0, v2

    .line 9
    .line 10
    sget-object v1, Lcom/hsae/autosdk/settings/AutoSettingsConst$Audio$EnumC0036EQ;->POP:Lcom/hsae/autosdk/settings/AutoSettingsConst$Audio$EnumC0036EQ;

    .line 11
    .line 12
    const/4 v2, 0x1

    .line 13
    aput-object v1, v0, v2

    .line 14
    .line 15
    sget-object v1, Lcom/hsae/autosdk/settings/AutoSettingsConst$Audio$EnumC0036EQ;->JAZZ:Lcom/hsae/autosdk/settings/AutoSettingsConst$Audio$EnumC0036EQ;

    .line 16
    .line 17
    const/4 v2, 0x2

    .line 18
    aput-object v1, v0, v2

    .line 19
    .line 20
    sget-object v1, Lcom/hsae/autosdk/settings/AutoSettingsConst$Audio$EnumC0036EQ;->CLASSICAL:Lcom/hsae/autosdk/settings/AutoSettingsConst$Audio$EnumC0036EQ;

    .line 21
    .line 22
    const/4 v2, 0x3

    .line 23
    aput-object v1, v0, v2

    .line 24
    .line 25
    sget-object v1, Lcom/hsae/autosdk/settings/AutoSettingsConst$Audio$EnumC0036EQ;->ROCK:Lcom/hsae/autosdk/settings/AutoSettingsConst$Audio$EnumC0036EQ;

    .line 26
    .line 27
    const/4 v2, 0x4

    .line 28
    aput-object v1, v0, v2

    .line 29
    .line 30
    sget-object v1, Lcom/hsae/autosdk/settings/AutoSettingsConst$Audio$EnumC0036EQ;->DANCE:Lcom/hsae/autosdk/settings/AutoSettingsConst$Audio$EnumC0036EQ;

    .line 31
    .line 32
    const/4 v2, 0x5

    .line 33
    aput-object v1, v0, v2

    .line 34
    .line 35
    sget-object v1, Lcom/hsae/autosdk/settings/AutoSettingsConst$Audio$EnumC0036EQ;->VOCAL:Lcom/hsae/autosdk/settings/AutoSettingsConst$Audio$EnumC0036EQ;

    .line 36
    .line 37
    const/4 v2, 0x6

    .line 38
    aput-object v1, v0, v2

    .line 39
    .line 40
    sget-object v1, Lcom/hsae/autosdk/settings/AutoSettingsConst$Audio$EnumC0036EQ;->CUSTOM:Lcom/hsae/autosdk/settings/AutoSettingsConst$Audio$EnumC0036EQ;

    .line 41
    .line 42
    const/4 v2, 0x7

    .line 43
    aput-object v1, v0, v2

    .line 44
    .line 45
    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 5

    .line 1
    new-instance v0, Lcom/hsae/autosdk/settings/AutoSettingsConst$Audio$EnumC0036EQ;

    .line 2
    .line 3
    const-string v1, "DEFAULT"

    .line 4
    .line 5
    const/4 v2, 0x0

    .line 6
    invoke-direct {v0, v1, v2, v2}, Lcom/hsae/autosdk/settings/AutoSettingsConst$Audio$EnumC0036EQ;-><init>(Ljava/lang/String;II)V

    .line 7
    .line 8
    .line 9
    sput-object v0, Lcom/hsae/autosdk/settings/AutoSettingsConst$Audio$EnumC0036EQ;->DEFAULT:Lcom/hsae/autosdk/settings/AutoSettingsConst$Audio$EnumC0036EQ;

    .line 10
    .line 11
    new-instance v0, Lcom/hsae/autosdk/settings/AutoSettingsConst$Audio$EnumC0036EQ;

    .line 12
    .line 13
    const-string v1, "POP"

    .line 14
    .line 15
    const/4 v2, 0x1

    .line 16
    invoke-direct {v0, v1, v2, v2}, Lcom/hsae/autosdk/settings/AutoSettingsConst$Audio$EnumC0036EQ;-><init>(Ljava/lang/String;II)V

    .line 17
    .line 18
    .line 19
    sput-object v0, Lcom/hsae/autosdk/settings/AutoSettingsConst$Audio$EnumC0036EQ;->POP:Lcom/hsae/autosdk/settings/AutoSettingsConst$Audio$EnumC0036EQ;

    .line 20
    .line 21
    new-instance v0, Lcom/hsae/autosdk/settings/AutoSettingsConst$Audio$EnumC0036EQ;

    .line 22
    .line 23
    const-string v1, "JAZZ"

    .line 24
    .line 25
    const/4 v2, 0x2

    .line 26
    invoke-direct {v0, v1, v2, v2}, Lcom/hsae/autosdk/settings/AutoSettingsConst$Audio$EnumC0036EQ;-><init>(Ljava/lang/String;II)V

    .line 27
    .line 28
    .line 29
    sput-object v0, Lcom/hsae/autosdk/settings/AutoSettingsConst$Audio$EnumC0036EQ;->JAZZ:Lcom/hsae/autosdk/settings/AutoSettingsConst$Audio$EnumC0036EQ;

    .line 30
    .line 31
    new-instance v0, Lcom/hsae/autosdk/settings/AutoSettingsConst$Audio$EnumC0036EQ;

    .line 32
    .line 33
    const-string v1, "CLASSICAL"

    .line 34
    .line 35
    const/4 v2, 0x3

    .line 36
    invoke-direct {v0, v1, v2, v2}, Lcom/hsae/autosdk/settings/AutoSettingsConst$Audio$EnumC0036EQ;-><init>(Ljava/lang/String;II)V

    .line 37
    .line 38
    .line 39
    sput-object v0, Lcom/hsae/autosdk/settings/AutoSettingsConst$Audio$EnumC0036EQ;->CLASSICAL:Lcom/hsae/autosdk/settings/AutoSettingsConst$Audio$EnumC0036EQ;

    .line 40
    .line 41
    new-instance v0, Lcom/hsae/autosdk/settings/AutoSettingsConst$Audio$EnumC0036EQ;

    .line 42
    .line 43
    const-string v1, "ROCK"

    .line 44
    .line 45
    const/4 v2, 0x4

    .line 46
    const/4 v3, 0x5

    .line 47
    invoke-direct {v0, v1, v2, v3}, Lcom/hsae/autosdk/settings/AutoSettingsConst$Audio$EnumC0036EQ;-><init>(Ljava/lang/String;II)V

    .line 48
    .line 49
    .line 50
    sput-object v0, Lcom/hsae/autosdk/settings/AutoSettingsConst$Audio$EnumC0036EQ;->ROCK:Lcom/hsae/autosdk/settings/AutoSettingsConst$Audio$EnumC0036EQ;

    .line 51
    .line 52
    new-instance v0, Lcom/hsae/autosdk/settings/AutoSettingsConst$Audio$EnumC0036EQ;

    .line 53
    .line 54
    const-string v1, "DANCE"

    .line 55
    .line 56
    const/4 v2, 0x7

    .line 57
    invoke-direct {v0, v1, v3, v2}, Lcom/hsae/autosdk/settings/AutoSettingsConst$Audio$EnumC0036EQ;-><init>(Ljava/lang/String;II)V

    .line 58
    .line 59
    .line 60
    sput-object v0, Lcom/hsae/autosdk/settings/AutoSettingsConst$Audio$EnumC0036EQ;->DANCE:Lcom/hsae/autosdk/settings/AutoSettingsConst$Audio$EnumC0036EQ;

    .line 61
    .line 62
    new-instance v0, Lcom/hsae/autosdk/settings/AutoSettingsConst$Audio$EnumC0036EQ;

    .line 63
    .line 64
    const/4 v1, 0x6

    .line 65
    const/16 v3, 0xb

    .line 66
    .line 67
    const-string v4, "VOCAL"

    .line 68
    .line 69
    invoke-direct {v0, v4, v1, v3}, Lcom/hsae/autosdk/settings/AutoSettingsConst$Audio$EnumC0036EQ;-><init>(Ljava/lang/String;II)V

    .line 70
    .line 71
    .line 72
    sput-object v0, Lcom/hsae/autosdk/settings/AutoSettingsConst$Audio$EnumC0036EQ;->VOCAL:Lcom/hsae/autosdk/settings/AutoSettingsConst$Audio$EnumC0036EQ;

    .line 73
    .line 74
    new-instance v0, Lcom/hsae/autosdk/settings/AutoSettingsConst$Audio$EnumC0036EQ;

    .line 75
    .line 76
    const-string v1, "CUSTOM"

    .line 77
    .line 78
    const/16 v3, 0xd

    .line 79
    .line 80
    invoke-direct {v0, v1, v2, v3}, Lcom/hsae/autosdk/settings/AutoSettingsConst$Audio$EnumC0036EQ;-><init>(Ljava/lang/String;II)V

    .line 81
    .line 82
    .line 83
    sput-object v0, Lcom/hsae/autosdk/settings/AutoSettingsConst$Audio$EnumC0036EQ;->CUSTOM:Lcom/hsae/autosdk/settings/AutoSettingsConst$Audio$EnumC0036EQ;

    .line 84
    .line 85
    invoke-static {}, Lcom/hsae/autosdk/settings/AutoSettingsConst$Audio$EnumC0036EQ;->$values()[Lcom/hsae/autosdk/settings/AutoSettingsConst$Audio$EnumC0036EQ;

    .line 86
    .line 87
    .line 88
    move-result-object v0

    .line 89
    sput-object v0, Lcom/hsae/autosdk/settings/AutoSettingsConst$Audio$EnumC0036EQ;->$VALUES:[Lcom/hsae/autosdk/settings/AutoSettingsConst$Audio$EnumC0036EQ;

    .line 90
    .line 91
    new-array v0, v2, [I

    .line 92
    .line 93
    fill-array-data v0, :array_0

    .line 94
    .line 95
    .line 96
    sput-object v0, Lcom/hsae/autosdk/settings/AutoSettingsConst$Audio$EnumC0036EQ;->EQ_POP:[I

    .line 97
    .line 98
    new-array v0, v2, [I

    .line 99
    .line 100
    fill-array-data v0, :array_1

    .line 101
    .line 102
    .line 103
    sput-object v0, Lcom/hsae/autosdk/settings/AutoSettingsConst$Audio$EnumC0036EQ;->EQ_JAZZ:[I

    .line 104
    .line 105
    new-array v0, v2, [I

    .line 106
    .line 107
    fill-array-data v0, :array_2

    .line 108
    .line 109
    .line 110
    sput-object v0, Lcom/hsae/autosdk/settings/AutoSettingsConst$Audio$EnumC0036EQ;->EQ_CLASSICAL:[I

    .line 111
    .line 112
    new-array v0, v2, [I

    .line 113
    .line 114
    fill-array-data v0, :array_3

    .line 115
    .line 116
    .line 117
    sput-object v0, Lcom/hsae/autosdk/settings/AutoSettingsConst$Audio$EnumC0036EQ;->EQ_ROCK:[I

    .line 118
    .line 119
    new-array v0, v2, [I

    .line 120
    .line 121
    fill-array-data v0, :array_4

    .line 122
    .line 123
    .line 124
    sput-object v0, Lcom/hsae/autosdk/settings/AutoSettingsConst$Audio$EnumC0036EQ;->EQ_CUSTOM:[I

    .line 125
    .line 126
    new-array v1, v2, [I

    .line 127
    .line 128
    fill-array-data v1, :array_5

    .line 129
    .line 130
    .line 131
    sput-object v1, Lcom/hsae/autosdk/settings/AutoSettingsConst$Audio$EnumC0036EQ;->EQ_DANCE:[I

    .line 132
    .line 133
    new-array v1, v2, [I

    .line 134
    .line 135
    fill-array-data v1, :array_6

    .line 136
    .line 137
    .line 138
    sput-object v1, Lcom/hsae/autosdk/settings/AutoSettingsConst$Audio$EnumC0036EQ;->EQ_VOCAL:[I

    .line 139
    .line 140
    sput-object v0, Lcom/hsae/autosdk/settings/AutoSettingsConst$Audio$EnumC0036EQ;->EQ_DEFAULT:[I

    .line 141
    .line 142
    return-void

    .line 143
    :array_0
    .array-data 4
        0x0
        0x6
        0x4
        0x0
        0x0
        0x0
        0x0
    .end array-data

    .line 144
    .line 145
    .line 146
    .line 147
    .line 148
    .line 149
    .line 150
    .line 151
    .line 152
    .line 153
    .line 154
    .line 155
    .line 156
    .line 157
    .line 158
    .line 159
    .line 160
    .line 161
    :array_1
    .array-data 4
        0x0
        0x3
        0x6
        0x0
        0x0
        0x0
        0x0
    .end array-data

    .line 162
    .line 163
    .line 164
    .line 165
    .line 166
    .line 167
    .line 168
    .line 169
    .line 170
    .line 171
    .line 172
    .line 173
    .line 174
    .line 175
    .line 176
    .line 177
    .line 178
    .line 179
    :array_2
    .array-data 4
        0x0
        0x0
        0x2
        0x0
        0x0
        0x0
        0x0
    .end array-data

    .line 180
    .line 181
    .line 182
    .line 183
    .line 184
    .line 185
    .line 186
    .line 187
    .line 188
    .line 189
    .line 190
    .line 191
    .line 192
    .line 193
    .line 194
    .line 195
    .line 196
    .line 197
    :array_3
    .array-data 4
        0x0
        0x3
        0x3
        0x0
        0x0
        0x0
        0x0
    .end array-data

    .line 198
    .line 199
    .line 200
    .line 201
    .line 202
    .line 203
    .line 204
    .line 205
    .line 206
    :array_4
    .array-data 4
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
    .end array-data

    :array_5
    .array-data 4
        0x2
        0x3
        0x0
        0x0
        0x0
        0x0
        0x0
    .end array-data

    :array_6
    .array-data 4
        0x1
        0x2
        0x1
        0x0
        0x0
        0x0
        0x0
    .end array-data
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
    iput p3, p0, Lcom/hsae/autosdk/settings/AutoSettingsConst$Audio$EnumC0036EQ;->f24id:I

    .line 5
    .line 6
    return-void
.end method

.method public static findById(I)Lcom/hsae/autosdk/settings/AutoSettingsConst$Audio$EnumC0036EQ;
    .locals 5

    .line 1
    invoke-static {}, Lcom/hsae/autosdk/settings/AutoSettingsConst$Audio$EnumC0036EQ;->values()[Lcom/hsae/autosdk/settings/AutoSettingsConst$Audio$EnumC0036EQ;

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
    invoke-virtual {v3}, Lcom/hsae/autosdk/settings/AutoSettingsConst$Audio$EnumC0036EQ;->m5id()I

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
    sget-object p0, Lcom/hsae/autosdk/settings/AutoSettingsConst$Audio$EnumC0036EQ;->DEFAULT:Lcom/hsae/autosdk/settings/AutoSettingsConst$Audio$EnumC0036EQ;

    .line 22
    .line 23
    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/hsae/autosdk/settings/AutoSettingsConst$Audio$EnumC0036EQ;
    .locals 1

    .line 1
    const-class v0, Lcom/hsae/autosdk/settings/AutoSettingsConst$Audio$EnumC0036EQ;

    .line 2
    .line 3
    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    check-cast p0, Lcom/hsae/autosdk/settings/AutoSettingsConst$Audio$EnumC0036EQ;

    .line 8
    .line 9
    return-object p0
.end method

.method public static values()[Lcom/hsae/autosdk/settings/AutoSettingsConst$Audio$EnumC0036EQ;
    .locals 1

    .line 1
    sget-object v0, Lcom/hsae/autosdk/settings/AutoSettingsConst$Audio$EnumC0036EQ;->$VALUES:[Lcom/hsae/autosdk/settings/AutoSettingsConst$Audio$EnumC0036EQ;

    .line 2
    .line 3
    invoke-virtual {v0}, [Lcom/hsae/autosdk/settings/AutoSettingsConst$Audio$EnumC0036EQ;->clone()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, [Lcom/hsae/autosdk/settings/AutoSettingsConst$Audio$EnumC0036EQ;

    .line 8
    .line 9
    return-object v0
.end method


# virtual methods
.method public getValues()[I
    .locals 2

    .line 1
    iget v0, p0, Lcom/hsae/autosdk/settings/AutoSettingsConst$Audio$EnumC0036EQ;->f24id:I

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    sget-object v0, Lcom/hsae/autosdk/settings/AutoSettingsConst$Audio$EnumC0036EQ;->EQ_DEFAULT:[I

    .line 6
    .line 7
    return-object v0

    .line 8
    :cond_0
    const/4 v1, 0x1

    .line 9
    if-ne v0, v1, :cond_1

    .line 10
    .line 11
    sget-object v0, Lcom/hsae/autosdk/settings/AutoSettingsConst$Audio$EnumC0036EQ;->EQ_POP:[I

    .line 12
    .line 13
    return-object v0

    .line 14
    :cond_1
    const/4 v1, 0x2

    .line 15
    if-ne v0, v1, :cond_2

    .line 16
    .line 17
    sget-object v0, Lcom/hsae/autosdk/settings/AutoSettingsConst$Audio$EnumC0036EQ;->EQ_JAZZ:[I

    .line 18
    .line 19
    return-object v0

    .line 20
    :cond_2
    const/4 v1, 0x3

    .line 21
    if-ne v0, v1, :cond_3

    .line 22
    .line 23
    sget-object v0, Lcom/hsae/autosdk/settings/AutoSettingsConst$Audio$EnumC0036EQ;->EQ_CLASSICAL:[I

    .line 24
    .line 25
    return-object v0

    .line 26
    :cond_3
    const/4 v1, 0x5

    .line 27
    if-ne v0, v1, :cond_4

    .line 28
    .line 29
    sget-object v0, Lcom/hsae/autosdk/settings/AutoSettingsConst$Audio$EnumC0036EQ;->EQ_ROCK:[I

    .line 30
    .line 31
    return-object v0

    .line 32
    :cond_4
    const/4 v1, 0x7

    .line 33
    if-ne v0, v1, :cond_5

    .line 34
    .line 35
    sget-object v0, Lcom/hsae/autosdk/settings/AutoSettingsConst$Audio$EnumC0036EQ;->EQ_DANCE:[I

    .line 36
    .line 37
    return-object v0

    .line 38
    :cond_5
    const/16 v1, 0xb

    .line 39
    .line 40
    if-ne v0, v1, :cond_6

    .line 41
    .line 42
    sget-object v0, Lcom/hsae/autosdk/settings/AutoSettingsConst$Audio$EnumC0036EQ;->EQ_VOCAL:[I

    .line 43
    .line 44
    return-object v0

    .line 45
    :cond_6
    const/16 v1, 0xd

    .line 46
    .line 47
    if-ne v0, v1, :cond_7

    .line 48
    .line 49
    sget-object v0, Lcom/hsae/autosdk/settings/AutoSettingsConst$Audio$EnumC0036EQ;->EQ_CUSTOM:[I

    .line 50
    .line 51
    return-object v0

    .line 52
    :cond_7
    sget-object v0, Lcom/hsae/autosdk/settings/AutoSettingsConst$Audio$EnumC0036EQ;->EQ_DEFAULT:[I

    .line 53
    .line 54
    return-object v0
.end method

.method public m5id()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/hsae/autosdk/settings/AutoSettingsConst$Audio$EnumC0036EQ;->f24id:I

    .line 2
    .line 3
    return v0
.end method
