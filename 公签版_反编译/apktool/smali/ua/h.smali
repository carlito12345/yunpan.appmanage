.class public final synthetic Lua/h;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lc6/e;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Lcom/yunpan/appmanage/ui/ActivityAppBatch;


# direct methods
.method public synthetic constructor <init>(Lcom/yunpan/appmanage/ui/ActivityAppBatch;I)V
    .locals 0

    .line 1
    iput p2, p0, Lua/h;->a:I

    iput-object p1, p0, Lua/h;->b:Lcom/yunpan/appmanage/ui/ActivityAppBatch;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public x(Lc6/g;Landroid/view/View;I)V
    .locals 6

    .line 1
    iget p1, p0, Lua/h;->a:I

    .line 2
    .line 3
    packed-switch p1, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    iget-object p1, p0, Lua/h;->b:Lcom/yunpan/appmanage/ui/ActivityAppBatch;

    .line 7
    .line 8
    iget-object p2, p1, Lcom/yunpan/appmanage/ui/ActivityAppBatch;->F:Lx9/u;

    .line 9
    .line 10
    invoke-virtual {p2, p3}, Lc6/g;->t(I)Ljava/lang/Object;

    .line 11
    .line 12
    .line 13
    move-result-object p2

    .line 14
    check-cast p2, Lx9/n3;

    .line 15
    .line 16
    iget-boolean v0, p2, Lx9/n3;->c:Z

    .line 17
    .line 18
    if-eqz v0, :cond_0

    .line 19
    .line 20
    sget-object v0, Lfa/b0;->a:La2/w0;

    .line 21
    .line 22
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 23
    .line 24
    .line 25
    invoke-static {}, La2/w0;->P()Z

    .line 26
    .line 27
    .line 28
    move-result v0

    .line 29
    if-nez v0, :cond_0

    .line 30
    .line 31
    const-string p1, "\u8fd9\u662f\u7cfb\u7edf\u5e94\u7528\uff0c\u9700\u8981root\u6216adb\u65b9\u53ef\u64cd\u4f5c"

    .line 32
    .line 33
    invoke-static {p1}, Lcom/hjq/toast/Toaster;->show(Ljava/lang/CharSequence;)V

    .line 34
    .line 35
    .line 36
    goto :goto_0

    .line 37
    :cond_0
    iget-boolean v0, p2, Lx9/n3;->d:Z

    .line 38
    .line 39
    xor-int/lit8 v0, v0, 0x1

    .line 40
    .line 41
    iput-boolean v0, p2, Lx9/n3;->d:Z

    .line 42
    .line 43
    iget-object p1, p1, Lcom/yunpan/appmanage/ui/ActivityAppBatch;->F:Lx9/u;

    .line 44
    .line 45
    invoke-virtual {p1, p3}, Landroidx/recyclerview/widget/m1;->e(I)V

    .line 46
    .line 47
    .line 48
    :goto_0
    return-void

    .line 49
    :pswitch_0
    sget p1, Lcom/yunpan/appmanage/ui/ActivityAppBatch;->G:I

    .line 50
    .line 51
    iget-object v1, p0, Lua/h;->b:Lcom/yunpan/appmanage/ui/ActivityAppBatch;

    .line 52
    .line 53
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 54
    .line 55
    .line 56
    const/16 p1, 0x29a

    .line 57
    .line 58
    invoke-static {p1, p2}, Lcom/bumptech/glide/c;->i(ILandroid/view/View;)V

    .line 59
    .line 60
    .line 61
    iget-object p1, v1, Lcom/yunpan/appmanage/ui/ActivityAppBatch;->D:Lx9/t1;

    .line 62
    .line 63
    invoke-virtual {p1, p3}, Lc6/g;->t(I)Ljava/lang/Object;

    .line 64
    .line 65
    .line 66
    move-result-object p1

    .line 67
    check-cast p1, Lx9/l3;

    .line 68
    .line 69
    iget-object v4, p1, Lx9/l3;->b:Ljava/lang/String;

    .line 70
    .line 71
    const-string p1, "\u8fd4\u56de"

    .line 72
    .line 73
    invoke-virtual {v4, p1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 74
    .line 75
    .line 76
    move-result p1

    .line 77
    if-eqz p1, :cond_1

    .line 78
    .line 79
    invoke-virtual {v1}, Landroid/app/Activity;->finish()V

    .line 80
    .line 81
    .line 82
    goto/16 :goto_3

    .line 83
    .line 84
    :cond_1
    const-string p1, "\u5168\u9009"

    .line 85
    .line 86
    invoke-virtual {v4, p1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 87
    .line 88
    .line 89
    move-result p2

    .line 90
    const/4 p3, 0x0

    .line 91
    if-nez p2, :cond_9

    .line 92
    .line 93
    const-string p2, "\u4e0d\u9009"

    .line 94
    .line 95
    invoke-virtual {v4, p2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 96
    .line 97
    .line 98
    move-result p2

    .line 99
    if-eqz p2, :cond_2

    .line 100
    .line 101
    goto/16 :goto_2

    .line 102
    .line 103
    :cond_2
    new-instance v3, Ljava/util/ArrayList;

    .line 104
    .line 105
    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 106
    .line 107
    .line 108
    :goto_1
    iget-object p1, v1, Lcom/yunpan/appmanage/ui/ActivityAppBatch;->F:Lx9/u;

    .line 109
    .line 110
    invoke-virtual {p1}, Lc6/g;->b()I

    .line 111
    .line 112
    .line 113
    move-result p1

    .line 114
    if-ge p3, p1, :cond_4

    .line 115
    .line 116
    iget-object p1, v1, Lcom/yunpan/appmanage/ui/ActivityAppBatch;->F:Lx9/u;

    .line 117
    .line 118
    invoke-virtual {p1, p3}, Lc6/g;->t(I)Ljava/lang/Object;

    .line 119
    .line 120
    .line 121
    move-result-object p1

    .line 122
    check-cast p1, Lx9/n3;

    .line 123
    .line 124
    iget-boolean p1, p1, Lx9/n3;->d:Z

    .line 125
    .line 126
    if-eqz p1, :cond_3

    .line 127
    .line 128
    new-instance p1, Lx9/m4;

    .line 129
    .line 130
    iget-object p2, v1, Lcom/yunpan/appmanage/ui/ActivityAppBatch;->F:Lx9/u;

    .line 131
    .line 132
    invoke-virtual {p2, p3}, Lc6/g;->t(I)Ljava/lang/Object;

    .line 133
    .line 134
    .line 135
    move-result-object p2

    .line 136
    check-cast p2, Lx9/n3;

    .line 137
    .line 138
    const-string v0, "\u5f85"

    .line 139
    .line 140
    invoke-virtual {v0, v4}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 141
    .line 142
    .line 143
    move-result-object v0

    .line 144
    invoke-direct {p1, p2, v0}, Lx9/m4;-><init>(Lx9/n3;Ljava/lang/String;)V

    .line 145
    .line 146
    .line 147
    invoke-virtual {v3, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 148
    .line 149
    .line 150
    :cond_3
    add-int/lit8 p3, p3, 0x1

    .line 151
    .line 152
    goto :goto_1

    .line 153
    :cond_4
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    .line 154
    .line 155
    .line 156
    move-result p1

    .line 157
    if-nez p1, :cond_5

    .line 158
    .line 159
    const-string p1, "\u8bf7\u9009\u62e9\u4f60\u8981\u64cd\u4f5c\u7684\u5e94\u7528\uff01"

    .line 160
    .line 161
    invoke-static {p1}, Lcom/hjq/toast/Toaster;->show(Ljava/lang/CharSequence;)V

    .line 162
    .line 163
    .line 164
    goto/16 :goto_3

    .line 165
    .line 166
    :cond_5
    const-string p1, "\u63d0\u53d6"

    .line 167
    .line 168
    invoke-virtual {v4, p1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 169
    .line 170
    .line 171
    move-result p1

    .line 172
    if-eqz p1, :cond_6

    .line 173
    .line 174
    sget-object p1, Lfa/g0;->a:Lfa/h0;

    .line 175
    .line 176
    invoke-virtual {p1}, Lfa/h0;->d()Ljava/lang/String;

    .line 177
    .line 178
    .line 179
    move-result-object p1

    .line 180
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    .line 181
    .line 182
    .line 183
    move-result p1

    .line 184
    if-eqz p1, :cond_6

    .line 185
    .line 186
    sget-object p1, Lcom/yunpan/appmanage/util/k;->u0:Ljava/text/DecimalFormat;

    .line 187
    .line 188
    sget-object p1, Lcom/yunpan/appmanage/util/j;->a:Lcom/yunpan/appmanage/util/k;

    .line 189
    .line 190
    iget-object p1, p1, Lcom/yunpan/appmanage/util/k;->v:Ljava/util/HashSet;

    .line 191
    .line 192
    invoke-virtual {p1}, Ljava/util/HashSet;->isEmpty()Z

    .line 193
    .line 194
    .line 195
    move-result p1

    .line 196
    if-eqz p1, :cond_6

    .line 197
    .line 198
    const-string p1, "\u672a\u627e\u5230\u53ef\u7528\u7684\u5b58\u50a8\u8bbe\u5907(sd\u5361\u3001U\u76d8)"

    .line 199
    .line 200
    invoke-static {p1}, Lcom/hjq/toast/Toaster;->showLong(Ljava/lang/CharSequence;)V

    .line 201
    .line 202
    .line 203
    goto :goto_3

    .line 204
    :cond_6
    const-string p1, "\u91cd\u7f6e"

    .line 205
    .line 206
    invoke-virtual {v4, p1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 207
    .line 208
    .line 209
    move-result p1

    .line 210
    if-nez p1, :cond_7

    .line 211
    .line 212
    const-string p1, "\u7f13\u5b58"

    .line 213
    .line 214
    invoke-virtual {v4, p1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 215
    .line 216
    .line 217
    move-result p1

    .line 218
    if-eqz p1, :cond_8

    .line 219
    .line 220
    :cond_7
    sget-object p1, Lfa/b0;->a:La2/w0;

    .line 221
    .line 222
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 223
    .line 224
    .line 225
    invoke-static {}, La2/w0;->P()Z

    .line 226
    .line 227
    .line 228
    move-result p1

    .line 229
    if-nez p1, :cond_8

    .line 230
    .line 231
    const-string p1, "\u9700root\u6216adb\u65b9\u53ef\u4f7f\u7528\u6b64\u529f\u80fd"

    .line 232
    .line 233
    invoke-static {p1}, Lcom/hjq/toast/Toaster;->show(Ljava/lang/CharSequence;)V

    .line 234
    .line 235
    .line 236
    goto :goto_3

    .line 237
    :cond_8
    new-instance p1, Lha/fb;

    .line 238
    .line 239
    iget-object v2, v1, Lda/g;->A:Lda/g;

    .line 240
    .line 241
    new-instance v5, Lua/h;

    .line 242
    .line 243
    const/4 p2, 0x2

    .line 244
    invoke-direct {v5, v1, p2}, Lua/h;-><init>(Lcom/yunpan/appmanage/ui/ActivityAppBatch;I)V

    .line 245
    .line 246
    .line 247
    move-object v0, p1

    .line 248
    invoke-direct/range {v0 .. v5}, Lha/fb;-><init>(Landroid/app/Activity;Lda/g;Ljava/util/ArrayList;Ljava/lang/String;Lua/h;)V

    .line 249
    .line 250
    .line 251
    invoke-virtual {p1}, Lha/a4;->show()V

    .line 252
    .line 253
    .line 254
    goto :goto_3

    .line 255
    :cond_9
    :goto_2
    iget-object p2, v1, Lcom/yunpan/appmanage/ui/ActivityAppBatch;->F:Lx9/u;

    .line 256
    .line 257
    invoke-virtual {p2}, Lc6/g;->b()I

    .line 258
    .line 259
    .line 260
    move-result p2

    .line 261
    if-ge p3, p2, :cond_a

    .line 262
    .line 263
    iget-object p2, v1, Lcom/yunpan/appmanage/ui/ActivityAppBatch;->F:Lx9/u;

    .line 264
    .line 265
    invoke-virtual {p2, p3}, Lc6/g;->t(I)Ljava/lang/Object;

    .line 266
    .line 267
    .line 268
    move-result-object p2

    .line 269
    check-cast p2, Lx9/n3;

    .line 270
    .line 271
    invoke-virtual {v4, p1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 272
    .line 273
    .line 274
    move-result v0

    .line 275
    iput-boolean v0, p2, Lx9/n3;->d:Z

    .line 276
    .line 277
    iget-object p2, v1, Lcom/yunpan/appmanage/ui/ActivityAppBatch;->F:Lx9/u;

    .line 278
    .line 279
    invoke-virtual {p2, p3}, Landroidx/recyclerview/widget/m1;->e(I)V

    .line 280
    .line 281
    .line 282
    add-int/lit8 p3, p3, 0x1

    .line 283
    .line 284
    goto :goto_2

    .line 285
    :cond_a
    :goto_3
    return-void

    .line 286
    nop

    .line 287
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
