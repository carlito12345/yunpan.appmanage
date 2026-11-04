.class public final Luh/h;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Luh/e;


# static fields
.field public static final f:[I


# instance fields
.field public final a:Ljava/lang/Enum;

.field public final b:I

.field public final c:I

.field public final d:I

.field public final e:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    const/16 v0, 0xa

    .line 2
    .line 3
    new-array v0, v0, [I

    .line 4
    .line 5
    fill-array-data v0, :array_0

    .line 6
    .line 7
    .line 8
    sput-object v0, Luh/h;->f:[I

    .line 9
    .line 10
    return-void

    .line 11
    :array_0
    .array-data 4
        0x0
        0xa
        0x64
        0x3e8
        0x2710
        0x186a0
        0xf4240
        0x989680
        0x5f5e100
        0x3b9aca00
    .end array-data
.end method

.method public constructor <init>(Lwh/m;III)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    check-cast p1, Ljava/lang/Enum;

    iput-object p1, p0, Luh/h;->a:Ljava/lang/Enum;

    .line 3
    iput p2, p0, Luh/h;->b:I

    .line 4
    iput p3, p0, Luh/h;->c:I

    .line 5
    iput p4, p0, Luh/h;->d:I

    const/4 p1, 0x0

    .line 6
    iput p1, p0, Luh/h;->e:I

    return-void
.end method

.method public constructor <init>(Lwh/m;IIII)V
    .locals 0

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    check-cast p1, Ljava/lang/Enum;

    iput-object p1, p0, Luh/h;->a:Ljava/lang/Enum;

    .line 9
    iput p2, p0, Luh/h;->b:I

    .line 10
    iput p3, p0, Luh/h;->c:I

    .line 11
    iput p4, p0, Luh/h;->d:I

    .line 12
    iput p5, p0, Luh/h;->e:I

    return-void
.end method


# virtual methods
.method public final a(Landroidx/room/s;Ljava/lang/StringBuilder;)Z
    .locals 13

    .line 1
    iget-object v0, p0, Luh/h;->a:Ljava/lang/Enum;

    .line 2
    .line 3
    invoke-virtual {p1, v0}, Landroidx/room/s;->m(Lwh/m;)Ljava/lang/Long;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    const/4 v2, 0x0

    .line 8
    if-nez v1, :cond_0

    .line 9
    .line 10
    return v2

    .line 11
    :cond_0
    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    .line 12
    .line 13
    .line 14
    move-result-wide v3

    .line 15
    const-wide/high16 v5, -0x8000000000000000L

    .line 16
    .line 17
    cmp-long v1, v3, v5

    .line 18
    .line 19
    if-nez v1, :cond_1

    .line 20
    .line 21
    const-string v1, "9223372036854775808"

    .line 22
    .line 23
    goto :goto_0

    .line 24
    :cond_1
    invoke-static {v3, v4}, Ljava/lang/Math;->abs(J)J

    .line 25
    .line 26
    .line 27
    move-result-wide v5

    .line 28
    invoke-static {v5, v6}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    .line 29
    .line 30
    .line 31
    move-result-object v1

    .line 32
    :goto_0
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    .line 33
    .line 34
    .line 35
    move-result v5

    .line 36
    const-string v6, " cannot be printed as the value "

    .line 37
    .line 38
    const-string v7, "Field "

    .line 39
    .line 40
    iget v8, p0, Luh/h;->c:I

    .line 41
    .line 42
    if-gt v5, v8, :cond_9

    .line 43
    .line 44
    iget-object p1, p1, Landroidx/room/s;->d:Ljava/lang/Object;

    .line 45
    .line 46
    check-cast p1, Luh/p;

    .line 47
    .line 48
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 49
    .line 50
    .line 51
    const/4 p1, 0x1

    .line 52
    const-wide/16 v8, 0x0

    .line 53
    .line 54
    iget v5, p0, Luh/h;->b:I

    .line 55
    .line 56
    const/4 v10, 0x4

    .line 57
    iget v11, p0, Luh/h;->d:I

    .line 58
    .line 59
    cmp-long v12, v3, v8

    .line 60
    .line 61
    if-ltz v12, :cond_4

    .line 62
    .line 63
    invoke-static {v11}, Ld0/f;->c(I)I

    .line 64
    .line 65
    .line 66
    move-result v0

    .line 67
    const/16 v6, 0x2b

    .line 68
    .line 69
    if-eq v0, p1, :cond_3

    .line 70
    .line 71
    if-eq v0, v10, :cond_2

    .line 72
    .line 73
    goto :goto_1

    .line 74
    :cond_2
    const/16 v0, 0x13

    .line 75
    .line 76
    if-ge v5, v0, :cond_7

    .line 77
    .line 78
    sget-object v0, Luh/h;->f:[I

    .line 79
    .line 80
    aget v0, v0, v5

    .line 81
    .line 82
    int-to-long v7, v0

    .line 83
    cmp-long v0, v3, v7

    .line 84
    .line 85
    if-ltz v0, :cond_7

    .line 86
    .line 87
    invoke-virtual {p2, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 88
    .line 89
    .line 90
    goto :goto_1

    .line 91
    :cond_3
    invoke-virtual {p2, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 92
    .line 93
    .line 94
    goto :goto_1

    .line 95
    :cond_4
    invoke-static {v11}, Ld0/f;->c(I)I

    .line 96
    .line 97
    .line 98
    move-result v8

    .line 99
    if-eqz v8, :cond_6

    .line 100
    .line 101
    if-eq v8, p1, :cond_6

    .line 102
    .line 103
    const/4 v9, 0x3

    .line 104
    if-eq v8, v9, :cond_5

    .line 105
    .line 106
    if-eq v8, v10, :cond_6

    .line 107
    .line 108
    goto :goto_1

    .line 109
    :cond_5
    new-instance p1, Lsh/a;

    .line 110
    .line 111
    new-instance p2, Ljava/lang/StringBuilder;

    .line 112
    .line 113
    invoke-direct {p2, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 114
    .line 115
    .line 116
    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 117
    .line 118
    .line 119
    invoke-virtual {p2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 120
    .line 121
    .line 122
    invoke-virtual {p2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 123
    .line 124
    .line 125
    const-string v0, " cannot be negative according to the SignStyle"

    .line 126
    .line 127
    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 128
    .line 129
    .line 130
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 131
    .line 132
    .line 133
    move-result-object p2

    .line 134
    invoke-direct {p1, p2}, Lsh/a;-><init>(Ljava/lang/String;)V

    .line 135
    .line 136
    .line 137
    throw p1

    .line 138
    :cond_6
    const/16 v0, 0x2d

    .line 139
    .line 140
    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 141
    .line 142
    .line 143
    :cond_7
    :goto_1
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    .line 144
    .line 145
    .line 146
    move-result v0

    .line 147
    sub-int v0, v5, v0

    .line 148
    .line 149
    if-ge v2, v0, :cond_8

    .line 150
    .line 151
    const/16 v0, 0x30

    .line 152
    .line 153
    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 154
    .line 155
    .line 156
    add-int/lit8 v2, v2, 0x1

    .line 157
    .line 158
    goto :goto_1

    .line 159
    :cond_8
    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 160
    .line 161
    .line 162
    return p1

    .line 163
    :cond_9
    new-instance p1, Lsh/a;

    .line 164
    .line 165
    new-instance p2, Ljava/lang/StringBuilder;

    .line 166
    .line 167
    invoke-direct {p2, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 168
    .line 169
    .line 170
    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 171
    .line 172
    .line 173
    invoke-virtual {p2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 174
    .line 175
    .line 176
    invoke-virtual {p2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 177
    .line 178
    .line 179
    const-string v0, " exceeds the maximum print width of "

    .line 180
    .line 181
    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 182
    .line 183
    .line 184
    invoke-virtual {p2, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 185
    .line 186
    .line 187
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 188
    .line 189
    .line 190
    move-result-object p2

    .line 191
    invoke-direct {p1, p2}, Lsh/a;-><init>(Ljava/lang/String;)V

    .line 192
    .line 193
    .line 194
    goto :goto_3

    .line 195
    :goto_2
    throw p1

    .line 196
    :goto_3
    goto :goto_2
.end method

.method public final toString()Ljava/lang/String;
    .locals 8

    .line 1
    iget-object v0, p0, Luh/h;->a:Ljava/lang/Enum;

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    const-string v2, ")"

    .line 5
    .line 6
    const-string v3, "Value("

    .line 7
    .line 8
    iget v4, p0, Luh/h;->d:I

    .line 9
    .line 10
    iget v5, p0, Luh/h;->c:I

    .line 11
    .line 12
    iget v6, p0, Luh/h;->b:I

    .line 13
    .line 14
    if-ne v6, v1, :cond_0

    .line 15
    .line 16
    const/16 v7, 0x13

    .line 17
    .line 18
    if-ne v5, v7, :cond_0

    .line 19
    .line 20
    if-ne v4, v1, :cond_0

    .line 21
    .line 22
    new-instance v1, Ljava/lang/StringBuilder;

    .line 23
    .line 24
    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 25
    .line 26
    .line 27
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 28
    .line 29
    .line 30
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 31
    .line 32
    .line 33
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 34
    .line 35
    .line 36
    move-result-object v0

    .line 37
    return-object v0

    .line 38
    :cond_0
    const-string v1, ","

    .line 39
    .line 40
    if-ne v6, v5, :cond_1

    .line 41
    .line 42
    const/4 v7, 0x4

    .line 43
    if-ne v4, v7, :cond_1

    .line 44
    .line 45
    new-instance v4, Ljava/lang/StringBuilder;

    .line 46
    .line 47
    invoke-direct {v4, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 48
    .line 49
    .line 50
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 51
    .line 52
    .line 53
    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 54
    .line 55
    .line 56
    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 57
    .line 58
    .line 59
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 60
    .line 61
    .line 62
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 63
    .line 64
    .line 65
    move-result-object v0

    .line 66
    return-object v0

    .line 67
    :cond_1
    new-instance v7, Ljava/lang/StringBuilder;

    .line 68
    .line 69
    invoke-direct {v7, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 70
    .line 71
    .line 72
    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 73
    .line 74
    .line 75
    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 76
    .line 77
    .line 78
    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 79
    .line 80
    .line 81
    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 82
    .line 83
    .line 84
    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 85
    .line 86
    .line 87
    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 88
    .line 89
    .line 90
    const/4 v0, 0x1

    .line 91
    if-eq v4, v0, :cond_6

    .line 92
    .line 93
    const/4 v0, 0x2

    .line 94
    if-eq v4, v0, :cond_5

    .line 95
    .line 96
    const/4 v0, 0x3

    .line 97
    if-eq v4, v0, :cond_4

    .line 98
    .line 99
    const/4 v0, 0x4

    .line 100
    if-eq v4, v0, :cond_3

    .line 101
    .line 102
    const/4 v0, 0x5

    .line 103
    if-eq v4, v0, :cond_2

    .line 104
    .line 105
    const-string v0, "null"

    .line 106
    .line 107
    goto :goto_0

    .line 108
    :cond_2
    const-string v0, "EXCEEDS_PAD"

    .line 109
    .line 110
    goto :goto_0

    .line 111
    :cond_3
    const-string v0, "NOT_NEGATIVE"

    .line 112
    .line 113
    goto :goto_0

    .line 114
    :cond_4
    const-string v0, "NEVER"

    .line 115
    .line 116
    goto :goto_0

    .line 117
    :cond_5
    const-string v0, "ALWAYS"

    .line 118
    .line 119
    goto :goto_0

    .line 120
    :cond_6
    const-string v0, "NORMAL"

    .line 121
    .line 122
    :goto_0
    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 123
    .line 124
    .line 125
    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 126
    .line 127
    .line 128
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 129
    .line 130
    .line 131
    move-result-object v0

    .line 132
    return-object v0
.end method
