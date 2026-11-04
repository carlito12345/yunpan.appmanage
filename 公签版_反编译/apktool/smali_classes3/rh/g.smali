.class public final Lrh/g;
.super Lrh/p;
.source "SourceFile"


# static fields
.field public static b:Z = false


# instance fields
.field public final synthetic a:I


# direct methods
.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x7

    iput v0, p0, Lrh/g;->a:I

    .line 2
    invoke-direct {p0}, Lrh/p;-><init>()V

    .line 3
    sget-boolean v0, Lrh/g;->b:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    .line 4
    sput-boolean v0, Lrh/g;->b:Z

    .line 5
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    :cond_0
    return-void
.end method

.method public synthetic constructor <init>(I)V
    .locals 0

    .line 1
    iput p1, p0, Lrh/g;->a:I

    invoke-direct {p0}, Lrh/p;-><init>()V

    return-void
.end method


# virtual methods
.method public a()I
    .locals 1

    .line 1
    iget v0, p0, Lrh/g;->a:I

    sparse-switch v0, :sswitch_data_0

    invoke-super {p0}, Lrh/p;->a()I

    move-result v0

    return v0

    :sswitch_0
    const/4 v0, 0x1

    return v0

    :sswitch_1
    const/4 v0, -0x1

    return v0

    :sswitch_2
    const/4 v0, 0x1

    return v0

    :sswitch_3
    const/16 v0, 0xa

    return v0

    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_3
        0x6 -> :sswitch_2
        0x7 -> :sswitch_1
        0x8 -> :sswitch_0
    .end sparse-switch
.end method

.method public final b(Lph/l;Lph/l;)Z
    .locals 7

    .line 1
    iget v0, p0, Lrh/g;->a:I

    .line 2
    .line 3
    packed-switch v0, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    if-ne p1, p2, :cond_0

    .line 7
    .line 8
    const/4 p1, 0x1

    .line 9
    goto :goto_0

    .line 10
    :cond_0
    const/4 p1, 0x0

    .line 11
    :goto_0
    return p1

    .line 12
    :pswitch_0
    instance-of p1, p2, Lph/t;

    .line 13
    .line 14
    const/4 v0, 0x1

    .line 15
    if-eqz p1, :cond_1

    .line 16
    .line 17
    goto :goto_2

    .line 18
    :cond_1
    const-class p1, Lph/x;

    .line 19
    .line 20
    invoke-virtual {p2, p1}, Lph/l;->H(Ljava/lang/Class;)Ljava/util/List;

    .line 21
    .line 22
    .line 23
    move-result-object p1

    .line 24
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 25
    .line 26
    .line 27
    move-result-object p1

    .line 28
    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 29
    .line 30
    .line 31
    move-result v1

    .line 32
    if-eqz v1, :cond_2

    .line 33
    .line 34
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 35
    .line 36
    .line 37
    move-result-object v1

    .line 38
    check-cast v1, Lph/x;

    .line 39
    .line 40
    new-instance v2, Lph/t;

    .line 41
    .line 42
    iget-object v3, p2, Lph/l;->d:Lqh/f0;

    .line 43
    .line 44
    iget-object v4, v3, Lqh/f0;->b:Ljava/lang/String;

    .line 45
    .line 46
    iget-object v3, v3, Lqh/f0;->a:Ljava/lang/String;

    .line 47
    .line 48
    new-instance v5, Lqh/h0;

    .line 49
    .line 50
    sget-object v6, Lqh/h0;->c:Lqh/h0;

    .line 51
    .line 52
    invoke-direct {v5, v6}, Lqh/h0;-><init>(Lqh/h0;)V

    .line 53
    .line 54
    .line 55
    invoke-static {v4}, Loh/a;->d(Ljava/lang/String;)Ljava/lang/String;

    .line 56
    .line 57
    .line 58
    move-result-object v6

    .line 59
    invoke-virtual {v5, v4, v6, v3, v0}, Lqh/h0;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Lqh/f0;

    .line 60
    .line 61
    .line 62
    move-result-object v3

    .line 63
    invoke-virtual {p2}, Lph/l;->d()Ljava/lang/String;

    .line 64
    .line 65
    .line 66
    move-result-object v4

    .line 67
    invoke-virtual {p2}, Lph/l;->c()Lph/c;

    .line 68
    .line 69
    .line 70
    move-result-object v5

    .line 71
    invoke-direct {v2, v3, v4, v5}, Lph/t;-><init>(Lqh/f0;Ljava/lang/String;Lph/c;)V

    .line 72
    .line 73
    .line 74
    invoke-virtual {v1, v2}, Lph/q;->y(Lph/l;)V

    .line 75
    .line 76
    .line 77
    invoke-virtual {v2, v1}, Lph/l;->A(Lph/q;)V

    .line 78
    .line 79
    .line 80
    goto :goto_1

    .line 81
    :cond_2
    const/4 v0, 0x0

    .line 82
    :goto_2
    return v0

    .line 83
    :pswitch_1
    instance-of v0, p1, Lph/h;

    .line 84
    .line 85
    if-eqz v0, :cond_3

    .line 86
    .line 87
    invoke-virtual {p1}, Lph/l;->I()Lph/l;

    .line 88
    .line 89
    .line 90
    move-result-object p1

    .line 91
    :cond_3
    if-ne p2, p1, :cond_4

    .line 92
    .line 93
    const/4 p1, 0x1

    .line 94
    goto :goto_3

    .line 95
    :cond_4
    const/4 p1, 0x0

    .line 96
    :goto_3
    return p1

    .line 97
    :pswitch_2
    iget-object p1, p2, Lph/q;->a:Lph/l;

    .line 98
    .line 99
    const/4 v0, 0x0

    .line 100
    if-eqz p1, :cond_9

    .line 101
    .line 102
    instance-of v1, p1, Lph/h;

    .line 103
    .line 104
    if-eqz v1, :cond_5

    .line 105
    .line 106
    goto :goto_6

    .line 107
    :cond_5
    invoke-virtual {p1}, Lph/l;->I()Lph/l;

    .line 108
    .line 109
    .line 110
    move-result-object p1

    .line 111
    const/4 v1, 0x0

    .line 112
    :goto_4
    const/4 v2, 0x1

    .line 113
    if-eqz p1, :cond_8

    .line 114
    .line 115
    iget-object v3, p1, Lph/l;->d:Lqh/f0;

    .line 116
    .line 117
    iget-object v3, v3, Lqh/f0;->c:Ljava/lang/String;

    .line 118
    .line 119
    iget-object v4, p2, Lph/l;->d:Lqh/f0;

    .line 120
    .line 121
    iget-object v4, v4, Lqh/f0;->c:Ljava/lang/String;

    .line 122
    .line 123
    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 124
    .line 125
    .line 126
    move-result v3

    .line 127
    if-eqz v3, :cond_6

    .line 128
    .line 129
    add-int/lit8 v1, v1, 0x1

    .line 130
    .line 131
    :cond_6
    if-le v1, v2, :cond_7

    .line 132
    .line 133
    goto :goto_5

    .line 134
    :cond_7
    invoke-virtual {p1}, Lph/q;->m()Lph/l;

    .line 135
    .line 136
    .line 137
    move-result-object p1

    .line 138
    goto :goto_4

    .line 139
    :cond_8
    :goto_5
    if-ne v1, v2, :cond_9

    .line 140
    .line 141
    const/4 v0, 0x1

    .line 142
    :cond_9
    :goto_6
    return v0

    .line 143
    :pswitch_3
    iget-object p1, p2, Lph/q;->a:Lph/l;

    .line 144
    .line 145
    const/4 v0, 0x0

    .line 146
    if-eqz p1, :cond_d

    .line 147
    .line 148
    instance-of v1, p1, Lph/h;

    .line 149
    .line 150
    if-nez v1, :cond_d

    .line 151
    .line 152
    const/4 v1, 0x1

    .line 153
    if-nez p1, :cond_a

    .line 154
    .line 155
    new-instance p1, Lrh/e;

    .line 156
    .line 157
    invoke-direct {p1, v0}, Lrh/e;-><init>(I)V

    .line 158
    .line 159
    .line 160
    goto :goto_8

    .line 161
    :cond_a
    invoke-virtual {p1}, Lph/l;->D()Ljava/util/List;

    .line 162
    .line 163
    .line 164
    move-result-object p1

    .line 165
    new-instance v2, Lrh/e;

    .line 166
    .line 167
    invoke-interface {p1}, Ljava/util/List;->size()I

    .line 168
    .line 169
    .line 170
    move-result v3

    .line 171
    sub-int/2addr v3, v1

    .line 172
    invoke-direct {v2, v3}, Lrh/e;-><init>(I)V

    .line 173
    .line 174
    .line 175
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 176
    .line 177
    .line 178
    move-result-object p1

    .line 179
    :cond_b
    :goto_7
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 180
    .line 181
    .line 182
    move-result v3

    .line 183
    if-eqz v3, :cond_c

    .line 184
    .line 185
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 186
    .line 187
    .line 188
    move-result-object v3

    .line 189
    check-cast v3, Lph/l;

    .line 190
    .line 191
    if-eq v3, p2, :cond_b

    .line 192
    .line 193
    invoke-virtual {v2, v3}, Ljava/util/AbstractCollection;->add(Ljava/lang/Object;)Z

    .line 194
    .line 195
    .line 196
    goto :goto_7

    .line 197
    :cond_c
    move-object p1, v2

    .line 198
    :goto_8
    invoke-virtual {p1}, Ljava/util/AbstractCollection;->isEmpty()Z

    .line 199
    .line 200
    .line 201
    move-result p1

    .line 202
    if-eqz p1, :cond_d

    .line 203
    .line 204
    const/4 v0, 0x1

    .line 205
    :cond_d
    return v0

    .line 206
    :pswitch_4
    iget-object p1, p2, Lph/q;->a:Lph/l;

    .line 207
    .line 208
    if-eqz p1, :cond_11

    .line 209
    .line 210
    instance-of v0, p1, Lph/h;

    .line 211
    .line 212
    if-nez v0, :cond_11

    .line 213
    .line 214
    invoke-virtual {p1}, Lph/l;->e()I

    .line 215
    .line 216
    .line 217
    move-result v0

    .line 218
    const/4 v1, 0x1

    .line 219
    const/4 v2, 0x0

    .line 220
    if-nez v0, :cond_e

    .line 221
    .line 222
    move-object p1, v2

    .line 223
    goto :goto_9

    .line 224
    :cond_e
    invoke-virtual {p1}, Lph/l;->h()Ljava/util/List;

    .line 225
    .line 226
    .line 227
    move-result-object p1

    .line 228
    sub-int/2addr v0, v1

    .line 229
    check-cast p1, Ljava/util/ArrayList;

    .line 230
    .line 231
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 232
    .line 233
    .line 234
    move-result-object p1

    .line 235
    check-cast p1, Lph/q;

    .line 236
    .line 237
    :goto_9
    if-eqz p1, :cond_10

    .line 238
    .line 239
    instance-of v0, p1, Lph/l;

    .line 240
    .line 241
    if-eqz v0, :cond_f

    .line 242
    .line 243
    move-object v2, p1

    .line 244
    check-cast v2, Lph/l;

    .line 245
    .line 246
    goto :goto_a

    .line 247
    :cond_f
    invoke-virtual {p1}, Lph/q;->v()Lph/q;

    .line 248
    .line 249
    .line 250
    move-result-object p1

    .line 251
    goto :goto_9

    .line 252
    :cond_10
    :goto_a
    if-ne p2, v2, :cond_11

    .line 253
    .line 254
    goto :goto_b

    .line 255
    :cond_11
    const/4 v1, 0x0

    .line 256
    :goto_b
    return v1

    .line 257
    :pswitch_5
    iget-object p1, p2, Lph/q;->a:Lph/l;

    .line 258
    .line 259
    if-eqz p1, :cond_12

    .line 260
    .line 261
    instance-of v0, p1, Lph/h;

    .line 262
    .line 263
    if-nez v0, :cond_12

    .line 264
    .line 265
    invoke-virtual {p1}, Lph/l;->I()Lph/l;

    .line 266
    .line 267
    .line 268
    move-result-object p1

    .line 269
    if-ne p2, p1, :cond_12

    .line 270
    .line 271
    const/4 p1, 0x1

    .line 272
    goto :goto_c

    .line 273
    :cond_12
    const/4 p1, 0x0

    .line 274
    :goto_c
    return p1

    .line 275
    :pswitch_6
    invoke-virtual {p2}, Lph/q;->i()Lph/q;

    .line 276
    .line 277
    .line 278
    move-result-object p1

    .line 279
    :goto_d
    if-eqz p1, :cond_15

    .line 280
    .line 281
    instance-of p2, p1, Lph/x;

    .line 282
    .line 283
    const/4 v0, 0x0

    .line 284
    if-eqz p2, :cond_13

    .line 285
    .line 286
    move-object p2, p1

    .line 287
    check-cast p2, Lph/x;

    .line 288
    .line 289
    invoke-virtual {p2}, Lph/p;->A()Ljava/lang/String;

    .line 290
    .line 291
    .line 292
    move-result-object p2

    .line 293
    invoke-static {p2}, Loh/f;->f(Ljava/lang/String;)Z

    .line 294
    .line 295
    .line 296
    move-result p2

    .line 297
    if-nez p2, :cond_14

    .line 298
    .line 299
    goto :goto_e

    .line 300
    :cond_13
    instance-of p2, p1, Lph/e;

    .line 301
    .line 302
    if-nez p2, :cond_14

    .line 303
    .line 304
    instance-of p2, p1, Lph/i;

    .line 305
    .line 306
    if-nez p2, :cond_14

    .line 307
    .line 308
    goto :goto_e

    .line 309
    :cond_14
    invoke-virtual {p1}, Lph/q;->n()Lph/q;

    .line 310
    .line 311
    .line 312
    move-result-object p1

    .line 313
    goto :goto_d

    .line 314
    :cond_15
    const/4 v0, 0x1

    .line 315
    :goto_e
    return v0

    .line 316
    :pswitch_7
    const/4 p1, 0x1

    .line 317
    return p1

    .line 318
    nop

    .line 319
    :pswitch_data_0
    .packed-switch 0x0
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

.method public final toString()Ljava/lang/String;
    .locals 1

    .line 1
    iget v0, p0, Lrh/g;->a:I

    .line 2
    .line 3
    packed-switch v0, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    const-string v0, ">"

    .line 7
    .line 8
    return-object v0

    .line 9
    :pswitch_0
    const-string v0, ":matchText"

    .line 10
    .line 11
    return-object v0

    .line 12
    :pswitch_1
    const-string v0, ":root"

    .line 13
    .line 14
    return-object v0

    .line 15
    :pswitch_2
    const-string v0, ":only-of-type"

    .line 16
    .line 17
    return-object v0

    .line 18
    :pswitch_3
    const-string v0, ":only-child"

    .line 19
    .line 20
    return-object v0

    .line 21
    :pswitch_4
    const-string v0, ":last-child"

    .line 22
    .line 23
    return-object v0

    .line 24
    :pswitch_5
    const-string v0, ":first-child"

    .line 25
    .line 26
    return-object v0

    .line 27
    :pswitch_6
    const-string v0, ":empty"

    .line 28
    .line 29
    return-object v0

    .line 30
    :pswitch_7
    const-string v0, "*"

    .line 31
    .line 32
    return-object v0

    .line 33
    :pswitch_data_0
    .packed-switch 0x0
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
