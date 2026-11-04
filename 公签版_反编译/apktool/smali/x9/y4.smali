.class public final Lx9/y4;
.super Lc6/g;
.source "SourceFile"


# instance fields
.field public final h:Lda/g;


# direct methods
.method public constructor <init>(Lda/g;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lc6/g;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lx9/y4;->h:Lda/g;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final B(Landroid/content/Context;Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    .locals 0

    .line 1
    new-instance p1, Lh6/a;

    .line 2
    .line 3
    const p3, 0x7f0e0183

    .line 4
    .line 5
    .line 6
    invoke-direct {p1, p3, p2}, Lh6/a;-><init>(ILandroid/view/ViewGroup;)V

    .line 7
    .line 8
    .line 9
    return-object p1
.end method

.method public final z(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;ILjava/lang/Object;)V
    .locals 9

    .line 1
    check-cast p1, Lh6/a;

    .line 2
    .line 3
    check-cast p3, Landroid/content/pm/ResolveInfo;

    .line 4
    .line 5
    iget-object p2, p3, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    .line 6
    .line 7
    const v0, 0x7f0b057b

    .line 8
    .line 9
    .line 10
    const v1, 0x7f0b0406

    .line 11
    .line 12
    .line 13
    const v2, 0x7f0b0523

    .line 14
    .line 15
    .line 16
    const v3, 0x7f0b04b5

    .line 17
    .line 18
    .line 19
    const v4, 0x7f0b0334

    .line 20
    .line 21
    .line 22
    if-nez p2, :cond_0

    .line 23
    .line 24
    const p2, 0x7f0801fd

    .line 25
    .line 26
    .line 27
    invoke-virtual {p1, v3, p2}, Lh6/a;->b(II)V

    .line 28
    .line 29
    .line 30
    const-string p2, "\u81ea\u542f\u52a8\u7684\u7cfb\u7edfAPP"

    .line 31
    .line 32
    invoke-virtual {p1, v2, p2}, Lh6/a;->c(ILjava/lang/CharSequence;)V

    .line 33
    .line 34
    .line 35
    const-string p2, "\u70b9\u51fb\u663e\u793a\u81ea\u542f\u52a8\u7684\u7cfb\u7edf\u5e94\u7528"

    .line 36
    .line 37
    invoke-virtual {p1, v1, p2}, Lh6/a;->c(ILjava/lang/CharSequence;)V

    .line 38
    .line 39
    .line 40
    const-string p2, ""

    .line 41
    .line 42
    invoke-virtual {p1, v0, p2}, Lh6/a;->c(ILjava/lang/CharSequence;)V

    .line 43
    .line 44
    .line 45
    const-string p2, "\u663e\u793a"

    .line 46
    .line 47
    invoke-virtual {p1, v4, p2}, Lh6/a;->c(ILjava/lang/CharSequence;)V

    .line 48
    .line 49
    .line 50
    goto/16 :goto_1

    .line 51
    .line 52
    :cond_0
    invoke-virtual {p1, v3}, Lh6/a;->a(I)Landroid/view/View;

    .line 53
    .line 54
    .line 55
    move-result-object p2

    .line 56
    check-cast p2, Landroid/widget/ImageView;

    .line 57
    .line 58
    iget-object v3, p0, Lx9/y4;->h:Lda/g;

    .line 59
    .line 60
    invoke-static {v3}, Lcom/bumptech/glide/b;->f(Landroid/content/Context;)Lcom/bumptech/glide/p;

    .line 61
    .line 62
    .line 63
    move-result-object v5

    .line 64
    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 65
    .line 66
    .line 67
    new-instance v6, Lcom/bumptech/glide/n;

    .line 68
    .line 69
    invoke-direct {v6, p2}, Lcom/bumptech/glide/n;-><init>(Landroid/view/View;)V

    .line 70
    .line 71
    .line 72
    invoke-virtual {v5, v6}, Lcom/bumptech/glide/p;->o(Lx5/e;)V

    .line 73
    .line 74
    .line 75
    invoke-static {v3}, Lcom/bumptech/glide/b;->f(Landroid/content/Context;)Lcom/bumptech/glide/p;

    .line 76
    .line 77
    .line 78
    move-result-object v3

    .line 79
    new-instance v5, Ljava/io/File;

    .line 80
    .line 81
    new-instance v6, Ljava/lang/StringBuilder;

    .line 82
    .line 83
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    .line 84
    .line 85
    .line 86
    sget-object v7, Lcom/yunpan/appmanage/util/v;->a:Lcom/yunpan/appmanage/util/w;

    .line 87
    .line 88
    iget-object v7, v7, Lcom/yunpan/appmanage/util/w;->a:Ljava/lang/String;

    .line 89
    .line 90
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 91
    .line 92
    .line 93
    iget-object v7, p3, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    .line 94
    .line 95
    iget-object v7, v7, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    .line 96
    .line 97
    const-string v8, ".png"

    .line 98
    .line 99
    invoke-static {v7, v8, v6}, Lg/b;->l(Ljava/lang/String;Ljava/lang/String;Ljava/lang/StringBuilder;)Ljava/lang/String;

    .line 100
    .line 101
    .line 102
    move-result-object v6

    .line 103
    invoke-direct {v5, v6}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 104
    .line 105
    .line 106
    invoke-virtual {v3, v5}, Lcom/bumptech/glide/p;->s(Ljava/io/File;)Lcom/bumptech/glide/m;

    .line 107
    .line 108
    .line 109
    move-result-object v3

    .line 110
    sget-object v5, Lcom/yunpan/appmanage/util/k;->u0:Ljava/text/DecimalFormat;

    .line 111
    .line 112
    sget-object v5, Lcom/yunpan/appmanage/util/j;->a:Lcom/yunpan/appmanage/util/k;

    .line 113
    .line 114
    iget-object v5, v5, Lcom/yunpan/appmanage/util/k;->i:Lw5/e;

    .line 115
    .line 116
    invoke-virtual {v3, v5}, Lcom/bumptech/glide/m;->A(Lw5/a;)Lcom/bumptech/glide/m;

    .line 117
    .line 118
    .line 119
    move-result-object v3

    .line 120
    invoke-virtual {v3, p2}, Lcom/bumptech/glide/m;->D(Landroid/widget/ImageView;)V

    .line 121
    .line 122
    .line 123
    iget-object p2, p3, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    .line 124
    .line 125
    sget-object v3, Lcom/yunpan/appmanage/base/AppStart;->h:Lcom/yunpan/appmanage/base/AppStart;

    .line 126
    .line 127
    invoke-virtual {v3}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 128
    .line 129
    .line 130
    move-result-object v3

    .line 131
    invoke-virtual {p2, v3}, Landroid/content/pm/PackageItemInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    .line 132
    .line 133
    .line 134
    move-result-object p2

    .line 135
    invoke-virtual {p1, v2, p2}, Lh6/a;->c(ILjava/lang/CharSequence;)V

    .line 136
    .line 137
    .line 138
    new-instance p2, Ljava/lang/StringBuilder;

    .line 139
    .line 140
    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    .line 141
    .line 142
    .line 143
    iget-object v2, p3, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    .line 144
    .line 145
    iget-object v2, v2, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    .line 146
    .line 147
    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 148
    .line 149
    .line 150
    const-string v2, "/"

    .line 151
    .line 152
    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 153
    .line 154
    .line 155
    iget-object v2, p3, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    .line 156
    .line 157
    iget-object v2, v2, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    .line 158
    .line 159
    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 160
    .line 161
    .line 162
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 163
    .line 164
    .line 165
    move-result-object p2

    .line 166
    invoke-virtual {p1, v1, p2}, Lh6/a;->c(ILjava/lang/CharSequence;)V

    .line 167
    .line 168
    .line 169
    new-instance p2, Landroid/content/ComponentName;

    .line 170
    .line 171
    iget-object p3, p3, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    .line 172
    .line 173
    iget-object v1, p3, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    .line 174
    .line 175
    iget-object p3, p3, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    .line 176
    .line 177
    invoke-direct {p2, v1, p3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 178
    .line 179
    .line 180
    invoke-virtual {p1, v0}, Lh6/a;->a(I)Landroid/view/View;

    .line 181
    .line 182
    .line 183
    move-result-object p3

    .line 184
    check-cast p3, Landroid/widget/TextView;

    .line 185
    .line 186
    sget-object v0, Lcom/yunpan/appmanage/base/AppStart;->h:Lcom/yunpan/appmanage/base/AppStart;

    .line 187
    .line 188
    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 189
    .line 190
    .line 191
    move-result-object v0

    .line 192
    invoke-virtual {v0, p2}, Landroid/content/pm/PackageManager;->getComponentEnabledSetting(Landroid/content/ComponentName;)I

    .line 193
    .line 194
    .line 195
    move-result p2

    .line 196
    if-eqz p2, :cond_2

    .line 197
    .line 198
    const/4 v0, 0x1

    .line 199
    if-ne p2, v0, :cond_1

    .line 200
    .line 201
    goto :goto_0

    .line 202
    :cond_1
    const-string p2, "\u5df2\u7981\u6b62"

    .line 203
    .line 204
    invoke-virtual {p3, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 205
    .line 206
    .line 207
    sget-object p2, Lcom/yunpan/appmanage/base/AppStart;->h:Lcom/yunpan/appmanage/base/AppStart;

    .line 208
    .line 209
    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 210
    .line 211
    .line 212
    move-result-object p2

    .line 213
    const v0, 0x7f060041

    .line 214
    .line 215
    .line 216
    invoke-virtual {p2, v0}, Landroid/content/res/Resources;->getColor(I)I

    .line 217
    .line 218
    .line 219
    move-result p2

    .line 220
    invoke-virtual {p3, p2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 221
    .line 222
    .line 223
    const-string p2, "\u542f\u7528"

    .line 224
    .line 225
    invoke-virtual {p1, v4, p2}, Lh6/a;->c(ILjava/lang/CharSequence;)V

    .line 226
    .line 227
    .line 228
    goto :goto_1

    .line 229
    :cond_2
    :goto_0
    const-string p2, "\u5df2\u542f\u7528"

    .line 230
    .line 231
    invoke-virtual {p3, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 232
    .line 233
    .line 234
    sget-object p2, Lcom/yunpan/appmanage/base/AppStart;->h:Lcom/yunpan/appmanage/base/AppStart;

    .line 235
    .line 236
    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 237
    .line 238
    .line 239
    move-result-object p2

    .line 240
    const v0, 0x7f06005a

    .line 241
    .line 242
    .line 243
    invoke-virtual {p2, v0}, Landroid/content/res/Resources;->getColor(I)I

    .line 244
    .line 245
    .line 246
    move-result p2

    .line 247
    invoke-virtual {p3, p2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 248
    .line 249
    .line 250
    const-string p2, "\u7981\u6b62"

    .line 251
    .line 252
    invoke-virtual {p1, v4, p2}, Lh6/a;->c(ILjava/lang/CharSequence;)V

    .line 253
    .line 254
    .line 255
    :goto_1
    return-void
.end method
