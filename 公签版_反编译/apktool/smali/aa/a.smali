.class public final Laa/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/reflect/InvocationHandler;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(ILjava/lang/Object;)V
    .locals 0

    .line 1
    iput p1, p0, Laa/a;->a:I

    iput-object p2, p0, Laa/a;->b:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 6

    .line 1
    const/4 v0, 0x1

    .line 2
    const/4 v1, 0x0

    .line 3
    const/4 v2, 0x0

    .line 4
    iget-object v3, p0, Laa/a;->b:Ljava/lang/Object;

    .line 5
    .line 6
    iget v4, p0, Laa/a;->a:I

    .line 7
    .line 8
    packed-switch v4, :pswitch_data_0

    .line 9
    .line 10
    .line 11
    invoke-virtual {p2}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 16
    .line 17
    .line 18
    check-cast v3, Lm7/e;

    .line 19
    .line 20
    const-string v1, "onTetheringStarted"

    .line 21
    .line 22
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 23
    .line 24
    .line 25
    move-result v1

    .line 26
    if-nez v1, :cond_1

    .line 27
    .line 28
    const-string v1, "onTetheringFailed"

    .line 29
    .line 30
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 31
    .line 32
    .line 33
    move-result v0

    .line 34
    if-nez v0, :cond_0

    .line 35
    .line 36
    sget-object v0, La5/d;->h:Ljava/util/Map;

    .line 37
    .line 38
    :try_start_0
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 39
    .line 40
    .line 41
    move-result-object v0

    .line 42
    invoke-static {p2}, La5/d;->c(Ljava/lang/reflect/Method;)Ljava/lang/String;

    .line 43
    .line 44
    .line 45
    move-result-object v1

    .line 46
    invoke-virtual {p2}, Ljava/lang/reflect/Method;->getParameterTypes()[Ljava/lang/Class;

    .line 47
    .line 48
    .line 49
    move-result-object p2

    .line 50
    invoke-virtual {v0, v1, p2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 51
    .line 52
    .line 53
    move-result-object p2

    .line 54
    invoke-virtual {p2, p1, p3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_0

    .line 55
    .line 56
    .line 57
    goto :goto_0

    .line 58
    :catch_0
    move-exception p1

    .line 59
    invoke-virtual {p1}, Ljava/lang/reflect/InvocationTargetException;->getCause()Ljava/lang/Throwable;

    .line 60
    .line 61
    .line 62
    move-result-object p1

    .line 63
    throw p1

    .line 64
    :cond_0
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 65
    .line 66
    .line 67
    goto :goto_0

    .line 68
    :cond_1
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 69
    .line 70
    .line 71
    :goto_0
    return-object v2

    .line 72
    :pswitch_0
    const-string p1, "onHvacChanged"

    .line 73
    .line 74
    invoke-virtual {p2}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    .line 75
    .line 76
    .line 77
    move-result-object p2

    .line 78
    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 79
    .line 80
    .line 81
    move-result p1

    .line 82
    if-eqz p1, :cond_3

    .line 83
    .line 84
    if-eqz p3, :cond_3

    .line 85
    .line 86
    array-length p1, p3

    .line 87
    if-lez p1, :cond_3

    .line 88
    .line 89
    aget-object p1, p3, v1

    .line 90
    .line 91
    const-string p2, "getWindSpd"

    .line 92
    .line 93
    invoke-static {p1, p2}, Lnh/b;->e(Ljava/lang/Object;Ljava/lang/String;)I

    .line 94
    .line 95
    .line 96
    move-result p2

    .line 97
    const-string p3, "getPm25Value"

    .line 98
    .line 99
    invoke-static {p1, p3}, Lnh/b;->e(Ljava/lang/Object;Ljava/lang/String;)I

    .line 100
    .line 101
    .line 102
    move-result p1

    .line 103
    if-lez p2, :cond_2

    .line 104
    .line 105
    goto :goto_1

    .line 106
    :cond_2
    const/4 v0, 0x0

    .line 107
    :goto_1
    check-cast v3, Lua/i7;

    .line 108
    .line 109
    iget-object p3, v3, Lua/i7;->a:Lcom/yunpan/appmanage/ui/ActivityTextAiOnYP;

    .line 110
    .line 111
    iget-object v1, p3, Lcom/yunpan/appmanage/ui/ActivityTextAiOnYP;->P:Landroid/widget/TextView;

    .line 112
    .line 113
    new-instance v3, Ljava/lang/StringBuilder;

    .line 114
    .line 115
    const-string v4, "isHvacOn: "

    .line 116
    .line 117
    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 118
    .line 119
    .line 120
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 121
    .line 122
    .line 123
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 124
    .line 125
    .line 126
    move-result-object v0

    .line 127
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 128
    .line 129
    .line 130
    iget-object p3, p3, Lcom/yunpan/appmanage/ui/ActivityTextAiOnYP;->R:Landroid/widget/TextView;

    .line 131
    .line 132
    new-instance v0, Ljava/lang/StringBuilder;

    .line 133
    .line 134
    const-string v1, "\u98ce\u901f: "

    .line 135
    .line 136
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 137
    .line 138
    .line 139
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 140
    .line 141
    .line 142
    const-string p2, ", PM2.5: "

    .line 143
    .line 144
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 145
    .line 146
    .line 147
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 148
    .line 149
    .line 150
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 151
    .line 152
    .line 153
    move-result-object p1

    .line 154
    invoke-virtual {p3, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 155
    .line 156
    .line 157
    :cond_3
    return-object v2

    .line 158
    :pswitch_1
    const-string p1, "onCarSensorDataChanged"

    .line 159
    .line 160
    invoke-virtual {p2}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    .line 161
    .line 162
    .line 163
    move-result-object p2

    .line 164
    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 165
    .line 166
    .line 167
    move-result p1

    .line 168
    if-eqz p1, :cond_7

    .line 169
    .line 170
    if-eqz p3, :cond_7

    .line 171
    .line 172
    array-length p1, p3

    .line 173
    if-lez p1, :cond_7

    .line 174
    .line 175
    aget-object p1, p3, v1

    .line 176
    .line 177
    const-string p2, "getmCarLowBeamMode"

    .line 178
    .line 179
    invoke-static {p1, p2}, Lnh/b;->e(Ljava/lang/Object;Ljava/lang/String;)I

    .line 180
    .line 181
    .line 182
    move-result p2

    .line 183
    const-string p3, "getmCarHighBeamMode"

    .line 184
    .line 185
    invoke-static {p1, p3}, Lnh/b;->e(Ljava/lang/Object;Ljava/lang/String;)I

    .line 186
    .line 187
    .line 188
    move-result p1

    .line 189
    if-eq p2, v0, :cond_5

    .line 190
    .line 191
    if-ne p1, v0, :cond_4

    .line 192
    .line 193
    goto :goto_2

    .line 194
    :cond_4
    const/4 v0, 0x0

    .line 195
    :cond_5
    :goto_2
    check-cast v3, Lua/i7;

    .line 196
    .line 197
    iget-object p3, v3, Lua/i7;->a:Lcom/yunpan/appmanage/ui/ActivityTextAiOnYP;

    .line 198
    .line 199
    iget-object v1, p3, Lcom/yunpan/appmanage/ui/ActivityTextAiOnYP;->N:Landroid/widget/TextView;

    .line 200
    .line 201
    if-eqz v0, :cond_6

    .line 202
    .line 203
    const-string v0, "\u5f00\u542f"

    .line 204
    .line 205
    goto :goto_3

    .line 206
    :cond_6
    const-string v0, "\u5173\u95ed"

    .line 207
    .line 208
    :goto_3
    const-string v3, "\u5927\u706f\u72b6\u6001: "

    .line 209
    .line 210
    invoke-virtual {v3, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 211
    .line 212
    .line 213
    move-result-object v0

    .line 214
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 215
    .line 216
    .line 217
    iget-object p3, p3, Lcom/yunpan/appmanage/ui/ActivityTextAiOnYP;->O:Landroid/widget/TextView;

    .line 218
    .line 219
    new-instance v0, Ljava/lang/StringBuilder;

    .line 220
    .line 221
    const-string v1, "\u8fd1\u5149: "

    .line 222
    .line 223
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 224
    .line 225
    .line 226
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 227
    .line 228
    .line 229
    const-string p2, ", \u8fdc\u5149: "

    .line 230
    .line 231
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 232
    .line 233
    .line 234
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 235
    .line 236
    .line 237
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 238
    .line 239
    .line 240
    move-result-object p1

    .line 241
    invoke-virtual {p3, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 242
    .line 243
    .line 244
    :cond_7
    return-object v2

    .line 245
    :pswitch_2
    const-string p1, "onCabinChanged"

    .line 246
    .line 247
    invoke-virtual {p2}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    .line 248
    .line 249
    .line 250
    move-result-object p2

    .line 251
    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 252
    .line 253
    .line 254
    move-result p1

    .line 255
    if-eqz p1, :cond_8

    .line 256
    .line 257
    if-eqz p3, :cond_8

    .line 258
    .line 259
    array-length p1, p3

    .line 260
    if-lez p1, :cond_8

    .line 261
    .line 262
    aget-object p1, p3, v1

    .line 263
    .line 264
    const-string p2, "isDriverDoorOpen"

    .line 265
    .line 266
    invoke-static {p1, p2}, Lnh/b;->a(Ljava/lang/Object;Ljava/lang/String;)Z

    .line 267
    .line 268
    .line 269
    move-result p2

    .line 270
    const-string p3, "isPassengerDoorOpen"

    .line 271
    .line 272
    invoke-static {p1, p3}, Lnh/b;->a(Ljava/lang/Object;Ljava/lang/String;)Z

    .line 273
    .line 274
    .line 275
    move-result p3

    .line 276
    const-string v0, "isRearDoorOpen"

    .line 277
    .line 278
    invoke-static {p1, v0}, Lnh/b;->a(Ljava/lang/Object;Ljava/lang/String;)Z

    .line 279
    .line 280
    .line 281
    move-result v0

    .line 282
    const-string v1, "isHoodDoorOpen"

    .line 283
    .line 284
    invoke-static {p1, v1}, Lnh/b;->a(Ljava/lang/Object;Ljava/lang/String;)Z

    .line 285
    .line 286
    .line 287
    move-result v1

    .line 288
    const-string v4, "getCabinRearDoorOpenStatus"

    .line 289
    .line 290
    invoke-static {p1, v4}, Lnh/b;->e(Ljava/lang/Object;Ljava/lang/String;)I

    .line 291
    .line 292
    .line 293
    check-cast v3, Lua/i7;

    .line 294
    .line 295
    iget-object p1, v3, Lua/i7;->a:Lcom/yunpan/appmanage/ui/ActivityTextAiOnYP;

    .line 296
    .line 297
    iget-object v3, p1, Lcom/yunpan/appmanage/ui/ActivityTextAiOnYP;->C:Landroid/widget/TextView;

    .line 298
    .line 299
    new-instance v4, Ljava/lang/StringBuilder;

    .line 300
    .line 301
    const-string v5, "isDriverDoorOpen: "

    .line 302
    .line 303
    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 304
    .line 305
    .line 306
    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 307
    .line 308
    .line 309
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 310
    .line 311
    .line 312
    move-result-object p2

    .line 313
    invoke-virtual {v3, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 314
    .line 315
    .line 316
    iget-object p2, p1, Lcom/yunpan/appmanage/ui/ActivityTextAiOnYP;->D:Landroid/widget/TextView;

    .line 317
    .line 318
    new-instance v3, Ljava/lang/StringBuilder;

    .line 319
    .line 320
    const-string v4, "isPassengerDoorOpen: "

    .line 321
    .line 322
    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 323
    .line 324
    .line 325
    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 326
    .line 327
    .line 328
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 329
    .line 330
    .line 331
    move-result-object p3

    .line 332
    invoke-virtual {p2, p3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 333
    .line 334
    .line 335
    iget-object p2, p1, Lcom/yunpan/appmanage/ui/ActivityTextAiOnYP;->E:Landroid/widget/TextView;

    .line 336
    .line 337
    new-instance p3, Ljava/lang/StringBuilder;

    .line 338
    .line 339
    const-string v3, "isRearDoorOpen: "

    .line 340
    .line 341
    invoke-direct {p3, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 342
    .line 343
    .line 344
    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 345
    .line 346
    .line 347
    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 348
    .line 349
    .line 350
    move-result-object p3

    .line 351
    invoke-virtual {p2, p3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 352
    .line 353
    .line 354
    iget-object p1, p1, Lcom/yunpan/appmanage/ui/ActivityTextAiOnYP;->F:Landroid/widget/TextView;

    .line 355
    .line 356
    new-instance p2, Ljava/lang/StringBuilder;

    .line 357
    .line 358
    const-string p3, "isHoodDoorOpen: "

    .line 359
    .line 360
    invoke-direct {p2, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 361
    .line 362
    .line 363
    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 364
    .line 365
    .line 366
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 367
    .line 368
    .line 369
    move-result-object p2

    .line 370
    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 371
    .line 372
    .line 373
    :cond_8
    return-object v2

    .line 374
    nop

    .line 375
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
