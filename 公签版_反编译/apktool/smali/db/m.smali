.class public final synthetic Ldb/m;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ldb/q;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(ILjava/lang/Object;)V
    .locals 0

    .line 1
    iput p1, p0, Ldb/m;->a:I

    iput-object p2, p0, Ldb/m;->b:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lbi/a;Lag/h;)V
    .locals 6

    .line 1
    const/4 v0, 0x3

    .line 2
    const/4 v1, 0x2

    .line 3
    const/4 v2, 0x1

    .line 4
    const/4 v3, 0x0

    .line 5
    iget-object v4, p0, Ldb/m;->b:Ljava/lang/Object;

    .line 6
    .line 7
    iget v5, p0, Ldb/m;->a:I

    .line 8
    .line 9
    packed-switch v5, :pswitch_data_0

    .line 10
    .line 11
    .line 12
    check-cast p1, Ldb/w;

    .line 13
    .line 14
    check-cast v4, Lub/b;

    .line 15
    .line 16
    iget-boolean v5, v4, Lub/b;->e:Z

    .line 17
    .line 18
    if-nez v5, :cond_0

    .line 19
    .line 20
    iput-boolean v2, p2, Lag/h;->a:Z

    .line 21
    .line 22
    iput-boolean v3, v4, Lub/b;->f:Z

    .line 23
    .line 24
    goto :goto_1

    .line 25
    :cond_0
    iget p2, p1, Ldb/w;->g:I

    .line 26
    .line 27
    const/4 v5, 0x4

    .line 28
    if-eq p2, v1, :cond_1

    .line 29
    .line 30
    if-eq p2, v0, :cond_1

    .line 31
    .line 32
    if-eq p2, v5, :cond_1

    .line 33
    .line 34
    const/4 v0, 0x5

    .line 35
    if-eq p2, v0, :cond_1

    .line 36
    .line 37
    goto :goto_0

    .line 38
    :cond_1
    invoke-virtual {v4, v5}, Lub/b;->c(I)Z

    .line 39
    .line 40
    .line 41
    move-result p2

    .line 42
    if-eqz p2, :cond_3

    .line 43
    .line 44
    iget p2, p1, Ldb/w;->e:I

    .line 45
    .line 46
    iget v0, p1, Ldb/w;->c:I

    .line 47
    .line 48
    sub-int/2addr p2, v0

    .line 49
    invoke-static {p2}, Ljava/lang/Math;->abs(I)I

    .line 50
    .line 51
    .line 52
    move-result p2

    .line 53
    const/16 v0, 0x50

    .line 54
    .line 55
    if-gt p2, v0, :cond_2

    .line 56
    .line 57
    iget p2, p1, Ldb/w;->f:I

    .line 58
    .line 59
    iget p1, p1, Ldb/w;->d:I

    .line 60
    .line 61
    sub-int/2addr p2, p1

    .line 62
    invoke-static {p2}, Ljava/lang/Math;->abs(I)I

    .line 63
    .line 64
    .line 65
    move-result p1

    .line 66
    if-le p1, v0, :cond_3

    .line 67
    .line 68
    :cond_2
    iget-object p1, v4, Lub/b;->a:Landroid/widget/PopupWindow;

    .line 69
    .line 70
    invoke-virtual {p1}, Landroid/widget/PopupWindow;->isShowing()Z

    .line 71
    .line 72
    .line 73
    move-result p1

    .line 74
    if-eqz p1, :cond_3

    .line 75
    .line 76
    invoke-virtual {v4}, Lub/b;->b()V

    .line 77
    .line 78
    .line 79
    goto :goto_1

    .line 80
    :cond_3
    :goto_0
    invoke-virtual {v4, v2}, Lub/b;->c(I)Z

    .line 81
    .line 82
    .line 83
    move-result p1

    .line 84
    if-eqz p1, :cond_4

    .line 85
    .line 86
    invoke-virtual {v4, v3}, Lub/b;->a(Z)V

    .line 87
    .line 88
    .line 89
    :cond_4
    :goto_1
    return-void

    .line 90
    :pswitch_0
    check-cast p1, Ldb/v;

    .line 91
    .line 92
    sget p1, Lcom/yunpan/appmanage/ui/ActivityCodeEditor;->c1:I

    .line 93
    .line 94
    check-cast v4, Lcom/yunpan/appmanage/ui/ActivityCodeEditor;

    .line 95
    .line 96
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 97
    .line 98
    .line 99
    const-string p1, "\u7ed3\u679c\uff1a"

    .line 100
    .line 101
    :try_start_0
    iget-object p2, v4, Lcom/yunpan/appmanage/ui/ActivityCodeEditor;->t0:Landroid/widget/TextView;

    .line 102
    .line 103
    new-instance v0, Ljava/lang/StringBuilder;

    .line 104
    .line 105
    invoke-direct {v0, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 106
    .line 107
    .line 108
    iget-object p1, v4, Lcom/yunpan/appmanage/ui/ActivityCodeEditor;->C:Lio/github/rosemoe/sora/widget/CodeEditor;

    .line 109
    .line 110
    invoke-virtual {p1}, Lio/github/rosemoe/sora/widget/CodeEditor;->getSearcher()Ltb/r;

    .line 111
    .line 112
    .line 113
    move-result-object p1

    .line 114
    iget-object p1, p1, Ltb/r;->b:Ljava/lang/String;

    .line 115
    .line 116
    if-eqz p1, :cond_5

    .line 117
    .line 118
    goto :goto_2

    .line 119
    :cond_5
    const/4 v2, 0x0

    .line 120
    :goto_2
    if-eqz v2, :cond_8

    .line 121
    .line 122
    iget-object p1, v4, Lcom/yunpan/appmanage/ui/ActivityCodeEditor;->C:Lio/github/rosemoe/sora/widget/CodeEditor;

    .line 123
    .line 124
    invoke-virtual {p1}, Lio/github/rosemoe/sora/widget/CodeEditor;->getSearcher()Ltb/r;

    .line 125
    .line 126
    .line 127
    move-result-object p1

    .line 128
    invoke-virtual {p1}, Ltb/r;->a()V

    .line 129
    .line 130
    .line 131
    invoke-virtual {p1}, Ltb/r;->f()Z

    .line 132
    .line 133
    .line 134
    move-result v1

    .line 135
    if-nez v1, :cond_6

    .line 136
    .line 137
    goto :goto_3

    .line 138
    :cond_6
    iget-object p1, p1, Ltb/r;->f:Lsb/e;

    .line 139
    .line 140
    if-nez p1, :cond_7

    .line 141
    .line 142
    goto :goto_3

    .line 143
    :cond_7
    iget v3, p1, Lsb/e;->b:I

    .line 144
    .line 145
    :cond_8
    :goto_3
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 146
    .line 147
    .line 148
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 149
    .line 150
    .line 151
    move-result-object p1

    .line 152
    invoke-virtual {p2, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 153
    .line 154
    .line 155
    :catch_0
    return-void

    .line 156
    :pswitch_1
    check-cast p1, Ldb/x;

    .line 157
    .line 158
    check-cast v4, Ll5/y;

    .line 159
    .line 160
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 161
    .line 162
    .line 163
    invoke-virtual {p1}, Ldb/x;->c()Z

    .line 164
    .line 165
    .line 166
    move-result p1

    .line 167
    if-nez p1, :cond_9

    .line 168
    .line 169
    invoke-virtual {v4}, Ll5/y;->N()V

    .line 170
    .line 171
    .line 172
    :cond_9
    return-void

    .line 173
    :pswitch_2
    check-cast p1, Ldb/d;

    .line 174
    .line 175
    check-cast v4, Ltb/r;

    .line 176
    .line 177
    iget-object p1, v4, Ltb/r;->b:Ljava/lang/String;

    .line 178
    .line 179
    if-eqz p1, :cond_a

    .line 180
    .line 181
    invoke-virtual {v4}, Ltb/r;->b()V

    .line 182
    .line 183
    .line 184
    :cond_a
    return-void

    .line 185
    :pswitch_3
    check-cast p1, Ldb/d;

    .line 186
    .line 187
    check-cast v4, Ltb/f;

    .line 188
    .line 189
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 190
    .line 191
    .line 192
    iget p2, p1, Ldb/d;->c:I

    .line 193
    .line 194
    iget-object v2, v4, Ltb/f;->b:Lmb/d;

    .line 195
    .line 196
    iget-object v3, p1, Ldb/d;->e:Lmb/b;

    .line 197
    .line 198
    iget-object p1, p1, Ldb/d;->d:Lmb/b;

    .line 199
    .line 200
    if-ne p2, v1, :cond_c

    .line 201
    .line 202
    iget p1, p1, Lmb/b;->a:I

    .line 203
    .line 204
    iget p2, v3, Lmb/b;->a:I

    .line 205
    .line 206
    sub-int/2addr p2, p1

    .line 207
    iget v0, v2, Lmb/d;->a:I

    .line 208
    .line 209
    if-gt v0, p1, :cond_b

    .line 210
    .line 211
    iget v1, v2, Lmb/d;->c:I

    .line 212
    .line 213
    if-lt v1, p1, :cond_b

    .line 214
    .line 215
    add-int/2addr v1, p2

    .line 216
    iput v1, v2, Lmb/d;->c:I

    .line 217
    .line 218
    :cond_b
    if-le v0, p1, :cond_e

    .line 219
    .line 220
    add-int/2addr v0, p2

    .line 221
    iput v0, v2, Lmb/d;->a:I

    .line 222
    .line 223
    iget p1, v2, Lmb/d;->c:I

    .line 224
    .line 225
    add-int/2addr p1, p2

    .line 226
    iput p1, v2, Lmb/d;->c:I

    .line 227
    .line 228
    goto :goto_4

    .line 229
    :cond_c
    if-ne p2, v0, :cond_e

    .line 230
    .line 231
    iget p1, p1, Lmb/b;->a:I

    .line 232
    .line 233
    iget p2, v3, Lmb/b;->a:I

    .line 234
    .line 235
    sub-int v0, p2, p1

    .line 236
    .line 237
    iget v1, v2, Lmb/d;->a:I

    .line 238
    .line 239
    invoke-static {p1, v1}, Ljava/lang/Math;->max(II)I

    .line 240
    .line 241
    .line 242
    move-result v1

    .line 243
    iget v3, v2, Lmb/d;->c:I

    .line 244
    .line 245
    invoke-static {p2, v3}, Ljava/lang/Math;->min(II)I

    .line 246
    .line 247
    .line 248
    move-result v3

    .line 249
    if-gt v3, v1, :cond_d

    .line 250
    .line 251
    iget p1, v2, Lmb/d;->a:I

    .line 252
    .line 253
    if-lt p1, p2, :cond_e

    .line 254
    .line 255
    sub-int/2addr p1, v0

    .line 256
    iput p1, v2, Lmb/d;->a:I

    .line 257
    .line 258
    iget p1, v2, Lmb/d;->c:I

    .line 259
    .line 260
    sub-int/2addr p1, v0

    .line 261
    iput p1, v2, Lmb/d;->c:I

    .line 262
    .line 263
    goto :goto_4

    .line 264
    :cond_d
    sub-int/2addr v3, v1

    .line 265
    iget p2, v2, Lmb/d;->c:I

    .line 266
    .line 267
    sub-int/2addr p2, v3

    .line 268
    iput p2, v2, Lmb/d;->c:I

    .line 269
    .line 270
    iget v0, v2, Lmb/d;->a:I

    .line 271
    .line 272
    if-le v0, p1, :cond_e

    .line 273
    .line 274
    sub-int p1, v0, p1

    .line 275
    .line 276
    sub-int/2addr v0, p1

    .line 277
    iput v0, v2, Lmb/d;->a:I

    .line 278
    .line 279
    sub-int/2addr p2, p1

    .line 280
    iput p2, v2, Lmb/d;->c:I

    .line 281
    .line 282
    :cond_e
    :goto_4
    return-void

    .line 283
    :pswitch_4
    check-cast v4, Ldb/n;

    .line 284
    .line 285
    invoke-interface {v4, p1}, Ldb/n;->d(Lbi/a;)V

    .line 286
    .line 287
    .line 288
    return-void

    .line 289
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
