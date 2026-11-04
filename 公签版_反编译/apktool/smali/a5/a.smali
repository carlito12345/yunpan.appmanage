.class public final La5/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/Comparator;


# instance fields
.field public final synthetic a:I


# direct methods
.method public synthetic constructor <init>(I)V
    .locals 0

    .line 1
    iput p1, p0, La5/a;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 6

    .line 1
    const/4 v0, -0x1

    .line 2
    const/4 v1, 0x1

    .line 3
    const/4 v2, 0x0

    .line 4
    iget v3, p0, La5/a;->a:I

    .line 5
    .line 6
    packed-switch v3, :pswitch_data_0

    .line 7
    .line 8
    .line 9
    check-cast p1, Ljava/util/Map$Entry;

    .line 10
    .line 11
    check-cast p2, Ljava/util/Map$Entry;

    .line 12
    .line 13
    invoke-interface {p2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    .line 14
    .line 15
    .line 16
    move-result-object p2

    .line 17
    check-cast p2, Ljava/lang/String;

    .line 18
    .line 19
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    .line 20
    .line 21
    .line 22
    move-result p2

    .line 23
    invoke-interface {p1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    .line 24
    .line 25
    .line 26
    move-result-object p1

    .line 27
    check-cast p1, Ljava/lang/String;

    .line 28
    .line 29
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    .line 30
    .line 31
    .line 32
    move-result p1

    .line 33
    sub-int/2addr p2, p1

    .line 34
    return p2

    .line 35
    :pswitch_0
    check-cast p1, Lu4/x;

    .line 36
    .line 37
    check-cast p2, Lu4/x;

    .line 38
    .line 39
    invoke-virtual {p1}, Lu4/p;->b()Lu4/q;

    .line 40
    .line 41
    .line 42
    move-result-object p1

    .line 43
    invoke-virtual {p2}, Lu4/p;->b()Lu4/q;

    .line 44
    .line 45
    .line 46
    move-result-object p2

    .line 47
    invoke-virtual {p1, p2}, Ljava/lang/Enum;->compareTo(Ljava/lang/Enum;)I

    .line 48
    .line 49
    .line 50
    move-result p1

    .line 51
    return p1

    .line 52
    :pswitch_1
    check-cast p1, [I

    .line 53
    .line 54
    check-cast p2, [I

    .line 55
    .line 56
    aget p1, p1, v2

    .line 57
    .line 58
    aget p2, p2, v2

    .line 59
    .line 60
    sub-int/2addr p1, p2

    .line 61
    return p1

    .line 62
    :pswitch_2
    check-cast p1, Landroid/view/View;

    .line 63
    .line 64
    check-cast p2, Landroid/view/View;

    .line 65
    .line 66
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 67
    .line 68
    .line 69
    move-result-object p1

    .line 70
    check-cast p1, Lk4/d;

    .line 71
    .line 72
    invoke-virtual {p2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 73
    .line 74
    .line 75
    move-result-object p2

    .line 76
    check-cast p2, Lk4/d;

    .line 77
    .line 78
    iget-boolean v2, p1, Lk4/d;->a:Z

    .line 79
    .line 80
    iget-boolean v3, p2, Lk4/d;->a:Z

    .line 81
    .line 82
    if-eq v2, v3, :cond_0

    .line 83
    .line 84
    if-eqz v2, :cond_1

    .line 85
    .line 86
    const/4 v0, 0x1

    .line 87
    goto :goto_0

    .line 88
    :cond_0
    iget p1, p1, Lk4/d;->e:I

    .line 89
    .line 90
    iget p2, p2, Lk4/d;->e:I

    .line 91
    .line 92
    sub-int v0, p1, p2

    .line 93
    .line 94
    :cond_1
    :goto_0
    return v0

    .line 95
    :pswitch_3
    check-cast p1, Lk4/c;

    .line 96
    .line 97
    check-cast p2, Lk4/c;

    .line 98
    .line 99
    iget p1, p1, Lk4/c;->b:I

    .line 100
    .line 101
    iget p2, p2, Lk4/c;->b:I

    .line 102
    .line 103
    sub-int/2addr p1, p2

    .line 104
    return p1

    .line 105
    :pswitch_4
    check-cast p1, Landroid/view/View;

    .line 106
    .line 107
    check-cast p2, Landroid/view/View;

    .line 108
    .line 109
    sget-object v3, Lx0/b1;->a:Ljava/util/WeakHashMap;

    .line 110
    .line 111
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 112
    .line 113
    const/4 v4, 0x0

    .line 114
    const/16 v5, 0x15

    .line 115
    .line 116
    if-lt v3, v5, :cond_2

    .line 117
    .line 118
    invoke-static {p1}, Lx0/p0;->m(Landroid/view/View;)F

    .line 119
    .line 120
    .line 121
    move-result p1

    .line 122
    goto :goto_1

    .line 123
    :cond_2
    const/4 p1, 0x0

    .line 124
    :goto_1
    if-lt v3, v5, :cond_3

    .line 125
    .line 126
    invoke-static {p2}, Lx0/p0;->m(Landroid/view/View;)F

    .line 127
    .line 128
    .line 129
    move-result v4

    .line 130
    :cond_3
    cmpl-float p2, p1, v4

    .line 131
    .line 132
    if-lez p2, :cond_4

    .line 133
    .line 134
    goto :goto_2

    .line 135
    :cond_4
    cmpg-float p1, p1, v4

    .line 136
    .line 137
    if-gez p1, :cond_5

    .line 138
    .line 139
    const/4 v0, 0x1

    .line 140
    goto :goto_2

    .line 141
    :cond_5
    const/4 v0, 0x0

    .line 142
    :goto_2
    return v0

    .line 143
    :pswitch_5
    check-cast p1, Lgf/a;

    .line 144
    .line 145
    check-cast p2, Lgf/a;

    .line 146
    .line 147
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 148
    .line 149
    .line 150
    const/4 p1, 0x0

    .line 151
    throw p1

    .line 152
    :pswitch_6
    check-cast p1, Landroid/view/View;

    .line 153
    .line 154
    check-cast p2, Landroid/view/View;

    .line 155
    .line 156
    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    .line 157
    .line 158
    .line 159
    move-result p1

    .line 160
    invoke-virtual {p2}, Landroid/view/View;->getTop()I

    .line 161
    .line 162
    .line 163
    move-result p2

    .line 164
    sub-int/2addr p1, p2

    .line 165
    return p1

    .line 166
    :pswitch_7
    check-cast p1, [B

    .line 167
    .line 168
    check-cast p2, [B

    .line 169
    .line 170
    :goto_3
    array-length v0, p1

    .line 171
    if-ge v2, v0, :cond_7

    .line 172
    .line 173
    array-length v0, p2

    .line 174
    if-ge v2, v0, :cond_7

    .line 175
    .line 176
    aget-byte v0, p1, v2

    .line 177
    .line 178
    and-int/lit16 v0, v0, 0xff

    .line 179
    .line 180
    aget-byte v3, p2, v2

    .line 181
    .line 182
    and-int/lit16 v3, v3, 0xff

    .line 183
    .line 184
    sub-int/2addr v0, v3

    .line 185
    if-eqz v0, :cond_6

    .line 186
    .line 187
    goto :goto_4

    .line 188
    :cond_6
    add-int/2addr v2, v1

    .line 189
    goto :goto_3

    .line 190
    :cond_7
    array-length p1, p1

    .line 191
    array-length p2, p2

    .line 192
    sub-int v0, p1, p2

    .line 193
    .line 194
    :goto_4
    return v0

    .line 195
    :pswitch_8
    check-cast p1, Ljava/lang/Comparable;

    .line 196
    .line 197
    check-cast p2, Ljava/lang/Comparable;

    .line 198
    .line 199
    invoke-interface {p1, p2}, Ljava/lang/Comparable;->compareTo(Ljava/lang/Object;)I

    .line 200
    .line 201
    .line 202
    move-result p1

    .line 203
    return p1

    .line 204
    :pswitch_9
    check-cast p1, Landroidx/recyclerview/widget/f0;

    .line 205
    .line 206
    check-cast p2, Landroidx/recyclerview/widget/f0;

    .line 207
    .line 208
    iget-object v3, p1, Landroidx/recyclerview/widget/f0;->d:Landroidx/recyclerview/widget/RecyclerView;

    .line 209
    .line 210
    if-nez v3, :cond_8

    .line 211
    .line 212
    const/4 v4, 0x1

    .line 213
    goto :goto_5

    .line 214
    :cond_8
    const/4 v4, 0x0

    .line 215
    :goto_5
    iget-object v5, p2, Landroidx/recyclerview/widget/f0;->d:Landroidx/recyclerview/widget/RecyclerView;

    .line 216
    .line 217
    if-nez v5, :cond_9

    .line 218
    .line 219
    const/4 v5, 0x1

    .line 220
    goto :goto_6

    .line 221
    :cond_9
    const/4 v5, 0x0

    .line 222
    :goto_6
    if-eq v4, v5, :cond_c

    .line 223
    .line 224
    if-nez v3, :cond_b

    .line 225
    .line 226
    :cond_a
    const/4 v0, 0x1

    .line 227
    :cond_b
    :goto_7
    move v2, v0

    .line 228
    goto :goto_8

    .line 229
    :cond_c
    iget-boolean v3, p1, Landroidx/recyclerview/widget/f0;->a:Z

    .line 230
    .line 231
    iget-boolean v4, p2, Landroidx/recyclerview/widget/f0;->a:Z

    .line 232
    .line 233
    if-eq v3, v4, :cond_d

    .line 234
    .line 235
    if-eqz v3, :cond_a

    .line 236
    .line 237
    goto :goto_7

    .line 238
    :cond_d
    iget v0, p2, Landroidx/recyclerview/widget/f0;->b:I

    .line 239
    .line 240
    iget v1, p1, Landroidx/recyclerview/widget/f0;->b:I

    .line 241
    .line 242
    sub-int/2addr v0, v1

    .line 243
    if-eqz v0, :cond_e

    .line 244
    .line 245
    goto :goto_7

    .line 246
    :cond_e
    iget p1, p1, Landroidx/recyclerview/widget/f0;->c:I

    .line 247
    .line 248
    iget p2, p2, Landroidx/recyclerview/widget/f0;->c:I

    .line 249
    .line 250
    sub-int/2addr p1, p2

    .line 251
    if-eqz p1, :cond_f

    .line 252
    .line 253
    move v2, p1

    .line 254
    :cond_f
    :goto_8
    return v2

    .line 255
    :pswitch_a
    check-cast p1, Landroidx/recyclerview/widget/t;

    .line 256
    .line 257
    check-cast p2, Landroidx/recyclerview/widget/t;

    .line 258
    .line 259
    iget p1, p1, Landroidx/recyclerview/widget/t;->a:I

    .line 260
    .line 261
    iget p2, p2, Landroidx/recyclerview/widget/t;->a:I

    .line 262
    .line 263
    sub-int/2addr p1, p2

    .line 264
    return p1

    .line 265
    :pswitch_b
    check-cast p1, Ljava/lang/reflect/Method;

    .line 266
    .line 267
    check-cast p2, Ljava/lang/reflect/Method;

    .line 268
    .line 269
    new-instance v0, Ljava/lang/StringBuilder;

    .line 270
    .line 271
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 272
    .line 273
    .line 274
    invoke-virtual {p1}, Ljava/lang/reflect/Method;->getDeclaringClass()Ljava/lang/Class;

    .line 275
    .line 276
    .line 277
    move-result-object v1

    .line 278
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 279
    .line 280
    .line 281
    invoke-virtual {p1}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    .line 282
    .line 283
    .line 284
    move-result-object v1

    .line 285
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 286
    .line 287
    .line 288
    invoke-virtual {p1}, Ljava/lang/reflect/Method;->getParameterTypes()[Ljava/lang/Class;

    .line 289
    .line 290
    .line 291
    move-result-object v1

    .line 292
    invoke-static {v1}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    .line 293
    .line 294
    .line 295
    move-result-object v1

    .line 296
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 297
    .line 298
    .line 299
    invoke-virtual {p1}, Ljava/lang/reflect/Method;->getReturnType()Ljava/lang/Class;

    .line 300
    .line 301
    .line 302
    move-result-object p1

    .line 303
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 304
    .line 305
    .line 306
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 307
    .line 308
    .line 309
    move-result-object p1

    .line 310
    new-instance v0, Ljava/lang/StringBuilder;

    .line 311
    .line 312
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 313
    .line 314
    .line 315
    invoke-virtual {p2}, Ljava/lang/reflect/Method;->getDeclaringClass()Ljava/lang/Class;

    .line 316
    .line 317
    .line 318
    move-result-object v1

    .line 319
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 320
    .line 321
    .line 322
    invoke-virtual {p2}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    .line 323
    .line 324
    .line 325
    move-result-object v1

    .line 326
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 327
    .line 328
    .line 329
    invoke-virtual {p2}, Ljava/lang/reflect/Method;->getParameterTypes()[Ljava/lang/Class;

    .line 330
    .line 331
    .line 332
    move-result-object v1

    .line 333
    invoke-static {v1}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    .line 334
    .line 335
    .line 336
    move-result-object v1

    .line 337
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 338
    .line 339
    .line 340
    invoke-virtual {p2}, Ljava/lang/reflect/Method;->getReturnType()Ljava/lang/Class;

    .line 341
    .line 342
    .line 343
    move-result-object p2

    .line 344
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 345
    .line 346
    .line 347
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 348
    .line 349
    .line 350
    move-result-object p2

    .line 351
    invoke-virtual {p1, p2}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    .line 352
    .line 353
    .line 354
    move-result p1

    .line 355
    return p1

    .line 356
    nop

    .line 357
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_b
        :pswitch_a
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
