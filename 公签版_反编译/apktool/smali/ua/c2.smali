.class public final Lua/c2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(ILjava/lang/Object;)V
    .locals 0

    .line 1
    iput p1, p0, Lua/c2;->a:I

    iput-object p2, p0, Lua/c2;->b:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onGlobalLayout()V
    .locals 9

    .line 1
    iget v0, p0, Lua/c2;->a:I

    .line 2
    .line 3
    packed-switch v0, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lua/c2;->b:Ljava/lang/Object;

    .line 7
    .line 8
    check-cast v0, Lya/l;

    .line 9
    .line 10
    iget-object v1, v0, Lya/l;->b:Lv3/e0;

    .line 11
    .line 12
    invoke-virtual {v1}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    .line 13
    .line 14
    .line 15
    move-result-object v1

    .line 16
    invoke-virtual {v1, p0}, Landroid/view/ViewTreeObserver;->removeOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 17
    .line 18
    .line 19
    const/4 v1, 0x2

    .line 20
    :try_start_0
    new-array v1, v1, [I

    .line 21
    .line 22
    iget-object v2, v0, Lya/l;->b:Lv3/e0;

    .line 23
    .line 24
    invoke-virtual {v2, v1}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 25
    .line 26
    .line 27
    const/4 v2, 0x0

    .line 28
    aget v2, v1, v2

    .line 29
    .line 30
    if-eqz v2, :cond_1

    .line 31
    .line 32
    iget-object v3, v0, Lya/l;->e:Landroid/view/WindowManager$LayoutParams;

    .line 33
    .line 34
    iget v4, v3, Landroid/view/WindowManager$LayoutParams;->x:I

    .line 35
    .line 36
    if-gez v4, :cond_0

    .line 37
    .line 38
    iput v2, v3, Landroid/view/WindowManager$LayoutParams;->x:I

    .line 39
    .line 40
    goto :goto_0

    .line 41
    :catch_0
    move-exception v1

    .line 42
    goto :goto_2

    .line 43
    :cond_0
    neg-int v2, v2

    .line 44
    iput v2, v3, Landroid/view/WindowManager$LayoutParams;->x:I

    .line 45
    .line 46
    :cond_1
    :goto_0
    const/4 v2, 0x1

    .line 47
    aget v1, v1, v2

    .line 48
    .line 49
    if-eqz v1, :cond_3

    .line 50
    .line 51
    iget-object v2, v0, Lya/l;->e:Landroid/view/WindowManager$LayoutParams;

    .line 52
    .line 53
    iput v1, v2, Landroid/view/WindowManager$LayoutParams;->y:I

    .line 54
    .line 55
    if-gez v1, :cond_2

    .line 56
    .line 57
    iput v1, v2, Landroid/view/WindowManager$LayoutParams;->y:I

    .line 58
    .line 59
    goto :goto_1

    .line 60
    :cond_2
    neg-int v1, v1

    .line 61
    iput v1, v2, Landroid/view/WindowManager$LayoutParams;->y:I

    .line 62
    .line 63
    :cond_3
    :goto_1
    iget-object v1, v0, Lya/l;->a:Landroid/view/WindowManager;

    .line 64
    .line 65
    iget-object v2, v0, Lya/l;->b:Lv3/e0;

    .line 66
    .line 67
    iget-object v3, v0, Lya/l;->e:Landroid/view/WindowManager$LayoutParams;

    .line 68
    .line 69
    invoke-interface {v1, v2, v3}, Landroid/view/ViewManager;->updateViewLayout(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 70
    .line 71
    .line 72
    invoke-static {v0}, Lya/l;->a(Lya/l;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 73
    .line 74
    .line 75
    goto :goto_3

    .line 76
    :goto_2
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 77
    .line 78
    .line 79
    invoke-virtual {v0}, Lya/l;->c()V

    .line 80
    .line 81
    .line 82
    :goto_3
    return-void

    .line 83
    :pswitch_0
    iget-object v0, p0, Lua/c2;->b:Ljava/lang/Object;

    .line 84
    .line 85
    check-cast v0, Lw/n0;

    .line 86
    .line 87
    iget-object v1, v0, Lw/n0;->K:Lw/q0;

    .line 88
    .line 89
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 90
    .line 91
    .line 92
    invoke-static {v1}, Lx0/b1;->l(Landroid/view/View;)Z

    .line 93
    .line 94
    .line 95
    move-result v2

    .line 96
    if-eqz v2, :cond_4

    .line 97
    .line 98
    iget-object v2, v0, Lw/n0;->H:Landroid/graphics/Rect;

    .line 99
    .line 100
    invoke-virtual {v1, v2}, Landroid/view/View;->getGlobalVisibleRect(Landroid/graphics/Rect;)Z

    .line 101
    .line 102
    .line 103
    move-result v1

    .line 104
    if-eqz v1, :cond_4

    .line 105
    .line 106
    invoke-virtual {v0}, Lw/n0;->r()V

    .line 107
    .line 108
    .line 109
    invoke-virtual {v0}, Lw/g2;->show()V

    .line 110
    .line 111
    .line 112
    goto :goto_4

    .line 113
    :cond_4
    invoke-virtual {v0}, Lw/g2;->dismiss()V

    .line 114
    .line 115
    .line 116
    :goto_4
    return-void

    .line 117
    :pswitch_1
    iget-object v0, p0, Lua/c2;->b:Ljava/lang/Object;

    .line 118
    .line 119
    check-cast v0, Lw/q0;

    .line 120
    .line 121
    invoke-virtual {v0}, Lw/q0;->getInternalPopup()Lw/p0;

    .line 122
    .line 123
    .line 124
    move-result-object v1

    .line 125
    invoke-interface {v1}, Lw/p0;->b()Z

    .line 126
    .line 127
    .line 128
    move-result v1

    .line 129
    if-nez v1, :cond_5

    .line 130
    .line 131
    invoke-static {v0}, Lw/i0;->b(Landroid/view/View;)I

    .line 132
    .line 133
    .line 134
    move-result v1

    .line 135
    invoke-static {v0}, Lw/i0;->a(Landroid/view/View;)I

    .line 136
    .line 137
    .line 138
    move-result v2

    .line 139
    iget-object v3, v0, Lw/q0;->f:Lw/p0;

    .line 140
    .line 141
    invoke-interface {v3, v1, v2}, Lw/p0;->l(II)V

    .line 142
    .line 143
    .line 144
    :cond_5
    invoke-virtual {v0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    .line 145
    .line 146
    .line 147
    move-result-object v0

    .line 148
    if-eqz v0, :cond_6

    .line 149
    .line 150
    invoke-static {v0, p0}, Lw/h0;->a(Landroid/view/ViewTreeObserver;Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 151
    .line 152
    .line 153
    :cond_6
    return-void

    .line 154
    :pswitch_2
    iget-object v0, p0, Lua/c2;->b:Ljava/lang/Object;

    .line 155
    .line 156
    check-cast v0, Lv/c0;

    .line 157
    .line 158
    invoke-virtual {v0}, Lv/c0;->b()Z

    .line 159
    .line 160
    .line 161
    move-result v1

    .line 162
    if-eqz v1, :cond_9

    .line 163
    .line 164
    iget-object v1, v0, Lv/c0;->h:Lw/m2;

    .line 165
    .line 166
    iget-boolean v2, v1, Lw/g2;->A:Z

    .line 167
    .line 168
    if-nez v2, :cond_9

    .line 169
    .line 170
    iget-object v2, v0, Lv/c0;->m:Landroid/view/View;

    .line 171
    .line 172
    if-eqz v2, :cond_8

    .line 173
    .line 174
    invoke-virtual {v2}, Landroid/view/View;->isShown()Z

    .line 175
    .line 176
    .line 177
    move-result v2

    .line 178
    if-nez v2, :cond_7

    .line 179
    .line 180
    goto :goto_5

    .line 181
    :cond_7
    invoke-virtual {v1}, Lw/g2;->show()V

    .line 182
    .line 183
    .line 184
    goto :goto_6

    .line 185
    :cond_8
    :goto_5
    invoke-virtual {v0}, Lv/c0;->dismiss()V

    .line 186
    .line 187
    .line 188
    :cond_9
    :goto_6
    return-void

    .line 189
    :pswitch_3
    iget-object v0, p0, Lua/c2;->b:Ljava/lang/Object;

    .line 190
    .line 191
    check-cast v0, Lv/e;

    .line 192
    .line 193
    invoke-virtual {v0}, Lv/e;->b()Z

    .line 194
    .line 195
    .line 196
    move-result v1

    .line 197
    if-eqz v1, :cond_c

    .line 198
    .line 199
    iget-object v1, v0, Lv/e;->h:Ljava/util/ArrayList;

    .line 200
    .line 201
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    .line 202
    .line 203
    .line 204
    move-result v2

    .line 205
    if-lez v2, :cond_c

    .line 206
    .line 207
    const/4 v2, 0x0

    .line 208
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 209
    .line 210
    .line 211
    move-result-object v2

    .line 212
    check-cast v2, Lv/d;

    .line 213
    .line 214
    iget-object v2, v2, Lv/d;->a:Lw/m2;

    .line 215
    .line 216
    iget-boolean v2, v2, Lw/g2;->A:Z

    .line 217
    .line 218
    if-nez v2, :cond_c

    .line 219
    .line 220
    iget-object v2, v0, Lv/e;->p:Landroid/view/View;

    .line 221
    .line 222
    if-eqz v2, :cond_b

    .line 223
    .line 224
    invoke-virtual {v2}, Landroid/view/View;->isShown()Z

    .line 225
    .line 226
    .line 227
    move-result v2

    .line 228
    if-nez v2, :cond_a

    .line 229
    .line 230
    goto :goto_8

    .line 231
    :cond_a
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 232
    .line 233
    .line 234
    move-result-object v0

    .line 235
    :goto_7
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 236
    .line 237
    .line 238
    move-result v1

    .line 239
    if-eqz v1, :cond_c

    .line 240
    .line 241
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 242
    .line 243
    .line 244
    move-result-object v1

    .line 245
    check-cast v1, Lv/d;

    .line 246
    .line 247
    iget-object v1, v1, Lv/d;->a:Lw/m2;

    .line 248
    .line 249
    invoke-virtual {v1}, Lw/g2;->show()V

    .line 250
    .line 251
    .line 252
    goto :goto_7

    .line 253
    :cond_b
    :goto_8
    invoke-virtual {v0}, Lv/e;->dismiss()V

    .line 254
    .line 255
    .line 256
    :cond_c
    return-void

    .line 257
    :pswitch_4
    iget-object v0, p0, Lua/c2;->b:Ljava/lang/Object;

    .line 258
    .line 259
    move-object v3, v0

    .line 260
    check-cast v3, Lcom/yunpan/appmanage/ui/ActivityHome;

    .line 261
    .line 262
    iget-object v0, v3, Lcom/yunpan/appmanage/ui/ActivityHome;->D:Lcom/owen/tvrecyclerview/widget/TvRecyclerView;

    .line 263
    .line 264
    invoke-virtual {v0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    .line 265
    .line 266
    .line 267
    move-result-object v0

    .line 268
    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->removeOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 269
    .line 270
    .line 271
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 272
    .line 273
    const/16 v1, 0x18

    .line 274
    .line 275
    if-ge v0, v1, :cond_d

    .line 276
    .line 277
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 278
    .line 279
    .line 280
    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    .line 281
    .line 282
    .line 283
    move-result-object v0

    .line 284
    const-string v1, "mounted"

    .line 285
    .line 286
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 287
    .line 288
    .line 289
    move-result v0

    .line 290
    if-nez v0, :cond_d

    .line 291
    .line 292
    new-instance v0, Lha/z6;

    .line 293
    .line 294
    new-instance v8, Lua/i1;

    .line 295
    .line 296
    const/4 v1, 0x4

    .line 297
    invoke-direct {v8, v1, v3}, Lua/i1;-><init>(ILjava/lang/Object;)V

    .line 298
    .line 299
    .line 300
    const-string v4, "\u68c0\u6d4b\u5230\u60a8\u7684\u8bbe\u5907\u6ca1\u6709\u5185\u7f6eSD\u5361(\u5185\u90e8\u5b58\u50a8)\uff0c\u800c\u4e14\u7cfb\u7edf\u4f4e\u4e8e\u5b89\u53537\uff0c\u6240\u4ee5\u5fc5\u987b\u63d2\u5165SD\u5361\u6216U\u76d8\u65b9\u53ef\u4f7f\u7528\uff0c\u56e0\u4e3a\u4f4e\u4e8e7.0\u7684\u7cfb\u7edf\u6ca1\u6709SD\u5361\u6765\u5b58\u50a8\u6570\u636e\u7684\u8bdd\uff0c\u65e0\u6cd5\u8c03\u7528\u7cfb\u7edf\u5b89\u88c5\u5668\u6765\u5b89\u88c5\u5e94\u7528\uff0c\u867d\u7136\u53ef\u4ee5\u5b58\u50a8\u5728/data/data/\uff0c\u4f46\u8fd9\u662f\u5e94\u7528\u79c1\u6709\u76ee\u5f55\uff0c\u4f4e\u4e8e\u5b89\u53537\u7684\u7cfb\u7edf\u5b89\u88c5\u5668\u662f\u65e0\u6743\u9650\u8bfb\u53d6\u7684\uff0c\uff0c\u9664\u975e\u60a8\u6709\u7cfb\u7edf\u5199\u5165\u6743\u9650\uff08\u53f3\u4e0a\u89d2\uff09"

    .line 301
    .line 302
    const-string v5, ""

    .line 303
    .line 304
    const-string v6, "\u660e\u767d\u4e86"

    .line 305
    .line 306
    const-string v7, ""

    .line 307
    .line 308
    move-object v1, v0

    .line 309
    move-object v2, v3

    .line 310
    invoke-direct/range {v1 .. v8}, Lha/z6;-><init>(Landroid/app/Activity;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lha/wd;)V

    .line 311
    .line 312
    .line 313
    invoke-virtual {v0}, Lha/a4;->show()V

    .line 314
    .line 315
    .line 316
    goto :goto_9

    .line 317
    :cond_d
    invoke-virtual {v3}, Lcom/yunpan/appmanage/ui/ActivityHome;->F()V

    .line 318
    .line 319
    .line 320
    :goto_9
    return-void

    .line 321
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
