.class public final Lha/gf;
.super Lha/a4;
.source "SourceFile"


# instance fields
.field public g:Lcom/owen/tvrecyclerview/widget/TvRecyclerView;

.field public h:Lx9/s3;

.field public i:Ljava/lang/String;

.field public j:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/app/Activity;Landroid/content/Context;)V
    .locals 1

    .line 1
    const v0, 0x7f0e0106

    .line 2
    .line 3
    .line 4
    invoke-direct {p0, p1, p2, v0}, Lha/a4;-><init>(Landroid/app/Activity;Landroid/content/Context;I)V

    .line 5
    .line 6
    .line 7
    const-string p1, ""

    .line 8
    .line 9
    iput-object p1, p0, Lha/gf;->i:Ljava/lang/String;

    .line 10
    .line 11
    iput-object p1, p0, Lha/gf;->j:Ljava/lang/String;

    .line 12
    .line 13
    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/String;)V
    .locals 7

    .line 1
    invoke-virtual {p0}, Lha/a4;->show()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lha/gf;->i:Ljava/lang/String;

    .line 5
    .line 6
    const-string v0, "."

    .line 7
    .line 8
    invoke-virtual {p1, v0}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    .line 9
    .line 10
    .line 11
    move-result v0

    .line 12
    if-lez v0, :cond_0

    .line 13
    .line 14
    invoke-virtual {p1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    .line 19
    .line 20
    .line 21
    move-result-object v1

    .line 22
    invoke-virtual {v0, v1}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    .line 23
    .line 24
    .line 25
    move-result-object v0

    .line 26
    goto :goto_0

    .line 27
    :cond_0
    const-string v0, ""

    .line 28
    .line 29
    :goto_0
    invoke-static {}, Lcom/yunpan/appmanage/util/y;->a()Ljava/util/HashMap;

    .line 30
    .line 31
    .line 32
    move-result-object v1

    .line 33
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    .line 34
    .line 35
    .line 36
    move-result v2

    .line 37
    if-nez v2, :cond_1

    .line 38
    .line 39
    invoke-virtual {v1}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    .line 40
    .line 41
    .line 42
    move-result-object v2

    .line 43
    invoke-interface {v2, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    .line 44
    .line 45
    .line 46
    move-result v2

    .line 47
    if-eqz v2, :cond_1

    .line 48
    .line 49
    invoke-virtual {v1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 50
    .line 51
    .line 52
    move-result-object v0

    .line 53
    check-cast v0, Ljava/lang/String;

    .line 54
    .line 55
    iput-object v0, p0, Lha/gf;->j:Ljava/lang/String;

    .line 56
    .line 57
    :cond_1
    iget-object v0, p0, Lha/gf;->j:Ljava/lang/String;

    .line 58
    .line 59
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    .line 60
    .line 61
    .line 62
    move-result v0

    .line 63
    if-eqz v0, :cond_3

    .line 64
    .line 65
    invoke-static {p1}, Lif/a;->j0(Ljava/lang/String;)Z

    .line 66
    .line 67
    .line 68
    move-result v0

    .line 69
    if-eqz v0, :cond_2

    .line 70
    .line 71
    const-string p1, "video/*"

    .line 72
    .line 73
    iput-object p1, p0, Lha/gf;->j:Ljava/lang/String;

    .line 74
    .line 75
    goto :goto_1

    .line 76
    :cond_2
    invoke-static {p1}, Lif/a;->f0(Ljava/lang/String;)Z

    .line 77
    .line 78
    .line 79
    move-result p1

    .line 80
    if-eqz p1, :cond_3

    .line 81
    .line 82
    const-string p1, "audio/*"

    .line 83
    .line 84
    iput-object p1, p0, Lha/gf;->j:Ljava/lang/String;

    .line 85
    .line 86
    :cond_3
    :goto_1
    new-instance p1, Landroid/content/Intent;

    .line 87
    .line 88
    const-string v0, "android.intent.action.VIEW"

    .line 89
    .line 90
    invoke-direct {p1, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 91
    .line 92
    .line 93
    new-instance v0, Ljava/io/File;

    .line 94
    .line 95
    const-string v1, "/sss.mp4"

    .line 96
    .line 97
    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 98
    .line 99
    .line 100
    invoke-static {v0}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    .line 101
    .line 102
    .line 103
    move-result-object v0

    .line 104
    iget-object v1, p0, Lha/gf;->j:Ljava/lang/String;

    .line 105
    .line 106
    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    .line 107
    .line 108
    .line 109
    sget-object v0, Lcom/yunpan/appmanage/util/k;->u0:Ljava/text/DecimalFormat;

    .line 110
    .line 111
    sget-object v0, Lcom/yunpan/appmanage/util/j;->a:Lcom/yunpan/appmanage/util/k;

    .line 112
    .line 113
    iget-object v0, v0, Lcom/yunpan/appmanage/util/k;->a:Landroid/content/ContextWrapper;

    .line 114
    .line 115
    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 116
    .line 117
    .line 118
    move-result-object v0

    .line 119
    const/4 v1, 0x0

    .line 120
    invoke-virtual {v0, p1, v1}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    .line 121
    .line 122
    .line 123
    move-result-object p1

    .line 124
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 125
    .line 126
    .line 127
    move-result-object p1

    .line 128
    :goto_2
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 129
    .line 130
    .line 131
    move-result v0

    .line 132
    if-eqz v0, :cond_4

    .line 133
    .line 134
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 135
    .line 136
    .line 137
    move-result-object v0

    .line 138
    check-cast v0, Landroid/content/pm/ResolveInfo;

    .line 139
    .line 140
    iget-object v2, p0, Lha/gf;->h:Lx9/s3;

    .line 141
    .line 142
    new-instance v3, Lx9/t3;

    .line 143
    .line 144
    sget-object v4, Lcom/yunpan/appmanage/base/AppStart;->h:Lcom/yunpan/appmanage/base/AppStart;

    .line 145
    .line 146
    invoke-virtual {v4}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 147
    .line 148
    .line 149
    move-result-object v4

    .line 150
    invoke-virtual {v0, v4}, Landroid/content/pm/ResolveInfo;->loadIcon(Landroid/content/pm/PackageManager;)Landroid/graphics/drawable/Drawable;

    .line 151
    .line 152
    .line 153
    move-result-object v4

    .line 154
    iget-object v5, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    .line 155
    .line 156
    sget-object v6, Lcom/yunpan/appmanage/base/AppStart;->h:Lcom/yunpan/appmanage/base/AppStart;

    .line 157
    .line 158
    invoke-virtual {v6}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 159
    .line 160
    .line 161
    move-result-object v6

    .line 162
    invoke-virtual {v5, v6}, Landroid/content/pm/PackageItemInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    .line 163
    .line 164
    .line 165
    move-result-object v5

    .line 166
    invoke-interface {v5}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    .line 167
    .line 168
    .line 169
    move-result-object v5

    .line 170
    iget-object v0, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    .line 171
    .line 172
    iget-object v6, v0, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    .line 173
    .line 174
    iget-object v0, v0, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    .line 175
    .line 176
    invoke-direct {v3, v4, v5, v6, v0}, Lx9/t3;-><init>(Landroid/graphics/drawable/Drawable;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 177
    .line 178
    .line 179
    invoke-virtual {v2, v3}, Lc6/g;->q(Ljava/lang/Object;)V

    .line 180
    .line 181
    .line 182
    goto :goto_2

    .line 183
    :cond_4
    iget-object p1, p0, Lha/gf;->h:Lx9/s3;

    .line 184
    .line 185
    invoke-virtual {p1}, Lc6/g;->b()I

    .line 186
    .line 187
    .line 188
    move-result p1

    .line 189
    iget-object v0, p0, Lha/a4;->b:Landroid/content/Context;

    .line 190
    .line 191
    const/4 v2, 0x7

    .line 192
    if-ge p1, v2, :cond_5

    .line 193
    .line 194
    iget-object p1, p0, Lha/gf;->g:Lcom/owen/tvrecyclerview/widget/TvRecyclerView;

    .line 195
    .line 196
    new-instance v2, Lcom/owen/tvrecyclerview/widget/V7GridLayoutManager;

    .line 197
    .line 198
    iget-object v3, p0, Lha/gf;->h:Lx9/s3;

    .line 199
    .line 200
    invoke-virtual {v3}, Lc6/g;->b()I

    .line 201
    .line 202
    .line 203
    move-result v3

    .line 204
    invoke-direct {v2, v0, v3}, Lcom/owen/tvrecyclerview/widget/V7GridLayoutManager;-><init>(Landroid/content/Context;I)V

    .line 205
    .line 206
    .line 207
    invoke-virtual {p1, v2}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 208
    .line 209
    .line 210
    goto :goto_3

    .line 211
    :cond_5
    iget-object p1, p0, Lha/gf;->h:Lx9/s3;

    .line 212
    .line 213
    invoke-virtual {p1}, Lc6/g;->b()I

    .line 214
    .line 215
    .line 216
    move-result p1

    .line 217
    const/16 v2, 0xa

    .line 218
    .line 219
    const/4 v3, 0x6

    .line 220
    if-le p1, v2, :cond_6

    .line 221
    .line 222
    iget-object p1, p0, Lha/gf;->g:Lcom/owen/tvrecyclerview/widget/TvRecyclerView;

    .line 223
    .line 224
    new-instance v2, Lcom/owen/tvrecyclerview/widget/V7GridLayoutManager;

    .line 225
    .line 226
    invoke-direct {v2, v0, v3}, Lcom/owen/tvrecyclerview/widget/V7GridLayoutManager;-><init>(Landroid/content/Context;I)V

    .line 227
    .line 228
    .line 229
    invoke-virtual {p1, v2}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 230
    .line 231
    .line 232
    goto :goto_3

    .line 233
    :cond_6
    iget-object p1, p0, Lha/gf;->h:Lx9/s3;

    .line 234
    .line 235
    invoke-virtual {p1}, Lc6/g;->b()I

    .line 236
    .line 237
    .line 238
    move-result p1

    .line 239
    div-int/2addr p1, v3

    .line 240
    if-nez p1, :cond_7

    .line 241
    .line 242
    iget-object p1, p0, Lha/gf;->g:Lcom/owen/tvrecyclerview/widget/TvRecyclerView;

    .line 243
    .line 244
    new-instance v2, Lcom/owen/tvrecyclerview/widget/V7GridLayoutManager;

    .line 245
    .line 246
    invoke-direct {v2, v0, v3}, Lcom/owen/tvrecyclerview/widget/V7GridLayoutManager;-><init>(Landroid/content/Context;I)V

    .line 247
    .line 248
    .line 249
    invoke-virtual {p1, v2}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 250
    .line 251
    .line 252
    goto :goto_3

    .line 253
    :cond_7
    iget-object p1, p0, Lha/gf;->h:Lx9/s3;

    .line 254
    .line 255
    invoke-virtual {p1}, Lc6/g;->b()I

    .line 256
    .line 257
    .line 258
    move-result p1

    .line 259
    const/4 v2, 0x5

    .line 260
    div-int/2addr p1, v2

    .line 261
    if-nez p1, :cond_8

    .line 262
    .line 263
    iget-object p1, p0, Lha/gf;->g:Lcom/owen/tvrecyclerview/widget/TvRecyclerView;

    .line 264
    .line 265
    new-instance v3, Lcom/owen/tvrecyclerview/widget/V7GridLayoutManager;

    .line 266
    .line 267
    invoke-direct {v3, v0, v2}, Lcom/owen/tvrecyclerview/widget/V7GridLayoutManager;-><init>(Landroid/content/Context;I)V

    .line 268
    .line 269
    .line 270
    invoke-virtual {p1, v3}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 271
    .line 272
    .line 273
    goto :goto_3

    .line 274
    :cond_8
    iget-object p1, p0, Lha/gf;->g:Lcom/owen/tvrecyclerview/widget/TvRecyclerView;

    .line 275
    .line 276
    new-instance v2, Lcom/owen/tvrecyclerview/widget/V7GridLayoutManager;

    .line 277
    .line 278
    const/4 v3, 0x4

    .line 279
    invoke-direct {v2, v0, v3}, Lcom/owen/tvrecyclerview/widget/V7GridLayoutManager;-><init>(Landroid/content/Context;I)V

    .line 280
    .line 281
    .line 282
    invoke-virtual {p1, v2}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 283
    .line 284
    .line 285
    :goto_3
    iget-object p1, p0, Lha/gf;->h:Lx9/s3;

    .line 286
    .line 287
    invoke-virtual {p1}, Lc6/g;->b()I

    .line 288
    .line 289
    .line 290
    move-result p1

    .line 291
    if-nez p1, :cond_9

    .line 292
    .line 293
    const-string p1, "\u627e\u4e0d\u5230\u9002\u5408\u64ad\u653e\u6b64\u534f\u8bae\u7684\u64ad\u653e\u5668"

    .line 294
    .line 295
    invoke-static {p1}, Lcom/hjq/toast/Toaster;->show(Ljava/lang/CharSequence;)V

    .line 296
    .line 297
    .line 298
    invoke-virtual {p0}, Landroid/app/Dialog;->dismiss()V

    .line 299
    .line 300
    .line 301
    return-void

    .line 302
    :cond_9
    iget-object p1, p0, Lha/gf;->g:Lcom/owen/tvrecyclerview/widget/TvRecyclerView;

    .line 303
    .line 304
    invoke-virtual {p1, v1}, Lcom/owen/tvrecyclerview/widget/TvRecyclerView;->setSelection(I)V

    .line 305
    .line 306
    .line 307
    iget-object p1, p0, Lha/gf;->g:Lcom/owen/tvrecyclerview/widget/TvRecyclerView;

    .line 308
    .line 309
    invoke-virtual {p1}, Landroid/view/View;->requestFocus()Z

    .line 310
    .line 311
    .line 312
    return-void
.end method

.method public final onCreate(Landroid/os/Bundle;)V
    .locals 2

    .line 1
    invoke-super {p0, p1}, Lha/a4;->onCreate(Landroid/os/Bundle;)V

    .line 2
    .line 3
    .line 4
    const p1, 0x7f0b04f1

    .line 5
    .line 6
    .line 7
    invoke-virtual {p0, p1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    .line 8
    .line 9
    .line 10
    move-result-object p1

    .line 11
    check-cast p1, Lcom/owen/tvrecyclerview/widget/TvRecyclerView;

    .line 12
    .line 13
    iput-object p1, p0, Lha/gf;->g:Lcom/owen/tvrecyclerview/widget/TvRecyclerView;

    .line 14
    .line 15
    new-instance p1, Lx9/s3;

    .line 16
    .line 17
    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    invoke-direct {p1, v0}, Lx9/s3;-><init>(Landroid/content/Context;)V

    .line 22
    .line 23
    .line 24
    iput-object p1, p0, Lha/gf;->h:Lx9/s3;

    .line 25
    .line 26
    iget-object v0, p0, Lha/gf;->g:Lcom/owen/tvrecyclerview/widget/TvRecyclerView;

    .line 27
    .line 28
    invoke-virtual {v0, p1}, Lcom/owen/tvrecyclerview/widget/TvRecyclerView;->setAdapter(Landroidx/recyclerview/widget/m1;)V

    .line 29
    .line 30
    .line 31
    iget-object p1, p0, Lha/gf;->h:Lx9/s3;

    .line 32
    .line 33
    new-instance v0, Lha/p7;

    .line 34
    .line 35
    const/16 v1, 0x1b

    .line 36
    .line 37
    invoke-direct {v0, v1, p0}, Lha/p7;-><init>(ILjava/lang/Object;)V

    .line 38
    .line 39
    .line 40
    iput-object v0, p1, Lc6/g;->e:Lc6/e;

    .line 41
    .line 42
    return-void
.end method
