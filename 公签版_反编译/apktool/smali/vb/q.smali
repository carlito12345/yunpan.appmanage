.class public final synthetic Lvb/q;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ldb/n;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Lvb/s;


# direct methods
.method public synthetic constructor <init>(Lvb/s;I)V
    .locals 0

    .line 1
    iput p2, p0, Lvb/q;->a:I

    iput-object p1, p0, Lvb/q;->b:Lvb/s;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final d(Lbi/a;)V
    .locals 7

    .line 1
    iget v0, p0, Lvb/q;->a:I

    .line 2
    .line 3
    packed-switch v0, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    check-cast p1, Ldb/f;

    .line 7
    .line 8
    iget-object p1, p0, Lvb/q;->b:Lvb/s;

    .line 9
    .line 10
    invoke-virtual {p1}, Lvb/s;->f()V

    .line 11
    .line 12
    .line 13
    return-void

    .line 14
    :pswitch_0
    check-cast p1, Ldb/c;

    .line 15
    .line 16
    iget-object p1, p0, Lvb/q;->b:Lvb/s;

    .line 17
    .line 18
    invoke-virtual {p1}, Lvb/s;->e()V

    .line 19
    .line 20
    .line 21
    return-void

    .line 22
    :pswitch_1
    check-cast p1, Ldb/l;

    .line 23
    .line 24
    iget-object p1, p0, Lvb/q;->b:Lvb/s;

    .line 25
    .line 26
    const/4 v0, 0x0

    .line 27
    iput-boolean v0, p1, Lvb/s;->C:Z

    .line 28
    .line 29
    iget-object v1, p1, Lvb/s;->y:Ldb/p;

    .line 30
    .line 31
    invoke-virtual {v1, v0}, Ldb/p;->d(Z)V

    .line 32
    .line 33
    .line 34
    invoke-virtual {p1}, Lub/b;->b()V

    .line 35
    .line 36
    .line 37
    return-void

    .line 38
    :pswitch_2
    check-cast p1, Ldb/g;

    .line 39
    .line 40
    iget-object v0, p0, Lvb/q;->b:Lvb/s;

    .line 41
    .line 42
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 43
    .line 44
    .line 45
    iget-boolean p1, p1, Ldb/g;->c:Z

    .line 46
    .line 47
    if-nez p1, :cond_0

    .line 48
    .line 49
    invoke-virtual {v0}, Lub/b;->b()V

    .line 50
    .line 51
    .line 52
    :cond_0
    return-void

    .line 53
    :pswitch_3
    check-cast p1, Ldb/u;

    .line 54
    .line 55
    iget-object v0, p0, Lvb/q;->b:Lvb/s;

    .line 56
    .line 57
    iget-object v1, v0, Lvb/s;->p:Lio/github/rosemoe/sora/widget/CodeEditor;

    .line 58
    .line 59
    invoke-virtual {v1}, Lio/github/rosemoe/sora/widget/CodeEditor;->getCursor()Lmb/j;

    .line 60
    .line 61
    .line 62
    move-result-object v2

    .line 63
    invoke-virtual {v2}, Lmb/j;->a()Z

    .line 64
    .line 65
    .line 66
    move-result v2

    .line 67
    if-eqz v2, :cond_2

    .line 68
    .line 69
    iget v2, v0, Lvb/s;->B:I

    .line 70
    .line 71
    const/4 v3, 0x6

    .line 72
    if-ne v2, v3, :cond_2

    .line 73
    .line 74
    iget-object v2, p1, Ldb/k;->c:Lmb/b;

    .line 75
    .line 76
    iget v2, v2, Lmb/b;->a:I

    .line 77
    .line 78
    invoke-virtual {v1}, Lio/github/rosemoe/sora/widget/CodeEditor;->getCursor()Lmb/j;

    .line 79
    .line 80
    .line 81
    move-result-object v3

    .line 82
    iget-object v3, v3, Lmb/j;->c:Lmb/b;

    .line 83
    .line 84
    iget v3, v3, Lmb/b;->a:I

    .line 85
    .line 86
    if-lt v2, v3, :cond_1

    .line 87
    .line 88
    invoke-virtual {v1}, Lio/github/rosemoe/sora/widget/CodeEditor;->getCursor()Lmb/j;

    .line 89
    .line 90
    .line 91
    move-result-object v1

    .line 92
    iget-object v1, v1, Lmb/j;->d:Lmb/b;

    .line 93
    .line 94
    iget v1, v1, Lmb/b;->a:I

    .line 95
    .line 96
    if-gt v2, v1, :cond_1

    .line 97
    .line 98
    const/4 v1, 0x0

    .line 99
    iput v1, v0, Lvb/s;->B:I

    .line 100
    .line 101
    invoke-virtual {v0}, Lvb/s;->f()V

    .line 102
    .line 103
    .line 104
    :cond_1
    const/4 v0, 0x2

    .line 105
    iput v0, p1, Lbi/a;->a:I

    .line 106
    .line 107
    :cond_2
    return-void

    .line 108
    :pswitch_4
    check-cast p1, Ldb/r;

    .line 109
    .line 110
    iget-object v0, p0, Lvb/q;->b:Lvb/s;

    .line 111
    .line 112
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 113
    .line 114
    .line 115
    iget-boolean v1, p1, Ldb/r;->d:Z

    .line 116
    .line 117
    if-eqz v1, :cond_3

    .line 118
    .line 119
    invoke-virtual {v0}, Lvb/s;->g()V

    .line 120
    .line 121
    .line 122
    :cond_3
    iget-object v1, p1, Lbi/a;->b:Ljava/lang/Object;

    .line 123
    .line 124
    check-cast v1, Lio/github/rosemoe/sora/widget/CodeEditor;

    .line 125
    .line 126
    invoke-virtual {v1}, Lio/github/rosemoe/sora/widget/CodeEditor;->getCursor()Lmb/j;

    .line 127
    .line 128
    .line 129
    move-result-object v1

    .line 130
    invoke-virtual {v1}, Lmb/j;->a()Z

    .line 131
    .line 132
    .line 133
    move-result v1

    .line 134
    if-nez v1, :cond_4

    .line 135
    .line 136
    iget v1, p1, Ldb/r;->c:I

    .line 137
    .line 138
    if-nez v1, :cond_4

    .line 139
    .line 140
    iget-boolean p1, p1, Ldb/r;->d:Z

    .line 141
    .line 142
    if-nez p1, :cond_4

    .line 143
    .line 144
    invoke-virtual {v0}, Lvb/s;->f()V

    .line 145
    .line 146
    .line 147
    new-instance p1, Lvb/r;

    .line 148
    .line 149
    const/4 v1, 0x0

    .line 150
    invoke-direct {p1, v0, v1}, Lvb/r;-><init>(Lvb/s;I)V

    .line 151
    .line 152
    .line 153
    const-wide/16 v1, 0x64

    .line 154
    .line 155
    iget-object v0, v0, Lvb/s;->p:Lio/github/rosemoe/sora/widget/CodeEditor;

    .line 156
    .line 157
    invoke-virtual {v0, p1, v1, v2}, Lio/github/rosemoe/sora/widget/CodeEditor;->Y(Ljava/lang/Runnable;J)V

    .line 158
    .line 159
    .line 160
    :cond_4
    return-void

    .line 161
    :pswitch_5
    check-cast p1, Ldb/w;

    .line 162
    .line 163
    iget-object p1, p0, Lvb/q;->b:Lvb/s;

    .line 164
    .line 165
    iget-wide v0, p1, Lvb/s;->z:J

    .line 166
    .line 167
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 168
    .line 169
    .line 170
    move-result-wide v2

    .line 171
    iput-wide v2, p1, Lvb/s;->z:J

    .line 172
    .line 173
    sub-long/2addr v2, v0

    .line 174
    const-wide/16 v0, 0xc8

    .line 175
    .line 176
    cmp-long v4, v2, v0

    .line 177
    .line 178
    if-gez v4, :cond_5

    .line 179
    .line 180
    iget v0, p1, Lvb/s;->B:I

    .line 181
    .line 182
    const/4 v1, 0x6

    .line 183
    if-eq v0, v1, :cond_5

    .line 184
    .line 185
    invoke-virtual {p1}, Lvb/s;->g()V

    .line 186
    .line 187
    .line 188
    :cond_5
    return-void

    .line 189
    :pswitch_6
    check-cast p1, Ldb/x;

    .line 190
    .line 191
    iget-object v0, p0, Lvb/q;->b:Lvb/s;

    .line 192
    .line 193
    iget-object v1, v0, Lvb/s;->x:Ltb/u;

    .line 194
    .line 195
    invoke-virtual {v1}, Ltb/u;->g()Z

    .line 196
    .line 197
    .line 198
    move-result v2

    .line 199
    if-nez v2, :cond_e

    .line 200
    .line 201
    iget v2, p1, Ldb/x;->e:I

    .line 202
    .line 203
    const/16 v3, 0x9

    .line 204
    .line 205
    if-ne v2, v3, :cond_6

    .line 206
    .line 207
    goto/16 :goto_4

    .line 208
    .line 209
    :cond_6
    iget-boolean v1, v1, Ltb/u;->M:Z

    .line 210
    .line 211
    if-eqz v1, :cond_7

    .line 212
    .line 213
    invoke-virtual {v0}, Lub/b;->b()V

    .line 214
    .line 215
    .line 216
    goto/16 :goto_4

    .line 217
    .line 218
    :cond_7
    iput v2, v0, Lvb/s;->B:I

    .line 219
    .line 220
    invoke-virtual {p1}, Ldb/x;->c()Z

    .line 221
    .line 222
    .line 223
    move-result v1

    .line 224
    const/4 v2, -0x1

    .line 225
    iget-object v3, v0, Lvb/s;->p:Lio/github/rosemoe/sora/widget/CodeEditor;

    .line 226
    .line 227
    iget v4, p1, Ldb/x;->e:I

    .line 228
    .line 229
    if-nez v1, :cond_c

    .line 230
    .line 231
    const/4 v1, 0x5

    .line 232
    if-ne v4, v1, :cond_8

    .line 233
    .line 234
    invoke-virtual {v3}, Lio/github/rosemoe/sora/widget/CodeEditor;->getText()Lmb/g;

    .line 235
    .line 236
    .line 237
    move-result-object v1

    .line 238
    iget v1, v1, Lmb/g;->d:I

    .line 239
    .line 240
    if-nez v1, :cond_8

    .line 241
    .line 242
    goto :goto_2

    .line 243
    :cond_8
    const/4 v1, 0x3

    .line 244
    iget-object p1, p1, Ldb/x;->c:Lmb/b;

    .line 245
    .line 246
    if-ne v4, v1, :cond_a

    .line 247
    .line 248
    iget v5, p1, Lmb/b;->a:I

    .line 249
    .line 250
    iget v6, v0, Lvb/s;->A:I

    .line 251
    .line 252
    if-ne v5, v6, :cond_a

    .line 253
    .line 254
    iget-object v5, v0, Lub/b;->a:Landroid/widget/PopupWindow;

    .line 255
    .line 256
    invoke-virtual {v5}, Landroid/widget/PopupWindow;->isShowing()Z

    .line 257
    .line 258
    .line 259
    move-result v5

    .line 260
    if-nez v5, :cond_a

    .line 261
    .line 262
    invoke-virtual {v3}, Lio/github/rosemoe/sora/widget/CodeEditor;->getText()Lmb/g;

    .line 263
    .line 264
    .line 265
    move-result-object v5

    .line 266
    iget v5, v5, Lmb/g;->e:I

    .line 267
    .line 268
    if-lez v5, :cond_9

    .line 269
    .line 270
    goto :goto_0

    .line 271
    :cond_9
    invoke-virtual {v3}, Lio/github/rosemoe/sora/widget/CodeEditor;->N()Z

    .line 272
    .line 273
    .line 274
    move-result v5

    .line 275
    if-eqz v5, :cond_a

    .line 276
    .line 277
    new-instance v5, Lua/g8;

    .line 278
    .line 279
    const/16 v6, 0x9

    .line 280
    .line 281
    invoke-direct {v5, v6, v0}, Lua/g8;-><init>(ILjava/lang/Object;)V

    .line 282
    .line 283
    .line 284
    invoke-virtual {v3, v5}, Lio/github/rosemoe/sora/widget/CodeEditor;->Z(Ljava/lang/Runnable;)V

    .line 285
    .line 286
    .line 287
    const/4 v3, 0x1

    .line 288
    goto :goto_1

    .line 289
    :cond_a
    :goto_0
    invoke-virtual {v0}, Lub/b;->b()V

    .line 290
    .line 291
    .line 292
    const/4 v3, 0x0

    .line 293
    :goto_1
    if-ne v4, v1, :cond_b

    .line 294
    .line 295
    if-nez v3, :cond_b

    .line 296
    .line 297
    iget p1, p1, Lmb/b;->a:I

    .line 298
    .line 299
    iput p1, v0, Lvb/s;->A:I

    .line 300
    .line 301
    goto :goto_4

    .line 302
    :cond_b
    iput v2, v0, Lvb/s;->A:I

    .line 303
    .line 304
    goto :goto_4

    .line 305
    :cond_c
    :goto_2
    const/4 p1, 0x6

    .line 306
    if-eq v4, p1, :cond_d

    .line 307
    .line 308
    new-instance p1, Lua/g8;

    .line 309
    .line 310
    const/16 v1, 0x9

    .line 311
    .line 312
    invoke-direct {p1, v1, v0}, Lua/g8;-><init>(ILjava/lang/Object;)V

    .line 313
    .line 314
    .line 315
    invoke-virtual {v3, p1}, Lio/github/rosemoe/sora/widget/CodeEditor;->Z(Ljava/lang/Runnable;)V

    .line 316
    .line 317
    .line 318
    goto :goto_3

    .line 319
    :cond_d
    invoke-virtual {v0}, Lub/b;->b()V

    .line 320
    .line 321
    .line 322
    :goto_3
    iput v2, v0, Lvb/s;->A:I

    .line 323
    .line 324
    :cond_e
    :goto_4
    return-void

    .line 325
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
