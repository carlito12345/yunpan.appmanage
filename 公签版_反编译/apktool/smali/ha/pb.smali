.class public final synthetic Lha/pb;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lc6/e;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Lha/rb;


# direct methods
.method public synthetic constructor <init>(Lha/rb;I)V
    .locals 0

    .line 1
    iput p2, p0, Lha/pb;->a:I

    iput-object p1, p0, Lha/pb;->b:Lha/rb;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final x(Lc6/g;Landroid/view/View;I)V
    .locals 4

    .line 1
    iget p1, p0, Lha/pb;->a:I

    .line 2
    .line 3
    packed-switch p1, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    iget-object p1, p0, Lha/pb;->b:Lha/rb;

    .line 7
    .line 8
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 9
    .line 10
    .line 11
    invoke-static {p2}, Ls1/g;->Y(Landroid/view/View;)V

    .line 12
    .line 13
    .line 14
    iget-object p2, p1, Lha/rb;->i:Lx9/r4;

    .line 15
    .line 16
    invoke-virtual {p2, p3}, Lc6/g;->t(I)Ljava/lang/Object;

    .line 17
    .line 18
    .line 19
    move-result-object p2

    .line 20
    check-cast p2, Lx9/w3;

    .line 21
    .line 22
    iget-boolean v0, p2, Lx9/w3;->i:Z

    .line 23
    .line 24
    xor-int/lit8 v0, v0, 0x1

    .line 25
    .line 26
    iput-boolean v0, p2, Lx9/w3;->i:Z

    .line 27
    .line 28
    iget-object p1, p1, Lha/rb;->i:Lx9/r4;

    .line 29
    .line 30
    invoke-virtual {p1, p3, p2}, Lc6/g;->D(ILjava/lang/Object;)V

    .line 31
    .line 32
    .line 33
    iget-object p1, p2, Lx9/w3;->a:Ljava/lang/String;

    .line 34
    .line 35
    const-string p3, "U\u76d8"

    .line 36
    .line 37
    invoke-virtual {p1, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 38
    .line 39
    .line 40
    move-result p1

    .line 41
    if-eqz p1, :cond_0

    .line 42
    .line 43
    sget-object p1, Lcom/yunpan/appmanage/util/v;->a:Lcom/yunpan/appmanage/util/w;

    .line 44
    .line 45
    iget-boolean p2, p2, Lx9/w3;->i:Z

    .line 46
    .line 47
    iput-boolean p2, p1, Lcom/yunpan/appmanage/util/w;->x0:Z

    .line 48
    .line 49
    const-string p3, "mFile_search_usb"

    .line 50
    .line 51
    :try_start_0
    iget-object v0, p1, Lcom/yunpan/appmanage/util/w;->i:Lz7/s;

    .line 52
    .line 53
    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 54
    .line 55
    .line 56
    move-result-object p2

    .line 57
    invoke-virtual {v0, p3, p2}, Lz7/s;->k(Ljava/lang/String;Ljava/lang/Boolean;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 58
    .line 59
    .line 60
    :catch_0
    invoke-virtual {p1}, Lcom/yunpan/appmanage/util/w;->m()V

    .line 61
    .line 62
    .line 63
    :cond_0
    return-void

    .line 64
    :pswitch_0
    iget-object p1, p0, Lha/pb;->b:Lha/rb;

    .line 65
    .line 66
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 67
    .line 68
    .line 69
    new-instance p2, Ljava/util/ArrayList;

    .line 70
    .line 71
    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    .line 72
    .line 73
    .line 74
    const/4 v0, 0x0

    .line 75
    const/4 v1, 0x0

    .line 76
    :goto_0
    iget-object v2, p1, Lha/rb;->i:Lx9/r4;

    .line 77
    .line 78
    invoke-virtual {v2}, Lc6/g;->b()I

    .line 79
    .line 80
    .line 81
    move-result v2

    .line 82
    if-ge v1, v2, :cond_2

    .line 83
    .line 84
    iget-object v2, p1, Lha/rb;->i:Lx9/r4;

    .line 85
    .line 86
    invoke-virtual {v2, v1}, Lc6/g;->t(I)Ljava/lang/Object;

    .line 87
    .line 88
    .line 89
    move-result-object v2

    .line 90
    check-cast v2, Lx9/w3;

    .line 91
    .line 92
    iget-boolean v3, v2, Lx9/w3;->i:Z

    .line 93
    .line 94
    if-eqz v3, :cond_1

    .line 95
    .line 96
    invoke-virtual {p2, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 97
    .line 98
    .line 99
    :cond_1
    add-int/lit8 v1, v1, 0x1

    .line 100
    .line 101
    goto :goto_0

    .line 102
    :cond_2
    invoke-virtual {p2}, Ljava/util/ArrayList;->isEmpty()Z

    .line 103
    .line 104
    .line 105
    move-result v1

    .line 106
    if-eqz v1, :cond_3

    .line 107
    .line 108
    const-string p1, "\u8bf7\u9009\u62e9\u8981\u641c\u7d22\u7684\u5206\u533a"

    .line 109
    .line 110
    invoke-static {p1}, Lcom/yunpan/appmanage/util/a0;->y(Ljava/lang/String;)V

    .line 111
    .line 112
    .line 113
    goto :goto_1

    .line 114
    :cond_3
    invoke-virtual {p1}, Landroid/app/Dialog;->dismiss()V

    .line 115
    .line 116
    .line 117
    iget-object v1, p1, Lha/rb;->k:Lx9/b5;

    .line 118
    .line 119
    invoke-virtual {v1, p3}, Lc6/g;->t(I)Ljava/lang/Object;

    .line 120
    .line 121
    .line 122
    move-result-object p3

    .line 123
    check-cast p3, Ljava/lang/String;

    .line 124
    .line 125
    iget-object p1, p1, Lha/rb;->g:Lua/d8;

    .line 126
    .line 127
    iget-object p1, p1, Lua/d8;->b:Lua/q8;

    .line 128
    .line 129
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 130
    .line 131
    .line 132
    const-string v1, "\u5173\u952e\u5b57"

    .line 133
    .line 134
    invoke-virtual {p3, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    .line 135
    .line 136
    .line 137
    move-result v1

    .line 138
    if-eqz v1, :cond_4

    .line 139
    .line 140
    new-instance p3, Lha/o1;

    .line 141
    .line 142
    iget-object v0, p1, Lda/h;->f:Landroid/app/Activity;

    .line 143
    .line 144
    iget-object v1, p1, Lda/h;->e:Landroid/content/Context;

    .line 145
    .line 146
    new-instance v2, Lua/g6;

    .line 147
    .line 148
    const/4 v3, 0x6

    .line 149
    invoke-direct {v2, p1, v3, p2}, Lua/g6;-><init>(Ljava/lang/Object;ILjava/lang/Object;)V

    .line 150
    .line 151
    .line 152
    invoke-direct {p3, v0, v1, v2}, Lha/o1;-><init>(Landroid/app/Activity;Landroid/content/Context;Lua/g6;)V

    .line 153
    .line 154
    .line 155
    invoke-virtual {p3}, Lha/a4;->show()V

    .line 156
    .line 157
    .line 158
    goto :goto_1

    .line 159
    :cond_4
    invoke-virtual {p1, v0, p3, p2}, Lua/q8;->A(ZLjava/lang/String;Ljava/util/ArrayList;)V

    .line 160
    .line 161
    .line 162
    :goto_1
    return-void

    .line 163
    :pswitch_1
    iget-object p1, p0, Lha/pb;->b:Lha/rb;

    .line 164
    .line 165
    iget-object p2, p1, Lha/rb;->m:Lx9/q4;

    .line 166
    .line 167
    invoke-virtual {p2, p3}, Lc6/g;->t(I)Ljava/lang/Object;

    .line 168
    .line 169
    .line 170
    move-result-object p2

    .line 171
    check-cast p2, Lx9/x0;

    .line 172
    .line 173
    iget-boolean v0, p2, Lx9/x0;->b:Z

    .line 174
    .line 175
    const/4 v1, 0x1

    .line 176
    xor-int/2addr v0, v1

    .line 177
    iput-boolean v0, p2, Lx9/x0;->b:Z

    .line 178
    .line 179
    iget-object v0, p1, Lha/rb;->m:Lx9/q4;

    .line 180
    .line 181
    invoke-virtual {v0, p3, p2}, Lc6/g;->D(ILjava/lang/Object;)V

    .line 182
    .line 183
    .line 184
    const-string v0, "mFile_search_sort"

    .line 185
    .line 186
    if-nez p3, :cond_5

    .line 187
    .line 188
    sget-object p2, Lcom/yunpan/appmanage/util/v;->a:Lcom/yunpan/appmanage/util/w;

    .line 189
    .line 190
    iput-boolean v1, p2, Lcom/yunpan/appmanage/util/w;->t0:Z

    .line 191
    .line 192
    :try_start_1
    iget-object p3, p2, Lcom/yunpan/appmanage/util/w;->i:Lz7/s;

    .line 193
    .line 194
    sget-object v2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 195
    .line 196
    invoke-virtual {p3, v0, v2}, Lz7/s;->k(Ljava/lang/String;Ljava/lang/Boolean;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 197
    .line 198
    .line 199
    :catch_1
    invoke-virtual {p2}, Lcom/yunpan/appmanage/util/w;->m()V

    .line 200
    .line 201
    .line 202
    iget-object p2, p1, Lha/rb;->m:Lx9/q4;

    .line 203
    .line 204
    invoke-virtual {p2, v1}, Lc6/g;->t(I)Ljava/lang/Object;

    .line 205
    .line 206
    .line 207
    move-result-object p2

    .line 208
    check-cast p2, Lx9/x0;

    .line 209
    .line 210
    iget-boolean p3, p2, Lx9/x0;->b:Z

    .line 211
    .line 212
    xor-int/2addr p3, v1

    .line 213
    iput-boolean p3, p2, Lx9/x0;->b:Z

    .line 214
    .line 215
    iget-object p1, p1, Lha/rb;->m:Lx9/q4;

    .line 216
    .line 217
    invoke-virtual {p1, v1, p2}, Lc6/g;->D(ILjava/lang/Object;)V

    .line 218
    .line 219
    .line 220
    goto :goto_2

    .line 221
    :cond_5
    if-ne p3, v1, :cond_6

    .line 222
    .line 223
    sget-object p2, Lcom/yunpan/appmanage/util/v;->a:Lcom/yunpan/appmanage/util/w;

    .line 224
    .line 225
    const/4 p3, 0x0

    .line 226
    iput-boolean p3, p2, Lcom/yunpan/appmanage/util/w;->t0:Z

    .line 227
    .line 228
    :try_start_2
    iget-object v2, p2, Lcom/yunpan/appmanage/util/w;->i:Lz7/s;

    .line 229
    .line 230
    sget-object v3, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 231
    .line 232
    invoke-virtual {v2, v0, v3}, Lz7/s;->k(Ljava/lang/String;Ljava/lang/Boolean;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    .line 233
    .line 234
    .line 235
    :catch_2
    invoke-virtual {p2}, Lcom/yunpan/appmanage/util/w;->m()V

    .line 236
    .line 237
    .line 238
    iget-object p2, p1, Lha/rb;->m:Lx9/q4;

    .line 239
    .line 240
    invoke-virtual {p2, p3}, Lc6/g;->t(I)Ljava/lang/Object;

    .line 241
    .line 242
    .line 243
    move-result-object p2

    .line 244
    check-cast p2, Lx9/x0;

    .line 245
    .line 246
    iget-boolean v0, p2, Lx9/x0;->b:Z

    .line 247
    .line 248
    xor-int/2addr v0, v1

    .line 249
    iput-boolean v0, p2, Lx9/x0;->b:Z

    .line 250
    .line 251
    iget-object p1, p1, Lha/rb;->m:Lx9/q4;

    .line 252
    .line 253
    invoke-virtual {p1, p3, p2}, Lc6/g;->D(ILjava/lang/Object;)V

    .line 254
    .line 255
    .line 256
    goto :goto_2

    .line 257
    :cond_6
    const/4 p1, 0x2

    .line 258
    if-ne p3, p1, :cond_7

    .line 259
    .line 260
    sget-object p1, Lcom/yunpan/appmanage/util/v;->a:Lcom/yunpan/appmanage/util/w;

    .line 261
    .line 262
    iget-boolean p2, p2, Lx9/x0;->b:Z

    .line 263
    .line 264
    iput-boolean p2, p1, Lcom/yunpan/appmanage/util/w;->u0:Z

    .line 265
    .line 266
    :try_start_3
    iget-object p3, p1, Lcom/yunpan/appmanage/util/w;->i:Lz7/s;

    .line 267
    .line 268
    const-string v0, "File_search_including_hide_file"

    .line 269
    .line 270
    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 271
    .line 272
    .line 273
    move-result-object p2

    .line 274
    invoke-virtual {p3, v0, p2}, Lz7/s;->k(Ljava/lang/String;Ljava/lang/Boolean;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3

    .line 275
    .line 276
    .line 277
    :catch_3
    invoke-virtual {p1}, Lcom/yunpan/appmanage/util/w;->m()V

    .line 278
    .line 279
    .line 280
    goto :goto_2

    .line 281
    :cond_7
    const/4 p1, 0x3

    .line 282
    if-ne p3, p1, :cond_8

    .line 283
    .line 284
    sget-object p1, Lcom/yunpan/appmanage/util/v;->a:Lcom/yunpan/appmanage/util/w;

    .line 285
    .line 286
    iget-boolean p2, p2, Lx9/x0;->b:Z

    .line 287
    .line 288
    iput-boolean p2, p1, Lcom/yunpan/appmanage/util/w;->v0:Z

    .line 289
    .line 290
    :try_start_4
    iget-object p3, p1, Lcom/yunpan/appmanage/util/w;->i:Lz7/s;

    .line 291
    .line 292
    const-string v0, "File_search_including_android_data"

    .line 293
    .line 294
    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 295
    .line 296
    .line 297
    move-result-object p2

    .line 298
    invoke-virtual {p3, v0, p2}, Lz7/s;->k(Ljava/lang/String;Ljava/lang/Boolean;)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_4

    .line 299
    .line 300
    .line 301
    :catch_4
    invoke-virtual {p1}, Lcom/yunpan/appmanage/util/w;->m()V

    .line 302
    .line 303
    .line 304
    :cond_8
    :goto_2
    return-void

    .line 305
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
