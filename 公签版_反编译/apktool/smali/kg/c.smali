.class public final Lkg/c;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final l:Ljava/util/regex/Pattern;


# instance fields
.field public a:Ljava/lang/String;

.field public final b:Z

.field public c:J

.field public d:B

.field public e:Ljava/util/ArrayList;

.field public f:Z

.field public g:J

.field public h:Z

.field public i:Z

.field public j:Z

.field public final k:Ljava/util/HashMap;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    const-string v0, "-?\\d{1,19}(?:\\.\\d{1,19})?"

    .line 2
    .line 3
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    sput-object v0, Lkg/c;->l:Ljava/util/regex/Pattern;

    .line 8
    .line 9
    return-void
.end method

.method public constructor <init>(Z)V
    .locals 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const-string v0, ""

    .line 5
    .line 6
    iput-object v0, p0, Lkg/c;->a:Ljava/lang/String;

    .line 7
    .line 8
    new-instance v0, Ljava/util/HashMap;

    .line 9
    .line 10
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 11
    .line 12
    .line 13
    iput-object v0, p0, Lkg/c;->k:Ljava/util/HashMap;

    .line 14
    .line 15
    new-instance v0, Lah/a;

    .line 16
    .line 17
    const/16 v1, 0xd

    .line 18
    .line 19
    invoke-direct {v0, v1}, Lah/a;-><init>(I)V

    .line 20
    .line 21
    .line 22
    const-string v1, "user.name"

    .line 23
    .line 24
    invoke-static {v1, v0}, Lzg/a;->a(Ljava/lang/String;Ljava/util/function/Supplier;)Ljava/lang/String;

    .line 25
    .line 26
    .line 27
    move-result-object v0

    .line 28
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    .line 29
    .line 30
    .line 31
    move-result v1

    .line 32
    const/16 v2, 0x1f

    .line 33
    .line 34
    if-le v1, v2, :cond_0

    .line 35
    .line 36
    const/4 v1, 0x0

    .line 37
    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 38
    .line 39
    .line 40
    :cond_0
    sget v0, Lrg/d;->a:I

    .line 41
    .line 42
    iput-boolean p1, p0, Lkg/c;->b:Z

    .line 43
    .line 44
    return-void
.end method

.method public static a(J)V
    .locals 3

    .line 1
    const-wide/16 v0, 0x0

    .line 2
    .line 3
    cmp-long v2, p0, v0

    .line 4
    .line 5
    if-gtz v2, :cond_0

    .line 6
    .line 7
    goto :goto_0

    .line 8
    :cond_0
    sget-object v0, Lvg/b;->a:Ljava/math/MathContext;

    .line 9
    .line 10
    sget-object v0, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    .line 11
    .line 12
    invoke-static {p0, p1, v0}, Lvb/t;->f(JLjava/util/concurrent/TimeUnit;)Ljava/nio/file/attribute/FileTime;

    .line 13
    .line 14
    .line 15
    :goto_0
    return-void
.end method

.method public static c(I[B)Z
    .locals 5

    .line 1
    aget-byte v0, p1, p0

    .line 2
    .line 3
    and-int/lit16 v0, v0, 0x80

    .line 4
    .line 5
    const/4 v1, 0x0

    .line 6
    if-nez v0, :cond_3

    .line 7
    .line 8
    const/4 v0, 0x0

    .line 9
    :goto_0
    const/4 v2, 0x1

    .line 10
    const/16 v3, 0xb

    .line 11
    .line 12
    if-ge v0, v3, :cond_2

    .line 13
    .line 14
    add-int v3, p0, v0

    .line 15
    .line 16
    aget-byte v3, p1, v3

    .line 17
    .line 18
    const/16 v4, 0x30

    .line 19
    .line 20
    if-lt v3, v4, :cond_1

    .line 21
    .line 22
    const/16 v4, 0x37

    .line 23
    .line 24
    if-le v3, v4, :cond_0

    .line 25
    .line 26
    goto :goto_1

    .line 27
    :cond_0
    add-int/lit8 v0, v0, 0x1

    .line 28
    .line 29
    goto :goto_0

    .line 30
    :cond_1
    :goto_1
    return v2

    .line 31
    :cond_2
    add-int/2addr p0, v3

    .line 32
    aget-byte p0, p1, p0

    .line 33
    .line 34
    const/16 p1, 0x20

    .line 35
    .line 36
    if-eq p0, p1, :cond_3

    .line 37
    .line 38
    if-eqz p0, :cond_3

    .line 39
    .line 40
    return v2

    .line 41
    :cond_3
    return v1
.end method

.method public static e(Ljava/lang/String;)Lj$/time/Instant;
    .locals 7

    .line 1
    sget-object v0, Lkg/c;->l:Ljava/util/regex/Pattern;

    .line 2
    .line 3
    invoke-virtual {v0, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->matches()Z

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    const-string v1, "\'"

    .line 12
    .line 13
    const-string v2, "Corrupted PAX header. Time field value is invalid \'"

    .line 14
    .line 15
    if-eqz v0, :cond_0

    .line 16
    .line 17
    new-instance v0, Ljava/math/BigDecimal;

    .line 18
    .line 19
    invoke-direct {v0, p0}, Ljava/math/BigDecimal;-><init>(Ljava/lang/String;)V

    .line 20
    .line 21
    .line 22
    invoke-virtual {v0}, Ljava/math/BigDecimal;->longValue()J

    .line 23
    .line 24
    .line 25
    move-result-wide v3

    .line 26
    sget-object v5, Ljava/math/BigDecimal;->ONE:Ljava/math/BigDecimal;

    .line 27
    .line 28
    invoke-virtual {v0, v5}, Ljava/math/BigDecimal;->remainder(Ljava/math/BigDecimal;)Ljava/math/BigDecimal;

    .line 29
    .line 30
    .line 31
    move-result-object v0

    .line 32
    const/16 v5, 0x9

    .line 33
    .line 34
    invoke-virtual {v0, v5}, Ljava/math/BigDecimal;->movePointRight(I)Ljava/math/BigDecimal;

    .line 35
    .line 36
    .line 37
    move-result-object v0

    .line 38
    invoke-virtual {v0}, Ljava/math/BigDecimal;->longValue()J

    .line 39
    .line 40
    .line 41
    move-result-wide v5

    .line 42
    :try_start_0
    invoke-static {v3, v4, v5, v6}, Lj$/time/Instant;->ofEpochSecond(JJ)Lj$/time/Instant;

    .line 43
    .line 44
    .line 45
    move-result-object p0
    :try_end_0
    .catch Lj$/time/DateTimeException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/ArithmeticException; {:try_start_0 .. :try_end_0} :catch_0

    .line 46
    return-object p0

    .line 47
    :catch_0
    move-exception v0

    .line 48
    goto :goto_0

    .line 49
    :catch_1
    move-exception v0

    .line 50
    :goto_0
    new-instance v3, Ljava/io/IOException;

    .line 51
    .line 52
    invoke-static {v2, p0, v1}, Lg/b;->A(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 53
    .line 54
    .line 55
    move-result-object p0

    .line 56
    invoke-direct {v3, p0, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 57
    .line 58
    .line 59
    throw v3

    .line 60
    :cond_0
    new-instance v0, Ljava/io/IOException;

    .line 61
    .line 62
    invoke-static {v2, p0, v1}, Lg/b;->A(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 63
    .line 64
    .line 65
    move-result-object p0

    .line 66
    invoke-direct {v0, p0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 67
    .line 68
    .line 69
    throw v0
.end method


# virtual methods
.method public b()Z
    .locals 3

    .line 1
    iget-byte v0, p0, Lkg/c;->d:B

    .line 2
    .line 3
    const/16 v1, 0x35

    .line 4
    .line 5
    const/4 v2, 0x1

    .line 6
    if-ne v0, v1, :cond_0

    .line 7
    .line 8
    return v2

    .line 9
    :cond_0
    const/16 v1, 0x78

    .line 10
    .line 11
    if-eq v0, v1, :cond_3

    .line 12
    .line 13
    const/16 v1, 0x58

    .line 14
    .line 15
    if-ne v0, v1, :cond_1

    .line 16
    .line 17
    goto :goto_0

    .line 18
    :cond_1
    const/16 v1, 0x67

    .line 19
    .line 20
    if-ne v0, v1, :cond_2

    .line 21
    .line 22
    goto :goto_0

    .line 23
    :cond_2
    iget-object v0, p0, Lkg/c;->a:Ljava/lang/String;

    .line 24
    .line 25
    const-string v1, "/"

    .line 26
    .line 27
    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    .line 28
    .line 29
    .line 30
    move-result v0

    .line 31
    if-eqz v0, :cond_3

    .line 32
    .line 33
    goto :goto_1

    .line 34
    :cond_3
    :goto_0
    const/4 v2, 0x0

    .line 35
    :goto_1
    return v2
.end method

.method public final d()Z
    .locals 2

    .line 1
    iget-byte v0, p0, Lkg/c;->d:B

    .line 2
    .line 3
    const/16 v1, 0x53

    .line 4
    .line 5
    if-ne v0, v1, :cond_0

    .line 6
    .line 7
    goto :goto_0

    .line 8
    :cond_0
    iget-boolean v0, p0, Lkg/c;->h:Z

    .line 9
    .line 10
    if-eqz v0, :cond_1

    .line 11
    .line 12
    goto :goto_0

    .line 13
    :cond_1
    iget-boolean v0, p0, Lkg/c;->j:Z

    .line 14
    .line 15
    if-eqz v0, :cond_2

    .line 16
    .line 17
    :goto_0
    const/4 v0, 0x1

    .line 18
    goto :goto_1

    .line 19
    :cond_2
    const/4 v0, 0x0

    .line 20
    :goto_1
    return v0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 2

    .line 1
    if-eqz p1, :cond_1

    .line 2
    .line 3
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    const-class v1, Lkg/c;

    .line 8
    .line 9
    if-eq v1, v0, :cond_0

    .line 10
    .line 11
    goto :goto_0

    .line 12
    :cond_0
    check-cast p1, Lkg/c;

    .line 13
    .line 14
    iget-object v0, p0, Lkg/c;->a:Ljava/lang/String;

    .line 15
    .line 16
    iget-object p1, p1, Lkg/c;->a:Ljava/lang/String;

    .line 17
    .line 18
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 19
    .line 20
    .line 21
    move-result p1

    .line 22
    return p1

    .line 23
    :cond_1
    :goto_0
    const/4 p1, 0x0

    .line 24
    return p1
.end method

.method public final f(Ljava/util/HashMap;[BLlg/a;)V
    .locals 16

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v1, p2

    .line 4
    .line 5
    move-object/from16 v2, p3

    .line 6
    .line 7
    const/4 v3, 0x1

    .line 8
    const/4 v4, 0x0

    .line 9
    const/16 v5, 0x64

    .line 10
    .line 11
    invoke-static {v1, v4, v5, v2}, Lkg/g;->b([BIILlg/b;)Ljava/lang/String;

    .line 12
    .line 13
    .line 14
    move-result-object v6

    .line 15
    iput-object v6, v0, Lkg/c;->a:Ljava/lang/String;

    .line 16
    .line 17
    const/16 v6, 0x8

    .line 18
    .line 19
    invoke-static {v5, v6, v1}, Lkg/g;->d(II[B)J

    .line 20
    .line 21
    .line 22
    const/16 v7, 0x6c

    .line 23
    .line 24
    invoke-static {v7, v6, v1}, Lkg/g;->d(II[B)J

    .line 25
    .line 26
    .line 27
    const/16 v7, 0x74

    .line 28
    .line 29
    invoke-static {v7, v6, v1}, Lkg/g;->d(II[B)J

    .line 30
    .line 31
    .line 32
    const/16 v7, 0x7c

    .line 33
    .line 34
    const/16 v8, 0xc

    .line 35
    .line 36
    invoke-static {v7, v8, v1}, Lkg/g;->d(II[B)J

    .line 37
    .line 38
    .line 39
    move-result-wide v9

    .line 40
    iput-wide v9, v0, Lkg/c;->c:J

    .line 41
    .line 42
    const-wide/16 v11, 0x0

    .line 43
    .line 44
    cmp-long v7, v9, v11

    .line 45
    .line 46
    if-ltz v7, :cond_13

    .line 47
    .line 48
    const/16 v7, 0x88

    .line 49
    .line 50
    invoke-static {v7, v8, v1}, Lkg/g;->d(II[B)J

    .line 51
    .line 52
    .line 53
    move-result-wide v9

    .line 54
    sget-object v7, Lvg/b;->a:Ljava/math/MathContext;

    .line 55
    .line 56
    sget-object v7, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    .line 57
    .line 58
    invoke-static {v9, v10, v7}, Lvb/t;->f(JLjava/util/concurrent/TimeUnit;)Ljava/nio/file/attribute/FileTime;

    .line 59
    .line 60
    .line 61
    const/16 v7, 0x94

    .line 62
    .line 63
    invoke-static {v7, v6, v1}, Lkg/g;->c(II[B)J

    .line 64
    .line 65
    .line 66
    move-result-wide v9

    .line 67
    move-wide v13, v11

    .line 68
    const/4 v15, 0x0

    .line 69
    :goto_0
    array-length v4, v1

    .line 70
    const/16 v8, 0x9c

    .line 71
    .line 72
    const/16 v6, 0x20

    .line 73
    .line 74
    if-ge v15, v4, :cond_1

    .line 75
    .line 76
    aget-byte v4, v1, v15

    .line 77
    .line 78
    if-gt v7, v15, :cond_0

    .line 79
    .line 80
    if-ge v15, v8, :cond_0

    .line 81
    .line 82
    goto :goto_1

    .line 83
    :cond_0
    move v6, v4

    .line 84
    :goto_1
    and-int/lit16 v4, v6, 0xff

    .line 85
    .line 86
    int-to-long v7, v4

    .line 87
    add-long/2addr v11, v7

    .line 88
    int-to-long v6, v6

    .line 89
    add-long/2addr v13, v6

    .line 90
    add-int/2addr v15, v3

    .line 91
    const/16 v6, 0x8

    .line 92
    .line 93
    const/16 v7, 0x94

    .line 94
    .line 95
    const/16 v8, 0xc

    .line 96
    .line 97
    goto :goto_0

    .line 98
    :cond_1
    cmp-long v4, v9, v11

    .line 99
    .line 100
    if-eqz v4, :cond_2

    .line 101
    .line 102
    cmp-long v4, v9, v13

    .line 103
    .line 104
    :cond_2
    aget-byte v4, v1, v8

    .line 105
    .line 106
    iput-byte v4, v0, Lkg/c;->d:B

    .line 107
    .line 108
    const/16 v4, 0x9d

    .line 109
    .line 110
    invoke-static {v1, v4, v5, v2}, Lkg/g;->b([BIILlg/b;)Ljava/lang/String;

    .line 111
    .line 112
    .line 113
    const/16 v4, 0x101

    .line 114
    .line 115
    const/4 v5, 0x6

    .line 116
    invoke-static {v4, v5, v1}, Lkg/g;->a(II[B)Ljava/lang/String;

    .line 117
    .line 118
    .line 119
    const/16 v7, 0x107

    .line 120
    .line 121
    const/4 v9, 0x2

    .line 122
    invoke-static {v7, v9, v1}, Lkg/g;->a(II[B)Ljava/lang/String;

    .line 123
    .line 124
    .line 125
    const/16 v7, 0x109

    .line 126
    .line 127
    invoke-static {v1, v7, v6, v2}, Lkg/g;->b([BIILlg/b;)Ljava/lang/String;

    .line 128
    .line 129
    .line 130
    const/16 v7, 0x129

    .line 131
    .line 132
    invoke-static {v1, v7, v6, v2}, Lkg/g;->b([BIILlg/b;)Ljava/lang/String;

    .line 133
    .line 134
    .line 135
    iget-byte v7, v0, Lkg/c;->d:B

    .line 136
    .line 137
    const/16 v10, 0x33

    .line 138
    .line 139
    if-eq v7, v10, :cond_3

    .line 140
    .line 141
    const/16 v10, 0x34

    .line 142
    .line 143
    if-ne v7, v10, :cond_4

    .line 144
    .line 145
    :cond_3
    const/16 v7, 0x149

    .line 146
    .line 147
    const/16 v10, 0x8

    .line 148
    .line 149
    invoke-static {v7, v10, v1}, Lkg/g;->d(II[B)J

    .line 150
    .line 151
    .line 152
    const/16 v7, 0x151

    .line 153
    .line 154
    invoke-static {v7, v10, v1}, Lkg/g;->d(II[B)J

    .line 155
    .line 156
    .line 157
    :cond_4
    const-string v7, "ustar "

    .line 158
    .line 159
    invoke-static {v7, v1, v4, v5}, Lrg/b;->c(Ljava/lang/String;[BII)Z

    .line 160
    .line 161
    .line 162
    move-result v7

    .line 163
    const/16 v10, 0x1e8

    .line 164
    .line 165
    const/16 v11, 0x1dc

    .line 166
    .line 167
    const/4 v12, 0x4

    .line 168
    if-eqz v7, :cond_5

    .line 169
    .line 170
    const/4 v4, 0x2

    .line 171
    goto :goto_4

    .line 172
    :cond_5
    const-string v7, "ustar\u0000"

    .line 173
    .line 174
    invoke-static {v7, v1, v4, v5}, Lrg/b;->c(Ljava/lang/String;[BII)Z

    .line 175
    .line 176
    .line 177
    move-result v4

    .line 178
    if-eqz v4, :cond_c

    .line 179
    .line 180
    const/16 v4, 0x1fc

    .line 181
    .line 182
    const-string v5, "tar\u0000"

    .line 183
    .line 184
    invoke-static {v5, v1, v4, v12}, Lrg/b;->c(Ljava/lang/String;[BII)Z

    .line 185
    .line 186
    .line 187
    move-result v4

    .line 188
    if-eqz v4, :cond_6

    .line 189
    .line 190
    goto :goto_2

    .line 191
    :cond_6
    const-string v4, "SCHILY.archtype"

    .line 192
    .line 193
    move-object/from16 v5, p1

    .line 194
    .line 195
    invoke-virtual {v5, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 196
    .line 197
    .line 198
    move-result-object v4

    .line 199
    check-cast v4, Ljava/lang/String;

    .line 200
    .line 201
    if-eqz v4, :cond_7

    .line 202
    .line 203
    const-string v5, "xustar"

    .line 204
    .line 205
    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 206
    .line 207
    .line 208
    move-result v5

    .line 209
    if-nez v5, :cond_a

    .line 210
    .line 211
    const-string v5, "exustar"

    .line 212
    .line 213
    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 214
    .line 215
    .line 216
    move-result v4

    .line 217
    if-eqz v4, :cond_b

    .line 218
    .line 219
    goto :goto_2

    .line 220
    :cond_7
    const/16 v4, 0x1db

    .line 221
    .line 222
    aget-byte v4, v1, v4

    .line 223
    .line 224
    if-eqz v4, :cond_9

    .line 225
    .line 226
    aget-byte v5, v1, v8

    .line 227
    .line 228
    const/16 v7, 0x4d

    .line 229
    .line 230
    if-eq v5, v7, :cond_8

    .line 231
    .line 232
    goto :goto_3

    .line 233
    :cond_8
    const/16 v5, 0x1d0

    .line 234
    .line 235
    aget-byte v5, v1, v5

    .line 236
    .line 237
    and-int/lit16 v5, v5, 0x80

    .line 238
    .line 239
    if-nez v5, :cond_9

    .line 240
    .line 241
    if-eq v4, v6, :cond_9

    .line 242
    .line 243
    goto :goto_3

    .line 244
    :cond_9
    invoke-static {v11, v1}, Lkg/c;->c(I[B)Z

    .line 245
    .line 246
    .line 247
    move-result v4

    .line 248
    if-nez v4, :cond_b

    .line 249
    .line 250
    invoke-static {v10, v1}, Lkg/c;->c(I[B)Z

    .line 251
    .line 252
    .line 253
    move-result v4

    .line 254
    if-eqz v4, :cond_a

    .line 255
    .line 256
    goto :goto_3

    .line 257
    :cond_a
    :goto_2
    const/4 v4, 0x4

    .line 258
    goto :goto_4

    .line 259
    :cond_b
    :goto_3
    const/4 v4, 0x3

    .line 260
    goto :goto_4

    .line 261
    :cond_c
    const/4 v4, 0x0

    .line 262
    :goto_4
    const/16 v5, 0x159

    .line 263
    .line 264
    if-eq v4, v9, :cond_10

    .line 265
    .line 266
    const-string v3, "/"

    .line 267
    .line 268
    if-eq v4, v12, :cond_e

    .line 269
    .line 270
    const/16 v4, 0x9b

    .line 271
    .line 272
    invoke-static {v1, v5, v4, v2}, Lkg/g;->b([BIILlg/b;)Ljava/lang/String;

    .line 273
    .line 274
    .line 275
    move-result-object v1

    .line 276
    invoke-virtual/range {p0 .. p0}, Lkg/c;->b()Z

    .line 277
    .line 278
    .line 279
    move-result v2

    .line 280
    if-eqz v2, :cond_d

    .line 281
    .line 282
    iget-object v2, v0, Lkg/c;->a:Ljava/lang/String;

    .line 283
    .line 284
    invoke-virtual {v2, v3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    .line 285
    .line 286
    .line 287
    move-result v2

    .line 288
    if-nez v2, :cond_d

    .line 289
    .line 290
    new-instance v2, Ljava/lang/StringBuilder;

    .line 291
    .line 292
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 293
    .line 294
    .line 295
    iget-object v4, v0, Lkg/c;->a:Ljava/lang/String;

    .line 296
    .line 297
    invoke-static {v4, v3, v2}, Lg/b;->l(Ljava/lang/String;Ljava/lang/String;Ljava/lang/StringBuilder;)Ljava/lang/String;

    .line 298
    .line 299
    .line 300
    move-result-object v2

    .line 301
    iput-object v2, v0, Lkg/c;->a:Ljava/lang/String;

    .line 302
    .line 303
    :cond_d
    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    .line 304
    .line 305
    .line 306
    move-result v2

    .line 307
    if-nez v2, :cond_12

    .line 308
    .line 309
    invoke-static {v1, v3}, Ld0/f;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 310
    .line 311
    .line 312
    move-result-object v1

    .line 313
    iget-object v2, v0, Lkg/c;->a:Ljava/lang/String;

    .line 314
    .line 315
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 316
    .line 317
    .line 318
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 319
    .line 320
    .line 321
    move-result-object v1

    .line 322
    iput-object v1, v0, Lkg/c;->a:Ljava/lang/String;

    .line 323
    .line 324
    goto :goto_6

    .line 325
    :cond_e
    const/16 v4, 0x83

    .line 326
    .line 327
    invoke-static {v1, v5, v4, v2}, Lkg/g;->b([BIILlg/b;)Ljava/lang/String;

    .line 328
    .line 329
    .line 330
    move-result-object v2

    .line 331
    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    .line 332
    .line 333
    .line 334
    move-result v4

    .line 335
    if-nez v4, :cond_f

    .line 336
    .line 337
    invoke-static {v2, v3}, Ld0/f;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 338
    .line 339
    .line 340
    move-result-object v2

    .line 341
    iget-object v3, v0, Lkg/c;->a:Ljava/lang/String;

    .line 342
    .line 343
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 344
    .line 345
    .line 346
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 347
    .line 348
    .line 349
    move-result-object v2

    .line 350
    iput-object v2, v0, Lkg/c;->a:Ljava/lang/String;

    .line 351
    .line 352
    :cond_f
    const/16 v2, 0xc

    .line 353
    .line 354
    invoke-static {v11, v2, v1}, Lkg/g;->d(II[B)J

    .line 355
    .line 356
    .line 357
    move-result-wide v3

    .line 358
    invoke-static {v3, v4}, Lkg/c;->a(J)V

    .line 359
    .line 360
    .line 361
    invoke-static {v10, v2, v1}, Lkg/g;->d(II[B)J

    .line 362
    .line 363
    .line 364
    move-result-wide v1

    .line 365
    invoke-static {v1, v2}, Lkg/c;->a(J)V

    .line 366
    .line 367
    .line 368
    goto :goto_6

    .line 369
    :cond_10
    const/16 v2, 0xc

    .line 370
    .line 371
    invoke-static {v5, v2, v1}, Lkg/g;->d(II[B)J

    .line 372
    .line 373
    .line 374
    move-result-wide v4

    .line 375
    invoke-static {v4, v5}, Lkg/c;->a(J)V

    .line 376
    .line 377
    .line 378
    const/16 v4, 0x165

    .line 379
    .line 380
    invoke-static {v4, v2, v1}, Lkg/g;->d(II[B)J

    .line 381
    .line 382
    .line 383
    move-result-wide v4

    .line 384
    invoke-static {v4, v5}, Lkg/c;->a(J)V

    .line 385
    .line 386
    .line 387
    new-instance v2, Ljava/util/ArrayList;

    .line 388
    .line 389
    const/16 v4, 0x182

    .line 390
    .line 391
    invoke-static {v4, v12, v1}, Lkg/g;->g(II[B)Ljava/util/List;

    .line 392
    .line 393
    .line 394
    move-result-object v4

    .line 395
    invoke-direct {v2, v4}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 396
    .line 397
    .line 398
    iput-object v2, v0, Lkg/c;->e:Ljava/util/ArrayList;

    .line 399
    .line 400
    const/16 v2, 0x1e2

    .line 401
    .line 402
    aget-byte v2, v1, v2

    .line 403
    .line 404
    if-ne v2, v3, :cond_11

    .line 405
    .line 406
    goto :goto_5

    .line 407
    :cond_11
    const/4 v3, 0x0

    .line 408
    :goto_5
    iput-boolean v3, v0, Lkg/c;->f:Z

    .line 409
    .line 410
    const/16 v2, 0x1e3

    .line 411
    .line 412
    const/16 v3, 0xc

    .line 413
    .line 414
    invoke-static {v2, v3, v1}, Lkg/g;->c(II[B)J

    .line 415
    .line 416
    .line 417
    move-result-wide v1

    .line 418
    iput-wide v1, v0, Lkg/c;->g:J

    .line 419
    .line 420
    :cond_12
    :goto_6
    return-void

    .line 421
    :cond_13
    new-instance v1, Ljava/io/IOException;

    .line 422
    .line 423
    const-string v2, "broken archive, entry with negative size"

    .line 424
    .line 425
    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 426
    .line 427
    .line 428
    goto :goto_8

    .line 429
    :goto_7
    throw v1

    .line 430
    :goto_8
    goto :goto_7
.end method

.method public final g(Ljava/lang/String;)V
    .locals 6

    .line 1
    iget-boolean v0, p0, Lkg/c;->b:Z

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    if-nez v0, :cond_3

    .line 5
    .line 6
    sget-object v2, Lah/b;->a:Lah/a;

    .line 7
    .line 8
    const-string v3, "os.name"

    .line 9
    .line 10
    invoke-static {v3, v2}, Lzg/a;->a(Ljava/lang/String;Ljava/util/function/Supplier;)Ljava/lang/String;

    .line 11
    .line 12
    .line 13
    move-result-object v2

    .line 14
    if-eqz v2, :cond_3

    .line 15
    .line 16
    sget v3, Lzg/b;->a:I

    .line 17
    .line 18
    sget-object v3, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    .line 19
    .line 20
    invoke-virtual {v2, v3}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    .line 21
    .line 22
    .line 23
    move-result-object v2

    .line 24
    const-string v3, "windows"

    .line 25
    .line 26
    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 27
    .line 28
    .line 29
    move-result v3

    .line 30
    const/16 v4, 0x3a

    .line 31
    .line 32
    if-eqz v3, :cond_2

    .line 33
    .line 34
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    .line 35
    .line 36
    .line 37
    move-result v2

    .line 38
    const/4 v3, 0x2

    .line 39
    if-le v2, v3, :cond_3

    .line 40
    .line 41
    const/4 v2, 0x0

    .line 42
    invoke-virtual {p1, v2}, Ljava/lang/String;->charAt(I)C

    .line 43
    .line 44
    .line 45
    move-result v2

    .line 46
    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    .line 47
    .line 48
    .line 49
    move-result v5

    .line 50
    if-ne v5, v4, :cond_3

    .line 51
    .line 52
    const/16 v4, 0x61

    .line 53
    .line 54
    if-lt v2, v4, :cond_0

    .line 55
    .line 56
    const/16 v4, 0x7a

    .line 57
    .line 58
    if-le v2, v4, :cond_1

    .line 59
    .line 60
    :cond_0
    const/16 v4, 0x41

    .line 61
    .line 62
    if-lt v2, v4, :cond_3

    .line 63
    .line 64
    const/16 v4, 0x5a

    .line 65
    .line 66
    if-gt v2, v4, :cond_3

    .line 67
    .line 68
    :cond_1
    invoke-virtual {p1, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    .line 69
    .line 70
    .line 71
    move-result-object p1

    .line 72
    goto :goto_0

    .line 73
    :cond_2
    const-string v3, "netware"

    .line 74
    .line 75
    invoke-virtual {v2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 76
    .line 77
    .line 78
    move-result v2

    .line 79
    if-eqz v2, :cond_3

    .line 80
    .line 81
    invoke-virtual {p1, v4}, Ljava/lang/String;->indexOf(I)I

    .line 82
    .line 83
    .line 84
    move-result v2

    .line 85
    const/4 v3, -0x1

    .line 86
    if-eq v2, v3, :cond_3

    .line 87
    .line 88
    add-int/2addr v2, v1

    .line 89
    invoke-virtual {p1, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    .line 90
    .line 91
    .line 92
    move-result-object p1

    .line 93
    :cond_3
    :goto_0
    sget-char v2, Ljava/io/File;->separatorChar:C

    .line 94
    .line 95
    const/16 v3, 0x2f

    .line 96
    .line 97
    invoke-virtual {p1, v2, v3}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    .line 98
    .line 99
    .line 100
    move-result-object p1

    .line 101
    :goto_1
    if-nez v0, :cond_4

    .line 102
    .line 103
    const-string v2, "/"

    .line 104
    .line 105
    invoke-virtual {p1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 106
    .line 107
    .line 108
    move-result v2

    .line 109
    if-eqz v2, :cond_4

    .line 110
    .line 111
    invoke-virtual {p1, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    .line 112
    .line 113
    .line 114
    move-result-object p1

    .line 115
    goto :goto_1

    .line 116
    :cond_4
    iput-object p1, p0, Lkg/c;->a:Ljava/lang/String;

    .line 117
    .line 118
    return-void
.end method

.method public final hashCode()I
    .locals 1

    .line 1
    iget-object v0, p0, Lkg/c;->a:Ljava/lang/String;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    return v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 3

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 4
    .line 5
    .line 6
    const-class v1, Lkg/c;

    .line 7
    .line 8
    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    .line 9
    .line 10
    .line 11
    move-result-object v1

    .line 12
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 13
    .line 14
    .line 15
    const-string v1, "["

    .line 16
    .line 17
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 18
    .line 19
    .line 20
    iget-object v1, p0, Lkg/c;->a:Ljava/lang/String;

    .line 21
    .line 22
    const-string v2, "]"

    .line 23
    .line 24
    invoke-static {v1, v2, v0}, Lg/b;->l(Ljava/lang/String;Ljava/lang/String;Ljava/lang/StringBuilder;)Ljava/lang/String;

    .line 25
    .line 26
    .line 27
    move-result-object v0

    .line 28
    return-object v0
.end method
