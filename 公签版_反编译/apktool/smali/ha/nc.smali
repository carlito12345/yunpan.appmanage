.class public final synthetic Lha/nc;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnKeyListener;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Lha/s5;


# direct methods
.method public synthetic constructor <init>(Lha/s5;I)V
    .locals 0

    .line 1
    iput p2, p0, Lha/nc;->a:I

    iput-object p1, p0, Lha/nc;->b:Lha/s5;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onKey(Landroid/view/View;ILandroid/view/KeyEvent;)Z
    .locals 3

    .line 1
    iget v0, p0, Lha/nc;->a:I

    .line 2
    .line 3
    packed-switch v0, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    iget-object p1, p0, Lha/nc;->b:Lha/s5;

    .line 7
    .line 8
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 9
    .line 10
    .line 11
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    .line 12
    .line 13
    .line 14
    move-result p3

    .line 15
    const/16 v0, 0x13

    .line 16
    .line 17
    const/16 v1, 0x14

    .line 18
    .line 19
    const/4 v2, 0x1

    .line 20
    if-nez p3, :cond_1

    .line 21
    .line 22
    if-ne p2, v1, :cond_0

    .line 23
    .line 24
    iget-object p1, p1, Lha/s5;->i:Ljava/lang/Object;

    .line 25
    .line 26
    check-cast p1, Landroid/widget/TextView;

    .line 27
    .line 28
    invoke-virtual {p1}, Landroid/view/View;->requestFocus()Z

    .line 29
    .line 30
    .line 31
    goto :goto_0

    .line 32
    :cond_0
    if-ne p2, v0, :cond_1

    .line 33
    .line 34
    iget-object p1, p1, Lha/s5;->q:Landroid/view/View;

    .line 35
    .line 36
    check-cast p1, Landroid/widget/EditText;

    .line 37
    .line 38
    invoke-virtual {p1}, Landroid/view/View;->requestFocus()Z

    .line 39
    .line 40
    .line 41
    goto :goto_0

    .line 42
    :cond_1
    if-eq p2, v1, :cond_3

    .line 43
    .line 44
    if-ne p2, v0, :cond_2

    .line 45
    .line 46
    goto :goto_0

    .line 47
    :cond_2
    const/4 v2, 0x0

    .line 48
    :cond_3
    :goto_0
    return v2

    .line 49
    :pswitch_0
    iget-object p1, p0, Lha/nc;->b:Lha/s5;

    .line 50
    .line 51
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 52
    .line 53
    .line 54
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    .line 55
    .line 56
    .line 57
    move-result p3

    .line 58
    const/16 v0, 0x13

    .line 59
    .line 60
    const/16 v1, 0x14

    .line 61
    .line 62
    const/4 v2, 0x1

    .line 63
    if-nez p3, :cond_5

    .line 64
    .line 65
    if-ne p2, v1, :cond_4

    .line 66
    .line 67
    iget-object p1, p1, Lha/s5;->r:Ljava/lang/Object;

    .line 68
    .line 69
    check-cast p1, Landroid/widget/EditText;

    .line 70
    .line 71
    invoke-virtual {p1}, Landroid/view/View;->requestFocus()Z

    .line 72
    .line 73
    .line 74
    goto :goto_1

    .line 75
    :cond_4
    if-ne p2, v0, :cond_5

    .line 76
    .line 77
    iget-object p1, p1, Lha/s5;->p:Landroid/view/View;

    .line 78
    .line 79
    check-cast p1, Landroid/widget/EditText;

    .line 80
    .line 81
    invoke-virtual {p1}, Landroid/view/View;->requestFocus()Z

    .line 82
    .line 83
    .line 84
    goto :goto_1

    .line 85
    :cond_5
    if-eq p2, v1, :cond_7

    .line 86
    .line 87
    if-ne p2, v0, :cond_6

    .line 88
    .line 89
    goto :goto_1

    .line 90
    :cond_6
    const/4 v2, 0x0

    .line 91
    :cond_7
    :goto_1
    return v2

    .line 92
    :pswitch_1
    iget-object p1, p0, Lha/nc;->b:Lha/s5;

    .line 93
    .line 94
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 95
    .line 96
    .line 97
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    .line 98
    .line 99
    .line 100
    move-result p3

    .line 101
    const/16 v0, 0x13

    .line 102
    .line 103
    const/16 v1, 0x14

    .line 104
    .line 105
    const/4 v2, 0x1

    .line 106
    if-nez p3, :cond_9

    .line 107
    .line 108
    if-ne p2, v1, :cond_8

    .line 109
    .line 110
    iget-object p1, p1, Lha/s5;->q:Landroid/view/View;

    .line 111
    .line 112
    check-cast p1, Landroid/widget/EditText;

    .line 113
    .line 114
    invoke-virtual {p1}, Landroid/view/View;->requestFocus()Z

    .line 115
    .line 116
    .line 117
    goto :goto_2

    .line 118
    :cond_8
    if-ne p2, v0, :cond_9

    .line 119
    .line 120
    iget-object p1, p1, Lha/s5;->n:Landroid/widget/TextView;

    .line 121
    .line 122
    check-cast p1, Landroid/widget/EditText;

    .line 123
    .line 124
    invoke-virtual {p1}, Landroid/view/View;->requestFocus()Z

    .line 125
    .line 126
    .line 127
    goto :goto_2

    .line 128
    :cond_9
    if-eq p2, v1, :cond_b

    .line 129
    .line 130
    if-ne p2, v0, :cond_a

    .line 131
    .line 132
    goto :goto_2

    .line 133
    :cond_a
    const/4 v2, 0x0

    .line 134
    :cond_b
    :goto_2
    return v2

    .line 135
    :pswitch_2
    iget-object p1, p0, Lha/nc;->b:Lha/s5;

    .line 136
    .line 137
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 138
    .line 139
    .line 140
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    .line 141
    .line 142
    .line 143
    move-result p3

    .line 144
    const/16 v0, 0x13

    .line 145
    .line 146
    const/16 v1, 0x14

    .line 147
    .line 148
    const/4 v2, 0x1

    .line 149
    if-nez p3, :cond_d

    .line 150
    .line 151
    if-ne p2, v1, :cond_c

    .line 152
    .line 153
    iget-object p1, p1, Lha/s5;->p:Landroid/view/View;

    .line 154
    .line 155
    check-cast p1, Landroid/widget/EditText;

    .line 156
    .line 157
    invoke-virtual {p1}, Landroid/view/View;->requestFocus()Z

    .line 158
    .line 159
    .line 160
    goto :goto_3

    .line 161
    :cond_c
    if-ne p2, v0, :cond_d

    .line 162
    .line 163
    iget-object p1, p1, Lha/s5;->m:Landroid/widget/TextView;

    .line 164
    .line 165
    check-cast p1, Landroid/widget/EditText;

    .line 166
    .line 167
    invoke-virtual {p1}, Landroid/view/View;->requestFocus()Z

    .line 168
    .line 169
    .line 170
    goto :goto_3

    .line 171
    :cond_d
    if-eq p2, v1, :cond_f

    .line 172
    .line 173
    if-ne p2, v0, :cond_e

    .line 174
    .line 175
    goto :goto_3

    .line 176
    :cond_e
    const/4 v2, 0x0

    .line 177
    :cond_f
    :goto_3
    return v2

    .line 178
    :pswitch_3
    iget-object p1, p0, Lha/nc;->b:Lha/s5;

    .line 179
    .line 180
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 181
    .line 182
    .line 183
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    .line 184
    .line 185
    .line 186
    move-result p3

    .line 187
    const/16 v0, 0x13

    .line 188
    .line 189
    const/16 v1, 0x14

    .line 190
    .line 191
    const/4 v2, 0x1

    .line 192
    if-nez p3, :cond_11

    .line 193
    .line 194
    if-ne p2, v1, :cond_10

    .line 195
    .line 196
    iget-object p1, p1, Lha/s5;->n:Landroid/widget/TextView;

    .line 197
    .line 198
    check-cast p1, Landroid/widget/EditText;

    .line 199
    .line 200
    invoke-virtual {p1}, Landroid/view/View;->requestFocus()Z

    .line 201
    .line 202
    .line 203
    goto :goto_4

    .line 204
    :cond_10
    if-ne p2, v0, :cond_11

    .line 205
    .line 206
    iget-object p1, p1, Lha/s5;->l:Landroid/widget/TextView;

    .line 207
    .line 208
    check-cast p1, Landroid/widget/EditText;

    .line 209
    .line 210
    invoke-virtual {p1}, Landroid/view/View;->requestFocus()Z

    .line 211
    .line 212
    .line 213
    goto :goto_4

    .line 214
    :cond_11
    if-eq p2, v1, :cond_13

    .line 215
    .line 216
    if-ne p2, v0, :cond_12

    .line 217
    .line 218
    goto :goto_4

    .line 219
    :cond_12
    const/4 v2, 0x0

    .line 220
    :cond_13
    :goto_4
    return v2

    .line 221
    :pswitch_4
    iget-object p1, p0, Lha/nc;->b:Lha/s5;

    .line 222
    .line 223
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 224
    .line 225
    .line 226
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    .line 227
    .line 228
    .line 229
    move-result p3

    .line 230
    const/16 v0, 0x13

    .line 231
    .line 232
    const/16 v1, 0x14

    .line 233
    .line 234
    const/4 v2, 0x1

    .line 235
    if-nez p3, :cond_15

    .line 236
    .line 237
    if-ne p2, v1, :cond_14

    .line 238
    .line 239
    iget-object p1, p1, Lha/s5;->m:Landroid/widget/TextView;

    .line 240
    .line 241
    check-cast p1, Landroid/widget/EditText;

    .line 242
    .line 243
    invoke-virtual {p1}, Landroid/view/View;->requestFocus()Z

    .line 244
    .line 245
    .line 246
    goto :goto_5

    .line 247
    :cond_14
    if-ne p2, v0, :cond_15

    .line 248
    .line 249
    iget-object p2, p1, Lha/s5;->h:Landroid/widget/TextView;

    .line 250
    .line 251
    invoke-virtual {p2}, Landroid/view/View;->getVisibility()I

    .line 252
    .line 253
    .line 254
    move-result p2

    .line 255
    if-nez p2, :cond_17

    .line 256
    .line 257
    iget-object p1, p1, Lha/s5;->h:Landroid/widget/TextView;

    .line 258
    .line 259
    invoke-virtual {p1}, Landroid/view/View;->requestFocus()Z

    .line 260
    .line 261
    .line 262
    goto :goto_5

    .line 263
    :cond_15
    if-eq p2, v1, :cond_17

    .line 264
    .line 265
    if-ne p2, v0, :cond_16

    .line 266
    .line 267
    goto :goto_5

    .line 268
    :cond_16
    const/4 v2, 0x0

    .line 269
    :cond_17
    :goto_5
    return v2

    .line 270
    :pswitch_5
    iget-object v0, p0, Lha/nc;->b:Lha/s5;

    .line 271
    .line 272
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 273
    .line 274
    .line 275
    const/16 v1, 0x13

    .line 276
    .line 277
    const/4 v2, 0x1

    .line 278
    if-ne p2, v1, :cond_18

    .line 279
    .line 280
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    .line 281
    .line 282
    .line 283
    move-result p1

    .line 284
    if-nez p1, :cond_1c

    .line 285
    .line 286
    iget-object p1, v0, Lha/s5;->r:Ljava/lang/Object;

    .line 287
    .line 288
    check-cast p1, Landroid/widget/EditText;

    .line 289
    .line 290
    invoke-virtual {p1}, Landroid/view/View;->requestFocus()Z

    .line 291
    .line 292
    .line 293
    goto :goto_6

    .line 294
    :cond_18
    const/16 v0, 0x15

    .line 295
    .line 296
    if-ne p2, v0, :cond_19

    .line 297
    .line 298
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    .line 299
    .line 300
    .line 301
    move-result p2

    .line 302
    if-nez p2, :cond_1c

    .line 303
    .line 304
    const/16 p2, 0x14d

    .line 305
    .line 306
    invoke-static {p2, p1}, Ls1/g;->W(ILandroid/view/View;)V

    .line 307
    .line 308
    .line 309
    goto :goto_6

    .line 310
    :cond_19
    const/16 v0, 0x16

    .line 311
    .line 312
    if-ne p2, v0, :cond_1a

    .line 313
    .line 314
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    .line 315
    .line 316
    .line 317
    move-result p2

    .line 318
    if-nez p2, :cond_1c

    .line 319
    .line 320
    const/16 p2, 0x14c

    .line 321
    .line 322
    invoke-static {p2, p1}, Ls1/g;->W(ILandroid/view/View;)V

    .line 323
    .line 324
    .line 325
    goto :goto_6

    .line 326
    :cond_1a
    const/16 v0, 0x14

    .line 327
    .line 328
    if-ne p2, v0, :cond_1b

    .line 329
    .line 330
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    .line 331
    .line 332
    .line 333
    move-result p2

    .line 334
    if-nez p2, :cond_1c

    .line 335
    .line 336
    const/16 p2, 0x14b

    .line 337
    .line 338
    invoke-static {p2, p1}, Ls1/g;->Z(ILandroid/view/View;)V

    .line 339
    .line 340
    .line 341
    goto :goto_6

    .line 342
    :cond_1b
    const/4 v2, 0x0

    .line 343
    :cond_1c
    :goto_6
    return v2

    .line 344
    nop

    .line 345
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
