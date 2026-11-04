.class public final synthetic Lha/f2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Lha/o1;

.field public final synthetic c:Landroid/widget/EditText;

.field public final synthetic d:Landroid/widget/EditText;

.field public final synthetic e:Landroidx/appcompat/widget/AppCompatSeekBar;


# direct methods
.method public synthetic constructor <init>(Lha/o1;Landroid/widget/EditText;Landroid/widget/EditText;Landroidx/appcompat/widget/AppCompatSeekBar;I)V
    .locals 0

    .line 1
    iput p5, p0, Lha/f2;->a:I

    iput-object p1, p0, Lha/f2;->b:Lha/o1;

    iput-object p2, p0, Lha/f2;->c:Landroid/widget/EditText;

    iput-object p3, p0, Lha/f2;->d:Landroid/widget/EditText;

    iput-object p4, p0, Lha/f2;->e:Landroidx/appcompat/widget/AppCompatSeekBar;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 8

    .line 1
    iget p1, p0, Lha/f2;->a:I

    .line 2
    .line 3
    packed-switch p1, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    iget-object p1, p0, Lha/f2;->b:Lha/o1;

    .line 7
    .line 8
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 9
    .line 10
    .line 11
    iget-object v0, p0, Lha/f2;->c:Landroid/widget/EditText;

    .line 12
    .line 13
    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    .line 22
    .line 23
    .line 24
    move-result v1

    .line 25
    if-eqz v1, :cond_0

    .line 26
    .line 27
    const-string p1, "\u8bf7\u8f93\u5165\u8981\u663e\u793a\u7684\u6d88\u606f\u5185\u5bb9"

    .line 28
    .line 29
    invoke-static {p1}, Lcom/yunpan/appmanage/util/a0;->u(Ljava/lang/CharSequence;)V

    .line 30
    .line 31
    .line 32
    goto/16 :goto_3

    .line 33
    .line 34
    :cond_0
    iget-object v1, p0, Lha/f2;->d:Landroid/widget/EditText;

    .line 35
    .line 36
    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    .line 37
    .line 38
    .line 39
    move-result-object v1

    .line 40
    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 41
    .line 42
    .line 43
    move-result-object v1

    .line 44
    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 45
    .line 46
    .line 47
    move-result v1

    .line 48
    const/16 v2, 0x3e8

    .line 49
    .line 50
    mul-int/lit16 v1, v1, 0x3e8

    .line 51
    .line 52
    const/16 v3, 0x7530

    .line 53
    .line 54
    if-le v1, v3, :cond_1

    .line 55
    .line 56
    const-string p1, "\u75af\u5566\uff1f\u8981\u663e\u793a\u8fd9\u4e48\u4e45\uff1f"

    .line 57
    .line 58
    invoke-static {p1}, Lcom/yunpan/appmanage/util/a0;->u(Ljava/lang/CharSequence;)V

    .line 59
    .line 60
    .line 61
    goto/16 :goto_3

    .line 62
    .line 63
    :cond_1
    if-ge v1, v2, :cond_5

    .line 64
    .line 65
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    .line 66
    .line 67
    .line 68
    move-result v1

    .line 69
    const/16 v2, 0x64

    .line 70
    .line 71
    if-le v1, v2, :cond_2

    .line 72
    .line 73
    const/16 v1, 0x3a98

    .line 74
    .line 75
    goto :goto_0

    .line 76
    :cond_2
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    .line 77
    .line 78
    .line 79
    move-result v1

    .line 80
    const/16 v2, 0x32

    .line 81
    .line 82
    if-le v1, v2, :cond_3

    .line 83
    .line 84
    const/16 v1, 0x1f40

    .line 85
    .line 86
    goto :goto_0

    .line 87
    :cond_3
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    .line 88
    .line 89
    .line 90
    move-result v1

    .line 91
    const/16 v2, 0x14

    .line 92
    .line 93
    if-le v1, v2, :cond_4

    .line 94
    .line 95
    const/16 v1, 0xfa0

    .line 96
    .line 97
    goto :goto_0

    .line 98
    :cond_4
    const/16 v1, 0x7d0

    .line 99
    .line 100
    :cond_5
    :goto_0
    const/16 v2, 0x25f

    .line 101
    .line 102
    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 103
    .line 104
    .line 105
    move-result-object v3

    .line 106
    invoke-static {v3}, Lv8/b;->c(Ljava/lang/String;)V

    .line 107
    .line 108
    .line 109
    new-instance v3, Lv8/a;

    .line 110
    .line 111
    iget-object p1, p1, Lha/a4;->a:Landroid/app/Activity;

    .line 112
    .line 113
    invoke-direct {v3, p1}, Lv8/a;-><init>(Landroid/app/Activity;)V

    .line 114
    .line 115
    .line 116
    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 117
    .line 118
    .line 119
    move-result-object p1

    .line 120
    iput-object p1, v3, Lv8/a;->h:Ljava/lang/String;

    .line 121
    .line 122
    const p1, 0x7f0e0217

    .line 123
    .line 124
    .line 125
    invoke-virtual {v3, p1}, Lv8/a;->j(I)V

    .line 126
    .line 127
    .line 128
    const/16 p1, 0x100

    .line 129
    .line 130
    invoke-virtual {v3, p1}, Lv8/a;->a(I)V

    .line 131
    .line 132
    .line 133
    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 134
    .line 135
    const/16 v2, 0x1c

    .line 136
    .line 137
    if-lt p1, v2, :cond_6

    .line 138
    .line 139
    const/4 p1, 0x1

    .line 140
    goto :goto_1

    .line 141
    :cond_6
    const/4 p1, 0x0

    .line 142
    :goto_1
    invoke-virtual {v3, p1}, Lv8/a;->l(I)V

    .line 143
    .line 144
    .line 145
    iget-object p1, p0, Lha/f2;->e:Landroidx/appcompat/widget/AppCompatSeekBar;

    .line 146
    .line 147
    invoke-virtual {p1}, Landroid/widget/ProgressBar;->getProgress()I

    .line 148
    .line 149
    .line 150
    move-result p1

    .line 151
    int-to-float p1, p1

    .line 152
    iget-object v2, v3, Lv8/a;->c:Lv8/h;

    .line 153
    .line 154
    const v4, 0x7f0b0522

    .line 155
    .line 156
    .line 157
    if-nez v2, :cond_7

    .line 158
    .line 159
    const/4 v2, 0x0

    .line 160
    goto :goto_2

    .line 161
    :cond_7
    invoke-virtual {v2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 162
    .line 163
    .line 164
    move-result-object v2

    .line 165
    :goto_2
    check-cast v2, Landroid/widget/TextView;

    .line 166
    .line 167
    if-eqz v2, :cond_8

    .line 168
    .line 169
    const/4 v5, 0x2

    .line 170
    invoke-virtual {v2, v5, p1}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 171
    .line 172
    .line 173
    :cond_8
    invoke-virtual {v3, v4, v0}, Lv8/a;->o(ILjava/lang/String;)V

    .line 174
    .line 175
    .line 176
    invoke-virtual {v3, v1}, Lv8/a;->r(I)V

    .line 177
    .line 178
    .line 179
    invoke-virtual {v3}, Lv8/a;->t()V

    .line 180
    .line 181
    .line 182
    :goto_3
    return-void

    .line 183
    :pswitch_0
    iget-object p1, p0, Lha/f2;->b:Lha/o1;

    .line 184
    .line 185
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 186
    .line 187
    .line 188
    iget-object v0, p0, Lha/f2;->c:Landroid/widget/EditText;

    .line 189
    .line 190
    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    .line 191
    .line 192
    .line 193
    move-result-object v0

    .line 194
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 195
    .line 196
    .line 197
    move-result-object v0

    .line 198
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    .line 199
    .line 200
    .line 201
    move-result v1

    .line 202
    if-eqz v1, :cond_9

    .line 203
    .line 204
    const-string p1, "\u8bf7\u8f93\u5165\u8981\u663e\u793a\u7684\u6d88\u606f\u5185\u5bb9"

    .line 205
    .line 206
    invoke-static {p1}, Lcom/yunpan/appmanage/util/a0;->u(Ljava/lang/CharSequence;)V

    .line 207
    .line 208
    .line 209
    goto/16 :goto_5

    .line 210
    .line 211
    :cond_9
    iget-object v1, p0, Lha/f2;->d:Landroid/widget/EditText;

    .line 212
    .line 213
    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    .line 214
    .line 215
    .line 216
    move-result-object v1

    .line 217
    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 218
    .line 219
    .line 220
    move-result-object v1

    .line 221
    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 222
    .line 223
    .line 224
    move-result v1

    .line 225
    const/16 v2, 0x3e8

    .line 226
    .line 227
    mul-int/lit16 v1, v1, 0x3e8

    .line 228
    .line 229
    const/16 v3, 0x7530

    .line 230
    .line 231
    if-le v1, v3, :cond_a

    .line 232
    .line 233
    const-string p1, "\u75af\u5566\uff1f\u8981\u663e\u793a\u8fd9\u4e48\u4e45\uff1f"

    .line 234
    .line 235
    invoke-static {p1}, Lcom/yunpan/appmanage/util/a0;->u(Ljava/lang/CharSequence;)V

    .line 236
    .line 237
    .line 238
    goto :goto_5

    .line 239
    :cond_a
    if-ge v1, v2, :cond_e

    .line 240
    .line 241
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    .line 242
    .line 243
    .line 244
    move-result v1

    .line 245
    const/16 v2, 0x64

    .line 246
    .line 247
    if-le v1, v2, :cond_b

    .line 248
    .line 249
    const/16 v1, 0x3a98

    .line 250
    .line 251
    goto :goto_4

    .line 252
    :cond_b
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    .line 253
    .line 254
    .line 255
    move-result v1

    .line 256
    const/16 v2, 0x32

    .line 257
    .line 258
    if-le v1, v2, :cond_c

    .line 259
    .line 260
    const/16 v1, 0x1f40

    .line 261
    .line 262
    goto :goto_4

    .line 263
    :cond_c
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    .line 264
    .line 265
    .line 266
    move-result v1

    .line 267
    const/16 v2, 0x14

    .line 268
    .line 269
    if-le v1, v2, :cond_d

    .line 270
    .line 271
    const/16 v1, 0xfa0

    .line 272
    .line 273
    goto :goto_4

    .line 274
    :cond_d
    const/16 v1, 0x7d0

    .line 275
    .line 276
    :cond_e
    :goto_4
    iget-object v2, p0, Lha/f2;->e:Landroidx/appcompat/widget/AppCompatSeekBar;

    .line 277
    .line 278
    invoke-virtual {v2}, Landroid/widget/ProgressBar;->getProgress()I

    .line 279
    .line 280
    .line 281
    move-result v2

    .line 282
    iget-object v3, p1, Lha/o1;->h:Ljava/lang/Object;

    .line 283
    .line 284
    check-cast v3, Lha/m8;

    .line 285
    .line 286
    iget-object v4, v3, Lha/m8;->b:Lz7/s;

    .line 287
    .line 288
    iget-object v5, v3, Lha/m8;->c:Ljava/lang/String;

    .line 289
    .line 290
    iget-object v3, v3, Lha/m8;->d:Lea/e;

    .line 291
    .line 292
    :try_start_0
    const-string v6, "name"

    .line 293
    .line 294
    new-instance v7, Ljava/lang/StringBuilder;

    .line 295
    .line 296
    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    .line 297
    .line 298
    .line 299
    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 300
    .line 301
    .line 302
    const-string v5, "\uff1a"

    .line 303
    .line 304
    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 305
    .line 306
    .line 307
    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 308
    .line 309
    .line 310
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 311
    .line 312
    .line 313
    move-result-object v5

    .line 314
    invoke-virtual {v4, v6, v5}, Lz7/s;->m(Ljava/lang/String;Ljava/lang/String;)V

    .line 315
    .line 316
    .line 317
    const-string v5, "size"

    .line 318
    .line 319
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 320
    .line 321
    .line 322
    move-result-object v2

    .line 323
    invoke-virtual {v4, v5, v2}, Lz7/s;->l(Ljava/lang/String;Ljava/lang/Number;)V

    .line 324
    .line 325
    .line 326
    const-string v2, "time"

    .line 327
    .line 328
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 329
    .line 330
    .line 331
    move-result-object v1

    .line 332
    invoke-virtual {v4, v2, v1}, Lz7/s;->l(Ljava/lang/String;Ljava/lang/Number;)V

    .line 333
    .line 334
    .line 335
    const-string v1, "str1"

    .line 336
    .line 337
    invoke-virtual {v4, v1, v0}, Lz7/s;->m(Ljava/lang/String;Ljava/lang/String;)V

    .line 338
    .line 339
    .line 340
    invoke-interface {v3, v4}, Lea/e;->k(Lz7/s;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 341
    .line 342
    .line 343
    :catch_0
    invoke-virtual {p1}, Lha/o1;->dismiss()V

    .line 344
    .line 345
    .line 346
    :goto_5
    return-void

    .line 347
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
