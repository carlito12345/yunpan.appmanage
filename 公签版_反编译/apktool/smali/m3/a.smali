.class public final Lm3/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Li3/j;


# static fields
.field public static final g:Ljava/util/regex/Pattern;


# instance fields
.field public final a:Z

.field public final b:Lk3/b;

.field public final c:Lu1/q;

.field public d:Ljava/util/LinkedHashMap;

.field public e:F

.field public f:F


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    const-string v0, "(?:(\\d+):)?(\\d+):(\\d+)[:.](\\d+)"

    .line 2
    .line 3
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    sput-object v0, Lm3/a;->g:Ljava/util/regex/Pattern;

    .line 8
    .line 9
    return-void
.end method

.method public constructor <init>(Ljava/util/List;)V
    .locals 4

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const v0, -0x800001

    .line 5
    .line 6
    .line 7
    iput v0, p0, Lm3/a;->e:F

    .line 8
    .line 9
    iput v0, p0, Lm3/a;->f:F

    .line 10
    .line 11
    new-instance v0, Lu1/q;

    .line 12
    .line 13
    invoke-direct {v0}, Lu1/q;-><init>()V

    .line 14
    .line 15
    .line 16
    iput-object v0, p0, Lm3/a;->c:Lu1/q;

    .line 17
    .line 18
    const/4 v0, 0x0

    .line 19
    if-eqz p1, :cond_0

    .line 20
    .line 21
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    .line 22
    .line 23
    .line 24
    move-result v1

    .line 25
    if-nez v1, :cond_0

    .line 26
    .line 27
    const/4 v1, 0x1

    .line 28
    iput-boolean v1, p0, Lm3/a;->a:Z

    .line 29
    .line 30
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 31
    .line 32
    .line 33
    move-result-object v0

    .line 34
    check-cast v0, [B

    .line 35
    .line 36
    new-instance v2, Ljava/lang/String;

    .line 37
    .line 38
    sget-object v3, Lj$/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    .line 39
    .line 40
    invoke-direct {v2, v0, v3}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    .line 41
    .line 42
    .line 43
    const-string v0, "Format:"

    .line 44
    .line 45
    invoke-virtual {v2, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 46
    .line 47
    .line 48
    move-result v0

    .line 49
    invoke-static {v0}, La9/o;->k(Z)V

    .line 50
    .line 51
    .line 52
    invoke-static {v2}, Lk3/b;->a(Ljava/lang/String;)Lk3/b;

    .line 53
    .line 54
    .line 55
    move-result-object v0

    .line 56
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 57
    .line 58
    .line 59
    iput-object v0, p0, Lm3/a;->b:Lk3/b;

    .line 60
    .line 61
    new-instance v0, Lu1/q;

    .line 62
    .line 63
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 64
    .line 65
    .line 66
    move-result-object p1

    .line 67
    check-cast p1, [B

    .line 68
    .line 69
    invoke-direct {v0, p1}, Lu1/q;-><init>([B)V

    .line 70
    .line 71
    .line 72
    invoke-virtual {p0, v0, v3}, Lm3/a;->c(Lu1/q;Ljava/nio/charset/Charset;)V

    .line 73
    .line 74
    .line 75
    goto :goto_0

    .line 76
    :cond_0
    iput-boolean v0, p0, Lm3/a;->a:Z

    .line 77
    .line 78
    const/4 p1, 0x0

    .line 79
    iput-object p1, p0, Lm3/a;->b:Lk3/b;

    .line 80
    .line 81
    :goto_0
    return-void
.end method

.method public static a(JLjava/util/ArrayList;Ljava/util/ArrayList;)I
    .locals 4

    .line 1
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    add-int/lit8 v0, v0, -0x1

    .line 6
    .line 7
    :goto_0
    if-ltz v0, :cond_2

    .line 8
    .line 9
    invoke-virtual {p2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 10
    .line 11
    .line 12
    move-result-object v1

    .line 13
    check-cast v1, Ljava/lang/Long;

    .line 14
    .line 15
    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    .line 16
    .line 17
    .line 18
    move-result-wide v1

    .line 19
    cmp-long v3, v1, p0

    .line 20
    .line 21
    if-nez v3, :cond_0

    .line 22
    .line 23
    return v0

    .line 24
    :cond_0
    invoke-virtual {p2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 25
    .line 26
    .line 27
    move-result-object v1

    .line 28
    check-cast v1, Ljava/lang/Long;

    .line 29
    .line 30
    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    .line 31
    .line 32
    .line 33
    move-result-wide v1

    .line 34
    cmp-long v3, v1, p0

    .line 35
    .line 36
    if-gez v3, :cond_1

    .line 37
    .line 38
    add-int/lit8 v0, v0, 0x1

    .line 39
    .line 40
    goto :goto_1

    .line 41
    :cond_1
    add-int/lit8 v0, v0, -0x1

    .line 42
    .line 43
    goto :goto_0

    .line 44
    :cond_2
    const/4 v0, 0x0

    .line 45
    :goto_1
    invoke-static {p0, p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 46
    .line 47
    .line 48
    move-result-object p0

    .line 49
    invoke-virtual {p2, v0, p0}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 50
    .line 51
    .line 52
    new-instance p0, Ljava/util/ArrayList;

    .line 53
    .line 54
    if-nez v0, :cond_3

    .line 55
    .line 56
    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    .line 57
    .line 58
    .line 59
    goto :goto_2

    .line 60
    :cond_3
    add-int/lit8 p1, v0, -0x1

    .line 61
    .line 62
    invoke-virtual {p3, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 63
    .line 64
    .line 65
    move-result-object p1

    .line 66
    check-cast p1, Ljava/util/Collection;

    .line 67
    .line 68
    invoke-direct {p0, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 69
    .line 70
    .line 71
    :goto_2
    invoke-virtual {p3, v0, p0}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 72
    .line 73
    .line 74
    return v0
.end method

.method public static d(Ljava/lang/String;)J
    .locals 6

    .line 1
    sget-object v0, Lm3/a;->g:Ljava/util/regex/Pattern;

    .line 2
    .line 3
    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    invoke-virtual {v0, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    .line 8
    .line 9
    .line 10
    move-result-object p0

    .line 11
    invoke-virtual {p0}, Ljava/util/regex/Matcher;->matches()Z

    .line 12
    .line 13
    .line 14
    move-result v0

    .line 15
    if-nez v0, :cond_0

    .line 16
    .line 17
    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    .line 18
    .line 19
    .line 20
    .line 21
    .line 22
    return-wide v0

    .line 23
    :cond_0
    const/4 v0, 0x1

    .line 24
    invoke-virtual {p0, v0}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    .line 25
    .line 26
    .line 27
    move-result-object v0

    .line 28
    sget-object v1, Lu1/f0;->a:Ljava/lang/String;

    .line 29
    .line 30
    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    .line 31
    .line 32
    .line 33
    move-result-wide v0

    .line 34
    const-wide v2, 0xd693a400L

    .line 35
    .line 36
    .line 37
    .line 38
    .line 39
    mul-long v0, v0, v2

    .line 40
    .line 41
    const/4 v2, 0x2

    .line 42
    invoke-virtual {p0, v2}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    .line 43
    .line 44
    .line 45
    move-result-object v2

    .line 46
    invoke-static {v2}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    .line 47
    .line 48
    .line 49
    move-result-wide v2

    .line 50
    const-wide/32 v4, 0x3938700

    .line 51
    .line 52
    .line 53
    mul-long v2, v2, v4

    .line 54
    .line 55
    add-long/2addr v2, v0

    .line 56
    const/4 v0, 0x3

    .line 57
    invoke-virtual {p0, v0}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    .line 58
    .line 59
    .line 60
    move-result-object v0

    .line 61
    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    .line 62
    .line 63
    .line 64
    move-result-wide v0

    .line 65
    const-wide/32 v4, 0xf4240

    .line 66
    .line 67
    .line 68
    mul-long v0, v0, v4

    .line 69
    .line 70
    add-long/2addr v0, v2

    .line 71
    const/4 v2, 0x4

    .line 72
    invoke-virtual {p0, v2}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    .line 73
    .line 74
    .line 75
    move-result-object p0

    .line 76
    invoke-static {p0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    .line 77
    .line 78
    .line 79
    move-result-wide v2

    .line 80
    const-wide/16 v4, 0x2710

    .line 81
    .line 82
    mul-long v2, v2, v4

    .line 83
    .line 84
    add-long/2addr v2, v0

    .line 85
    return-wide v2
.end method


# virtual methods
.method public final b([BIILi3/i;Lu1/f;)V
    .locals 37

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move/from16 v1, p2

    .line 4
    .line 5
    move-object/from16 v2, p4

    .line 6
    .line 7
    move-object/from16 v3, p5

    .line 8
    .line 9
    new-instance v4, Ljava/util/ArrayList;

    .line 10
    .line 11
    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 12
    .line 13
    .line 14
    new-instance v5, Ljava/util/ArrayList;

    .line 15
    .line 16
    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 17
    .line 18
    .line 19
    add-int v6, v1, p3

    .line 20
    .line 21
    iget-object v7, v0, Lm3/a;->c:Lu1/q;

    .line 22
    .line 23
    move-object/from16 v8, p1

    .line 24
    .line 25
    invoke-virtual {v7, v6, v8}, Lu1/q;->M(I[B)V

    .line 26
    .line 27
    .line 28
    invoke-virtual {v7, v1}, Lu1/q;->O(I)V

    .line 29
    .line 30
    .line 31
    invoke-virtual {v7}, Lu1/q;->K()Ljava/nio/charset/Charset;

    .line 32
    .line 33
    .line 34
    move-result-object v1

    .line 35
    if-eqz v1, :cond_0

    .line 36
    .line 37
    goto :goto_0

    .line 38
    :cond_0
    sget-object v1, Lj$/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    .line 39
    .line 40
    :goto_0
    iget-boolean v6, v0, Lm3/a;->a:Z

    .line 41
    .line 42
    if-nez v6, :cond_1

    .line 43
    .line 44
    invoke-virtual {v0, v7, v1}, Lm3/a;->c(Lu1/q;Ljava/nio/charset/Charset;)V

    .line 45
    .line 46
    .line 47
    :cond_1
    if-eqz v6, :cond_2

    .line 48
    .line 49
    iget-object v6, v0, Lm3/a;->b:Lk3/b;

    .line 50
    .line 51
    goto :goto_1

    .line 52
    :cond_2
    const/4 v6, 0x0

    .line 53
    :goto_1
    invoke-virtual {v7, v1}, Lu1/q;->p(Ljava/nio/charset/Charset;)Ljava/lang/String;

    .line 54
    .line 55
    .line 56
    move-result-object v9

    .line 57
    const-wide v12, -0x7fffffffffffffffL    # -4.9E-324

    .line 58
    .line 59
    .line 60
    .line 61
    .line 62
    if-eqz v9, :cond_23

    .line 63
    .line 64
    const-string v14, "Format:"

    .line 65
    .line 66
    invoke-virtual {v9, v14}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 67
    .line 68
    .line 69
    move-result v14

    .line 70
    if-eqz v14, :cond_3

    .line 71
    .line 72
    invoke-static {v9}, Lk3/b;->a(Ljava/lang/String;)Lk3/b;

    .line 73
    .line 74
    .line 75
    move-result-object v6

    .line 76
    goto :goto_1

    .line 77
    :cond_3
    const-string v14, "Dialogue:"

    .line 78
    .line 79
    invoke-virtual {v9, v14}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 80
    .line 81
    .line 82
    move-result v15

    .line 83
    if-eqz v15, :cond_4

    .line 84
    .line 85
    if-nez v6, :cond_5

    .line 86
    .line 87
    const-string v10, "Skipping dialogue line before complete format: "

    .line 88
    .line 89
    invoke-virtual {v10, v9}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 90
    .line 91
    .line 92
    move-result-object v9

    .line 93
    invoke-static {v9}, Lu1/a;->p(Ljava/lang/String;)V

    .line 94
    .line 95
    .line 96
    :cond_4
    :goto_2
    move-object/from16 v35, v1

    .line 97
    .line 98
    move-object/from16 v36, v6

    .line 99
    .line 100
    move-object/from16 v34, v7

    .line 101
    .line 102
    goto/16 :goto_15

    .line 103
    .line 104
    :cond_5
    invoke-virtual {v9, v14}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 105
    .line 106
    .line 107
    move-result v14

    .line 108
    invoke-static {v14}, La9/o;->k(Z)V

    .line 109
    .line 110
    .line 111
    const/16 v14, 0x9

    .line 112
    .line 113
    invoke-virtual {v9, v14}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    .line 114
    .line 115
    .line 116
    move-result-object v14

    .line 117
    const-string v15, ","

    .line 118
    .line 119
    iget v8, v6, Lk3/b;->f:I

    .line 120
    .line 121
    invoke-virtual {v14, v15, v8}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    .line 122
    .line 123
    .line 124
    move-result-object v14

    .line 125
    array-length v15, v14

    .line 126
    if-eq v15, v8, :cond_6

    .line 127
    .line 128
    const-string v8, "Skipping dialogue line with fewer columns than format: "

    .line 129
    .line 130
    invoke-virtual {v8, v9}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 131
    .line 132
    .line 133
    move-result-object v8

    .line 134
    invoke-static {v8}, Lu1/a;->p(Ljava/lang/String;)V

    .line 135
    .line 136
    .line 137
    goto :goto_2

    .line 138
    :cond_6
    const/4 v8, -0x1

    .line 139
    iget v15, v6, Lk3/b;->a:I

    .line 140
    .line 141
    if-eq v15, v8, :cond_7

    .line 142
    .line 143
    :try_start_0
    aget-object v16, v14, v15

    .line 144
    .line 145
    invoke-virtual/range {v16 .. v16}, Ljava/lang/String;->trim()Ljava/lang/String;

    .line 146
    .line 147
    .line 148
    move-result-object v16

    .line 149
    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 150
    .line 151
    .line 152
    move-result v11
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 153
    move/from16 v33, v11

    .line 154
    .line 155
    goto :goto_3

    .line 156
    :catch_0
    new-instance v11, Ljava/lang/StringBuilder;

    .line 157
    .line 158
    const-string v10, "Fail to parse layer: "

    .line 159
    .line 160
    invoke-direct {v11, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 161
    .line 162
    .line 163
    aget-object v10, v14, v15

    .line 164
    .line 165
    invoke-virtual {v11, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 166
    .line 167
    .line 168
    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 169
    .line 170
    .line 171
    move-result-object v10

    .line 172
    invoke-static {v10}, Lu1/a;->p(Ljava/lang/String;)V

    .line 173
    .line 174
    .line 175
    :cond_7
    const/16 v33, 0x0

    .line 176
    .line 177
    :goto_3
    iget v10, v6, Lk3/b;->b:I

    .line 178
    .line 179
    aget-object v10, v14, v10

    .line 180
    .line 181
    invoke-static {v10}, Lm3/a;->d(Ljava/lang/String;)J

    .line 182
    .line 183
    .line 184
    move-result-wide v10

    .line 185
    const-string v15, "Skipping invalid timing: "

    .line 186
    .line 187
    cmp-long v16, v10, v12

    .line 188
    .line 189
    if-nez v16, :cond_8

    .line 190
    .line 191
    invoke-virtual {v15, v9}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 192
    .line 193
    .line 194
    move-result-object v8

    .line 195
    invoke-static {v8}, Lu1/a;->p(Ljava/lang/String;)V

    .line 196
    .line 197
    .line 198
    goto :goto_2

    .line 199
    :cond_8
    iget v8, v6, Lk3/b;->c:I

    .line 200
    .line 201
    aget-object v8, v14, v8

    .line 202
    .line 203
    move-object/from16 v34, v7

    .line 204
    .line 205
    invoke-static {v8}, Lm3/a;->d(Ljava/lang/String;)J

    .line 206
    .line 207
    .line 208
    move-result-wide v7

    .line 209
    cmp-long v17, v7, v12

    .line 210
    .line 211
    if-eqz v17, :cond_9

    .line 212
    .line 213
    cmp-long v12, v7, v10

    .line 214
    .line 215
    if-gtz v12, :cond_a

    .line 216
    .line 217
    :cond_9
    move-object/from16 v35, v1

    .line 218
    .line 219
    move-object/from16 v36, v6

    .line 220
    .line 221
    goto/16 :goto_14

    .line 222
    .line 223
    :cond_a
    iget-object v9, v0, Lm3/a;->d:Ljava/util/LinkedHashMap;

    .line 224
    .line 225
    if-eqz v9, :cond_b

    .line 226
    .line 227
    iget v12, v6, Lk3/b;->d:I

    .line 228
    .line 229
    const/4 v13, -0x1

    .line 230
    if-eq v12, v13, :cond_b

    .line 231
    .line 232
    aget-object v12, v14, v12

    .line 233
    .line 234
    invoke-virtual {v12}, Ljava/lang/String;->trim()Ljava/lang/String;

    .line 235
    .line 236
    .line 237
    move-result-object v12

    .line 238
    invoke-virtual {v9, v12}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 239
    .line 240
    .line 241
    move-result-object v9

    .line 242
    check-cast v9, Lm3/d;

    .line 243
    .line 244
    goto :goto_4

    .line 245
    :cond_b
    const/4 v9, 0x0

    .line 246
    :goto_4
    iget v12, v6, Lk3/b;->e:I

    .line 247
    .line 248
    aget-object v12, v14, v12

    .line 249
    .line 250
    sget-object v13, Lm3/c;->a:Ljava/util/regex/Pattern;

    .line 251
    .line 252
    invoke-virtual {v13, v12}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    .line 253
    .line 254
    .line 255
    move-result-object v13

    .line 256
    const/4 v14, -0x1

    .line 257
    const/4 v15, 0x0

    .line 258
    :goto_5
    invoke-virtual {v13}, Ljava/util/regex/Matcher;->find()Z

    .line 259
    .line 260
    .line 261
    move-result v17

    .line 262
    if-eqz v17, :cond_f

    .line 263
    .line 264
    move-object/from16 v35, v1

    .line 265
    .line 266
    move-object/from16 v36, v6

    .line 267
    .line 268
    const/4 v1, 0x1

    .line 269
    invoke-virtual {v13, v1}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    .line 270
    .line 271
    .line 272
    move-result-object v6

    .line 273
    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 274
    .line 275
    .line 276
    :try_start_1
    invoke-static {v6}, Lm3/c;->a(Ljava/lang/String;)Landroid/graphics/PointF;

    .line 277
    .line 278
    .line 279
    move-result-object v1
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_1

    .line 280
    if-eqz v1, :cond_c

    .line 281
    .line 282
    move-object v15, v1

    .line 283
    :catch_1
    :cond_c
    :try_start_2
    sget-object v1, Lm3/c;->d:Ljava/util/regex/Pattern;

    .line 284
    .line 285
    invoke-virtual {v1, v6}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    .line 286
    .line 287
    .line 288
    move-result-object v1

    .line 289
    invoke-virtual {v1}, Ljava/util/regex/Matcher;->find()Z

    .line 290
    .line 291
    .line 292
    move-result v6

    .line 293
    if-eqz v6, :cond_d

    .line 294
    .line 295
    const/4 v6, 0x1

    .line 296
    invoke-virtual {v1, v6}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    .line 297
    .line 298
    .line 299
    move-result-object v1

    .line 300
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 301
    .line 302
    .line 303
    invoke-static {v1}, Lm3/d;->a(Ljava/lang/String;)I

    .line 304
    .line 305
    .line 306
    move-result v1
    :try_end_2
    .catch Ljava/lang/RuntimeException; {:try_start_2 .. :try_end_2} :catch_2

    .line 307
    :goto_6
    const/4 v6, -0x1

    .line 308
    goto :goto_7

    .line 309
    :catch_2
    nop

    .line 310
    goto :goto_8

    .line 311
    :cond_d
    const/4 v1, -0x1

    .line 312
    goto :goto_6

    .line 313
    :goto_7
    if-eq v1, v6, :cond_e

    .line 314
    .line 315
    move v14, v1

    .line 316
    :cond_e
    :goto_8
    move-object/from16 v1, v35

    .line 317
    .line 318
    move-object/from16 v6, v36

    .line 319
    .line 320
    goto :goto_5

    .line 321
    :cond_f
    move-object/from16 v35, v1

    .line 322
    .line 323
    move-object/from16 v36, v6

    .line 324
    .line 325
    new-instance v1, Lm3/c;

    .line 326
    .line 327
    sget-object v1, Lm3/c;->a:Ljava/util/regex/Pattern;

    .line 328
    .line 329
    invoke-virtual {v1, v12}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    .line 330
    .line 331
    .line 332
    move-result-object v1

    .line 333
    const-string v6, ""

    .line 334
    .line 335
    invoke-virtual {v1, v6}, Ljava/util/regex/Matcher;->replaceAll(Ljava/lang/String;)Ljava/lang/String;

    .line 336
    .line 337
    .line 338
    move-result-object v1

    .line 339
    const-string v6, "\\N"

    .line 340
    .line 341
    const-string v12, "\n"

    .line 342
    .line 343
    invoke-virtual {v1, v6, v12}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    .line 344
    .line 345
    .line 346
    move-result-object v1

    .line 347
    const-string v6, "\\n"

    .line 348
    .line 349
    invoke-virtual {v1, v6, v12}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    .line 350
    .line 351
    .line 352
    move-result-object v1

    .line 353
    const-string v6, "\\h"

    .line 354
    .line 355
    const-string v12, "\u00a0"

    .line 356
    .line 357
    invoke-virtual {v1, v6, v12}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    .line 358
    .line 359
    .line 360
    move-result-object v1

    .line 361
    iget v6, v0, Lm3/a;->e:F

    .line 362
    .line 363
    iget v12, v0, Lm3/a;->f:F

    .line 364
    .line 365
    new-instance v13, Landroid/text/SpannableString;

    .line 366
    .line 367
    invoke-direct {v13, v1}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    .line 368
    .line 369
    .line 370
    const v28, -0x800001

    .line 371
    .line 372
    .line 373
    const/high16 v31, -0x80000000

    .line 374
    .line 375
    if-eqz v9, :cond_18

    .line 376
    .line 377
    iget-object v1, v9, Lm3/d;->c:Ljava/lang/Integer;

    .line 378
    .line 379
    if-eqz v1, :cond_10

    .line 380
    .line 381
    new-instance v0, Landroid/text/style/ForegroundColorSpan;

    .line 382
    .line 383
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    .line 384
    .line 385
    .line 386
    move-result v1

    .line 387
    invoke-direct {v0, v1}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    .line 388
    .line 389
    .line 390
    invoke-virtual {v13}, Landroid/text/SpannableString;->length()I

    .line 391
    .line 392
    .line 393
    move-result v1

    .line 394
    const/16 v2, 0x21

    .line 395
    .line 396
    const/4 v3, 0x0

    .line 397
    invoke-virtual {v13, v0, v3, v1, v2}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    .line 398
    .line 399
    .line 400
    :cond_10
    iget v0, v9, Lm3/d;->j:I

    .line 401
    .line 402
    const/4 v1, 0x3

    .line 403
    if-ne v0, v1, :cond_11

    .line 404
    .line 405
    iget-object v0, v9, Lm3/d;->d:Ljava/lang/Integer;

    .line 406
    .line 407
    if-eqz v0, :cond_11

    .line 408
    .line 409
    new-instance v2, Landroid/text/style/BackgroundColorSpan;

    .line 410
    .line 411
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    .line 412
    .line 413
    .line 414
    move-result v0

    .line 415
    invoke-direct {v2, v0}, Landroid/text/style/BackgroundColorSpan;-><init>(I)V

    .line 416
    .line 417
    .line 418
    invoke-virtual {v13}, Landroid/text/SpannableString;->length()I

    .line 419
    .line 420
    .line 421
    move-result v0

    .line 422
    const/16 v1, 0x21

    .line 423
    .line 424
    const/4 v3, 0x0

    .line 425
    invoke-virtual {v13, v2, v3, v0, v1}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    .line 426
    .line 427
    .line 428
    :cond_11
    iget v0, v9, Lm3/d;->e:F

    .line 429
    .line 430
    const v1, -0x800001

    .line 431
    .line 432
    .line 433
    cmpl-float v2, v0, v1

    .line 434
    .line 435
    if-eqz v2, :cond_12

    .line 436
    .line 437
    cmpl-float v2, v12, v1

    .line 438
    .line 439
    if-eqz v2, :cond_12

    .line 440
    .line 441
    div-float/2addr v0, v12

    .line 442
    move v1, v0

    .line 443
    const/4 v0, 0x1

    .line 444
    goto :goto_9

    .line 445
    :cond_12
    const/high16 v0, -0x80000000

    .line 446
    .line 447
    const v1, -0x800001

    .line 448
    .line 449
    .line 450
    :goto_9
    iget-boolean v2, v9, Lm3/d;->g:Z

    .line 451
    .line 452
    iget-boolean v3, v9, Lm3/d;->f:Z

    .line 453
    .line 454
    if-eqz v3, :cond_13

    .line 455
    .line 456
    if-eqz v2, :cond_13

    .line 457
    .line 458
    new-instance v2, Landroid/text/style/StyleSpan;

    .line 459
    .line 460
    const/4 v3, 0x3

    .line 461
    invoke-direct {v2, v3}, Landroid/text/style/StyleSpan;-><init>(I)V

    .line 462
    .line 463
    .line 464
    invoke-virtual {v13}, Landroid/text/SpannableString;->length()I

    .line 465
    .line 466
    .line 467
    move-result v3

    .line 468
    move/from16 v19, v0

    .line 469
    .line 470
    move/from16 v18, v1

    .line 471
    .line 472
    const/4 v0, 0x0

    .line 473
    const/16 v1, 0x21

    .line 474
    .line 475
    invoke-virtual {v13, v2, v0, v3, v1}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    .line 476
    .line 477
    .line 478
    goto :goto_a

    .line 479
    :cond_13
    move/from16 v19, v0

    .line 480
    .line 481
    move/from16 v18, v1

    .line 482
    .line 483
    const/4 v0, 0x0

    .line 484
    const/16 v1, 0x21

    .line 485
    .line 486
    if-eqz v3, :cond_14

    .line 487
    .line 488
    new-instance v2, Landroid/text/style/StyleSpan;

    .line 489
    .line 490
    const/4 v3, 0x1

    .line 491
    invoke-direct {v2, v3}, Landroid/text/style/StyleSpan;-><init>(I)V

    .line 492
    .line 493
    .line 494
    invoke-virtual {v13}, Landroid/text/SpannableString;->length()I

    .line 495
    .line 496
    .line 497
    move-result v3

    .line 498
    invoke-virtual {v13, v2, v0, v3, v1}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    .line 499
    .line 500
    .line 501
    goto :goto_a

    .line 502
    :cond_14
    if-eqz v2, :cond_15

    .line 503
    .line 504
    new-instance v2, Landroid/text/style/StyleSpan;

    .line 505
    .line 506
    const/4 v3, 0x2

    .line 507
    invoke-direct {v2, v3}, Landroid/text/style/StyleSpan;-><init>(I)V

    .line 508
    .line 509
    .line 510
    invoke-virtual {v13}, Landroid/text/SpannableString;->length()I

    .line 511
    .line 512
    .line 513
    move-result v3

    .line 514
    invoke-virtual {v13, v2, v0, v3, v1}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    .line 515
    .line 516
    .line 517
    :cond_15
    :goto_a
    iget-boolean v2, v9, Lm3/d;->h:Z

    .line 518
    .line 519
    if-eqz v2, :cond_16

    .line 520
    .line 521
    new-instance v2, Landroid/text/style/UnderlineSpan;

    .line 522
    .line 523
    invoke-direct {v2}, Landroid/text/style/UnderlineSpan;-><init>()V

    .line 524
    .line 525
    .line 526
    invoke-virtual {v13}, Landroid/text/SpannableString;->length()I

    .line 527
    .line 528
    .line 529
    move-result v3

    .line 530
    invoke-virtual {v13, v2, v0, v3, v1}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    .line 531
    .line 532
    .line 533
    :cond_16
    iget-boolean v2, v9, Lm3/d;->i:Z

    .line 534
    .line 535
    if-eqz v2, :cond_17

    .line 536
    .line 537
    new-instance v2, Landroid/text/style/StrikethroughSpan;

    .line 538
    .line 539
    invoke-direct {v2}, Landroid/text/style/StrikethroughSpan;-><init>()V

    .line 540
    .line 541
    .line 542
    invoke-virtual {v13}, Landroid/text/SpannableString;->length()I

    .line 543
    .line 544
    .line 545
    move-result v3

    .line 546
    invoke-virtual {v13, v2, v0, v3, v1}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    .line 547
    .line 548
    .line 549
    :cond_17
    move/from16 v26, v18

    .line 550
    .line 551
    move/from16 v25, v19

    .line 552
    .line 553
    const/4 v0, -0x1

    .line 554
    goto :goto_b

    .line 555
    :cond_18
    const/4 v0, -0x1

    .line 556
    const/high16 v25, -0x80000000

    .line 557
    .line 558
    const v26, -0x800001

    .line 559
    .line 560
    .line 561
    :goto_b
    if-eq v14, v0, :cond_19

    .line 562
    .line 563
    move v0, v14

    .line 564
    goto :goto_c

    .line 565
    :cond_19
    if-eqz v9, :cond_1a

    .line 566
    .line 567
    iget v0, v9, Lm3/d;->b:I

    .line 568
    .line 569
    :cond_1a
    :goto_c
    const-string v1, "Unknown alignment: "

    .line 570
    .line 571
    packed-switch v0, :pswitch_data_0

    .line 572
    .line 573
    .line 574
    :pswitch_0
    invoke-static {v0, v1}, Lorg/bouncycastle/jcajce/provider/digest/a;->o(ILjava/lang/String;)V

    .line 575
    .line 576
    .line 577
    :pswitch_1
    const/4 v2, 0x0

    .line 578
    goto :goto_d

    .line 579
    :pswitch_2
    sget-object v2, Landroid/text/Layout$Alignment;->ALIGN_OPPOSITE:Landroid/text/Layout$Alignment;

    .line 580
    .line 581
    goto :goto_d

    .line 582
    :pswitch_3
    sget-object v2, Landroid/text/Layout$Alignment;->ALIGN_CENTER:Landroid/text/Layout$Alignment;

    .line 583
    .line 584
    goto :goto_d

    .line 585
    :pswitch_4
    sget-object v2, Landroid/text/Layout$Alignment;->ALIGN_NORMAL:Landroid/text/Layout$Alignment;

    .line 586
    .line 587
    :goto_d
    const/high16 v3, -0x80000000

    .line 588
    .line 589
    packed-switch v0, :pswitch_data_1

    .line 590
    .line 591
    .line 592
    :pswitch_5
    invoke-static {v0, v1}, Lorg/bouncycastle/jcajce/provider/digest/a;->o(ILjava/lang/String;)V

    .line 593
    .line 594
    .line 595
    :pswitch_6
    const/high16 v9, -0x80000000

    .line 596
    .line 597
    goto :goto_e

    .line 598
    :pswitch_7
    const/4 v9, 0x2

    .line 599
    goto :goto_e

    .line 600
    :pswitch_8
    const/4 v9, 0x1

    .line 601
    goto :goto_e

    .line 602
    :pswitch_9
    const/4 v9, 0x0

    .line 603
    :goto_e
    packed-switch v0, :pswitch_data_2

    .line 604
    .line 605
    .line 606
    :pswitch_a
    invoke-static {v0, v1}, Lorg/bouncycastle/jcajce/provider/digest/a;->o(ILjava/lang/String;)V

    .line 607
    .line 608
    .line 609
    goto :goto_f

    .line 610
    :pswitch_b
    const/4 v3, 0x0

    .line 611
    goto :goto_f

    .line 612
    :pswitch_c
    const/4 v3, 0x1

    .line 613
    goto :goto_f

    .line 614
    :pswitch_d
    const/4 v3, 0x2

    .line 615
    :goto_f
    :pswitch_e
    const v1, -0x800001

    .line 616
    .line 617
    .line 618
    if-eqz v15, :cond_1b

    .line 619
    .line 620
    cmpl-float v0, v12, v1

    .line 621
    .line 622
    if-eqz v0, :cond_1b

    .line 623
    .line 624
    cmpl-float v0, v6, v1

    .line 625
    .line 626
    if-eqz v0, :cond_1b

    .line 627
    .line 628
    iget v0, v15, Landroid/graphics/PointF;->x:F

    .line 629
    .line 630
    div-float/2addr v0, v6

    .line 631
    iget v1, v15, Landroid/graphics/PointF;->y:F

    .line 632
    .line 633
    div-float/2addr v1, v12

    .line 634
    move/from16 v23, v0

    .line 635
    .line 636
    move/from16 v20, v1

    .line 637
    .line 638
    goto :goto_12

    .line 639
    :cond_1b
    const v0, 0x3d4ccccd    # 0.05f

    .line 640
    .line 641
    .line 642
    const/high16 v6, 0x3f000000    # 0.5f

    .line 643
    .line 644
    const v12, 0x3f733333    # 0.95f

    .line 645
    .line 646
    .line 647
    if-eqz v9, :cond_1e

    .line 648
    .line 649
    const/4 v14, 0x1

    .line 650
    if-eq v9, v14, :cond_1d

    .line 651
    .line 652
    const/4 v15, 0x2

    .line 653
    if-eq v9, v15, :cond_1c

    .line 654
    .line 655
    const v16, -0x800001

    .line 656
    .line 657
    .line 658
    goto :goto_10

    .line 659
    :cond_1c
    const v16, 0x3f733333    # 0.95f

    .line 660
    .line 661
    .line 662
    goto :goto_10

    .line 663
    :cond_1d
    const/4 v15, 0x2

    .line 664
    const/high16 v16, 0x3f000000    # 0.5f

    .line 665
    .line 666
    goto :goto_10

    .line 667
    :cond_1e
    const/4 v14, 0x1

    .line 668
    const/4 v15, 0x2

    .line 669
    const v16, 0x3d4ccccd    # 0.05f

    .line 670
    .line 671
    .line 672
    :goto_10
    if-eqz v3, :cond_21

    .line 673
    .line 674
    if-eq v3, v14, :cond_20

    .line 675
    .line 676
    if-eq v3, v15, :cond_1f

    .line 677
    .line 678
    goto :goto_11

    .line 679
    :cond_1f
    const v1, 0x3f733333    # 0.95f

    .line 680
    .line 681
    .line 682
    goto :goto_11

    .line 683
    :cond_20
    const/high16 v1, 0x3f000000    # 0.5f

    .line 684
    .line 685
    goto :goto_11

    .line 686
    :cond_21
    const v1, 0x3d4ccccd    # 0.05f

    .line 687
    .line 688
    .line 689
    :goto_11
    move/from16 v20, v1

    .line 690
    .line 691
    move/from16 v23, v16

    .line 692
    .line 693
    :goto_12
    new-instance v0, Lt1/b;

    .line 694
    .line 695
    move-object v15, v0

    .line 696
    const/16 v19, 0x0

    .line 697
    .line 698
    const/16 v29, 0x0

    .line 699
    .line 700
    const/16 v18, 0x0

    .line 701
    .line 702
    const/high16 v30, -0x1000000

    .line 703
    .line 704
    const/16 v32, 0x0

    .line 705
    .line 706
    move-object/from16 v16, v13

    .line 707
    .line 708
    move-object/from16 v17, v2

    .line 709
    .line 710
    const/4 v1, 0x0

    .line 711
    move/from16 v21, v1

    .line 712
    .line 713
    move/from16 v22, v3

    .line 714
    .line 715
    move/from16 v24, v9

    .line 716
    .line 717
    move/from16 v27, v28

    .line 718
    .line 719
    invoke-direct/range {v15 .. v33}, Lt1/b;-><init>(Ljava/lang/CharSequence;Landroid/text/Layout$Alignment;Landroid/text/Layout$Alignment;Landroid/graphics/Bitmap;FIIFIIFFFZIIFI)V

    .line 720
    .line 721
    .line 722
    invoke-static {v10, v11, v5, v4}, Lm3/a;->a(JLjava/util/ArrayList;Ljava/util/ArrayList;)I

    .line 723
    .line 724
    .line 725
    move-result v1

    .line 726
    invoke-static {v7, v8, v5, v4}, Lm3/a;->a(JLjava/util/ArrayList;Ljava/util/ArrayList;)I

    .line 727
    .line 728
    .line 729
    move-result v2

    .line 730
    :goto_13
    if-ge v1, v2, :cond_22

    .line 731
    .line 732
    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 733
    .line 734
    .line 735
    move-result-object v3

    .line 736
    check-cast v3, Ljava/util/List;

    .line 737
    .line 738
    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 739
    .line 740
    .line 741
    add-int/lit8 v1, v1, 0x1

    .line 742
    .line 743
    goto :goto_13

    .line 744
    :goto_14
    invoke-virtual {v15, v9}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 745
    .line 746
    .line 747
    move-result-object v0

    .line 748
    invoke-static {v0}, Lu1/a;->p(Ljava/lang/String;)V

    .line 749
    .line 750
    .line 751
    :cond_22
    :goto_15
    move-object/from16 v0, p0

    .line 752
    .line 753
    move-object/from16 v2, p4

    .line 754
    .line 755
    move-object/from16 v3, p5

    .line 756
    .line 757
    move-object/from16 v7, v34

    .line 758
    .line 759
    move-object/from16 v1, v35

    .line 760
    .line 761
    move-object/from16 v6, v36

    .line 762
    .line 763
    goto/16 :goto_1

    .line 764
    .line 765
    :cond_23
    move-object v0, v2

    .line 766
    iget-wide v1, v0, Li3/i;->a:J

    .line 767
    .line 768
    cmp-long v3, v1, v12

    .line 769
    .line 770
    if-eqz v3, :cond_24

    .line 771
    .line 772
    iget-boolean v0, v0, Li3/i;->b:Z

    .line 773
    .line 774
    if-eqz v0, :cond_24

    .line 775
    .line 776
    new-instance v8, Ljava/util/ArrayList;

    .line 777
    .line 778
    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 779
    .line 780
    .line 781
    goto :goto_16

    .line 782
    :cond_24
    const/4 v8, 0x0

    .line 783
    :goto_16
    const/4 v11, 0x0

    .line 784
    :goto_17
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    .line 785
    .line 786
    .line 787
    move-result v0

    .line 788
    if-ge v11, v0, :cond_2a

    .line 789
    .line 790
    invoke-virtual {v4, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 791
    .line 792
    .line 793
    move-result-object v0

    .line 794
    move-object/from16 v19, v0

    .line 795
    .line 796
    check-cast v19, Ljava/util/List;

    .line 797
    .line 798
    invoke-interface/range {v19 .. v19}, Ljava/util/List;->isEmpty()Z

    .line 799
    .line 800
    .line 801
    move-result v0

    .line 802
    if-eqz v0, :cond_25

    .line 803
    .line 804
    if-eqz v11, :cond_25

    .line 805
    .line 806
    move-object/from16 v6, p5

    .line 807
    .line 808
    const/4 v3, 0x1

    .line 809
    goto :goto_19

    .line 810
    :cond_25
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    .line 811
    .line 812
    .line 813
    move-result v0

    .line 814
    const/4 v3, 0x1

    .line 815
    sub-int/2addr v0, v3

    .line 816
    if-eq v11, v0, :cond_29

    .line 817
    .line 818
    invoke-virtual {v5, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 819
    .line 820
    .line 821
    move-result-object v0

    .line 822
    check-cast v0, Ljava/lang/Long;

    .line 823
    .line 824
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    .line 825
    .line 826
    .line 827
    move-result-wide v15

    .line 828
    add-int/lit8 v0, v11, 0x1

    .line 829
    .line 830
    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 831
    .line 832
    .line 833
    move-result-object v0

    .line 834
    check-cast v0, Ljava/lang/Long;

    .line 835
    .line 836
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    .line 837
    .line 838
    .line 839
    move-result-wide v6

    .line 840
    new-instance v0, Li3/a;

    .line 841
    .line 842
    sub-long v17, v6, v15

    .line 843
    .line 844
    move-object v14, v0

    .line 845
    invoke-direct/range {v14 .. v19}, Li3/a;-><init>(JJLjava/util/List;)V

    .line 846
    .line 847
    .line 848
    cmp-long v9, v1, v12

    .line 849
    .line 850
    if-eqz v9, :cond_26

    .line 851
    .line 852
    cmp-long v9, v6, v1

    .line 853
    .line 854
    if-ltz v9, :cond_27

    .line 855
    .line 856
    :cond_26
    move-object/from16 v6, p5

    .line 857
    .line 858
    goto :goto_18

    .line 859
    :cond_27
    if-eqz v8, :cond_28

    .line 860
    .line 861
    invoke-interface {v8, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 862
    .line 863
    .line 864
    :cond_28
    move-object/from16 v6, p5

    .line 865
    .line 866
    goto :goto_19

    .line 867
    :goto_18
    invoke-interface {v6, v0}, Lu1/f;->accept(Ljava/lang/Object;)V

    .line 868
    .line 869
    .line 870
    :goto_19
    add-int/lit8 v11, v11, 0x1

    .line 871
    .line 872
    goto :goto_17

    .line 873
    :cond_29
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 874
    .line 875
    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    .line 876
    .line 877
    .line 878
    throw v0

    .line 879
    :cond_2a
    move-object/from16 v6, p5

    .line 880
    .line 881
    if-eqz v8, :cond_2b

    .line 882
    .line 883
    invoke-interface {v8}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 884
    .line 885
    .line 886
    move-result-object v0

    .line 887
    :goto_1a
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 888
    .line 889
    .line 890
    move-result v1

    .line 891
    if-eqz v1, :cond_2b

    .line 892
    .line 893
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 894
    .line 895
    .line 896
    move-result-object v1

    .line 897
    check-cast v1, Li3/a;

    .line 898
    .line 899
    invoke-interface {v6, v1}, Lu1/f;->accept(Ljava/lang/Object;)V

    .line 900
    .line 901
    .line 902
    goto :goto_1a

    .line 903
    :cond_2b
    return-void

    .line 904
    nop

    .line 905
    :pswitch_data_0
    .packed-switch -0x1
        :pswitch_1
        :pswitch_0
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_4
        :pswitch_3
        :pswitch_2
    .end packed-switch

    .line 906
    .line 907
    .line 908
    .line 909
    .line 910
    .line 911
    .line 912
    .line 913
    .line 914
    .line 915
    .line 916
    .line 917
    .line 918
    .line 919
    .line 920
    .line 921
    .line 922
    .line 923
    .line 924
    .line 925
    .line 926
    .line 927
    .line 928
    .line 929
    .line 930
    .line 931
    :pswitch_data_1
    .packed-switch -0x1
        :pswitch_6
        :pswitch_5
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_9
        :pswitch_8
        :pswitch_7
    .end packed-switch

    .line 932
    .line 933
    .line 934
    .line 935
    .line 936
    .line 937
    .line 938
    .line 939
    .line 940
    .line 941
    .line 942
    .line 943
    .line 944
    .line 945
    .line 946
    .line 947
    .line 948
    .line 949
    .line 950
    .line 951
    .line 952
    .line 953
    .line 954
    .line 955
    .line 956
    .line 957
    :pswitch_data_2
    .packed-switch -0x1
        :pswitch_e
        :pswitch_a
        :pswitch_d
        :pswitch_d
        :pswitch_d
        :pswitch_c
        :pswitch_c
        :pswitch_c
        :pswitch_b
        :pswitch_b
        :pswitch_b
    .end packed-switch
.end method

.method public final c(Lu1/q;Ljava/nio/charset/Charset;)V
    .locals 30

    .line 1
    move-object/from16 v1, p0

    .line 2
    .line 3
    const/4 v2, 0x6

    .line 4
    const/4 v3, 0x3

    .line 5
    const/4 v4, 0x7

    .line 6
    const/4 v5, -0x1

    .line 7
    const/4 v6, 0x2

    .line 8
    const/4 v7, 0x0

    .line 9
    const/16 v8, 0x8

    .line 10
    .line 11
    const/4 v9, 0x1

    .line 12
    :cond_0
    :goto_0
    invoke-virtual/range {p1 .. p2}, Lu1/q;->p(Ljava/nio/charset/Charset;)Ljava/lang/String;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    if-eqz v0, :cond_27

    .line 17
    .line 18
    const-string v10, "[Script Info]"

    .line 19
    .line 20
    invoke-virtual {v10, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 21
    .line 22
    .line 23
    move-result v10

    .line 24
    const/16 v12, 0x5b

    .line 25
    .line 26
    if-eqz v10, :cond_6

    .line 27
    .line 28
    :goto_1
    invoke-virtual/range {p1 .. p2}, Lu1/q;->p(Ljava/nio/charset/Charset;)Ljava/lang/String;

    .line 29
    .line 30
    .line 31
    move-result-object v0

    .line 32
    if-eqz v0, :cond_0

    .line 33
    .line 34
    invoke-virtual/range {p1 .. p1}, Lu1/q;->a()I

    .line 35
    .line 36
    .line 37
    move-result v10

    .line 38
    if-eqz v10, :cond_2

    .line 39
    .line 40
    invoke-virtual/range {p1 .. p2}, Lu1/q;->i(Ljava/nio/charset/Charset;)I

    .line 41
    .line 42
    .line 43
    move-result v10

    .line 44
    if-eqz v10, :cond_1

    .line 45
    .line 46
    ushr-int/2addr v10, v8

    .line 47
    int-to-long v13, v10

    .line 48
    invoke-static {v13, v14}, Ld/b;->h(J)I

    .line 49
    .line 50
    .line 51
    move-result v10

    .line 52
    goto :goto_2

    .line 53
    :cond_1
    const/high16 v10, 0x110000

    .line 54
    .line 55
    :goto_2
    if-eq v10, v12, :cond_0

    .line 56
    .line 57
    :cond_2
    const-string v10, ":"

    .line 58
    .line 59
    invoke-virtual {v0, v10}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    .line 60
    .line 61
    .line 62
    move-result-object v0

    .line 63
    array-length v10, v0

    .line 64
    if-eq v10, v6, :cond_3

    .line 65
    .line 66
    goto :goto_1

    .line 67
    :cond_3
    aget-object v10, v0, v7

    .line 68
    .line 69
    invoke-virtual {v10}, Ljava/lang/String;->trim()Ljava/lang/String;

    .line 70
    .line 71
    .line 72
    move-result-object v10

    .line 73
    invoke-static {v10}, Lqf/c;->b0(Ljava/lang/String;)Ljava/lang/String;

    .line 74
    .line 75
    .line 76
    move-result-object v10

    .line 77
    invoke-virtual {v10}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 78
    .line 79
    .line 80
    const-string v13, "playresx"

    .line 81
    .line 82
    invoke-virtual {v10, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 83
    .line 84
    .line 85
    move-result v13

    .line 86
    if-nez v13, :cond_5

    .line 87
    .line 88
    const-string v13, "playresy"

    .line 89
    .line 90
    invoke-virtual {v10, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 91
    .line 92
    .line 93
    move-result v10

    .line 94
    if-nez v10, :cond_4

    .line 95
    .line 96
    goto :goto_1

    .line 97
    :cond_4
    :try_start_0
    aget-object v0, v0, v9

    .line 98
    .line 99
    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    .line 100
    .line 101
    .line 102
    move-result-object v0

    .line 103
    invoke-static {v0}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    .line 104
    .line 105
    .line 106
    move-result v0

    .line 107
    iput v0, v1, Lm3/a;->f:F

    .line 108
    .line 109
    goto :goto_1

    .line 110
    :catch_0
    nop

    .line 111
    goto :goto_1

    .line 112
    :cond_5
    aget-object v0, v0, v9

    .line 113
    .line 114
    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    .line 115
    .line 116
    .line 117
    move-result-object v0

    .line 118
    invoke-static {v0}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    .line 119
    .line 120
    .line 121
    move-result v0

    .line 122
    iput v0, v1, Lm3/a;->e:F
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 123
    .line 124
    goto :goto_1

    .line 125
    :cond_6
    const-string v10, "[V4+ Styles]"

    .line 126
    .line 127
    invoke-virtual {v10, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 128
    .line 129
    .line 130
    move-result v10

    .line 131
    if-eqz v10, :cond_25

    .line 132
    .line 133
    new-instance v10, Ljava/util/LinkedHashMap;

    .line 134
    .line 135
    invoke-direct {v10}, Ljava/util/LinkedHashMap;-><init>()V

    .line 136
    .line 137
    .line 138
    const/4 v13, 0x0

    .line 139
    move-object v14, v13

    .line 140
    :goto_3
    invoke-virtual/range {p1 .. p2}, Lu1/q;->p(Ljava/nio/charset/Charset;)Ljava/lang/String;

    .line 141
    .line 142
    .line 143
    move-result-object v15

    .line 144
    if-eqz v15, :cond_23

    .line 145
    .line 146
    invoke-virtual/range {p1 .. p1}, Lu1/q;->a()I

    .line 147
    .line 148
    .line 149
    move-result v0

    .line 150
    if-eqz v0, :cond_8

    .line 151
    .line 152
    invoke-virtual/range {p1 .. p2}, Lu1/q;->i(Ljava/nio/charset/Charset;)I

    .line 153
    .line 154
    .line 155
    move-result v0

    .line 156
    if-eqz v0, :cond_7

    .line 157
    .line 158
    ushr-int/2addr v0, v8

    .line 159
    int-to-long v6, v0

    .line 160
    invoke-static {v6, v7}, Ld/b;->h(J)I

    .line 161
    .line 162
    .line 163
    move-result v0

    .line 164
    goto :goto_4

    .line 165
    :cond_7
    const/high16 v0, 0x110000

    .line 166
    .line 167
    :goto_4
    if-eq v0, v12, :cond_23

    .line 168
    .line 169
    :cond_8
    const-string v0, "Format:"

    .line 170
    .line 171
    invoke-virtual {v15, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 172
    .line 173
    .line 174
    move-result v0

    .line 175
    const-string v6, ","

    .line 176
    .line 177
    if-eqz v0, :cond_15

    .line 178
    .line 179
    invoke-virtual {v15, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    .line 180
    .line 181
    .line 182
    move-result-object v0

    .line 183
    invoke-static {v0, v6}, Landroid/text/TextUtils;->split(Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    .line 184
    .line 185
    .line 186
    move-result-object v0

    .line 187
    const/4 v6, 0x0

    .line 188
    const/4 v7, -0x1

    .line 189
    const/16 v18, -0x1

    .line 190
    .line 191
    const/16 v19, -0x1

    .line 192
    .line 193
    const/16 v20, -0x1

    .line 194
    .line 195
    const/16 v21, -0x1

    .line 196
    .line 197
    const/16 v22, -0x1

    .line 198
    .line 199
    const/16 v23, -0x1

    .line 200
    .line 201
    const/16 v24, -0x1

    .line 202
    .line 203
    const/16 v25, -0x1

    .line 204
    .line 205
    const/16 v26, -0x1

    .line 206
    .line 207
    :goto_5
    array-length v14, v0

    .line 208
    if-ge v6, v14, :cond_13

    .line 209
    .line 210
    aget-object v14, v0, v6

    .line 211
    .line 212
    invoke-virtual {v14}, Ljava/lang/String;->trim()Ljava/lang/String;

    .line 213
    .line 214
    .line 215
    move-result-object v14

    .line 216
    invoke-static {v14}, Lqf/c;->b0(Ljava/lang/String;)Ljava/lang/String;

    .line 217
    .line 218
    .line 219
    move-result-object v14

    .line 220
    invoke-virtual {v14}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 221
    .line 222
    .line 223
    invoke-virtual {v14}, Ljava/lang/String;->hashCode()I

    .line 224
    .line 225
    .line 226
    move-result v15

    .line 227
    sparse-switch v15, :sswitch_data_0

    .line 228
    .line 229
    .line 230
    :goto_6
    const/4 v14, -0x1

    .line 231
    goto/16 :goto_7

    .line 232
    .line 233
    :sswitch_0
    const-string v15, "outlinecolour"

    .line 234
    .line 235
    invoke-virtual {v14, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 236
    .line 237
    .line 238
    move-result v14

    .line 239
    if-nez v14, :cond_9

    .line 240
    .line 241
    goto :goto_6

    .line 242
    :cond_9
    const/16 v14, 0x9

    .line 243
    .line 244
    goto/16 :goto_7

    .line 245
    .line 246
    :sswitch_1
    const-string v15, "alignment"

    .line 247
    .line 248
    invoke-virtual {v14, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 249
    .line 250
    .line 251
    move-result v14

    .line 252
    if-nez v14, :cond_a

    .line 253
    .line 254
    goto :goto_6

    .line 255
    :cond_a
    const/16 v14, 0x8

    .line 256
    .line 257
    goto/16 :goto_7

    .line 258
    .line 259
    :sswitch_2
    const-string v15, "borderstyle"

    .line 260
    .line 261
    invoke-virtual {v14, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 262
    .line 263
    .line 264
    move-result v14

    .line 265
    if-nez v14, :cond_b

    .line 266
    .line 267
    goto :goto_6

    .line 268
    :cond_b
    const/4 v14, 0x7

    .line 269
    goto :goto_7

    .line 270
    :sswitch_3
    const-string v15, "fontsize"

    .line 271
    .line 272
    invoke-virtual {v14, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 273
    .line 274
    .line 275
    move-result v14

    .line 276
    if-nez v14, :cond_c

    .line 277
    .line 278
    goto :goto_6

    .line 279
    :cond_c
    const/4 v14, 0x6

    .line 280
    goto :goto_7

    .line 281
    :sswitch_4
    const-string v15, "name"

    .line 282
    .line 283
    invoke-virtual {v14, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 284
    .line 285
    .line 286
    move-result v14

    .line 287
    if-nez v14, :cond_d

    .line 288
    .line 289
    goto :goto_6

    .line 290
    :cond_d
    const/4 v14, 0x5

    .line 291
    goto :goto_7

    .line 292
    :sswitch_5
    const-string v15, "bold"

    .line 293
    .line 294
    invoke-virtual {v14, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 295
    .line 296
    .line 297
    move-result v14

    .line 298
    if-nez v14, :cond_e

    .line 299
    .line 300
    goto :goto_6

    .line 301
    :cond_e
    const/4 v14, 0x4

    .line 302
    goto :goto_7

    .line 303
    :sswitch_6
    const-string v15, "primarycolour"

    .line 304
    .line 305
    invoke-virtual {v14, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 306
    .line 307
    .line 308
    move-result v14

    .line 309
    if-nez v14, :cond_f

    .line 310
    .line 311
    goto :goto_6

    .line 312
    :cond_f
    const/4 v14, 0x3

    .line 313
    goto :goto_7

    .line 314
    :sswitch_7
    const-string v15, "strikeout"

    .line 315
    .line 316
    invoke-virtual {v14, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 317
    .line 318
    .line 319
    move-result v14

    .line 320
    if-nez v14, :cond_10

    .line 321
    .line 322
    goto :goto_6

    .line 323
    :cond_10
    const/4 v14, 0x2

    .line 324
    goto :goto_7

    .line 325
    :sswitch_8
    const-string v15, "underline"

    .line 326
    .line 327
    invoke-virtual {v14, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 328
    .line 329
    .line 330
    move-result v14

    .line 331
    if-nez v14, :cond_11

    .line 332
    .line 333
    goto :goto_6

    .line 334
    :cond_11
    const/4 v14, 0x1

    .line 335
    goto :goto_7

    .line 336
    :sswitch_9
    const-string v15, "italic"

    .line 337
    .line 338
    invoke-virtual {v14, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 339
    .line 340
    .line 341
    move-result v14

    .line 342
    if-nez v14, :cond_12

    .line 343
    .line 344
    goto :goto_6

    .line 345
    :cond_12
    const/4 v14, 0x0

    .line 346
    :goto_7
    packed-switch v14, :pswitch_data_0

    .line 347
    .line 348
    .line 349
    goto :goto_8

    .line 350
    :pswitch_0
    move/from16 v20, v6

    .line 351
    .line 352
    goto :goto_8

    .line 353
    :pswitch_1
    move/from16 v18, v6

    .line 354
    .line 355
    goto :goto_8

    .line 356
    :pswitch_2
    move/from16 v26, v6

    .line 357
    .line 358
    goto :goto_8

    .line 359
    :pswitch_3
    move/from16 v21, v6

    .line 360
    .line 361
    goto :goto_8

    .line 362
    :pswitch_4
    move v7, v6

    .line 363
    goto :goto_8

    .line 364
    :pswitch_5
    move/from16 v22, v6

    .line 365
    .line 366
    goto :goto_8

    .line 367
    :pswitch_6
    move/from16 v19, v6

    .line 368
    .line 369
    goto :goto_8

    .line 370
    :pswitch_7
    move/from16 v25, v6

    .line 371
    .line 372
    goto :goto_8

    .line 373
    :pswitch_8
    move/from16 v24, v6

    .line 374
    .line 375
    goto :goto_8

    .line 376
    :pswitch_9
    move/from16 v23, v6

    .line 377
    .line 378
    :goto_8
    add-int/2addr v6, v9

    .line 379
    goto/16 :goto_5

    .line 380
    .line 381
    :cond_13
    if-eq v7, v5, :cond_14

    .line 382
    .line 383
    new-instance v6, Lm3/b;

    .line 384
    .line 385
    array-length v0, v0

    .line 386
    move-object/from16 v16, v6

    .line 387
    .line 388
    move/from16 v17, v7

    .line 389
    .line 390
    move/from16 v27, v0

    .line 391
    .line 392
    invoke-direct/range {v16 .. v27}, Lm3/b;-><init>(IIIIIIIIIII)V

    .line 393
    .line 394
    .line 395
    move-object v14, v6

    .line 396
    goto :goto_9

    .line 397
    :cond_14
    move-object v14, v13

    .line 398
    :goto_9
    const/4 v6, 0x2

    .line 399
    const/4 v7, 0x0

    .line 400
    goto/16 :goto_3

    .line 401
    .line 402
    :cond_15
    const-string v0, "Style:"

    .line 403
    .line 404
    invoke-virtual {v15, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 405
    .line 406
    .line 407
    move-result v7

    .line 408
    if-eqz v7, :cond_22

    .line 409
    .line 410
    if-nez v14, :cond_16

    .line 411
    .line 412
    const-string v0, "Skipping \'Style:\' line before \'Format:\' line: "

    .line 413
    .line 414
    invoke-virtual {v0, v15}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 415
    .line 416
    .line 417
    move-result-object v0

    .line 418
    invoke-static {v0}, Lu1/a;->p(Ljava/lang/String;)V

    .line 419
    .line 420
    .line 421
    goto/16 :goto_17

    .line 422
    .line 423
    :cond_16
    invoke-virtual {v15, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 424
    .line 425
    .line 426
    move-result v0

    .line 427
    invoke-static {v0}, La9/o;->k(Z)V

    .line 428
    .line 429
    .line 430
    invoke-virtual {v15, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    .line 431
    .line 432
    .line 433
    move-result-object v0

    .line 434
    invoke-static {v0, v6}, Landroid/text/TextUtils;->split(Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    .line 435
    .line 436
    .line 437
    move-result-object v6

    .line 438
    array-length v0, v6

    .line 439
    iget v7, v14, Lm3/b;->k:I

    .line 440
    .line 441
    const-string v2, "\'"

    .line 442
    .line 443
    if-eq v0, v7, :cond_17

    .line 444
    .line 445
    array-length v0, v6

    .line 446
    sget-object v6, Lu1/f0;->a:Ljava/lang/String;

    .line 447
    .line 448
    sget-object v6, Ljava/util/Locale;->US:Ljava/util/Locale;

    .line 449
    .line 450
    const-string v6, "Skipping malformed \'Style:\' line (expected "

    .line 451
    .line 452
    const-string v4, " values, found "

    .line 453
    .line 454
    const-string v8, "): \'"

    .line 455
    .line 456
    invoke-static {v7, v0, v6, v4, v8}, Lta/q;->o(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 457
    .line 458
    .line 459
    move-result-object v0

    .line 460
    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 461
    .line 462
    .line 463
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 464
    .line 465
    .line 466
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 467
    .line 468
    .line 469
    move-result-object v0

    .line 470
    invoke-static {v0}, Lu1/a;->p(Ljava/lang/String;)V

    .line 471
    .line 472
    .line 473
    :goto_a
    move-object v4, v13

    .line 474
    goto/16 :goto_16

    .line 475
    .line 476
    :cond_17
    :try_start_1
    new-instance v4, Lm3/d;

    .line 477
    .line 478
    iget v0, v14, Lm3/b;->a:I

    .line 479
    .line 480
    aget-object v0, v6, v0

    .line 481
    .line 482
    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    .line 483
    .line 484
    .line 485
    move-result-object v20

    .line 486
    iget v0, v14, Lm3/b;->b:I

    .line 487
    .line 488
    if-eq v0, v5, :cond_18

    .line 489
    .line 490
    aget-object v0, v6, v0

    .line 491
    .line 492
    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    .line 493
    .line 494
    .line 495
    move-result-object v0

    .line 496
    invoke-static {v0}, Lm3/d;->a(Ljava/lang/String;)I

    .line 497
    .line 498
    .line 499
    move-result v0

    .line 500
    move/from16 v21, v0

    .line 501
    .line 502
    goto :goto_b

    .line 503
    :catch_1
    move-exception v0

    .line 504
    goto/16 :goto_15

    .line 505
    .line 506
    :cond_18
    const/16 v21, -0x1

    .line 507
    .line 508
    :goto_b
    iget v0, v14, Lm3/b;->c:I

    .line 509
    .line 510
    if-eq v0, v5, :cond_19

    .line 511
    .line 512
    aget-object v0, v6, v0

    .line 513
    .line 514
    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    .line 515
    .line 516
    .line 517
    move-result-object v0

    .line 518
    invoke-static {v0}, Lm3/d;->c(Ljava/lang/String;)Ljava/lang/Integer;

    .line 519
    .line 520
    .line 521
    move-result-object v0

    .line 522
    move-object/from16 v22, v0

    .line 523
    .line 524
    goto :goto_c

    .line 525
    :cond_19
    move-object/from16 v22, v13

    .line 526
    .line 527
    :goto_c
    iget v0, v14, Lm3/b;->d:I

    .line 528
    .line 529
    if-eq v0, v5, :cond_1a

    .line 530
    .line 531
    aget-object v0, v6, v0

    .line 532
    .line 533
    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    .line 534
    .line 535
    .line 536
    move-result-object v0

    .line 537
    invoke-static {v0}, Lm3/d;->c(Ljava/lang/String;)Ljava/lang/Integer;

    .line 538
    .line 539
    .line 540
    move-result-object v0

    .line 541
    move-object/from16 v23, v0

    .line 542
    .line 543
    goto :goto_d

    .line 544
    :cond_1a
    move-object/from16 v23, v13

    .line 545
    .line 546
    :goto_d
    iget v0, v14, Lm3/b;->e:I

    .line 547
    .line 548
    if-eq v0, v5, :cond_1b

    .line 549
    .line 550
    aget-object v0, v6, v0

    .line 551
    .line 552
    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    .line 553
    .line 554
    .line 555
    move-result-object v8
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_1

    .line 556
    :try_start_2
    invoke-static {v8}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    .line 557
    .line 558
    .line 559
    move-result v7
    :try_end_2
    .catch Ljava/lang/NumberFormatException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Ljava/lang/RuntimeException; {:try_start_2 .. :try_end_2} :catch_1

    .line 560
    goto :goto_e

    .line 561
    :catch_2
    move-exception v0

    .line 562
    move-object v7, v0

    .line 563
    :try_start_3
    new-instance v0, Ljava/lang/StringBuilder;

    .line 564
    .line 565
    const-string v11, "Failed to parse font size: \'"

    .line 566
    .line 567
    invoke-direct {v0, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 568
    .line 569
    .line 570
    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 571
    .line 572
    .line 573
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 574
    .line 575
    .line 576
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 577
    .line 578
    .line 579
    move-result-object v0

    .line 580
    invoke-static {v0, v7}, Lu1/a;->q(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 581
    .line 582
    .line 583
    const v7, -0x800001

    .line 584
    .line 585
    .line 586
    :goto_e
    move/from16 v24, v7

    .line 587
    .line 588
    goto :goto_f

    .line 589
    :cond_1b
    const v24, -0x800001

    .line 590
    .line 591
    .line 592
    :goto_f
    iget v0, v14, Lm3/b;->f:I

    .line 593
    .line 594
    if-eq v0, v5, :cond_1c

    .line 595
    .line 596
    aget-object v0, v6, v0

    .line 597
    .line 598
    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    .line 599
    .line 600
    .line 601
    move-result-object v0

    .line 602
    invoke-static {v0}, Lm3/d;->b(Ljava/lang/String;)Z

    .line 603
    .line 604
    .line 605
    move-result v0

    .line 606
    if-eqz v0, :cond_1c

    .line 607
    .line 608
    const/16 v25, 0x1

    .line 609
    .line 610
    goto :goto_10

    .line 611
    :cond_1c
    const/16 v25, 0x0

    .line 612
    .line 613
    :goto_10
    iget v0, v14, Lm3/b;->g:I

    .line 614
    .line 615
    if-eq v0, v5, :cond_1d

    .line 616
    .line 617
    aget-object v0, v6, v0

    .line 618
    .line 619
    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    .line 620
    .line 621
    .line 622
    move-result-object v0

    .line 623
    invoke-static {v0}, Lm3/d;->b(Ljava/lang/String;)Z

    .line 624
    .line 625
    .line 626
    move-result v0

    .line 627
    if-eqz v0, :cond_1d

    .line 628
    .line 629
    const/16 v26, 0x1

    .line 630
    .line 631
    goto :goto_11

    .line 632
    :cond_1d
    const/16 v26, 0x0

    .line 633
    .line 634
    :goto_11
    iget v0, v14, Lm3/b;->h:I

    .line 635
    .line 636
    if-eq v0, v5, :cond_1e

    .line 637
    .line 638
    aget-object v0, v6, v0

    .line 639
    .line 640
    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    .line 641
    .line 642
    .line 643
    move-result-object v0

    .line 644
    invoke-static {v0}, Lm3/d;->b(Ljava/lang/String;)Z

    .line 645
    .line 646
    .line 647
    move-result v0

    .line 648
    if-eqz v0, :cond_1e

    .line 649
    .line 650
    const/16 v27, 0x1

    .line 651
    .line 652
    goto :goto_12

    .line 653
    :cond_1e
    const/16 v27, 0x0

    .line 654
    .line 655
    :goto_12
    iget v0, v14, Lm3/b;->i:I

    .line 656
    .line 657
    if-eq v0, v5, :cond_1f

    .line 658
    .line 659
    aget-object v0, v6, v0

    .line 660
    .line 661
    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    .line 662
    .line 663
    .line 664
    move-result-object v0

    .line 665
    invoke-static {v0}, Lm3/d;->b(Ljava/lang/String;)Z

    .line 666
    .line 667
    .line 668
    move-result v0

    .line 669
    if-eqz v0, :cond_1f

    .line 670
    .line 671
    const/16 v28, 0x1

    .line 672
    .line 673
    goto :goto_13

    .line 674
    :cond_1f
    const/16 v28, 0x0

    .line 675
    .line 676
    :goto_13
    iget v0, v14, Lm3/b;->j:I

    .line 677
    .line 678
    if-eq v0, v5, :cond_21

    .line 679
    .line 680
    aget-object v0, v6, v0

    .line 681
    .line 682
    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    .line 683
    .line 684
    .line 685
    move-result-object v0
    :try_end_3
    .catch Ljava/lang/RuntimeException; {:try_start_3 .. :try_end_3} :catch_1

    .line 686
    :try_start_4
    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    .line 687
    .line 688
    .line 689
    move-result-object v6

    .line 690
    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 691
    .line 692
    .line 693
    move-result v6
    :try_end_4
    .catch Ljava/lang/NumberFormatException; {:try_start_4 .. :try_end_4} :catch_3
    .catch Ljava/lang/RuntimeException; {:try_start_4 .. :try_end_4} :catch_1

    .line 694
    if-eq v6, v9, :cond_20

    .line 695
    .line 696
    if-eq v6, v3, :cond_20

    .line 697
    .line 698
    :catch_3
    :try_start_5
    new-instance v6, Ljava/lang/StringBuilder;

    .line 699
    .line 700
    const-string v7, "Ignoring unknown BorderStyle: "

    .line 701
    .line 702
    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 703
    .line 704
    .line 705
    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 706
    .line 707
    .line 708
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 709
    .line 710
    .line 711
    move-result-object v0

    .line 712
    invoke-static {v0}, Lu1/a;->p(Ljava/lang/String;)V

    .line 713
    .line 714
    .line 715
    const/4 v6, -0x1

    .line 716
    :cond_20
    move/from16 v29, v6

    .line 717
    .line 718
    goto :goto_14

    .line 719
    :cond_21
    const/16 v29, -0x1

    .line 720
    .line 721
    :goto_14
    move-object/from16 v19, v4

    .line 722
    .line 723
    invoke-direct/range {v19 .. v29}, Lm3/d;-><init>(Ljava/lang/String;ILjava/lang/Integer;Ljava/lang/Integer;FZZZZI)V
    :try_end_5
    .catch Ljava/lang/RuntimeException; {:try_start_5 .. :try_end_5} :catch_1

    .line 724
    .line 725
    .line 726
    goto :goto_16

    .line 727
    :goto_15
    new-instance v4, Ljava/lang/StringBuilder;

    .line 728
    .line 729
    const-string v6, "Skipping malformed \'Style:\' line: \'"

    .line 730
    .line 731
    invoke-direct {v4, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 732
    .line 733
    .line 734
    invoke-virtual {v4, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 735
    .line 736
    .line 737
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 738
    .line 739
    .line 740
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 741
    .line 742
    .line 743
    move-result-object v2

    .line 744
    invoke-static {v2, v0}, Lu1/a;->q(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 745
    .line 746
    .line 747
    goto/16 :goto_a

    .line 748
    .line 749
    :goto_16
    if-eqz v4, :cond_22

    .line 750
    .line 751
    iget-object v0, v4, Lm3/d;->a:Ljava/lang/String;

    .line 752
    .line 753
    invoke-interface {v10, v0, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 754
    .line 755
    .line 756
    :cond_22
    :goto_17
    const/4 v2, 0x6

    .line 757
    const/4 v4, 0x7

    .line 758
    const/4 v6, 0x2

    .line 759
    const/4 v7, 0x0

    .line 760
    const/16 v8, 0x8

    .line 761
    .line 762
    goto/16 :goto_3

    .line 763
    .line 764
    :cond_23
    iput-object v10, v1, Lm3/a;->d:Ljava/util/LinkedHashMap;

    .line 765
    .line 766
    :cond_24
    :goto_18
    const/4 v2, 0x6

    .line 767
    const/4 v4, 0x7

    .line 768
    const/4 v6, 0x2

    .line 769
    const/4 v7, 0x0

    .line 770
    const/16 v8, 0x8

    .line 771
    .line 772
    goto/16 :goto_0

    .line 773
    .line 774
    :cond_25
    const-string v2, "[V4 Styles]"

    .line 775
    .line 776
    invoke-virtual {v2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 777
    .line 778
    .line 779
    move-result v2

    .line 780
    if-eqz v2, :cond_26

    .line 781
    .line 782
    const-string v0, "[V4 Styles] are not supported"

    .line 783
    .line 784
    invoke-static {v0}, Lu1/a;->j(Ljava/lang/String;)V

    .line 785
    .line 786
    .line 787
    goto :goto_18

    .line 788
    :cond_26
    const-string v2, "[Events]"

    .line 789
    .line 790
    invoke-virtual {v2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 791
    .line 792
    .line 793
    move-result v0

    .line 794
    if-eqz v0, :cond_24

    .line 795
    .line 796
    :cond_27
    return-void

    .line 797
    :sswitch_data_0
    .sparse-switch
        -0x4642c5d0 -> :sswitch_9
        -0x3d363934 -> :sswitch_8
        -0xb7325a4 -> :sswitch_7
        -0x43a3db2 -> :sswitch_6
        0x2e3a85 -> :sswitch_5
        0x337a8b -> :sswitch_4
        0x15d92cd0 -> :sswitch_3
        0x2dbc6505 -> :sswitch_2
        0x695fa1e3 -> :sswitch_1
        0x76840c8e -> :sswitch_0
    .end sparse-switch

    .line 798
    .line 799
    .line 800
    .line 801
    .line 802
    .line 803
    .line 804
    .line 805
    .line 806
    .line 807
    .line 808
    .line 809
    .line 810
    .line 811
    .line 812
    .line 813
    .line 814
    .line 815
    .line 816
    .line 817
    .line 818
    .line 819
    .line 820
    .line 821
    .line 822
    .line 823
    .line 824
    .line 825
    .line 826
    .line 827
    .line 828
    .line 829
    .line 830
    .line 831
    .line 832
    .line 833
    .line 834
    .line 835
    .line 836
    .line 837
    .line 838
    .line 839
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final synthetic e(II[B)Li3/d;
    .locals 0

    .line 1
    invoke-static {p0, p3, p2}, Lg/b;->a(Li3/j;[BI)Li3/b;

    move-result-object p1

    return-object p1
.end method

.method public final synthetic reset()V
    .locals 0

    .line 1
    return-void
.end method
