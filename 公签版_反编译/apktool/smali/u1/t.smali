.class public final Lu1/t;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:I

.field public b:Ljava/lang/Object;

.field public c:I

.field public d:I

.field public e:J

.field public f:J

.field public g:Z

.field public h:J

.field public final synthetic i:Lu1/x;


# direct methods
.method public constructor <init>(Lu1/x;I)V
    .locals 0

    .line 1
    iput-object p1, p0, Lu1/t;->i:Lu1/x;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    iput p2, p0, Lu1/t;->a:I

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final a()V
    .locals 14

    .line 1
    iget-object v0, p0, Lu1/t;->i:Lu1/x;

    .line 2
    .line 3
    iget-object v0, v0, Lu1/x;->a:Ly1/x;

    .line 4
    .line 5
    invoke-virtual {v0}, Ly1/x;->J()I

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    const/4 v1, 0x2

    .line 10
    const/4 v2, 0x1

    .line 11
    if-ne v0, v1, :cond_7

    .line 12
    .line 13
    iget-object v0, p0, Lu1/t;->i:Lu1/x;

    .line 14
    .line 15
    iget-object v0, v0, Lu1/x;->a:Ly1/x;

    .line 16
    .line 17
    invoke-virtual {v0}, Ly1/x;->I()Z

    .line 18
    .line 19
    .line 20
    move-result v0

    .line 21
    if-eqz v0, :cond_7

    .line 22
    .line 23
    iget-object v0, p0, Lu1/t;->i:Lu1/x;

    .line 24
    .line 25
    iget-object v0, v0, Lu1/x;->a:Ly1/x;

    .line 26
    .line 27
    invoke-virtual {v0}, Ly1/x;->K()I

    .line 28
    .line 29
    .line 30
    move-result v0

    .line 31
    if-eqz v0, :cond_0

    .line 32
    .line 33
    goto/16 :goto_3

    .line 34
    .line 35
    :cond_0
    iget-object v0, p0, Lu1/t;->i:Lu1/x;

    .line 36
    .line 37
    iget-object v0, v0, Lu1/x;->a:Ly1/x;

    .line 38
    .line 39
    invoke-virtual {v0}, Ly1/x;->E()Lr1/q0;

    .line 40
    .line 41
    .line 42
    move-result-object v0

    .line 43
    invoke-virtual {v0}, Lr1/q0;->p()Z

    .line 44
    .line 45
    .line 46
    move-result v3

    .line 47
    if-eqz v3, :cond_1

    .line 48
    .line 49
    const/4 v3, 0x0

    .line 50
    goto :goto_0

    .line 51
    :cond_1
    iget-object v3, p0, Lu1/t;->i:Lu1/x;

    .line 52
    .line 53
    iget-object v3, v3, Lu1/x;->a:Ly1/x;

    .line 54
    .line 55
    invoke-virtual {v3}, Ly1/x;->B()I

    .line 56
    .line 57
    .line 58
    move-result v3

    .line 59
    invoke-virtual {v0, v3}, Lr1/q0;->l(I)Ljava/lang/Object;

    .line 60
    .line 61
    .line 62
    move-result-object v3

    .line 63
    :goto_0
    iget-object v4, p0, Lu1/t;->i:Lu1/x;

    .line 64
    .line 65
    iget-object v4, v4, Lu1/x;->a:Ly1/x;

    .line 66
    .line 67
    invoke-virtual {v4}, Ly1/x;->y()I

    .line 68
    .line 69
    .line 70
    move-result v4

    .line 71
    iget-object v5, p0, Lu1/t;->i:Lu1/x;

    .line 72
    .line 73
    iget-object v5, v5, Lu1/x;->a:Ly1/x;

    .line 74
    .line 75
    invoke-virtual {v5}, Ly1/x;->z()I

    .line 76
    .line 77
    .line 78
    move-result v5

    .line 79
    iget-object v6, p0, Lu1/t;->i:Lu1/x;

    .line 80
    .line 81
    iget-object v6, v6, Lu1/x;->a:Ly1/x;

    .line 82
    .line 83
    invoke-virtual {v6}, Ly1/x;->h0()V

    .line 84
    .line 85
    .line 86
    invoke-virtual {v6}, Ly1/x;->N()Z

    .line 87
    .line 88
    .line 89
    move-result v7

    .line 90
    if-eqz v7, :cond_3

    .line 91
    .line 92
    iget-object v7, v6, Ly1/x;->f1:Ly1/v0;

    .line 93
    .line 94
    iget-object v8, v7, Ly1/v0;->k:Lf2/c0;

    .line 95
    .line 96
    iget-object v7, v7, Ly1/v0;->b:Lf2/c0;

    .line 97
    .line 98
    invoke-virtual {v8, v7}, Lf2/c0;->equals(Ljava/lang/Object;)Z

    .line 99
    .line 100
    .line 101
    move-result v7

    .line 102
    if-eqz v7, :cond_2

    .line 103
    .line 104
    iget-object v6, v6, Ly1/x;->f1:Ly1/v0;

    .line 105
    .line 106
    iget-wide v6, v6, Ly1/v0;->q:J

    .line 107
    .line 108
    invoke-static {v6, v7}, Lu1/f0;->R(J)J

    .line 109
    .line 110
    .line 111
    move-result-wide v6

    .line 112
    goto :goto_1

    .line 113
    :cond_2
    invoke-virtual {v6}, Ly1/x;->H()J

    .line 114
    .line 115
    .line 116
    move-result-wide v6

    .line 117
    goto :goto_1

    .line 118
    :cond_3
    invoke-virtual {v6}, Ly1/x;->w()J

    .line 119
    .line 120
    .line 121
    move-result-wide v6

    .line 122
    :goto_1
    iget-object v8, p0, Lu1/t;->i:Lu1/x;

    .line 123
    .line 124
    iget-object v8, v8, Lu1/x;->a:Ly1/x;

    .line 125
    .line 126
    invoke-virtual {v8}, Ly1/x;->C()J

    .line 127
    .line 128
    .line 129
    move-result-wide v8

    .line 130
    sub-long v8, v6, v8

    .line 131
    .line 132
    const-wide/16 v10, 0x0

    .line 133
    .line 134
    invoke-static {v10, v11, v8, v9}, Ljava/lang/Math;->max(JJ)J

    .line 135
    .line 136
    .line 137
    move-result-wide v8

    .line 138
    iget-object v12, p0, Lu1/t;->i:Lu1/x;

    .line 139
    .line 140
    iget-object v12, v12, Lu1/x;->a:Ly1/x;

    .line 141
    .line 142
    invoke-virtual {v12}, Ly1/x;->h0()V

    .line 143
    .line 144
    .line 145
    iget-object v12, v12, Ly1/x;->f1:Ly1/v0;

    .line 146
    .line 147
    iget-wide v12, v12, Ly1/v0;->r:J

    .line 148
    .line 149
    invoke-static {v12, v13}, Lu1/f0;->R(J)J

    .line 150
    .line 151
    .line 152
    move-result-wide v12

    .line 153
    sub-long/2addr v12, v8

    .line 154
    invoke-static {v10, v11, v12, v13}, Ljava/lang/Math;->max(JJ)J

    .line 155
    .line 156
    .line 157
    move-result-wide v8

    .line 158
    if-eqz v3, :cond_4

    .line 159
    .line 160
    const/4 v10, -0x1

    .line 161
    if-ne v4, v10, :cond_4

    .line 162
    .line 163
    iget-object v10, p0, Lu1/t;->i:Lu1/x;

    .line 164
    .line 165
    iget-object v10, v10, Lu1/x;->e:Lr1/o0;

    .line 166
    .line 167
    invoke-virtual {v0, v3, v10}, Lr1/q0;->g(Ljava/lang/Object;Lr1/o0;)Lr1/o0;

    .line 168
    .line 169
    .line 170
    move-result-object v0

    .line 171
    iget-wide v10, v0, Lr1/o0;->e:J

    .line 172
    .line 173
    invoke-static {v10, v11}, Lu1/f0;->R(J)J

    .line 174
    .line 175
    .line 176
    move-result-wide v10

    .line 177
    sub-long/2addr v6, v10

    .line 178
    :cond_4
    iget-object v0, p0, Lu1/t;->i:Lu1/x;

    .line 179
    .line 180
    iget-object v0, v0, Lu1/x;->d:Lu1/z;

    .line 181
    .line 182
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 183
    .line 184
    .line 185
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 186
    .line 187
    .line 188
    move-result-wide v10

    .line 189
    iget-boolean v0, p0, Lu1/t;->g:Z

    .line 190
    .line 191
    if-eqz v0, :cond_5

    .line 192
    .line 193
    iget-object v0, p0, Lu1/t;->b:Ljava/lang/Object;

    .line 194
    .line 195
    invoke-static {v3, v0}, Lj$/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 196
    .line 197
    .line 198
    move-result v0

    .line 199
    if-eqz v0, :cond_5

    .line 200
    .line 201
    iget v0, p0, Lu1/t;->c:I

    .line 202
    .line 203
    if-ne v4, v0, :cond_5

    .line 204
    .line 205
    iget v0, p0, Lu1/t;->d:I

    .line 206
    .line 207
    if-ne v5, v0, :cond_5

    .line 208
    .line 209
    iget-wide v12, p0, Lu1/t;->e:J

    .line 210
    .line 211
    cmp-long v0, v6, v12

    .line 212
    .line 213
    if-nez v0, :cond_5

    .line 214
    .line 215
    iget-wide v12, p0, Lu1/t;->f:J

    .line 216
    .line 217
    cmp-long v0, v8, v12

    .line 218
    .line 219
    if-nez v0, :cond_5

    .line 220
    .line 221
    iget-wide v3, p0, Lu1/t;->h:J

    .line 222
    .line 223
    sub-long/2addr v10, v3

    .line 224
    iget v0, p0, Lu1/t;->a:I

    .line 225
    .line 226
    int-to-long v3, v0

    .line 227
    cmp-long v0, v10, v3

    .line 228
    .line 229
    if-ltz v0, :cond_6

    .line 230
    .line 231
    iget-object v0, p0, Lu1/t;->i:Lu1/x;

    .line 232
    .line 233
    iget-object v0, v0, Lu1/x;->c:Ly1/t;

    .line 234
    .line 235
    new-instance v3, Lu1/y;

    .line 236
    .line 237
    iget v4, p0, Lu1/t;->a:I

    .line 238
    .line 239
    invoke-direct {v3, v2, v4}, Lu1/y;-><init>(II)V

    .line 240
    .line 241
    .line 242
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 243
    .line 244
    .line 245
    new-instance v2, Ly1/k;

    .line 246
    .line 247
    const/16 v4, 0x3eb

    .line 248
    .line 249
    invoke-direct {v2, v1, v3, v4}, Ly1/k;-><init>(ILjava/lang/Exception;I)V

    .line 250
    .line 251
    .line 252
    iget-object v0, v0, Ly1/t;->a:Ly1/x;

    .line 253
    .line 254
    invoke-virtual {v0, v2}, Ly1/x;->c0(Ly1/k;)V

    .line 255
    .line 256
    .line 257
    goto :goto_2

    .line 258
    :cond_5
    iput-boolean v2, p0, Lu1/t;->g:Z

    .line 259
    .line 260
    iput-wide v10, p0, Lu1/t;->h:J

    .line 261
    .line 262
    iput-object v3, p0, Lu1/t;->b:Ljava/lang/Object;

    .line 263
    .line 264
    iput v4, p0, Lu1/t;->c:I

    .line 265
    .line 266
    iput v5, p0, Lu1/t;->d:I

    .line 267
    .line 268
    iput-wide v6, p0, Lu1/t;->e:J

    .line 269
    .line 270
    iput-wide v8, p0, Lu1/t;->f:J

    .line 271
    .line 272
    iget-object v0, p0, Lu1/t;->i:Lu1/x;

    .line 273
    .line 274
    iget-object v0, v0, Lu1/x;->f:Lu1/b0;

    .line 275
    .line 276
    invoke-virtual {v0, v2}, Lu1/b0;->e(I)V

    .line 277
    .line 278
    .line 279
    iget-object v0, p0, Lu1/t;->i:Lu1/x;

    .line 280
    .line 281
    iget-object v0, v0, Lu1/x;->f:Lu1/b0;

    .line 282
    .line 283
    iget v1, p0, Lu1/t;->a:I

    .line 284
    .line 285
    iget-object v0, v0, Lu1/b0;->a:Landroid/os/Handler;

    .line 286
    .line 287
    int-to-long v3, v1

    .line 288
    invoke-virtual {v0, v2, v3, v4}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 289
    .line 290
    .line 291
    :cond_6
    :goto_2
    return-void

    .line 292
    :cond_7
    :goto_3
    iget-boolean v0, p0, Lu1/t;->g:Z

    .line 293
    .line 294
    if-eqz v0, :cond_8

    .line 295
    .line 296
    iget-object v0, p0, Lu1/t;->i:Lu1/x;

    .line 297
    .line 298
    iget-object v0, v0, Lu1/x;->f:Lu1/b0;

    .line 299
    .line 300
    invoke-virtual {v0, v2}, Lu1/b0;->e(I)V

    .line 301
    .line 302
    .line 303
    :cond_8
    const/4 v0, 0x0

    .line 304
    iput-boolean v0, p0, Lu1/t;->g:Z

    .line 305
    .line 306
    return-void
.end method
