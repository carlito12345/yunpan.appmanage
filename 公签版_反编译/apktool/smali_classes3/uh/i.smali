.class public final Luh/i;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Luh/e;


# static fields
.field public static final c:[Ljava/lang/String;

.field public static final d:Luh/i;


# instance fields
.field public final a:Ljava/lang/String;

.field public final b:I


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 1
    const/16 v0, 0x9

    .line 2
    .line 3
    new-array v0, v0, [Ljava/lang/String;

    .line 4
    .line 5
    const-string v1, "+HH"

    .line 6
    .line 7
    const/4 v2, 0x0

    .line 8
    aput-object v1, v0, v2

    .line 9
    .line 10
    const-string v1, "+HHmm"

    .line 11
    .line 12
    const/4 v2, 0x1

    .line 13
    aput-object v1, v0, v2

    .line 14
    .line 15
    const-string v1, "+HH:mm"

    .line 16
    .line 17
    const/4 v2, 0x2

    .line 18
    aput-object v1, v0, v2

    .line 19
    .line 20
    const-string v1, "+HHMM"

    .line 21
    .line 22
    const/4 v2, 0x3

    .line 23
    aput-object v1, v0, v2

    .line 24
    .line 25
    const-string v1, "+HH:MM"

    .line 26
    .line 27
    const/4 v2, 0x4

    .line 28
    aput-object v1, v0, v2

    .line 29
    .line 30
    const-string v1, "+HHMMss"

    .line 31
    .line 32
    const/4 v2, 0x5

    .line 33
    aput-object v1, v0, v2

    .line 34
    .line 35
    const-string v1, "+HH:MM:ss"

    .line 36
    .line 37
    const/4 v2, 0x6

    .line 38
    aput-object v1, v0, v2

    .line 39
    .line 40
    const-string v2, "+HHMMSS"

    .line 41
    .line 42
    const/4 v3, 0x7

    .line 43
    aput-object v2, v0, v3

    .line 44
    .line 45
    const-string v2, "+HH:MM:SS"

    .line 46
    .line 47
    const/16 v3, 0x8

    .line 48
    .line 49
    aput-object v2, v0, v3

    .line 50
    .line 51
    sput-object v0, Luh/i;->c:[Ljava/lang/String;

    .line 52
    .line 53
    new-instance v0, Luh/i;

    .line 54
    .line 55
    const-string v2, "Z"

    .line 56
    .line 57
    invoke-direct {v0, v2, v1}, Luh/i;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 58
    .line 59
    .line 60
    sput-object v0, Luh/i;->d:Luh/i;

    .line 61
    .line 62
    new-instance v0, Luh/i;

    .line 63
    .line 64
    const-string v2, "0"

    .line 65
    .line 66
    invoke-direct {v0, v2, v1}, Luh/i;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 67
    .line 68
    .line 69
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Luh/i;->a:Ljava/lang/String;

    .line 5
    .line 6
    const/4 p1, 0x0

    .line 7
    :goto_0
    sget-object v0, Luh/i;->c:[Ljava/lang/String;

    .line 8
    .line 9
    const/16 v1, 0x9

    .line 10
    .line 11
    if-ge p1, v1, :cond_1

    .line 12
    .line 13
    aget-object v0, v0, p1

    .line 14
    .line 15
    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 16
    .line 17
    .line 18
    move-result v0

    .line 19
    if-eqz v0, :cond_0

    .line 20
    .line 21
    iput p1, p0, Luh/i;->b:I

    .line 22
    .line 23
    return-void

    .line 24
    :cond_0
    add-int/lit8 p1, p1, 0x1

    .line 25
    .line 26
    goto :goto_0

    .line 27
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 28
    .line 29
    const-string v0, "Invalid zone offset pattern: "

    .line 30
    .line 31
    invoke-virtual {v0, p2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 32
    .line 33
    .line 34
    move-result-object p2

    .line 35
    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 36
    .line 37
    .line 38
    goto :goto_2

    .line 39
    :goto_1
    throw p1

    .line 40
    :goto_2
    goto :goto_1
.end method


# virtual methods
.method public final a(Landroidx/room/s;Ljava/lang/StringBuilder;)Z
    .locals 10

    .line 1
    sget-object v0, Lwh/a;->G:Lwh/a;

    .line 2
    .line 3
    invoke-virtual {p1, v0}, Landroidx/room/s;->m(Lwh/m;)Ljava/lang/Long;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    if-nez p1, :cond_0

    .line 8
    .line 9
    const/4 p1, 0x0

    .line 10
    return p1

    .line 11
    :cond_0
    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    .line 12
    .line 13
    .line 14
    move-result-wide v0

    .line 15
    const-wide/32 v2, 0x7fffffff

    .line 16
    .line 17
    .line 18
    cmp-long p1, v0, v2

    .line 19
    .line 20
    if-gtz p1, :cond_9

    .line 21
    .line 22
    const-wide/32 v2, -0x80000000

    .line 23
    .line 24
    .line 25
    cmp-long p1, v0, v2

    .line 26
    .line 27
    if-ltz p1, :cond_9

    .line 28
    .line 29
    long-to-int p1, v0

    .line 30
    const/4 v0, 0x1

    .line 31
    iget-object v1, p0, Luh/i;->a:Ljava/lang/String;

    .line 32
    .line 33
    if-nez p1, :cond_1

    .line 34
    .line 35
    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 36
    .line 37
    .line 38
    goto/16 :goto_2

    .line 39
    .line 40
    :cond_1
    div-int/lit16 v2, p1, 0xe10

    .line 41
    .line 42
    rem-int/lit8 v2, v2, 0x64

    .line 43
    .line 44
    invoke-static {v2}, Ljava/lang/Math;->abs(I)I

    .line 45
    .line 46
    .line 47
    move-result v2

    .line 48
    div-int/lit8 v3, p1, 0x3c

    .line 49
    .line 50
    rem-int/lit8 v3, v3, 0x3c

    .line 51
    .line 52
    invoke-static {v3}, Ljava/lang/Math;->abs(I)I

    .line 53
    .line 54
    .line 55
    move-result v3

    .line 56
    rem-int/lit8 v4, p1, 0x3c

    .line 57
    .line 58
    invoke-static {v4}, Ljava/lang/Math;->abs(I)I

    .line 59
    .line 60
    .line 61
    move-result v4

    .line 62
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->length()I

    .line 63
    .line 64
    .line 65
    move-result v5

    .line 66
    if-gez p1, :cond_2

    .line 67
    .line 68
    const-string p1, "-"

    .line 69
    .line 70
    goto :goto_0

    .line 71
    :cond_2
    const-string p1, "+"

    .line 72
    .line 73
    :goto_0
    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 74
    .line 75
    .line 76
    div-int/lit8 p1, v2, 0xa

    .line 77
    .line 78
    add-int/lit8 p1, p1, 0x30

    .line 79
    .line 80
    int-to-char p1, p1

    .line 81
    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 82
    .line 83
    .line 84
    rem-int/lit8 p1, v2, 0xa

    .line 85
    .line 86
    add-int/lit8 p1, p1, 0x30

    .line 87
    .line 88
    int-to-char p1, p1

    .line 89
    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 90
    .line 91
    .line 92
    const/4 p1, 0x3

    .line 93
    iget v6, p0, Luh/i;->b:I

    .line 94
    .line 95
    if-ge v6, p1, :cond_3

    .line 96
    .line 97
    if-lt v6, v0, :cond_7

    .line 98
    .line 99
    if-lez v3, :cond_7

    .line 100
    .line 101
    :cond_3
    rem-int/lit8 p1, v6, 0x2

    .line 102
    .line 103
    const-string v7, ""

    .line 104
    .line 105
    const-string v8, ":"

    .line 106
    .line 107
    if-nez p1, :cond_4

    .line 108
    .line 109
    move-object v9, v8

    .line 110
    goto :goto_1

    .line 111
    :cond_4
    move-object v9, v7

    .line 112
    :goto_1
    invoke-virtual {p2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 113
    .line 114
    .line 115
    div-int/lit8 v9, v3, 0xa

    .line 116
    .line 117
    add-int/lit8 v9, v9, 0x30

    .line 118
    .line 119
    int-to-char v9, v9

    .line 120
    invoke-virtual {p2, v9}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 121
    .line 122
    .line 123
    rem-int/lit8 v9, v3, 0xa

    .line 124
    .line 125
    add-int/lit8 v9, v9, 0x30

    .line 126
    .line 127
    int-to-char v9, v9

    .line 128
    invoke-virtual {p2, v9}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 129
    .line 130
    .line 131
    add-int/2addr v2, v3

    .line 132
    const/4 v3, 0x7

    .line 133
    if-ge v6, v3, :cond_5

    .line 134
    .line 135
    const/4 v3, 0x5

    .line 136
    if-lt v6, v3, :cond_7

    .line 137
    .line 138
    if-lez v4, :cond_7

    .line 139
    .line 140
    :cond_5
    if-nez p1, :cond_6

    .line 141
    .line 142
    move-object v7, v8

    .line 143
    :cond_6
    invoke-virtual {p2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 144
    .line 145
    .line 146
    div-int/lit8 p1, v4, 0xa

    .line 147
    .line 148
    add-int/lit8 p1, p1, 0x30

    .line 149
    .line 150
    int-to-char p1, p1

    .line 151
    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 152
    .line 153
    .line 154
    rem-int/lit8 p1, v4, 0xa

    .line 155
    .line 156
    add-int/lit8 p1, p1, 0x30

    .line 157
    .line 158
    int-to-char p1, p1

    .line 159
    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 160
    .line 161
    .line 162
    add-int/2addr v2, v4

    .line 163
    :cond_7
    if-nez v2, :cond_8

    .line 164
    .line 165
    invoke-virtual {p2, v5}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 166
    .line 167
    .line 168
    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 169
    .line 170
    .line 171
    :cond_8
    :goto_2
    return v0

    .line 172
    :cond_9
    new-instance p1, Ljava/lang/ArithmeticException;

    .line 173
    .line 174
    const-string p2, "Calculation overflows an int: "

    .line 175
    .line 176
    invoke-static {v0, v1, p2}, Lta/q;->j(JLjava/lang/String;)Ljava/lang/String;

    .line 177
    .line 178
    .line 179
    move-result-object p2

    .line 180
    invoke-direct {p1, p2}, Ljava/lang/ArithmeticException;-><init>(Ljava/lang/String;)V

    .line 181
    .line 182
    .line 183
    throw p1
.end method

.method public final toString()Ljava/lang/String;
    .locals 4

    .line 1
    const-string v0, "\'"

    .line 2
    .line 3
    const-string v1, "\'\'"

    .line 4
    .line 5
    iget-object v2, p0, Luh/i;->a:Ljava/lang/String;

    .line 6
    .line 7
    invoke-virtual {v2, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    new-instance v1, Ljava/lang/StringBuilder;

    .line 12
    .line 13
    const-string v2, "Offset("

    .line 14
    .line 15
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 16
    .line 17
    .line 18
    sget-object v2, Luh/i;->c:[Ljava/lang/String;

    .line 19
    .line 20
    iget v3, p0, Luh/i;->b:I

    .line 21
    .line 22
    aget-object v2, v2, v3

    .line 23
    .line 24
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 25
    .line 26
    .line 27
    const-string v2, ",\'"

    .line 28
    .line 29
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 30
    .line 31
    .line 32
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 33
    .line 34
    .line 35
    const-string v0, "\')"

    .line 36
    .line 37
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 38
    .line 39
    .line 40
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 41
    .line 42
    .line 43
    move-result-object v0

    .line 44
    return-object v0
.end method
