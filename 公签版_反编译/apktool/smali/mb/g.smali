.class public final Lmb/g;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/CharSequence;


# instance fields
.field public final a:Ljava/util/ArrayList;

.field public final b:Ljava/util/ArrayList;

.field public final c:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

.field public d:I

.field public e:I

.field public final f:Ljava/util/concurrent/atomic/AtomicLong;

.field public final g:Lmb/a;

.field public final h:Lnb/a;

.field public final i:Lmb/w;

.field public j:Lmb/j;


# direct methods
.method public constructor <init>(Ljava/lang/CharSequence;Z)V
    .locals 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Ljava/util/concurrent/atomic/AtomicLong;

    .line 5
    .line 6
    const-wide/16 v1, 0x1

    .line 7
    .line 8
    invoke-direct {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicLong;-><init>(J)V

    .line 9
    .line 10
    .line 11
    iput-object v0, p0, Lmb/g;->f:Ljava/util/concurrent/atomic/AtomicLong;

    .line 12
    .line 13
    if-nez p1, :cond_0

    .line 14
    .line 15
    const-string p1, ""

    .line 16
    .line 17
    :cond_0
    if-eqz p2, :cond_1

    .line 18
    .line 19
    new-instance p2, Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    .line 20
    .line 21
    invoke-direct {p2}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;-><init>()V

    .line 22
    .line 23
    .line 24
    iput-object p2, p0, Lmb/g;->c:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    .line 25
    .line 26
    goto :goto_0

    .line 27
    :cond_1
    const/4 p2, 0x0

    .line 28
    iput-object p2, p0, Lmb/g;->c:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    .line 29
    .line 30
    :goto_0
    const/4 p2, 0x0

    .line 31
    iput p2, p0, Lmb/g;->d:I

    .line 32
    .line 33
    iput p2, p0, Lmb/g;->e:I

    .line 34
    .line 35
    new-instance v0, Ljava/util/ArrayList;

    .line 36
    .line 37
    const/16 v1, 0x3e8

    .line 38
    .line 39
    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 40
    .line 41
    .line 42
    iput-object v0, p0, Lmb/g;->a:Ljava/util/ArrayList;

    .line 43
    .line 44
    new-instance v1, Lmb/h;

    .line 45
    .line 46
    const/4 v2, 0x1

    .line 47
    invoke-direct {v1, v2}, Lmb/h;-><init>(Z)V

    .line 48
    .line 49
    .line 50
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 51
    .line 52
    .line 53
    new-instance v0, Ljava/util/ArrayList;

    .line 54
    .line 55
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 56
    .line 57
    .line 58
    iput-object v0, p0, Lmb/g;->b:Ljava/util/ArrayList;

    .line 59
    .line 60
    new-instance v0, Lnb/a;

    .line 61
    .line 62
    invoke-direct {v0, p0}, Lnb/a;-><init>(Lmb/g;)V

    .line 63
    .line 64
    .line 65
    iput-object v0, p0, Lmb/g;->h:Lnb/a;

    .line 66
    .line 67
    new-instance v0, Lmb/w;

    .line 68
    .line 69
    invoke-direct {v0}, Lmb/w;-><init>()V

    .line 70
    .line 71
    .line 72
    iput-object v0, p0, Lmb/g;->i:Lmb/w;

    .line 73
    .line 74
    const/16 v1, 0x1f4

    .line 75
    .line 76
    iput v1, v0, Lmb/w;->c:I

    .line 77
    .line 78
    invoke-virtual {v0}, Lmb/w;->s()V

    .line 79
    .line 80
    .line 81
    new-instance v0, Lmb/a;

    .line 82
    .line 83
    invoke-direct {v0, p0}, Lmb/a;-><init>(Lmb/g;)V

    .line 84
    .line 85
    .line 86
    iput-object v0, p0, Lmb/g;->g:Lmb/a;

    .line 87
    .line 88
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    .line 89
    .line 90
    .line 91
    move-result v0

    .line 92
    if-nez v0, :cond_2

    .line 93
    .line 94
    invoke-virtual {p0, v2}, Lmb/g;->z(Z)V

    .line 95
    .line 96
    .line 97
    return-void

    .line 98
    :cond_2
    invoke-virtual {p0, p2}, Lmb/g;->z(Z)V

    .line 99
    .line 100
    .line 101
    invoke-virtual {p0, p2, p2, p1}, Lmb/g;->r(IILjava/lang/CharSequence;)V

    .line 102
    .line 103
    .line 104
    invoke-virtual {p0, v2}, Lmb/g;->z(Z)V

    .line 105
    .line 106
    .line 107
    return-void
.end method


# virtual methods
.method public final A(IIII)Lmb/g;
    .locals 8

    .line 1
    new-instance v0, Lmb/g;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    const/4 v2, 0x1

    .line 5
    invoke-direct {v0, v1, v2}, Lmb/g;-><init>(Ljava/lang/CharSequence;Z)V

    .line 6
    .line 7
    .line 8
    const/4 v1, 0x0

    .line 9
    invoke-virtual {v0, v1}, Lmb/g;->z(Z)V

    .line 10
    .line 11
    .line 12
    iget-object v3, p0, Lmb/g;->a:Ljava/util/ArrayList;

    .line 13
    .line 14
    iget-object v4, v0, Lmb/g;->a:Ljava/util/ArrayList;

    .line 15
    .line 16
    if-ne p1, p3, :cond_1

    .line 17
    .line 18
    invoke-virtual {v3, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 19
    .line 20
    .line 21
    move-result-object p1

    .line 22
    check-cast p1, Lmb/h;

    .line 23
    .line 24
    iget p3, p1, Lmb/h;->c:I

    .line 25
    .line 26
    add-int/2addr p3, v2

    .line 27
    if-ne p4, p3, :cond_0

    .line 28
    .line 29
    invoke-virtual {p1}, Lmb/h;->d()Lmb/m;

    .line 30
    .line 31
    .line 32
    move-result-object p3

    .line 33
    sget-object v3, Lmb/m;->f:Lmb/m;

    .line 34
    .line 35
    if-ne p3, v3, :cond_0

    .line 36
    .line 37
    if-ge p2, p4, :cond_7

    .line 38
    .line 39
    iget p3, p1, Lmb/h;->c:I

    .line 40
    .line 41
    invoke-virtual {p1, p2, p3}, Lmb/h;->f(II)Lmb/h;

    .line 42
    .line 43
    .line 44
    move-result-object p1

    .line 45
    invoke-virtual {v0, v1, v1, p1}, Lmb/g;->r(IILjava/lang/CharSequence;)V

    .line 46
    .line 47
    .line 48
    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 49
    .line 50
    .line 51
    move-result-object p1

    .line 52
    check-cast p1, Lmb/h;

    .line 53
    .line 54
    sget-object p2, Lmb/m;->e:Lmb/m;

    .line 55
    .line 56
    iput-object p2, p1, Lmb/h;->e:Lmb/m;

    .line 57
    .line 58
    iget p1, v0, Lmb/g;->d:I

    .line 59
    .line 60
    add-int/2addr p1, v2

    .line 61
    iput p1, v0, Lmb/g;->d:I

    .line 62
    .line 63
    new-instance p1, Lmb/h;

    .line 64
    .line 65
    invoke-direct {p1, v2}, Lmb/h;-><init>(Z)V

    .line 66
    .line 67
    .line 68
    invoke-virtual {v4, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 69
    .line 70
    .line 71
    goto/16 :goto_2

    .line 72
    .line 73
    :cond_0
    invoke-virtual {p1, p2, p4}, Lmb/h;->f(II)Lmb/h;

    .line 74
    .line 75
    .line 76
    move-result-object p1

    .line 77
    invoke-virtual {v0, v1, v1, p1}, Lmb/g;->r(IILjava/lang/CharSequence;)V

    .line 78
    .line 79
    .line 80
    goto/16 :goto_2

    .line 81
    .line 82
    :cond_1
    if-ge p1, p3, :cond_8

    .line 83
    .line 84
    invoke-virtual {v3, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 85
    .line 86
    .line 87
    move-result-object v5

    .line 88
    check-cast v5, Lmb/h;

    .line 89
    .line 90
    invoke-virtual {v5}, Lmb/h;->d()Lmb/m;

    .line 91
    .line 92
    .line 93
    move-result-object v6

    .line 94
    sget-object v7, Lmb/m;->f:Lmb/m;

    .line 95
    .line 96
    if-ne v6, v7, :cond_4

    .line 97
    .line 98
    iget v6, v5, Lmb/h;->c:I

    .line 99
    .line 100
    if-gt p2, v6, :cond_2

    .line 101
    .line 102
    invoke-virtual {v5, p2, v6}, Lmb/h;->f(II)Lmb/h;

    .line 103
    .line 104
    .line 105
    move-result-object p2

    .line 106
    invoke-virtual {v0, v1, v1, p2}, Lmb/g;->r(IILjava/lang/CharSequence;)V

    .line 107
    .line 108
    .line 109
    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 110
    .line 111
    .line 112
    move-result-object p2

    .line 113
    check-cast p2, Lmb/h;

    .line 114
    .line 115
    invoke-virtual {v5}, Lmb/h;->d()Lmb/m;

    .line 116
    .line 117
    .line 118
    move-result-object v6

    .line 119
    iput-object v6, p2, Lmb/h;->e:Lmb/m;

    .line 120
    .line 121
    iget p2, v0, Lmb/g;->d:I

    .line 122
    .line 123
    invoke-virtual {v5}, Lmb/h;->d()Lmb/m;

    .line 124
    .line 125
    .line 126
    move-result-object v5

    .line 127
    iget v5, v5, Lmb/m;->b:I

    .line 128
    .line 129
    add-int/2addr p2, v5

    .line 130
    iput p2, v0, Lmb/g;->d:I

    .line 131
    .line 132
    goto :goto_0

    .line 133
    :cond_2
    add-int/2addr v6, v2

    .line 134
    if-ne p2, v6, :cond_3

    .line 135
    .line 136
    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 137
    .line 138
    .line 139
    move-result-object p2

    .line 140
    check-cast p2, Lmb/h;

    .line 141
    .line 142
    sget-object v5, Lmb/m;->d:Lmb/m;

    .line 143
    .line 144
    iput-object v5, p2, Lmb/h;->e:Lmb/m;

    .line 145
    .line 146
    iget p2, v0, Lmb/g;->d:I

    .line 147
    .line 148
    iget v5, v5, Lmb/m;->b:I

    .line 149
    .line 150
    add-int/2addr p2, v5

    .line 151
    iput p2, v0, Lmb/g;->d:I

    .line 152
    .line 153
    goto :goto_0

    .line 154
    :cond_3
    new-instance p1, Ljava/lang/IndexOutOfBoundsException;

    .line 155
    .line 156
    invoke-direct {p1}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    .line 157
    .line 158
    .line 159
    throw p1

    .line 160
    :cond_4
    iget v6, v5, Lmb/h;->c:I

    .line 161
    .line 162
    invoke-virtual {v5, p2, v6}, Lmb/h;->f(II)Lmb/h;

    .line 163
    .line 164
    .line 165
    move-result-object p2

    .line 166
    invoke-virtual {v0, v1, v1, p2}, Lmb/g;->r(IILjava/lang/CharSequence;)V

    .line 167
    .line 168
    .line 169
    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 170
    .line 171
    .line 172
    move-result-object p2

    .line 173
    check-cast p2, Lmb/h;

    .line 174
    .line 175
    invoke-virtual {v5}, Lmb/h;->d()Lmb/m;

    .line 176
    .line 177
    .line 178
    move-result-object v6

    .line 179
    iput-object v6, p2, Lmb/h;->e:Lmb/m;

    .line 180
    .line 181
    iget p2, v0, Lmb/g;->d:I

    .line 182
    .line 183
    invoke-virtual {v5}, Lmb/h;->d()Lmb/m;

    .line 184
    .line 185
    .line 186
    move-result-object v5

    .line 187
    iget v5, v5, Lmb/m;->b:I

    .line 188
    .line 189
    add-int/2addr p2, v5

    .line 190
    iput p2, v0, Lmb/g;->d:I

    .line 191
    .line 192
    :goto_0
    add-int/2addr p1, v2

    .line 193
    :goto_1
    if-ge p1, p3, :cond_5

    .line 194
    .line 195
    invoke-virtual {v3, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 196
    .line 197
    .line 198
    move-result-object p2

    .line 199
    check-cast p2, Lmb/h;

    .line 200
    .line 201
    new-instance v5, Lmb/h;

    .line 202
    .line 203
    invoke-direct {v5, p2}, Lmb/h;-><init>(Lmb/h;)V

    .line 204
    .line 205
    .line 206
    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 207
    .line 208
    .line 209
    iget v5, v0, Lmb/g;->d:I

    .line 210
    .line 211
    iget v6, p2, Lmb/h;->c:I

    .line 212
    .line 213
    invoke-virtual {p2}, Lmb/h;->d()Lmb/m;

    .line 214
    .line 215
    .line 216
    move-result-object p2

    .line 217
    iget p2, p2, Lmb/m;->b:I

    .line 218
    .line 219
    add-int/2addr v6, p2

    .line 220
    add-int/2addr v6, v5

    .line 221
    iput v6, v0, Lmb/g;->d:I

    .line 222
    .line 223
    add-int/lit8 p1, p1, 0x1

    .line 224
    .line 225
    goto :goto_1

    .line 226
    :cond_5
    invoke-virtual {v3, p3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 227
    .line 228
    .line 229
    move-result-object p1

    .line 230
    check-cast p1, Lmb/h;

    .line 231
    .line 232
    iget p2, p1, Lmb/h;->c:I

    .line 233
    .line 234
    add-int/2addr p2, v2

    .line 235
    if-ne p4, p2, :cond_6

    .line 236
    .line 237
    invoke-virtual {p1}, Lmb/h;->d()Lmb/m;

    .line 238
    .line 239
    .line 240
    move-result-object p2

    .line 241
    sget-object p3, Lmb/m;->f:Lmb/m;

    .line 242
    .line 243
    if-ne p2, p3, :cond_6

    .line 244
    .line 245
    new-instance p2, Lmb/h;

    .line 246
    .line 247
    invoke-direct {p2, v2}, Lmb/h;-><init>(Z)V

    .line 248
    .line 249
    .line 250
    add-int/lit8 p3, p4, -0x1

    .line 251
    .line 252
    invoke-virtual {p2, v1, v1, p3, p1}, Lmb/h;->e(IIILjava/lang/CharSequence;)V

    .line 253
    .line 254
    .line 255
    invoke-virtual {v4, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 256
    .line 257
    .line 258
    sget-object p1, Lmb/m;->e:Lmb/m;

    .line 259
    .line 260
    iput-object p1, p2, Lmb/h;->e:Lmb/m;

    .line 261
    .line 262
    iget p1, v0, Lmb/g;->d:I

    .line 263
    .line 264
    add-int/2addr p4, v2

    .line 265
    add-int/2addr p4, p1

    .line 266
    iput p4, v0, Lmb/g;->d:I

    .line 267
    .line 268
    goto :goto_2

    .line 269
    :cond_6
    new-instance p2, Lmb/h;

    .line 270
    .line 271
    invoke-direct {p2, v2}, Lmb/h;-><init>(Z)V

    .line 272
    .line 273
    .line 274
    invoke-virtual {p2, v1, v1, p4, p1}, Lmb/h;->e(IIILjava/lang/CharSequence;)V

    .line 275
    .line 276
    .line 277
    invoke-virtual {v4, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 278
    .line 279
    .line 280
    iget p1, v0, Lmb/g;->d:I

    .line 281
    .line 282
    add-int/2addr p1, p4

    .line 283
    iput p1, v0, Lmb/g;->d:I

    .line 284
    .line 285
    :cond_7
    :goto_2
    invoke-virtual {v0, v2}, Lmb/g;->z(Z)V

    .line 286
    .line 287
    .line 288
    return-object v0

    .line 289
    :cond_8
    new-instance p1, Ljava/lang/StringIndexOutOfBoundsException;

    .line 290
    .line 291
    const-string p2, "start > end"

    .line 292
    .line 293
    invoke-direct {p1, p2}, Ljava/lang/StringIndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    .line 294
    .line 295
    .line 296
    goto :goto_4

    .line 297
    :goto_3
    throw p1

    .line 298
    :goto_4
    goto :goto_3
.end method

.method public final B(IIIII)Ljava/lang/StringBuilder;
    .locals 4

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    invoke-direct {v0, p5}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 4
    .line 5
    .line 6
    iget-object p5, p0, Lmb/g;->a:Ljava/util/ArrayList;

    .line 7
    .line 8
    if-ne p1, p3, :cond_1

    .line 9
    .line 10
    invoke-virtual {p5, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 11
    .line 12
    .line 13
    move-result-object p3

    .line 14
    check-cast p3, Lmb/h;

    .line 15
    .line 16
    iget v1, p3, Lmb/h;->c:I

    .line 17
    .line 18
    add-int/lit8 v1, v1, 0x1

    .line 19
    .line 20
    if-ne p4, v1, :cond_0

    .line 21
    .line 22
    invoke-virtual {p3}, Lmb/h;->d()Lmb/m;

    .line 23
    .line 24
    .line 25
    move-result-object v1

    .line 26
    sget-object v2, Lmb/m;->f:Lmb/m;

    .line 27
    .line 28
    if-ne v1, v2, :cond_0

    .line 29
    .line 30
    if-ge p2, p4, :cond_7

    .line 31
    .line 32
    invoke-virtual {p5, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 33
    .line 34
    .line 35
    move-result-object p1

    .line 36
    check-cast p1, Ljava/lang/CharSequence;

    .line 37
    .line 38
    iget p3, p3, Lmb/h;->c:I

    .line 39
    .line 40
    invoke-virtual {v0, p1, p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;II)Ljava/lang/StringBuilder;

    .line 41
    .line 42
    .line 43
    sget-object p1, Lmb/m;->e:Lmb/m;

    .line 44
    .line 45
    iget-object p1, p1, Lmb/m;->a:Ljava/lang/String;

    .line 46
    .line 47
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 48
    .line 49
    .line 50
    goto/16 :goto_1

    .line 51
    .line 52
    :cond_0
    invoke-virtual {p5, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 53
    .line 54
    .line 55
    move-result-object p1

    .line 56
    check-cast p1, Ljava/lang/CharSequence;

    .line 57
    .line 58
    invoke-virtual {v0, p1, p2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;II)Ljava/lang/StringBuilder;

    .line 59
    .line 60
    .line 61
    goto/16 :goto_1

    .line 62
    .line 63
    :cond_1
    if-ge p1, p3, :cond_8

    .line 64
    .line 65
    invoke-virtual {p5, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 66
    .line 67
    .line 68
    move-result-object v1

    .line 69
    check-cast v1, Lmb/h;

    .line 70
    .line 71
    invoke-virtual {v1}, Lmb/h;->d()Lmb/m;

    .line 72
    .line 73
    .line 74
    move-result-object v2

    .line 75
    sget-object v3, Lmb/m;->f:Lmb/m;

    .line 76
    .line 77
    if-ne v2, v3, :cond_4

    .line 78
    .line 79
    iget v2, v1, Lmb/h;->c:I

    .line 80
    .line 81
    if-gt p2, v2, :cond_2

    .line 82
    .line 83
    invoke-virtual {v0, v1, p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;II)Ljava/lang/StringBuilder;

    .line 84
    .line 85
    .line 86
    invoke-virtual {v1}, Lmb/h;->d()Lmb/m;

    .line 87
    .line 88
    .line 89
    move-result-object p2

    .line 90
    iget-object p2, p2, Lmb/m;->a:Ljava/lang/String;

    .line 91
    .line 92
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 93
    .line 94
    .line 95
    goto :goto_0

    .line 96
    :cond_2
    add-int/lit8 v2, v2, 0x1

    .line 97
    .line 98
    if-ne p2, v2, :cond_3

    .line 99
    .line 100
    sget-object p2, Lmb/m;->d:Lmb/m;

    .line 101
    .line 102
    iget-object p2, p2, Lmb/m;->a:Ljava/lang/String;

    .line 103
    .line 104
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 105
    .line 106
    .line 107
    goto :goto_0

    .line 108
    :cond_3
    new-instance p1, Ljava/lang/IndexOutOfBoundsException;

    .line 109
    .line 110
    invoke-direct {p1}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    .line 111
    .line 112
    .line 113
    throw p1

    .line 114
    :cond_4
    iget v2, v1, Lmb/h;->c:I

    .line 115
    .line 116
    invoke-virtual {v0, v1, p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;II)Ljava/lang/StringBuilder;

    .line 117
    .line 118
    .line 119
    invoke-virtual {v1}, Lmb/h;->d()Lmb/m;

    .line 120
    .line 121
    .line 122
    move-result-object p2

    .line 123
    iget-object p2, p2, Lmb/m;->a:Ljava/lang/String;

    .line 124
    .line 125
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 126
    .line 127
    .line 128
    :goto_0
    add-int/lit8 p1, p1, 0x1

    .line 129
    .line 130
    if-ge p1, p3, :cond_5

    .line 131
    .line 132
    invoke-virtual {p5, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 133
    .line 134
    .line 135
    move-result-object p2

    .line 136
    check-cast p2, Lmb/h;

    .line 137
    .line 138
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    .line 139
    .line 140
    .line 141
    invoke-virtual {p2}, Lmb/h;->d()Lmb/m;

    .line 142
    .line 143
    .line 144
    move-result-object p2

    .line 145
    iget-object p2, p2, Lmb/m;->a:Ljava/lang/String;

    .line 146
    .line 147
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 148
    .line 149
    .line 150
    goto :goto_0

    .line 151
    :cond_5
    invoke-virtual {p5, p3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 152
    .line 153
    .line 154
    move-result-object p1

    .line 155
    check-cast p1, Lmb/h;

    .line 156
    .line 157
    iget p2, p1, Lmb/h;->c:I

    .line 158
    .line 159
    add-int/lit8 p2, p2, 0x1

    .line 160
    .line 161
    const/4 p3, 0x0

    .line 162
    if-ne p4, p2, :cond_6

    .line 163
    .line 164
    invoke-virtual {p1}, Lmb/h;->d()Lmb/m;

    .line 165
    .line 166
    .line 167
    move-result-object p2

    .line 168
    sget-object p5, Lmb/m;->f:Lmb/m;

    .line 169
    .line 170
    if-ne p2, p5, :cond_6

    .line 171
    .line 172
    invoke-virtual {v0, p1, p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;II)Ljava/lang/StringBuilder;

    .line 173
    .line 174
    .line 175
    sget-object p1, Lmb/m;->e:Lmb/m;

    .line 176
    .line 177
    iget-object p1, p1, Lmb/m;->a:Ljava/lang/String;

    .line 178
    .line 179
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 180
    .line 181
    .line 182
    goto :goto_1

    .line 183
    :cond_6
    invoke-virtual {v0, p1, p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;II)Ljava/lang/StringBuilder;

    .line 184
    .line 185
    .line 186
    :cond_7
    :goto_1
    return-object v0

    .line 187
    :cond_8
    new-instance p1, Ljava/lang/StringIndexOutOfBoundsException;

    .line 188
    .line 189
    const-string p2, "start > end"

    .line 190
    .line 191
    invoke-direct {p1, p2}, Ljava/lang/StringIndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

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

.method public final C(II)Ljava/lang/String;
    .locals 9

    .line 1
    if-gt p1, p2, :cond_0

    .line 2
    .line 3
    const/4 v0, 0x0

    .line 4
    invoke-virtual {p0, v0}, Lmb/g;->u(Z)V

    .line 5
    .line 6
    .line 7
    :try_start_0
    invoke-virtual {p0}, Lmb/g;->n()Lmb/a;

    .line 8
    .line 9
    .line 10
    move-result-object v1

    .line 11
    invoke-virtual {v1, p1}, Lmb/a;->z(I)Lmb/b;

    .line 12
    .line 13
    .line 14
    move-result-object v1

    .line 15
    invoke-virtual {p0}, Lmb/g;->n()Lmb/a;

    .line 16
    .line 17
    .line 18
    move-result-object v2

    .line 19
    invoke-virtual {v2, p2}, Lmb/a;->z(I)Lmb/b;

    .line 20
    .line 21
    .line 22
    move-result-object v2

    .line 23
    iget v4, v1, Lmb/b;->b:I

    .line 24
    .line 25
    iget v5, v1, Lmb/b;->c:I

    .line 26
    .line 27
    iget v6, v2, Lmb/b;->b:I

    .line 28
    .line 29
    iget v7, v2, Lmb/b;->c:I

    .line 30
    .line 31
    sub-int/2addr p2, p1

    .line 32
    add-int/lit8 v8, p2, 0x1

    .line 33
    .line 34
    move-object v3, p0

    .line 35
    invoke-virtual/range {v3 .. v8}, Lmb/g;->B(IIIII)Ljava/lang/StringBuilder;

    .line 36
    .line 37
    .line 38
    move-result-object p1

    .line 39
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 40
    .line 41
    .line 42
    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 43
    invoke-virtual {p0, v0}, Lmb/g;->E(Z)V

    .line 44
    .line 45
    .line 46
    return-object p1

    .line 47
    :catchall_0
    move-exception p1

    .line 48
    invoke-virtual {p0, v0}, Lmb/g;->E(Z)V

    .line 49
    .line 50
    .line 51
    throw p1

    .line 52
    :cond_0
    new-instance p1, Ljava/lang/StringIndexOutOfBoundsException;

    .line 53
    .line 54
    const-string p2, "start > end"

    .line 55
    .line 56
    invoke-direct {p1, p2}, Ljava/lang/StringIndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    .line 57
    .line 58
    .line 59
    throw p1
.end method

.method public final D()Ljava/lang/StringBuilder;
    .locals 6

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 4
    .line 5
    .line 6
    iget-object v1, p0, Lmb/g;->a:Ljava/util/ArrayList;

    .line 7
    .line 8
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    .line 9
    .line 10
    .line 11
    move-result v2

    .line 12
    iget v3, p0, Lmb/g;->d:I

    .line 13
    .line 14
    add-int/2addr v2, v3

    .line 15
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->ensureCapacity(I)V

    .line 16
    .line 17
    .line 18
    const/4 v2, 0x0

    .line 19
    invoke-virtual {p0, v2}, Lmb/g;->u(Z)V

    .line 20
    .line 21
    .line 22
    :try_start_0
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    .line 23
    .line 24
    .line 25
    move-result v3

    .line 26
    const/4 v4, 0x0

    .line 27
    :goto_0
    if-ge v4, v3, :cond_0

    .line 28
    .line 29
    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 30
    .line 31
    .line 32
    move-result-object v5

    .line 33
    check-cast v5, Lmb/h;

    .line 34
    .line 35
    invoke-virtual {v5, v0}, Lmb/h;->a(Ljava/lang/StringBuilder;)V

    .line 36
    .line 37
    .line 38
    invoke-virtual {v5}, Lmb/h;->d()Lmb/m;

    .line 39
    .line 40
    .line 41
    move-result-object v5

    .line 42
    iget-object v5, v5, Lmb/m;->a:Ljava/lang/String;

    .line 43
    .line 44
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 45
    .line 46
    .line 47
    add-int/lit8 v4, v4, 0x1

    .line 48
    .line 49
    goto :goto_0

    .line 50
    :catchall_0
    move-exception v0

    .line 51
    goto :goto_1

    .line 52
    :cond_0
    invoke-virtual {p0, v2}, Lmb/g;->E(Z)V

    .line 53
    .line 54
    .line 55
    return-object v0

    .line 56
    :goto_1
    invoke-virtual {p0, v2}, Lmb/g;->E(Z)V

    .line 57
    .line 58
    .line 59
    goto :goto_3

    .line 60
    :goto_2
    throw v0

    .line 61
    :goto_3
    goto :goto_2
.end method

.method public final E(Z)V
    .locals 1

    .line 1
    iget-object v0, p0, Lmb/g;->c:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    if-eqz p1, :cond_1

    .line 7
    .line 8
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->writeLock()Ljava/util/concurrent/locks/Lock;

    .line 9
    .line 10
    .line 11
    move-result-object p1

    .line 12
    goto :goto_0

    .line 13
    :cond_1
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/Lock;

    .line 14
    .line 15
    .line 16
    move-result-object p1

    .line 17
    :goto_0
    invoke-interface {p1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 18
    .line 19
    .line 20
    return-void
.end method

.method public final a(Lmb/i;)V
    .locals 2

    .line 1
    instance-of v0, p1, Lmb/a;

    .line 2
    .line 3
    if-nez v0, :cond_1

    .line 4
    .line 5
    iget-object v0, p0, Lmb/g;->b:Ljava/util/ArrayList;

    .line 6
    .line 7
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    .line 8
    .line 9
    .line 10
    move-result v1

    .line 11
    if-nez v1, :cond_0

    .line 12
    .line 13
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 14
    .line 15
    .line 16
    :cond_0
    return-void

    .line 17
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 18
    .line 19
    const-string v0, "Permission denied"

    .line 20
    .line 21
    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 22
    .line 23
    .line 24
    throw p1
.end method

.method public final b()Z
    .locals 2

    .line 1
    iget v0, p0, Lmb/g;->e:I

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    add-int/2addr v0, v1

    .line 5
    iput v0, p0, Lmb/g;->e:I

    .line 6
    .line 7
    if-lez v0, :cond_0

    .line 8
    .line 9
    goto :goto_0

    .line 10
    :cond_0
    const/4 v1, 0x0

    .line 11
    :goto_0
    return v1
.end method

.method public final c(II)C
    .locals 2

    .line 1
    const/4 v0, 0x0

    .line 2
    invoke-virtual {p0, v0}, Lmb/g;->u(Z)V

    .line 3
    .line 4
    .line 5
    :try_start_0
    invoke-virtual {p0, p1, p2, v0}, Lmb/g;->f(III)V

    .line 6
    .line 7
    .line 8
    iget-object v1, p0, Lmb/g;->a:Ljava/util/ArrayList;

    .line 9
    .line 10
    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 11
    .line 12
    .line 13
    move-result-object p1

    .line 14
    check-cast p1, Lmb/h;

    .line 15
    .line 16
    invoke-virtual {p1, p2}, Lmb/h;->charAt(I)C

    .line 17
    .line 18
    .line 19
    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 20
    invoke-virtual {p0, v0}, Lmb/g;->E(Z)V

    .line 21
    .line 22
    .line 23
    return p1

    .line 24
    :catchall_0
    move-exception p1

    .line 25
    invoke-virtual {p0, v0}, Lmb/g;->E(Z)V

    .line 26
    .line 27
    .line 28
    throw p1
.end method

.method public final charAt(I)C
    .locals 3

    .line 1
    const/4 v0, 0x0

    .line 2
    invoke-virtual {p0, p1, v0}, Lmb/g;->d(II)V

    .line 3
    .line 4
    .line 5
    invoke-virtual {p0, v0}, Lmb/g;->u(Z)V

    .line 6
    .line 7
    .line 8
    :try_start_0
    invoke-virtual {p0}, Lmb/g;->n()Lmb/a;

    .line 9
    .line 10
    .line 11
    move-result-object v1

    .line 12
    invoke-virtual {v1, p1}, Lmb/a;->z(I)Lmb/b;

    .line 13
    .line 14
    .line 15
    move-result-object p1

    .line 16
    iget-object v1, p0, Lmb/g;->a:Ljava/util/ArrayList;

    .line 17
    .line 18
    iget v2, p1, Lmb/b;->b:I

    .line 19
    .line 20
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 21
    .line 22
    .line 23
    move-result-object v1

    .line 24
    check-cast v1, Lmb/h;

    .line 25
    .line 26
    iget p1, p1, Lmb/b;->c:I

    .line 27
    .line 28
    invoke-virtual {v1, p1}, Lmb/h;->charAt(I)C

    .line 29
    .line 30
    .line 31
    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 32
    invoke-virtual {p0, v0}, Lmb/g;->E(Z)V

    .line 33
    .line 34
    .line 35
    return p1

    .line 36
    :catchall_0
    move-exception p1

    .line 37
    invoke-virtual {p0, v0}, Lmb/g;->E(Z)V

    .line 38
    .line 39
    .line 40
    throw p1
.end method

.method public final d(II)V
    .locals 2

    .line 1
    if-nez p2, :cond_0

    .line 2
    .line 3
    iget p2, p0, Lmb/g;->d:I

    .line 4
    .line 5
    if-ge p1, p2, :cond_1

    .line 6
    .line 7
    goto :goto_0

    .line 8
    :cond_0
    iget p2, p0, Lmb/g;->d:I

    .line 9
    .line 10
    if-gt p1, p2, :cond_1

    .line 11
    .line 12
    :goto_0
    if-ltz p1, :cond_1

    .line 13
    .line 14
    return-void

    .line 15
    :cond_1
    new-instance p2, Ljava/lang/StringIndexOutOfBoundsException;

    .line 16
    .line 17
    const-string v0, "Index "

    .line 18
    .line 19
    const-string v1, " out of bounds. length:"

    .line 20
    .line 21
    invoke-static {v0, p1, v1}, Lg/b;->n(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/StringBuilder;

    .line 22
    .line 23
    .line 24
    move-result-object p1

    .line 25
    iget v0, p0, Lmb/g;->d:I

    .line 26
    .line 27
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 28
    .line 29
    .line 30
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 31
    .line 32
    .line 33
    move-result-object p1

    .line 34
    invoke-direct {p2, p1}, Ljava/lang/StringIndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    .line 35
    .line 36
    .line 37
    throw p2
.end method

.method public final e(I)V
    .locals 4

    .line 1
    iget-object v0, p0, Lmb/g;->a:Ljava/util/ArrayList;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 4
    .line 5
    .line 6
    move-result v1

    .line 7
    if-ge p1, v1, :cond_0

    .line 8
    .line 9
    if-ltz p1, :cond_0

    .line 10
    .line 11
    return-void

    .line 12
    :cond_0
    new-instance v1, Ljava/lang/StringIndexOutOfBoundsException;

    .line 13
    .line 14
    const-string v2, "Line "

    .line 15
    .line 16
    const-string v3, " out of bounds. line count:"

    .line 17
    .line 18
    invoke-static {v2, p1, v3}, Lg/b;->n(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/StringBuilder;

    .line 19
    .line 20
    .line 21
    move-result-object p1

    .line 22
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 23
    .line 24
    .line 25
    move-result v0

    .line 26
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 27
    .line 28
    .line 29
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 30
    .line 31
    .line 32
    move-result-object p1

    .line 33
    invoke-direct {v1, p1}, Ljava/lang/StringIndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    .line 34
    .line 35
    .line 36
    throw v1
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 7

    .line 1
    instance-of v0, p1, Lmb/g;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-eqz v0, :cond_6

    .line 5
    .line 6
    check-cast p1, Lmb/g;

    .line 7
    .line 8
    iget v0, p1, Lmb/g;->d:I

    .line 9
    .line 10
    iget v2, p0, Lmb/g;->d:I

    .line 11
    .line 12
    if-eq v0, v2, :cond_0

    .line 13
    .line 14
    return v1

    .line 15
    :cond_0
    const/4 v0, 0x0

    .line 16
    :goto_0
    iget-object v2, p0, Lmb/g;->a:Ljava/util/ArrayList;

    .line 17
    .line 18
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    .line 19
    .line 20
    .line 21
    move-result v3

    .line 22
    if-ge v0, v3, :cond_5

    .line 23
    .line 24
    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 25
    .line 26
    .line 27
    move-result-object v2

    .line 28
    check-cast v2, Lmb/h;

    .line 29
    .line 30
    iget-object v3, p1, Lmb/g;->a:Ljava/util/ArrayList;

    .line 31
    .line 32
    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 33
    .line 34
    .line 35
    move-result-object v3

    .line 36
    check-cast v3, Lmb/h;

    .line 37
    .line 38
    iget v4, v2, Lmb/h;->c:I

    .line 39
    .line 40
    iget v5, v3, Lmb/h;->c:I

    .line 41
    .line 42
    if-eq v4, v5, :cond_1

    .line 43
    .line 44
    goto :goto_2

    .line 45
    :cond_1
    if-ne v2, v3, :cond_2

    .line 46
    .line 47
    goto :goto_3

    .line 48
    :cond_2
    const/4 v4, 0x0

    .line 49
    :goto_1
    iget v5, v2, Lmb/h;->c:I

    .line 50
    .line 51
    if-ge v4, v5, :cond_4

    .line 52
    .line 53
    invoke-virtual {v2, v4}, Lmb/h;->charAt(I)C

    .line 54
    .line 55
    .line 56
    move-result v5

    .line 57
    invoke-virtual {v3, v4}, Lmb/h;->charAt(I)C

    .line 58
    .line 59
    .line 60
    move-result v6

    .line 61
    if-eq v5, v6, :cond_3

    .line 62
    .line 63
    :goto_2
    return v1

    .line 64
    :cond_3
    add-int/lit8 v4, v4, 0x1

    .line 65
    .line 66
    goto :goto_1

    .line 67
    :cond_4
    :goto_3
    add-int/lit8 v0, v0, 0x1

    .line 68
    .line 69
    goto :goto_0

    .line 70
    :cond_5
    const/4 p1, 0x1

    .line 71
    return p1

    .line 72
    :cond_6
    return v1
.end method

.method public final f(III)V
    .locals 8

    .line 1
    invoke-virtual {p0, p1}, Lmb/g;->e(I)V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lmb/g;->a:Ljava/util/ArrayList;

    .line 5
    .line 6
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 7
    .line 8
    .line 9
    move-result-object v1

    .line 10
    check-cast v1, Lmb/h;

    .line 11
    .line 12
    const-string v2, ")"

    .line 13
    .line 14
    const-string v3, ", valid range: [0, "

    .line 15
    .line 16
    const-string v4, "Column "

    .line 17
    .line 18
    if-eqz p3, :cond_6

    .line 19
    .line 20
    const-string v5, "]"

    .line 21
    .line 22
    const/4 v6, 0x1

    .line 23
    if-eq p3, v6, :cond_4

    .line 24
    .line 25
    const/4 v7, 0x2

    .line 26
    if-eq p3, v7, :cond_0

    .line 27
    .line 28
    goto :goto_0

    .line 29
    :cond_0
    iget p3, v1, Lmb/h;->c:I

    .line 30
    .line 31
    invoke-virtual {v1}, Lmb/h;->d()Lmb/m;

    .line 32
    .line 33
    .line 34
    move-result-object v1

    .line 35
    iget v1, v1, Lmb/m;->b:I

    .line 36
    .line 37
    add-int/2addr p3, v1

    .line 38
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 39
    .line 40
    .line 41
    move-result v0

    .line 42
    sub-int/2addr v0, v6

    .line 43
    const-string v1, " out of bounds for INDEX. line: "

    .line 44
    .line 45
    if-ne p1, v0, :cond_2

    .line 46
    .line 47
    if-gt p2, p3, :cond_1

    .line 48
    .line 49
    if-ltz p2, :cond_1

    .line 50
    .line 51
    goto :goto_0

    .line 52
    :cond_1
    new-instance v0, Ljava/lang/StringIndexOutOfBoundsException;

    .line 53
    .line 54
    invoke-static {p2, p1, v4, v1, v3}, Lta/q;->o(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 55
    .line 56
    .line 57
    move-result-object p1

    .line 58
    invoke-static {p1, p3, v5}, Landroid/support/v4/media/session/a;->s(Ljava/lang/StringBuilder;ILjava/lang/String;)Ljava/lang/String;

    .line 59
    .line 60
    .line 61
    move-result-object p1

    .line 62
    invoke-direct {v0, p1}, Ljava/lang/StringIndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    .line 63
    .line 64
    .line 65
    throw v0

    .line 66
    :cond_2
    if-ge p2, p3, :cond_3

    .line 67
    .line 68
    if-ltz p2, :cond_3

    .line 69
    .line 70
    goto :goto_0

    .line 71
    :cond_3
    new-instance v0, Ljava/lang/StringIndexOutOfBoundsException;

    .line 72
    .line 73
    invoke-static {p2, p1, v4, v1, v3}, Lta/q;->o(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 74
    .line 75
    .line 76
    move-result-object p1

    .line 77
    invoke-static {p1, p3, v2}, Landroid/support/v4/media/session/a;->s(Ljava/lang/StringBuilder;ILjava/lang/String;)Ljava/lang/String;

    .line 78
    .line 79
    .line 80
    move-result-object p1

    .line 81
    invoke-direct {v0, p1}, Ljava/lang/StringIndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    .line 82
    .line 83
    .line 84
    throw v0

    .line 85
    :cond_4
    iget p3, v1, Lmb/h;->c:I

    .line 86
    .line 87
    if-gt p2, p3, :cond_5

    .line 88
    .line 89
    if-ltz p2, :cond_5

    .line 90
    .line 91
    goto :goto_0

    .line 92
    :cond_5
    new-instance v0, Ljava/lang/StringIndexOutOfBoundsException;

    .line 93
    .line 94
    const-string v1, " out of bounds for CURSOR. line: "

    .line 95
    .line 96
    invoke-static {p2, p1, v4, v1, v3}, Lta/q;->o(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 97
    .line 98
    .line 99
    move-result-object p1

    .line 100
    invoke-static {p1, p3, v5}, Landroid/support/v4/media/session/a;->s(Ljava/lang/StringBuilder;ILjava/lang/String;)Ljava/lang/String;

    .line 101
    .line 102
    .line 103
    move-result-object p1

    .line 104
    invoke-direct {v0, p1}, Ljava/lang/StringIndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    .line 105
    .line 106
    .line 107
    throw v0

    .line 108
    :cond_6
    iget p3, v1, Lmb/h;->c:I

    .line 109
    .line 110
    invoke-virtual {v1}, Lmb/h;->d()Lmb/m;

    .line 111
    .line 112
    .line 113
    move-result-object v0

    .line 114
    iget v0, v0, Lmb/m;->b:I

    .line 115
    .line 116
    add-int/2addr p3, v0

    .line 117
    if-ge p2, p3, :cond_7

    .line 118
    .line 119
    if-ltz p2, :cond_7

    .line 120
    .line 121
    :goto_0
    return-void

    .line 122
    :cond_7
    new-instance v0, Ljava/lang/StringIndexOutOfBoundsException;

    .line 123
    .line 124
    const-string v1, " out of bounds for READ. line: "

    .line 125
    .line 126
    invoke-static {p2, p1, v4, v1, v3}, Lta/q;->o(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 127
    .line 128
    .line 129
    move-result-object p1

    .line 130
    invoke-static {p1, p3, v2}, Landroid/support/v4/media/session/a;->s(Ljava/lang/StringBuilder;ILjava/lang/String;)Ljava/lang/String;

    .line 131
    .line 132
    .line 133
    move-result-object p1

    .line 134
    invoke-direct {v0, p1}, Ljava/lang/StringIndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    .line 135
    .line 136
    .line 137
    throw v0
.end method

.method public final g(II)V
    .locals 3

    .line 1
    const/4 v0, 0x1

    .line 2
    invoke-virtual {p0, v0}, Lmb/g;->u(Z)V

    .line 3
    .line 4
    .line 5
    invoke-virtual {p0, p1, v0}, Lmb/g;->d(II)V

    .line 6
    .line 7
    .line 8
    invoke-virtual {p0, p2, v0}, Lmb/g;->d(II)V

    .line 9
    .line 10
    .line 11
    iget-object v1, p0, Lmb/g;->f:Ljava/util/concurrent/atomic/AtomicLong;

    .line 12
    .line 13
    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicLong;->getAndIncrement()J

    .line 14
    .line 15
    .line 16
    :try_start_0
    invoke-virtual {p0}, Lmb/g;->n()Lmb/a;

    .line 17
    .line 18
    .line 19
    move-result-object v1

    .line 20
    invoke-virtual {v1, p1}, Lmb/a;->z(I)Lmb/b;

    .line 21
    .line 22
    .line 23
    move-result-object v1

    .line 24
    invoke-virtual {p0}, Lmb/g;->n()Lmb/a;

    .line 25
    .line 26
    .line 27
    move-result-object v2

    .line 28
    invoke-virtual {v2, p2}, Lmb/a;->z(I)Lmb/b;

    .line 29
    .line 30
    .line 31
    move-result-object v2

    .line 32
    if-eq p1, p2, :cond_0

    .line 33
    .line 34
    iget p1, v1, Lmb/b;->b:I

    .line 35
    .line 36
    iget p2, v1, Lmb/b;->c:I

    .line 37
    .line 38
    iget v1, v2, Lmb/b;->b:I

    .line 39
    .line 40
    iget v2, v2, Lmb/b;->c:I

    .line 41
    .line 42
    invoke-virtual {p0, p1, p2, v1, v2}, Lmb/g;->i(IIII)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 43
    .line 44
    .line 45
    goto :goto_0

    .line 46
    :catchall_0
    move-exception p1

    .line 47
    goto :goto_1

    .line 48
    :cond_0
    :goto_0
    invoke-virtual {p0, v0}, Lmb/g;->E(Z)V

    .line 49
    .line 50
    .line 51
    return-void

    .line 52
    :goto_1
    invoke-virtual {p0, v0}, Lmb/g;->E(Z)V

    .line 53
    .line 54
    .line 55
    throw p1
.end method

.method public final h(IIII)V
    .locals 2

    .line 1
    const/4 v0, 0x1

    .line 2
    invoke-virtual {p0, v0}, Lmb/g;->u(Z)V

    .line 3
    .line 4
    .line 5
    iget-object v1, p0, Lmb/g;->f:Ljava/util/concurrent/atomic/AtomicLong;

    .line 6
    .line 7
    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicLong;->getAndIncrement()J

    .line 8
    .line 9
    .line 10
    :try_start_0
    invoke-virtual {p0, p1, p2, p3, p4}, Lmb/g;->i(IIII)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 11
    .line 12
    .line 13
    invoke-virtual {p0, v0}, Lmb/g;->E(Z)V

    .line 14
    .line 15
    .line 16
    return-void

    .line 17
    :catchall_0
    move-exception p1

    .line 18
    invoke-virtual {p0, v0}, Lmb/g;->E(Z)V

    .line 19
    .line 20
    .line 21
    throw p1
.end method

.method public final hashCode()I
    .locals 4

    .line 1
    iget-object v0, p0, Lmb/g;->a:Ljava/util/ArrayList;

    .line 2
    .line 3
    iget v1, p0, Lmb/g;->d:I

    .line 4
    .line 5
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 6
    .line 7
    .line 8
    move-result-object v1

    .line 9
    const/4 v2, 0x2

    .line 10
    new-array v2, v2, [Ljava/lang/Object;

    .line 11
    .line 12
    const/4 v3, 0x0

    .line 13
    aput-object v0, v2, v3

    .line 14
    .line 15
    const/4 v0, 0x1

    .line 16
    aput-object v1, v2, v0

    .line 17
    .line 18
    invoke-static {v2}, Lj$/util/Objects;->hash([Ljava/lang/Object;)I

    .line 19
    .line 20
    .line 21
    move-result v0

    .line 22
    return v0
.end method

.method public final i(IIII)V
    .locals 10

    .line 1
    const/4 v0, 0x1

    .line 2
    invoke-virtual {p0, p3, p4, v0}, Lmb/g;->f(III)V

    .line 3
    .line 4
    .line 5
    invoke-virtual {p0, p1, p2, v0}, Lmb/g;->f(III)V

    .line 6
    .line 7
    .line 8
    if-ne p1, p3, :cond_0

    .line 9
    .line 10
    if-ne p2, p4, :cond_0

    .line 11
    .line 12
    return-void

    .line 13
    :cond_0
    iget-object v0, p0, Lmb/g;->a:Ljava/util/ArrayList;

    .line 14
    .line 15
    invoke-virtual {v0, p3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 16
    .line 17
    .line 18
    move-result-object v1

    .line 19
    check-cast v1, Lmb/h;

    .line 20
    .line 21
    iget v1, v1, Lmb/h;->c:I

    .line 22
    .line 23
    const/4 v2, 0x0

    .line 24
    if-le p4, v1, :cond_1

    .line 25
    .line 26
    add-int/lit8 v1, p3, 0x1

    .line 27
    .line 28
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 29
    .line 30
    .line 31
    move-result v3

    .line 32
    if-ge v1, v3, :cond_1

    .line 33
    .line 34
    invoke-virtual {p0, p1, p2, v1, v2}, Lmb/g;->i(IIII)V

    .line 35
    .line 36
    .line 37
    return-void

    .line 38
    :cond_1
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 39
    .line 40
    .line 41
    move-result-object v1

    .line 42
    check-cast v1, Lmb/h;

    .line 43
    .line 44
    iget v1, v1, Lmb/h;->c:I

    .line 45
    .line 46
    if-le p2, v1, :cond_2

    .line 47
    .line 48
    invoke-virtual {p0, p1, v1, p3, p4}, Lmb/g;->i(IIII)V

    .line 49
    .line 50
    .line 51
    return-void

    .line 52
    :cond_2
    new-instance v1, Ljava/lang/StringBuilder;

    .line 53
    .line 54
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 55
    .line 56
    .line 57
    if-ne p1, p3, :cond_5

    .line 58
    .line 59
    invoke-virtual {p0, p1}, Lmb/g;->v(I)Lmb/h;

    .line 60
    .line 61
    .line 62
    move-result-object v0

    .line 63
    iget v3, v0, Lmb/h;->c:I

    .line 64
    .line 65
    if-ltz p2, :cond_4

    .line 66
    .line 67
    if-gt p4, v3, :cond_4

    .line 68
    .line 69
    if-gt p2, p4, :cond_4

    .line 70
    .line 71
    iget-object v3, p0, Lmb/g;->j:Lmb/j;

    .line 72
    .line 73
    if-eqz v3, :cond_3

    .line 74
    .line 75
    iget-object v4, v3, Lmb/j;->b:Lmb/a;

    .line 76
    .line 77
    invoke-virtual {v4, p1, p2}, Lmb/a;->A(II)Lmb/b;

    .line 78
    .line 79
    .line 80
    move-result-object v5

    .line 81
    invoke-virtual {v5}, Lmb/b;->a()Lmb/b;

    .line 82
    .line 83
    .line 84
    move-result-object v5

    .line 85
    iput-object v5, v3, Lmb/j;->f:Lmb/b;

    .line 86
    .line 87
    invoke-virtual {v4, p3, p4}, Lmb/a;->A(II)Lmb/b;

    .line 88
    .line 89
    .line 90
    move-result-object v4

    .line 91
    invoke-virtual {v4}, Lmb/b;->a()Lmb/b;

    .line 92
    .line 93
    .line 94
    move-result-object v4

    .line 95
    iput-object v4, v3, Lmb/j;->g:Lmb/b;

    .line 96
    .line 97
    :cond_3
    invoke-virtual {p0}, Lmb/g;->j()V

    .line 98
    .line 99
    .line 100
    invoke-virtual {v1, v0, p2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;II)Ljava/lang/StringBuilder;

    .line 101
    .line 102
    .line 103
    invoke-virtual {v0, p2, p4}, Lmb/h;->c(II)V

    .line 104
    .line 105
    .line 106
    iget v0, p0, Lmb/g;->d:I

    .line 107
    .line 108
    sub-int v3, p4, p2

    .line 109
    .line 110
    sub-int/2addr v0, v3

    .line 111
    iput v0, p0, Lmb/g;->d:I

    .line 112
    .line 113
    goto/16 :goto_1

    .line 114
    .line 115
    :cond_4
    new-instance p1, Ljava/lang/StringIndexOutOfBoundsException;

    .line 116
    .line 117
    const-string p2, "invalid bounds"

    .line 118
    .line 119
    invoke-direct {p1, p2}, Ljava/lang/StringIndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    .line 120
    .line 121
    .line 122
    throw p1

    .line 123
    :cond_5
    if-ge p1, p3, :cond_d

    .line 124
    .line 125
    iget-object v3, p0, Lmb/g;->j:Lmb/j;

    .line 126
    .line 127
    if-eqz v3, :cond_6

    .line 128
    .line 129
    iget-object v4, v3, Lmb/j;->b:Lmb/a;

    .line 130
    .line 131
    invoke-virtual {v4, p1, p2}, Lmb/a;->A(II)Lmb/b;

    .line 132
    .line 133
    .line 134
    move-result-object v5

    .line 135
    invoke-virtual {v5}, Lmb/b;->a()Lmb/b;

    .line 136
    .line 137
    .line 138
    move-result-object v5

    .line 139
    iput-object v5, v3, Lmb/j;->f:Lmb/b;

    .line 140
    .line 141
    invoke-virtual {v4, p3, p4}, Lmb/a;->A(II)Lmb/b;

    .line 142
    .line 143
    .line 144
    move-result-object v4

    .line 145
    invoke-virtual {v4}, Lmb/b;->a()Lmb/b;

    .line 146
    .line 147
    .line 148
    move-result-object v4

    .line 149
    iput-object v4, v3, Lmb/j;->g:Lmb/b;

    .line 150
    .line 151
    :cond_6
    invoke-virtual {p0}, Lmb/g;->j()V

    .line 152
    .line 153
    .line 154
    add-int/lit8 v3, p1, 0x1

    .line 155
    .line 156
    move v4, v3

    .line 157
    :goto_0
    add-int/lit8 v5, p3, -0x1

    .line 158
    .line 159
    if-gt v4, v5, :cond_7

    .line 160
    .line 161
    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 162
    .line 163
    .line 164
    move-result-object v5

    .line 165
    check-cast v5, Lmb/h;

    .line 166
    .line 167
    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 168
    .line 169
    .line 170
    move-result-object v6

    .line 171
    check-cast v6, Lmb/h;

    .line 172
    .line 173
    invoke-virtual {v6}, Lmb/h;->d()Lmb/m;

    .line 174
    .line 175
    .line 176
    move-result-object v6

    .line 177
    iget v7, p0, Lmb/g;->d:I

    .line 178
    .line 179
    iget v8, v5, Lmb/h;->c:I

    .line 180
    .line 181
    iget v9, v6, Lmb/m;->b:I

    .line 182
    .line 183
    add-int/2addr v8, v9

    .line 184
    sub-int/2addr v7, v8

    .line 185
    iput v7, p0, Lmb/g;->d:I

    .line 186
    .line 187
    invoke-virtual {v5, v1}, Lmb/h;->a(Ljava/lang/StringBuilder;)V

    .line 188
    .line 189
    .line 190
    iget-object v5, v6, Lmb/m;->a:Ljava/lang/String;

    .line 191
    .line 192
    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 193
    .line 194
    .line 195
    add-int/lit8 v4, v4, 0x1

    .line 196
    .line 197
    goto :goto_0

    .line 198
    :cond_7
    if-le p3, v3, :cond_8

    .line 199
    .line 200
    invoke-virtual {v0, v3, p3}, Ljava/util/ArrayList;->subList(II)Ljava/util/List;

    .line 201
    .line 202
    .line 203
    move-result-object v4

    .line 204
    invoke-interface {v4}, Ljava/util/List;->clear()V

    .line 205
    .line 206
    .line 207
    :cond_8
    invoke-virtual {p0, p1}, Lmb/g;->v(I)Lmb/h;

    .line 208
    .line 209
    .line 210
    move-result-object v4

    .line 211
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 212
    .line 213
    .line 214
    move-result-object v5

    .line 215
    check-cast v5, Lmb/h;

    .line 216
    .line 217
    iget v6, p0, Lmb/g;->d:I

    .line 218
    .line 219
    iget v7, v4, Lmb/h;->c:I

    .line 220
    .line 221
    sub-int v8, v7, p2

    .line 222
    .line 223
    sub-int/2addr v6, v8

    .line 224
    iput v6, p0, Lmb/g;->d:I

    .line 225
    .line 226
    invoke-virtual {v1, v2, v4, p2, v7}, Ljava/lang/StringBuilder;->insert(ILjava/lang/CharSequence;II)Ljava/lang/StringBuilder;

    .line 227
    .line 228
    .line 229
    move-result-object v6

    .line 230
    iget v7, v4, Lmb/h;->c:I

    .line 231
    .line 232
    sub-int/2addr v7, p2

    .line 233
    invoke-virtual {v4}, Lmb/h;->d()Lmb/m;

    .line 234
    .line 235
    .line 236
    move-result-object v8

    .line 237
    iget-object v8, v8, Lmb/m;->a:Ljava/lang/String;

    .line 238
    .line 239
    invoke-virtual {v6, v7, v8}, Ljava/lang/StringBuilder;->insert(ILjava/lang/String;)Ljava/lang/StringBuilder;

    .line 240
    .line 241
    .line 242
    iget v6, v4, Lmb/h;->c:I

    .line 243
    .line 244
    invoke-virtual {v4, p2, v6}, Lmb/h;->c(II)V

    .line 245
    .line 246
    .line 247
    iget v6, p0, Lmb/g;->d:I

    .line 248
    .line 249
    sub-int/2addr v6, p4

    .line 250
    iput v6, p0, Lmb/g;->d:I

    .line 251
    .line 252
    invoke-virtual {v1, v5, v2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;II)Ljava/lang/StringBuilder;

    .line 253
    .line 254
    .line 255
    iget v6, p0, Lmb/g;->d:I

    .line 256
    .line 257
    invoke-virtual {v4}, Lmb/h;->d()Lmb/m;

    .line 258
    .line 259
    .line 260
    move-result-object v7

    .line 261
    iget v7, v7, Lmb/m;->b:I

    .line 262
    .line 263
    sub-int/2addr v6, v7

    .line 264
    iput v6, p0, Lmb/g;->d:I

    .line 265
    .line 266
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 267
    .line 268
    .line 269
    new-instance v0, Lmb/p;

    .line 270
    .line 271
    iget v3, v5, Lmb/h;->c:I

    .line 272
    .line 273
    invoke-direct {v0, p4, v3, v5}, Lmb/p;-><init>(IILjava/lang/CharSequence;)V

    .line 274
    .line 275
    .line 276
    iget v3, v4, Lmb/h;->c:I

    .line 277
    .line 278
    invoke-virtual {v0}, Lmb/p;->length()I

    .line 279
    .line 280
    .line 281
    move-result v6

    .line 282
    invoke-virtual {v4, v3, v2, v6, v0}, Lmb/h;->e(IIILjava/lang/CharSequence;)V

    .line 283
    .line 284
    .line 285
    invoke-virtual {v5}, Lmb/h;->d()Lmb/m;

    .line 286
    .line 287
    .line 288
    move-result-object v0

    .line 289
    iput-object v0, v4, Lmb/h;->e:Lmb/m;

    .line 290
    .line 291
    :goto_1
    iget-object v3, p0, Lmb/g;->i:Lmb/w;

    .line 292
    .line 293
    move-object v4, p0

    .line 294
    move v5, p1

    .line 295
    move v6, p2

    .line 296
    move v7, p3

    .line 297
    move v8, p4

    .line 298
    move-object v9, v1

    .line 299
    invoke-virtual/range {v3 .. v9}, Lmb/w;->k(Lmb/g;IIIILjava/lang/StringBuilder;)V

    .line 300
    .line 301
    .line 302
    iget-object v0, p0, Lmb/g;->j:Lmb/j;

    .line 303
    .line 304
    if-eqz v0, :cond_a

    .line 305
    .line 306
    iget-object v3, v0, Lmb/j;->b:Lmb/a;

    .line 307
    .line 308
    iget-object v4, v0, Lmb/j;->a:Lmb/g;

    .line 309
    .line 310
    move v5, p1

    .line 311
    move v6, p2

    .line 312
    move v7, p3

    .line 313
    move v8, p4

    .line 314
    move-object v9, v1

    .line 315
    invoke-virtual/range {v3 .. v9}, Lmb/a;->k(Lmb/g;IIIILjava/lang/StringBuilder;)V

    .line 316
    .line 317
    .line 318
    iget-object v3, v0, Lmb/j;->f:Lmb/b;

    .line 319
    .line 320
    iget v3, v3, Lmb/b;->a:I

    .line 321
    .line 322
    iget-object v4, v0, Lmb/j;->g:Lmb/b;

    .line 323
    .line 324
    iget v4, v4, Lmb/b;->a:I

    .line 325
    .line 326
    iget-object v5, v0, Lmb/j;->c:Lmb/b;

    .line 327
    .line 328
    iget v5, v5, Lmb/b;->a:I

    .line 329
    .line 330
    iget-object v6, v0, Lmb/j;->d:Lmb/b;

    .line 331
    .line 332
    iget v6, v6, Lmb/b;->a:I

    .line 333
    .line 334
    if-le v3, v6, :cond_9

    .line 335
    .line 336
    goto :goto_2

    .line 337
    :cond_9
    sub-int v7, v5, v3

    .line 338
    .line 339
    sub-int/2addr v4, v3

    .line 340
    invoke-static {v7, v4}, Ljava/lang/Math;->min(II)I

    .line 341
    .line 342
    .line 343
    move-result v7

    .line 344
    invoke-static {v2, v7}, Ljava/lang/Math;->max(II)I

    .line 345
    .line 346
    .line 347
    move-result v7

    .line 348
    sub-int/2addr v5, v7

    .line 349
    sub-int v3, v6, v3

    .line 350
    .line 351
    invoke-static {v3, v4}, Ljava/lang/Math;->min(II)I

    .line 352
    .line 353
    .line 354
    move-result v3

    .line 355
    invoke-static {v2, v3}, Ljava/lang/Math;->max(II)I

    .line 356
    .line 357
    .line 358
    move-result v2

    .line 359
    sub-int/2addr v6, v2

    .line 360
    iget-object v2, v0, Lmb/j;->b:Lmb/a;

    .line 361
    .line 362
    invoke-virtual {v2, v5}, Lmb/a;->z(I)Lmb/b;

    .line 363
    .line 364
    .line 365
    move-result-object v3

    .line 366
    invoke-virtual {v3}, Lmb/b;->a()Lmb/b;

    .line 367
    .line 368
    .line 369
    move-result-object v3

    .line 370
    iput-object v3, v0, Lmb/j;->c:Lmb/b;

    .line 371
    .line 372
    invoke-virtual {v2, v6}, Lmb/a;->z(I)Lmb/b;

    .line 373
    .line 374
    .line 375
    move-result-object v2

    .line 376
    invoke-virtual {v2}, Lmb/b;->a()Lmb/b;

    .line 377
    .line 378
    .line 379
    move-result-object v2

    .line 380
    iput-object v2, v0, Lmb/j;->d:Lmb/b;

    .line 381
    .line 382
    :cond_a
    :goto_2
    iget-object v3, p0, Lmb/g;->g:Lmb/a;

    .line 383
    .line 384
    instance-of v0, v3, Lmb/i;

    .line 385
    .line 386
    if-eqz v0, :cond_b

    .line 387
    .line 388
    move-object v4, p0

    .line 389
    move v5, p1

    .line 390
    move v6, p2

    .line 391
    move v7, p3

    .line 392
    move v8, p4

    .line 393
    move-object v9, v1

    .line 394
    invoke-virtual/range {v3 .. v9}, Lmb/a;->k(Lmb/g;IIIILjava/lang/StringBuilder;)V

    .line 395
    .line 396
    .line 397
    :cond_b
    iget-object v0, p0, Lmb/g;->b:Ljava/util/ArrayList;

    .line 398
    .line 399
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 400
    .line 401
    .line 402
    move-result-object v0

    .line 403
    :goto_3
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 404
    .line 405
    .line 406
    move-result v2

    .line 407
    if-eqz v2, :cond_c

    .line 408
    .line 409
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 410
    .line 411
    .line 412
    move-result-object v2

    .line 413
    move-object v3, v2

    .line 414
    check-cast v3, Lmb/i;

    .line 415
    .line 416
    move-object v4, p0

    .line 417
    move v5, p1

    .line 418
    move v6, p2

    .line 419
    move v7, p3

    .line 420
    move v8, p4

    .line 421
    move-object v9, v1

    .line 422
    invoke-interface/range {v3 .. v9}, Lmb/i;->k(Lmb/g;IIIILjava/lang/StringBuilder;)V

    .line 423
    .line 424
    .line 425
    goto :goto_3

    .line 426
    :cond_c
    return-void

    .line 427
    :cond_d
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 428
    .line 429
    const-string p2, "start line > end line"

    .line 430
    .line 431
    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 432
    .line 433
    .line 434
    goto :goto_5

    .line 435
    :goto_4
    throw p1

    .line 436
    :goto_5
    goto :goto_4
.end method

.method public final j()V
    .locals 2

    .line 1
    iget-object v0, p0, Lmb/g;->i:Lmb/w;

    .line 2
    .line 3
    invoke-virtual {v0, p0}, Lmb/w;->b(Lmb/g;)V

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lmb/g;->b:Ljava/util/ArrayList;

    .line 7
    .line 8
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 13
    .line 14
    .line 15
    move-result v1

    .line 16
    if-eqz v1, :cond_0

    .line 17
    .line 18
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 19
    .line 20
    .line 21
    move-result-object v1

    .line 22
    check-cast v1, Lmb/i;

    .line 23
    .line 24
    invoke-interface {v1, p0}, Lmb/i;->b(Lmb/g;)V

    .line 25
    .line 26
    .line 27
    goto :goto_0

    .line 28
    :cond_0
    return-void
.end method

.method public final k()Z
    .locals 5

    .line 1
    iget v0, p0, Lmb/g;->e:I

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    sub-int/2addr v0, v1

    .line 5
    iput v0, p0, Lmb/g;->e:I

    .line 6
    .line 7
    const/4 v2, 0x0

    .line 8
    if-nez v0, :cond_0

    .line 9
    .line 10
    iget-object v0, p0, Lmb/g;->i:Lmb/w;

    .line 11
    .line 12
    iput-boolean v1, v0, Lmb/w;->h:Z

    .line 13
    .line 14
    iget-object v0, v0, Lmb/w;->a:Ljava/util/ArrayList;

    .line 15
    .line 16
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    .line 17
    .line 18
    .line 19
    move-result v3

    .line 20
    if-nez v3, :cond_0

    .line 21
    .line 22
    invoke-static {v1, v0}, Lta/q;->h(ILjava/util/ArrayList;)Ljava/lang/Object;

    .line 23
    .line 24
    .line 25
    move-result-object v3

    .line 26
    instance-of v3, v3, Lmb/u;

    .line 27
    .line 28
    if-eqz v3, :cond_0

    .line 29
    .line 30
    invoke-static {v1, v0}, Lta/q;->h(ILjava/util/ArrayList;)Ljava/lang/Object;

    .line 31
    .line 32
    .line 33
    move-result-object v3

    .line 34
    check-cast v3, Lmb/u;

    .line 35
    .line 36
    iget-object v4, v3, Lmb/u;->b:Ljava/util/ArrayList;

    .line 37
    .line 38
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    .line 39
    .line 40
    .line 41
    move-result v4

    .line 42
    if-ne v4, v1, :cond_0

    .line 43
    .line 44
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 45
    .line 46
    .line 47
    move-result v4

    .line 48
    sub-int/2addr v4, v1

    .line 49
    iget-object v3, v3, Lmb/u;->b:Ljava/util/ArrayList;

    .line 50
    .line 51
    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 52
    .line 53
    .line 54
    move-result-object v3

    .line 55
    check-cast v3, Lmb/q;

    .line 56
    .line 57
    invoke-virtual {v0, v4, v3}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 58
    .line 59
    .line 60
    :cond_0
    iget v0, p0, Lmb/g;->e:I

    .line 61
    .line 62
    if-gez v0, :cond_1

    .line 63
    .line 64
    iput v2, p0, Lmb/g;->e:I

    .line 65
    .line 66
    :cond_1
    iget v0, p0, Lmb/g;->e:I

    .line 67
    .line 68
    if-lez v0, :cond_2

    .line 69
    .line 70
    goto :goto_0

    .line 71
    :cond_2
    const/4 v1, 0x0

    .line 72
    :goto_0
    return v1
.end method

.method public final l(II)I
    .locals 2

    .line 1
    const/4 v0, 0x0

    .line 2
    invoke-virtual {p0, v0}, Lmb/g;->u(Z)V

    .line 3
    .line 4
    .line 5
    :try_start_0
    invoke-virtual {p0}, Lmb/g;->n()Lmb/a;

    .line 6
    .line 7
    .line 8
    move-result-object v1

    .line 9
    invoke-virtual {v1, p1, p2}, Lmb/a;->A(II)Lmb/b;

    .line 10
    .line 11
    .line 12
    move-result-object p1

    .line 13
    iget p1, p1, Lmb/b;->a:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 14
    .line 15
    invoke-virtual {p0, v0}, Lmb/g;->E(Z)V

    .line 16
    .line 17
    .line 18
    return p1

    .line 19
    :catchall_0
    move-exception p1

    .line 20
    invoke-virtual {p0, v0}, Lmb/g;->E(Z)V

    .line 21
    .line 22
    .line 23
    throw p1
.end method

.method public final length()I
    .locals 1

    .line 1
    iget v0, p0, Lmb/g;->d:I

    .line 2
    .line 3
    return v0
.end method

.method public final m()Lmb/j;
    .locals 1

    .line 1
    iget-object v0, p0, Lmb/g;->j:Lmb/j;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    new-instance v0, Lmb/j;

    .line 6
    .line 7
    invoke-direct {v0, p0}, Lmb/j;-><init>(Lmb/g;)V

    .line 8
    .line 9
    .line 10
    iput-object v0, p0, Lmb/g;->j:Lmb/j;

    .line 11
    .line 12
    :cond_0
    iget-object v0, p0, Lmb/g;->j:Lmb/j;

    .line 13
    .line 14
    return-object v0
.end method

.method public final n()Lmb/a;
    .locals 1

    .line 1
    iget-object v0, p0, Lmb/g;->j:Lmb/j;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    iget-object v0, v0, Lmb/j;->b:Lmb/a;

    .line 6
    .line 7
    return-object v0

    .line 8
    :cond_0
    iget-object v0, p0, Lmb/g;->g:Lmb/a;

    .line 9
    .line 10
    return-object v0
.end method

.method public final o(I)Lmb/h;
    .locals 2

    .line 1
    const/4 v0, 0x0

    .line 2
    invoke-virtual {p0, v0}, Lmb/g;->u(Z)V

    .line 3
    .line 4
    .line 5
    :try_start_0
    iget-object v1, p0, Lmb/g;->a:Ljava/util/ArrayList;

    .line 6
    .line 7
    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 8
    .line 9
    .line 10
    move-result-object p1

    .line 11
    check-cast p1, Lmb/h;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 12
    .line 13
    invoke-virtual {p0, v0}, Lmb/g;->E(Z)V

    .line 14
    .line 15
    .line 16
    return-object p1

    .line 17
    :catchall_0
    move-exception p1

    .line 18
    invoke-virtual {p0, v0}, Lmb/g;->E(Z)V

    .line 19
    .line 20
    .line 21
    throw p1
.end method

.method public final p(I)Lnb/b;
    .locals 3

    .line 1
    const/4 v0, 0x0

    .line 2
    invoke-virtual {p0, v0}, Lmb/g;->u(Z)V

    .line 3
    .line 4
    .line 5
    :try_start_0
    iget-object v1, p0, Lmb/g;->h:Lnb/a;

    .line 6
    .line 7
    iget-object v2, p0, Lmb/g;->a:Ljava/util/ArrayList;

    .line 8
    .line 9
    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 10
    .line 11
    .line 12
    move-result-object v2

    .line 13
    check-cast v2, Lmb/h;

    .line 14
    .line 15
    invoke-virtual {v1, p1, v2}, Lnb/a;->s(ILmb/h;)Lnb/b;

    .line 16
    .line 17
    .line 18
    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 19
    invoke-virtual {p0, v0}, Lmb/g;->E(Z)V

    .line 20
    .line 21
    .line 22
    return-object p1

    .line 23
    :catchall_0
    move-exception p1

    .line 24
    invoke-virtual {p0, v0}, Lmb/g;->E(Z)V

    .line 25
    .line 26
    .line 27
    throw p1
.end method

.method public final q(I)Ljava/lang/String;
    .locals 2

    .line 1
    const/4 v0, 0x0

    .line 2
    invoke-virtual {p0, v0}, Lmb/g;->u(Z)V

    .line 3
    .line 4
    .line 5
    :try_start_0
    invoke-virtual {p0, p1}, Lmb/g;->e(I)V

    .line 6
    .line 7
    .line 8
    iget-object v1, p0, Lmb/g;->a:Ljava/util/ArrayList;

    .line 9
    .line 10
    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 11
    .line 12
    .line 13
    move-result-object p1

    .line 14
    check-cast p1, Lmb/h;

    .line 15
    .line 16
    invoke-virtual {p1}, Lmb/h;->toString()Ljava/lang/String;

    .line 17
    .line 18
    .line 19
    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 20
    invoke-virtual {p0, v0}, Lmb/g;->E(Z)V

    .line 21
    .line 22
    .line 23
    return-object p1

    .line 24
    :catchall_0
    move-exception p1

    .line 25
    invoke-virtual {p0, v0}, Lmb/g;->E(Z)V

    .line 26
    .line 27
    .line 28
    throw p1
.end method

.method public final r(IILjava/lang/CharSequence;)V
    .locals 2

    .line 1
    const/4 v0, 0x1

    .line 2
    invoke-virtual {p0, v0}, Lmb/g;->u(Z)V

    .line 3
    .line 4
    .line 5
    iget-object v1, p0, Lmb/g;->f:Ljava/util/concurrent/atomic/AtomicLong;

    .line 6
    .line 7
    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicLong;->getAndIncrement()J

    .line 8
    .line 9
    .line 10
    :try_start_0
    invoke-virtual {p0, p1, p2, p3}, Lmb/g;->s(IILjava/lang/CharSequence;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 11
    .line 12
    .line 13
    invoke-virtual {p0, v0}, Lmb/g;->E(Z)V

    .line 14
    .line 15
    .line 16
    return-void

    .line 17
    :catchall_0
    move-exception p1

    .line 18
    invoke-virtual {p0, v0}, Lmb/g;->E(Z)V

    .line 19
    .line 20
    .line 21
    throw p1
.end method

.method public final s(IILjava/lang/CharSequence;)V
    .locals 16

    .line 1
    move-object/from16 v8, p0

    .line 2
    .line 3
    move/from16 v0, p1

    .line 4
    .line 5
    move/from16 v1, p2

    .line 6
    .line 7
    move-object/from16 v9, p3

    .line 8
    .line 9
    const/4 v2, 0x1

    .line 10
    invoke-virtual {v8, v0, v1, v2}, Lmb/g;->f(III)V

    .line 11
    .line 12
    .line 13
    if-eqz v9, :cond_f

    .line 14
    .line 15
    iget-object v3, v8, Lmb/g;->a:Ljava/util/ArrayList;

    .line 16
    .line 17
    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 18
    .line 19
    .line 20
    move-result-object v3

    .line 21
    check-cast v3, Lmb/h;

    .line 22
    .line 23
    iget v3, v3, Lmb/h;->c:I

    .line 24
    .line 25
    if-le v1, v3, :cond_0

    .line 26
    .line 27
    iget-object v1, v8, Lmb/g;->a:Ljava/util/ArrayList;

    .line 28
    .line 29
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 30
    .line 31
    .line 32
    move-result-object v1

    .line 33
    check-cast v1, Lmb/h;

    .line 34
    .line 35
    iget v1, v1, Lmb/h;->c:I

    .line 36
    .line 37
    :cond_0
    move v10, v1

    .line 38
    iget-object v1, v8, Lmb/g;->j:Lmb/j;

    .line 39
    .line 40
    if-eqz v1, :cond_1

    .line 41
    .line 42
    iget-object v3, v1, Lmb/j;->b:Lmb/a;

    .line 43
    .line 44
    invoke-virtual {v3, v0, v10}, Lmb/a;->A(II)Lmb/b;

    .line 45
    .line 46
    .line 47
    move-result-object v3

    .line 48
    invoke-virtual {v3}, Lmb/b;->a()Lmb/b;

    .line 49
    .line 50
    .line 51
    move-result-object v3

    .line 52
    iput-object v3, v1, Lmb/j;->e:Lmb/b;

    .line 53
    .line 54
    :cond_1
    invoke-virtual/range {p0 .. p0}, Lmb/g;->j()V

    .line 55
    .line 56
    .line 57
    invoke-virtual/range {p0 .. p1}, Lmb/g;->v(I)Lmb/h;

    .line 58
    .line 59
    .line 60
    move-result-object v1

    .line 61
    const-class v3, Lmb/l;

    .line 62
    .line 63
    monitor-enter v3

    .line 64
    const/4 v4, 0x0

    .line 65
    const/4 v5, 0x0

    .line 66
    :goto_0
    :try_start_0
    sget-object v6, Lmb/l;->e:[Lmb/l;

    .line 67
    .line 68
    const/16 v7, 0x8

    .line 69
    .line 70
    if-ge v5, v7, :cond_3

    .line 71
    .line 72
    aget-object v7, v6, v5

    .line 73
    .line 74
    if-eqz v7, :cond_2

    .line 75
    .line 76
    const/4 v11, 0x0

    .line 77
    aput-object v11, v6, v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 78
    .line 79
    monitor-exit v3

    .line 80
    goto :goto_1

    .line 81
    :catchall_0
    move-exception v0

    .line 82
    goto/16 :goto_6

    .line 83
    .line 84
    :cond_2
    add-int/2addr v5, v2

    .line 85
    goto :goto_0

    .line 86
    :cond_3
    :try_start_1
    new-instance v7, Lmb/l;

    .line 87
    .line 88
    invoke-direct {v7}, Lmb/l;-><init>()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 89
    .line 90
    .line 91
    monitor-exit v3

    .line 92
    :goto_1
    iput-object v9, v7, Lmb/l;->a:Ljava/lang/CharSequence;

    .line 93
    .line 94
    const/4 v3, -0x1

    .line 95
    iput v3, v7, Lmb/l;->b:I

    .line 96
    .line 97
    iput v4, v7, Lmb/l;->c:I

    .line 98
    .line 99
    invoke-interface/range {p3 .. p3}, Ljava/lang/CharSequence;->length()I

    .line 100
    .line 101
    .line 102
    move-result v3

    .line 103
    iput v3, v7, Lmb/l;->d:I

    .line 104
    .line 105
    new-instance v3, Ljava/util/LinkedList;

    .line 106
    .line 107
    invoke-direct {v3}, Ljava/util/LinkedList;-><init>()V

    .line 108
    .line 109
    .line 110
    invoke-virtual {v1}, Lmb/h;->d()Lmb/m;

    .line 111
    .line 112
    .line 113
    move-result-object v5

    .line 114
    const/4 v6, 0x2

    .line 115
    move v14, v0

    .line 116
    move v13, v10

    .line 117
    const/4 v11, 0x0

    .line 118
    const/4 v12, 0x2

    .line 119
    :goto_2
    if-eqz v11, :cond_4

    .line 120
    .line 121
    move v11, v12

    .line 122
    goto :goto_3

    .line 123
    :cond_4
    invoke-virtual {v7}, Lmb/l;->a()I

    .line 124
    .line 125
    .line 126
    move-result v11

    .line 127
    :goto_3
    if-ne v11, v6, :cond_9

    .line 128
    .line 129
    iput-object v5, v1, Lmb/h;->e:Lmb/m;

    .line 130
    .line 131
    iget-object v1, v8, Lmb/g;->a:Ljava/util/ArrayList;

    .line 132
    .line 133
    add-int/2addr v2, v0

    .line 134
    invoke-virtual {v1, v2, v3}, Ljava/util/ArrayList;->addAll(ILjava/util/Collection;)Z

    .line 135
    .line 136
    .line 137
    invoke-virtual {v7}, Lmb/l;->b()V

    .line 138
    .line 139
    .line 140
    iget v1, v8, Lmb/g;->d:I

    .line 141
    .line 142
    invoke-interface/range {p3 .. p3}, Ljava/lang/CharSequence;->length()I

    .line 143
    .line 144
    .line 145
    move-result v2

    .line 146
    add-int/2addr v2, v1

    .line 147
    iput v2, v8, Lmb/g;->d:I

    .line 148
    .line 149
    iget-object v1, v8, Lmb/g;->i:Lmb/w;

    .line 150
    .line 151
    move-object/from16 v2, p0

    .line 152
    .line 153
    move/from16 v3, p1

    .line 154
    .line 155
    move v4, v10

    .line 156
    move v5, v14

    .line 157
    move v6, v13

    .line 158
    move-object/from16 v7, p3

    .line 159
    .line 160
    invoke-virtual/range {v1 .. v7}, Lmb/w;->c(Lmb/g;IIIILjava/lang/CharSequence;)V

    .line 161
    .line 162
    .line 163
    iget-object v11, v8, Lmb/g;->j:Lmb/j;

    .line 164
    .line 165
    if-eqz v11, :cond_6

    .line 166
    .line 167
    iget-object v1, v11, Lmb/j;->b:Lmb/a;

    .line 168
    .line 169
    iget-object v2, v11, Lmb/j;->a:Lmb/g;

    .line 170
    .line 171
    move/from16 v3, p1

    .line 172
    .line 173
    move v4, v10

    .line 174
    move v5, v14

    .line 175
    move v6, v13

    .line 176
    move-object/from16 v7, p3

    .line 177
    .line 178
    invoke-virtual/range {v1 .. v7}, Lmb/a;->c(Lmb/g;IIIILjava/lang/CharSequence;)V

    .line 179
    .line 180
    .line 181
    iget-object v1, v11, Lmb/j;->e:Lmb/b;

    .line 182
    .line 183
    iget v1, v1, Lmb/b;->a:I

    .line 184
    .line 185
    iget-object v2, v11, Lmb/j;->c:Lmb/b;

    .line 186
    .line 187
    iget v2, v2, Lmb/b;->a:I

    .line 188
    .line 189
    iget-object v3, v11, Lmb/j;->b:Lmb/a;

    .line 190
    .line 191
    if-lt v2, v1, :cond_5

    .line 192
    .line 193
    invoke-interface/range {p3 .. p3}, Ljava/lang/CharSequence;->length()I

    .line 194
    .line 195
    .line 196
    move-result v4

    .line 197
    add-int/2addr v4, v2

    .line 198
    invoke-virtual {v3, v4}, Lmb/a;->z(I)Lmb/b;

    .line 199
    .line 200
    .line 201
    move-result-object v2

    .line 202
    invoke-virtual {v2}, Lmb/b;->a()Lmb/b;

    .line 203
    .line 204
    .line 205
    move-result-object v2

    .line 206
    iput-object v2, v11, Lmb/j;->c:Lmb/b;

    .line 207
    .line 208
    :cond_5
    iget-object v2, v11, Lmb/j;->d:Lmb/b;

    .line 209
    .line 210
    iget v2, v2, Lmb/b;->a:I

    .line 211
    .line 212
    if-lt v2, v1, :cond_6

    .line 213
    .line 214
    invoke-interface/range {p3 .. p3}, Ljava/lang/CharSequence;->length()I

    .line 215
    .line 216
    .line 217
    move-result v1

    .line 218
    add-int/2addr v1, v2

    .line 219
    invoke-virtual {v3, v1}, Lmb/a;->z(I)Lmb/b;

    .line 220
    .line 221
    .line 222
    move-result-object v1

    .line 223
    invoke-virtual {v1}, Lmb/b;->a()Lmb/b;

    .line 224
    .line 225
    .line 226
    move-result-object v1

    .line 227
    iput-object v1, v11, Lmb/j;->d:Lmb/b;

    .line 228
    .line 229
    :cond_6
    iget-object v1, v8, Lmb/g;->g:Lmb/a;

    .line 230
    .line 231
    instance-of v2, v1, Lmb/i;

    .line 232
    .line 233
    if-eqz v2, :cond_7

    .line 234
    .line 235
    move-object/from16 v2, p0

    .line 236
    .line 237
    move/from16 v3, p1

    .line 238
    .line 239
    move v4, v10

    .line 240
    move v5, v14

    .line 241
    move v6, v13

    .line 242
    move-object/from16 v7, p3

    .line 243
    .line 244
    invoke-virtual/range {v1 .. v7}, Lmb/a;->c(Lmb/g;IIIILjava/lang/CharSequence;)V

    .line 245
    .line 246
    .line 247
    :cond_7
    iget-object v1, v8, Lmb/g;->b:Ljava/util/ArrayList;

    .line 248
    .line 249
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 250
    .line 251
    .line 252
    move-result-object v11

    .line 253
    :goto_4
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    .line 254
    .line 255
    .line 256
    move-result v1

    .line 257
    if-eqz v1, :cond_8

    .line 258
    .line 259
    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 260
    .line 261
    .line 262
    move-result-object v1

    .line 263
    check-cast v1, Lmb/i;

    .line 264
    .line 265
    move-object/from16 v2, p0

    .line 266
    .line 267
    move/from16 v3, p1

    .line 268
    .line 269
    move v4, v10

    .line 270
    move v5, v14

    .line 271
    move v6, v13

    .line 272
    move-object/from16 v7, p3

    .line 273
    .line 274
    invoke-interface/range {v1 .. v7}, Lmb/i;->c(Lmb/g;IIIILjava/lang/CharSequence;)V

    .line 275
    .line 276
    .line 277
    goto :goto_4

    .line 278
    :cond_8
    return-void

    .line 279
    :cond_9
    if-nez v11, :cond_a

    .line 280
    .line 281
    iget v11, v7, Lmb/l;->b:I

    .line 282
    .line 283
    iget v15, v7, Lmb/l;->c:I

    .line 284
    .line 285
    invoke-virtual {v1, v13, v11, v15, v9}, Lmb/h;->e(IIILjava/lang/CharSequence;)V

    .line 286
    .line 287
    .line 288
    iget v11, v7, Lmb/l;->c:I

    .line 289
    .line 290
    iget v15, v7, Lmb/l;->b:I

    .line 291
    .line 292
    sub-int/2addr v11, v15

    .line 293
    add-int/2addr v13, v11

    .line 294
    const/4 v11, 0x0

    .line 295
    goto/16 :goto_2

    .line 296
    .line 297
    :cond_a
    iget v11, v7, Lmb/l;->b:I

    .line 298
    .line 299
    iget v12, v7, Lmb/l;->c:I

    .line 300
    .line 301
    sget-object v15, Lmb/m;->c:Lmb/m;

    .line 302
    .line 303
    const/16 v15, 0xa

    .line 304
    .line 305
    if-ne v12, v11, :cond_b

    .line 306
    .line 307
    sget-object v11, Lmb/m;->c:Lmb/m;

    .line 308
    .line 309
    goto :goto_5

    .line 310
    :cond_b
    sub-int/2addr v12, v11

    .line 311
    const/16 v4, 0xd

    .line 312
    .line 313
    if-ne v12, v2, :cond_d

    .line 314
    .line 315
    invoke-interface {v9, v11}, Ljava/lang/CharSequence;->charAt(I)C

    .line 316
    .line 317
    .line 318
    move-result v2

    .line 319
    if-ne v2, v4, :cond_c

    .line 320
    .line 321
    sget-object v11, Lmb/m;->e:Lmb/m;

    .line 322
    .line 323
    goto :goto_5

    .line 324
    :cond_c
    if-ne v2, v15, :cond_d

    .line 325
    .line 326
    sget-object v11, Lmb/m;->d:Lmb/m;

    .line 327
    .line 328
    goto :goto_5

    .line 329
    :cond_d
    if-ne v12, v6, :cond_e

    .line 330
    .line 331
    invoke-interface {v9, v11}, Ljava/lang/CharSequence;->charAt(I)C

    .line 332
    .line 333
    .line 334
    move-result v2

    .line 335
    if-ne v2, v4, :cond_e

    .line 336
    .line 337
    const/4 v2, 0x1

    .line 338
    add-int/2addr v11, v2

    .line 339
    invoke-interface {v9, v11}, Ljava/lang/CharSequence;->charAt(I)C

    .line 340
    .line 341
    .line 342
    move-result v2

    .line 343
    if-ne v2, v15, :cond_e

    .line 344
    .line 345
    sget-object v11, Lmb/m;->f:Lmb/m;

    .line 346
    .line 347
    :goto_5
    iput-object v11, v1, Lmb/h;->e:Lmb/m;

    .line 348
    .line 349
    invoke-virtual {v7}, Lmb/l;->a()I

    .line 350
    .line 351
    .line 352
    move-result v12

    .line 353
    new-instance v2, Lmb/h;

    .line 354
    .line 355
    iget v4, v1, Lmb/h;->c:I

    .line 356
    .line 357
    sub-int/2addr v4, v13

    .line 358
    iget v11, v7, Lmb/l;->c:I

    .line 359
    .line 360
    add-int/2addr v4, v11

    .line 361
    iget v11, v7, Lmb/l;->b:I

    .line 362
    .line 363
    sub-int/2addr v4, v11

    .line 364
    add-int/2addr v4, v15

    .line 365
    invoke-direct {v2, v4}, Lmb/h;-><init>(I)V

    .line 366
    .line 367
    .line 368
    iget v4, v1, Lmb/h;->c:I

    .line 369
    .line 370
    const/4 v11, 0x0

    .line 371
    invoke-virtual {v2, v11, v13, v4, v1}, Lmb/h;->e(IIILjava/lang/CharSequence;)V

    .line 372
    .line 373
    .line 374
    iget v4, v1, Lmb/h;->c:I

    .line 375
    .line 376
    invoke-virtual {v1, v13, v4}, Lmb/h;->c(II)V

    .line 377
    .line 378
    .line 379
    invoke-virtual {v3, v2}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 380
    .line 381
    .line 382
    const/4 v1, 0x1

    .line 383
    add-int/2addr v14, v1

    .line 384
    move-object v1, v2

    .line 385
    const/4 v2, 0x1

    .line 386
    const/4 v4, 0x0

    .line 387
    const/4 v11, 0x1

    .line 388
    const/4 v13, 0x0

    .line 389
    goto/16 :goto_2

    .line 390
    .line 391
    :cond_e
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 392
    .line 393
    const-string v1, "unknown line separator type"

    .line 394
    .line 395
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 396
    .line 397
    .line 398
    throw v0

    .line 399
    :goto_6
    :try_start_2
    monitor-exit v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 400
    throw v0

    .line 401
    :cond_f
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 402
    .line 403
    const-string v1, "text can not be null"

    .line 404
    .line 405
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 406
    .line 407
    .line 408
    goto :goto_8

    .line 409
    :goto_7
    throw v0

    .line 410
    :goto_8
    goto :goto_7
.end method

.method public final subSequence(II)Ljava/lang/CharSequence;
    .locals 3

    .line 1
    if-gt p1, p2, :cond_0

    .line 2
    .line 3
    const/4 v0, 0x0

    .line 4
    invoke-virtual {p0, v0}, Lmb/g;->u(Z)V

    .line 5
    .line 6
    .line 7
    :try_start_0
    invoke-virtual {p0}, Lmb/g;->n()Lmb/a;

    .line 8
    .line 9
    .line 10
    move-result-object v1

    .line 11
    invoke-virtual {v1, p1}, Lmb/a;->z(I)Lmb/b;

    .line 12
    .line 13
    .line 14
    move-result-object p1

    .line 15
    invoke-virtual {p0}, Lmb/g;->n()Lmb/a;

    .line 16
    .line 17
    .line 18
    move-result-object v1

    .line 19
    invoke-virtual {v1, p2}, Lmb/a;->z(I)Lmb/b;

    .line 20
    .line 21
    .line 22
    move-result-object p2

    .line 23
    iget v1, p1, Lmb/b;->b:I

    .line 24
    .line 25
    iget p1, p1, Lmb/b;->c:I

    .line 26
    .line 27
    iget v2, p2, Lmb/b;->b:I

    .line 28
    .line 29
    iget p2, p2, Lmb/b;->c:I

    .line 30
    .line 31
    invoke-virtual {p0, v1, p1, v2, p2}, Lmb/g;->A(IIII)Lmb/g;

    .line 32
    .line 33
    .line 34
    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 35
    invoke-virtual {p0, v0}, Lmb/g;->E(Z)V

    .line 36
    .line 37
    .line 38
    return-object p1

    .line 39
    :catchall_0
    move-exception p1

    .line 40
    invoke-virtual {p0, v0}, Lmb/g;->E(Z)V

    .line 41
    .line 42
    .line 43
    throw p1

    .line 44
    :cond_0
    new-instance p1, Ljava/lang/StringIndexOutOfBoundsException;

    .line 45
    .line 46
    const-string p2, "start > end"

    .line 47
    .line 48
    invoke-direct {p1, p2}, Ljava/lang/StringIndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    .line 49
    .line 50
    .line 51
    throw p1
.end method

.method public final t(II)Z
    .locals 3

    .line 1
    invoke-virtual {p0, p1}, Lmb/g;->p(I)Lnb/b;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    const/4 v0, 0x0

    .line 6
    const/4 v1, 0x0

    .line 7
    :goto_0
    iget-object v2, p1, Lnb/b;->a:[J

    .line 8
    .line 9
    array-length v2, v2

    .line 10
    if-ge v1, v2, :cond_1

    .line 11
    .line 12
    invoke-virtual {p1, v1}, Lnb/b;->j(I)I

    .line 13
    .line 14
    .line 15
    move-result v2

    .line 16
    if-lt p2, v2, :cond_0

    .line 17
    .line 18
    invoke-virtual {p1, v1}, Lnb/b;->o(I)I

    .line 19
    .line 20
    .line 21
    move-result v2

    .line 22
    if-ge p2, v2, :cond_0

    .line 23
    .line 24
    invoke-virtual {p1, v1}, Lnb/b;->q(I)Z

    .line 25
    .line 26
    .line 27
    move-result p1

    .line 28
    return p1

    .line 29
    :cond_0
    add-int/lit8 v1, v1, 0x1

    .line 30
    .line 31
    goto :goto_0

    .line 32
    :cond_1
    return v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lmb/g;->D()Ljava/lang/StringBuilder;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    return-object v0
.end method

.method public final u(Z)V
    .locals 1

    .line 1
    iget-object v0, p0, Lmb/g;->c:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    if-eqz p1, :cond_1

    .line 7
    .line 8
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->writeLock()Ljava/util/concurrent/locks/Lock;

    .line 9
    .line 10
    .line 11
    move-result-object p1

    .line 12
    goto :goto_0

    .line 13
    :cond_1
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/Lock;

    .line 14
    .line 15
    .line 16
    move-result-object p1

    .line 17
    :goto_0
    invoke-interface {p1}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 18
    .line 19
    .line 20
    return-void
.end method

.method public final v(I)Lmb/h;
    .locals 1

    .line 1
    iget-object v0, p0, Lmb/g;->a:Ljava/util/ArrayList;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    check-cast p1, Lmb/h;

    .line 8
    .line 9
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 10
    .line 11
    .line 12
    return-object p1
.end method

.method public final w(IILjava/lang/CharSequence;II)V
    .locals 3

    .line 1
    if-eqz p3, :cond_3

    .line 2
    .line 3
    const/4 v0, 0x1

    .line 4
    invoke-virtual {p0, v0}, Lmb/g;->u(Z)V

    .line 5
    .line 6
    .line 7
    iget-object v1, p0, Lmb/g;->f:Ljava/util/concurrent/atomic/AtomicLong;

    .line 8
    .line 9
    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicLong;->getAndIncrement()J

    .line 10
    .line 11
    .line 12
    :try_start_0
    iget-object v1, p0, Lmb/g;->i:Lmb/w;

    .line 13
    .line 14
    invoke-virtual {v1, p0}, Lmb/w;->j(Lmb/g;)V

    .line 15
    .line 16
    .line 17
    iget-object v1, p0, Lmb/g;->j:Lmb/j;

    .line 18
    .line 19
    if-eqz v1, :cond_0

    .line 20
    .line 21
    iget-object v1, v1, Lmb/j;->b:Lmb/a;

    .line 22
    .line 23
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 24
    .line 25
    .line 26
    :cond_0
    iget-object v1, p0, Lmb/g;->g:Lmb/a;

    .line 27
    .line 28
    instance-of v2, v1, Lmb/i;

    .line 29
    .line 30
    if-eqz v2, :cond_1

    .line 31
    .line 32
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 33
    .line 34
    .line 35
    :cond_1
    iget-object v1, p0, Lmb/g;->b:Ljava/util/ArrayList;

    .line 36
    .line 37
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 38
    .line 39
    .line 40
    move-result-object v1

    .line 41
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 42
    .line 43
    .line 44
    move-result v2

    .line 45
    if-eqz v2, :cond_2

    .line 46
    .line 47
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 48
    .line 49
    .line 50
    move-result-object v2

    .line 51
    check-cast v2, Lmb/i;

    .line 52
    .line 53
    invoke-interface {v2, p0}, Lmb/i;->j(Lmb/g;)V

    .line 54
    .line 55
    .line 56
    goto :goto_0

    .line 57
    :cond_2
    invoke-virtual {p0, p1, p2, p4, p5}, Lmb/g;->i(IIII)V

    .line 58
    .line 59
    .line 60
    invoke-virtual {p0, p1, p2, p3}, Lmb/g;->s(IILjava/lang/CharSequence;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 61
    .line 62
    .line 63
    invoke-virtual {p0, v0}, Lmb/g;->E(Z)V

    .line 64
    .line 65
    .line 66
    return-void

    .line 67
    :catchall_0
    move-exception p1

    .line 68
    invoke-virtual {p0, v0}, Lmb/g;->E(Z)V

    .line 69
    .line 70
    .line 71
    throw p1

    .line 72
    :cond_3
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 73
    .line 74
    const-string p2, "text can not be null"

    .line 75
    .line 76
    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 77
    .line 78
    .line 79
    goto :goto_2

    .line 80
    :goto_1
    throw p1

    .line 81
    :goto_2
    goto :goto_1
.end method

.method public final x(IILmb/e;)V
    .locals 3

    .line 1
    const/4 v0, 0x0

    .line 2
    invoke-virtual {p0, v0}, Lmb/g;->u(Z)V

    .line 3
    .line 4
    .line 5
    :try_start_0
    new-instance v1, Lag/h;

    .line 6
    .line 7
    const/4 v2, 0x0

    .line 8
    invoke-direct {v1, v2}, Lag/h;-><init>(B)V

    .line 9
    .line 10
    .line 11
    :goto_0
    if-gt p1, p2, :cond_0

    .line 12
    .line 13
    iget-boolean v2, v1, Lag/h;->a:Z

    .line 14
    .line 15
    if-nez v2, :cond_0

    .line 16
    .line 17
    iget-object v2, p0, Lmb/g;->a:Ljava/util/ArrayList;

    .line 18
    .line 19
    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 20
    .line 21
    .line 22
    move-result-object v2

    .line 23
    check-cast v2, Lmb/h;

    .line 24
    .line 25
    invoke-interface {p3, p1, v2, v1}, Lmb/e;->c(ILmb/h;Lag/h;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 26
    .line 27
    .line 28
    add-int/lit8 p1, p1, 0x1

    .line 29
    .line 30
    goto :goto_0

    .line 31
    :catchall_0
    move-exception p1

    .line 32
    goto :goto_1

    .line 33
    :cond_0
    invoke-virtual {p0, v0}, Lmb/g;->E(Z)V

    .line 34
    .line 35
    .line 36
    return-void

    .line 37
    :goto_1
    invoke-virtual {p0, v0}, Lmb/g;->E(Z)V

    .line 38
    .line 39
    .line 40
    goto :goto_3

    .line 41
    :goto_2
    throw p1

    .line 42
    :goto_3
    goto :goto_2
.end method

.method public final y(ILmb/f;)V
    .locals 4

    .line 1
    const/4 v0, 0x0

    .line 2
    invoke-virtual {p0, v0}, Lmb/g;->u(Z)V

    .line 3
    .line 4
    .line 5
    const/4 v1, 0x0

    .line 6
    :goto_0
    if-gt v1, p1, :cond_0

    .line 7
    .line 8
    :try_start_0
    iget-object v2, p0, Lmb/g;->a:Ljava/util/ArrayList;

    .line 9
    .line 10
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 11
    .line 12
    .line 13
    move-result-object v2

    .line 14
    check-cast v2, Lmb/h;

    .line 15
    .line 16
    iget-object v3, p0, Lmb/g;->h:Lnb/a;

    .line 17
    .line 18
    invoke-virtual {v3, v1, v2}, Lnb/a;->s(ILmb/h;)Lnb/b;

    .line 19
    .line 20
    .line 21
    move-result-object v3

    .line 22
    invoke-interface {p2, v1, v2, v3}, Lmb/f;->f(ILmb/h;Lnb/b;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 23
    .line 24
    .line 25
    add-int/lit8 v1, v1, 0x1

    .line 26
    .line 27
    goto :goto_0

    .line 28
    :catchall_0
    move-exception p1

    .line 29
    invoke-virtual {p0, v0}, Lmb/g;->E(Z)V

    .line 30
    .line 31
    .line 32
    throw p1

    .line 33
    :cond_0
    invoke-virtual {p0, v0}, Lmb/g;->E(Z)V

    .line 34
    .line 35
    .line 36
    return-void
.end method

.method public final z(Z)V
    .locals 1

    .line 1
    iget-object v0, p0, Lmb/g;->i:Lmb/w;

    .line 2
    .line 3
    iput-boolean p1, v0, Lmb/w;->b:Z

    .line 4
    .line 5
    if-nez p1, :cond_0

    .line 6
    .line 7
    invoke-virtual {v0}, Lmb/w;->s()V

    .line 8
    .line 9
    .line 10
    :cond_0
    return-void
.end method
