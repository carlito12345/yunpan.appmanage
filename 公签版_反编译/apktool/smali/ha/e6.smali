.class public final Lha/e6;
.super Lha/a4;
.source "SourceFile"


# instance fields
.field public g:Lcom/owen/tvrecyclerview/widget/TvRecyclerView;

.field public h:Lx9/v0;

.field public final i:Lua/d8;

.field public j:Landroidx/core/widget/NestedScrollView;

.field public k:Landroid/widget/EditText;

.field public l:Landroid/widget/EditText;

.field public m:Landroid/widget/EditText;

.field public n:Landroid/widget/EditText;

.field public p:Landroid/widget/EditText;

.field public q:Landroid/widget/EditText;

.field public r:Landroid/widget/EditText;

.field public s:I

.field public t:Landroid/widget/ImageView;

.field public v:Landroid/widget/ImageView;

.field public w:Landroid/widget/ImageView;

.field public x:Landroid/widget/LinearLayout;

.field public y:Landroid/widget/LinearLayout;

.field public z:Landroid/widget/LinearLayout;


# direct methods
.method public constructor <init>(Landroid/app/Activity;Landroid/content/Context;Lua/d8;)V
    .locals 1

    .line 1
    const v0, 0x7f0e00aa

    .line 2
    .line 3
    .line 4
    invoke-direct {p0, p1, p2, v0}, Lha/a4;-><init>(Landroid/app/Activity;Landroid/content/Context;I)V

    .line 5
    .line 6
    .line 7
    iput-object p3, p0, Lha/e6;->i:Lua/d8;

    .line 8
    .line 9
    return-void
.end method

.method public static a()V
    .locals 7

    .line 1
    const/4 v0, 0x0

    .line 2
    const/4 v1, 0x1

    .line 3
    const-string v2, "rm -rf "

    .line 4
    .line 5
    :try_start_0
    new-instance v3, Ljava/lang/StringBuilder;

    .line 6
    .line 7
    invoke-direct {v3, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 8
    .line 9
    .line 10
    sget-object v2, Lcom/yunpan/appmanage/util/v;->a:Lcom/yunpan/appmanage/util/w;

    .line 11
    .line 12
    iget-object v4, v2, Lcom/yunpan/appmanage/util/w;->a:Ljava/lang/String;

    .line 13
    .line 14
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 15
    .line 16
    .line 17
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 18
    .line 19
    .line 20
    move-result-object v3

    .line 21
    new-array v4, v1, [Ljava/lang/String;

    .line 22
    .line 23
    aput-object v3, v4, v0

    .line 24
    .line 25
    invoke-static {v4}, Lu9/d;->r([Ljava/lang/String;)Lv9/e;

    .line 26
    .line 27
    .line 28
    move-result-object v3

    .line 29
    invoke-virtual {v3}, Lv9/e;->l0()Landroidx/room/s;

    .line 30
    .line 31
    .line 32
    new-instance v3, Ljava/io/File;

    .line 33
    .line 34
    iget-object v2, v2, Lcom/yunpan/appmanage/util/w;->a:Ljava/lang/String;

    .line 35
    .line 36
    invoke-direct {v3, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 37
    .line 38
    .line 39
    invoke-virtual {v3}, Ljava/io/File;->mkdir()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 40
    .line 41
    .line 42
    :catch_0
    new-instance v2, Ljava/io/File;

    .line 43
    .line 44
    new-instance v3, Ljava/lang/StringBuilder;

    .line 45
    .line 46
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 47
    .line 48
    .line 49
    sget-object v4, Lcom/yunpan/appmanage/util/v;->a:Lcom/yunpan/appmanage/util/w;

    .line 50
    .line 51
    iget-object v4, v4, Lcom/yunpan/appmanage/util/w;->a:Ljava/lang/String;

    .line 52
    .line 53
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 54
    .line 55
    .line 56
    sget-object v4, Lcom/yunpan/appmanage/util/k;->u0:Ljava/text/DecimalFormat;

    .line 57
    .line 58
    sget-object v4, Lcom/yunpan/appmanage/util/j;->a:Lcom/yunpan/appmanage/util/k;

    .line 59
    .line 60
    iget-object v5, v4, Lcom/yunpan/appmanage/util/k;->d:Ljava/lang/String;

    .line 61
    .line 62
    const-string v6, ".png"

    .line 63
    .line 64
    invoke-static {v5, v6, v3}, Lg/b;->l(Ljava/lang/String;Ljava/lang/String;Ljava/lang/StringBuilder;)Ljava/lang/String;

    .line 65
    .line 66
    .line 67
    move-result-object v3

    .line 68
    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 69
    .line 70
    .line 71
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    .line 72
    .line 73
    .line 74
    move-result v3

    .line 75
    if-nez v3, :cond_0

    .line 76
    .line 77
    :try_start_1
    iget-object v3, v4, Lcom/yunpan/appmanage/util/k;->a:Landroid/content/ContextWrapper;

    .line 78
    .line 79
    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 80
    .line 81
    .line 82
    move-result-object v3

    .line 83
    const v4, 0x7f08008f

    .line 84
    .line 85
    .line 86
    invoke-static {v3, v4}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    .line 87
    .line 88
    .line 89
    move-result-object v3

    .line 90
    new-instance v4, Ljava/io/FileOutputStream;

    .line 91
    .line 92
    invoke-direct {v4, v2}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2

    .line 93
    .line 94
    .line 95
    :try_start_2
    sget-object v2, Landroid/graphics/Bitmap$CompressFormat;->PNG:Landroid/graphics/Bitmap$CompressFormat;

    .line 96
    .line 97
    const/16 v5, 0x64

    .line 98
    .line 99
    invoke-virtual {v3, v2, v5, v4}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    .line 100
    .line 101
    .line 102
    invoke-virtual {v4}, Ljava/io/OutputStream;->flush()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 103
    .line 104
    .line 105
    :try_start_3
    invoke-virtual {v4}, Ljava/io/FileOutputStream;->close()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    .line 106
    .line 107
    .line 108
    goto :goto_1

    .line 109
    :catchall_0
    move-exception v2

    .line 110
    :try_start_4
    invoke-virtual {v4}, Ljava/io/FileOutputStream;->close()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 111
    .line 112
    .line 113
    goto :goto_0

    .line 114
    :catchall_1
    move-exception v3

    .line 115
    :try_start_5
    const-class v4, Ljava/lang/Throwable;
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_2

    .line 116
    .line 117
    :try_start_6
    const-string v5, "addSuppressed"

    .line 118
    .line 119
    new-array v6, v1, [Ljava/lang/Class;

    .line 120
    .line 121
    aput-object v4, v6, v0

    .line 122
    .line 123
    invoke-virtual {v4, v5, v6}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 124
    .line 125
    .line 126
    move-result-object v4

    .line 127
    new-array v5, v1, [Ljava/lang/Object;

    .line 128
    .line 129
    aput-object v3, v5, v0

    .line 130
    .line 131
    invoke-virtual {v4, v2, v5}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_1

    .line 132
    .line 133
    .line 134
    :catch_1
    :goto_0
    :try_start_7
    throw v2
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_2

    .line 135
    :catch_2
    :cond_0
    :goto_1
    invoke-static {}, Lcom/yunpan/appmanage/db/MyDb;->get()Lcom/yunpan/appmanage/db/MyDb;

    .line 136
    .line 137
    .line 138
    move-result-object v0

    .line 139
    invoke-virtual {v0}, Lcom/yunpan/appmanage/db/MyDb;->getAppDao()Lcom/yunpan/appmanage/db/AppDao;

    .line 140
    .line 141
    .line 142
    move-result-object v0

    .line 143
    invoke-interface {v0}, Lcom/yunpan/appmanage/db/AppDao;->deleteAll()V

    .line 144
    .line 145
    .line 146
    const/4 v0, 0x0

    .line 147
    :try_start_8
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 148
    .line 149
    const/16 v3, 0x18

    .line 150
    .line 151
    const/16 v4, 0x2000

    .line 152
    .line 153
    if-lt v2, v3, :cond_1

    .line 154
    .line 155
    sget-object v2, Lcom/yunpan/appmanage/util/j;->a:Lcom/yunpan/appmanage/util/k;

    .line 156
    .line 157
    iget-object v2, v2, Lcom/yunpan/appmanage/util/k;->b:Landroid/content/pm/PackageManager;

    .line 158
    .line 159
    invoke-virtual {v2, v4}, Landroid/content/pm/PackageManager;->getInstalledApplications(I)Ljava/util/List;

    .line 160
    .line 161
    .line 162
    move-result-object v2

    .line 163
    goto :goto_2

    .line 164
    :catch_3
    nop

    .line 165
    move-object v2, v0

    .line 166
    goto :goto_3

    .line 167
    :cond_1
    sget-object v2, Lcom/yunpan/appmanage/util/j;->a:Lcom/yunpan/appmanage/util/k;

    .line 168
    .line 169
    iget-object v2, v2, Lcom/yunpan/appmanage/util/k;->b:Landroid/content/pm/PackageManager;

    .line 170
    .line 171
    invoke-virtual {v2, v4}, Landroid/content/pm/PackageManager;->getInstalledApplications(I)Ljava/util/List;

    .line 172
    .line 173
    .line 174
    move-result-object v2
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_3

    .line 175
    :goto_2
    :try_start_9
    invoke-interface {v2}, Ljava/util/List;->size()I

    .line 176
    .line 177
    .line 178
    move-result v3

    .line 179
    const/4 v4, 0x3

    .line 180
    if-ge v3, v4, :cond_2

    .line 181
    .line 182
    sget-object v3, Lcom/yunpan/appmanage/util/j;->a:Lcom/yunpan/appmanage/util/k;

    .line 183
    .line 184
    iget-object v3, v3, Lcom/yunpan/appmanage/util/k;->b:Landroid/content/pm/PackageManager;

    .line 185
    .line 186
    invoke-virtual {v3, v1}, Landroid/content/pm/PackageManager;->getInstalledApplications(I)Ljava/util/List;

    .line 187
    .line 188
    .line 189
    move-result-object v2
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_4

    .line 190
    goto :goto_3

    .line 191
    :catch_4
    nop

    .line 192
    :cond_2
    :goto_3
    if-eqz v2, :cond_5

    .line 193
    .line 194
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 195
    .line 196
    .line 197
    move-result-object v1

    .line 198
    :cond_3
    :goto_4
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 199
    .line 200
    .line 201
    move-result v2

    .line 202
    if-eqz v2, :cond_5

    .line 203
    .line 204
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 205
    .line 206
    .line 207
    move-result-object v2

    .line 208
    check-cast v2, Landroid/content/pm/ApplicationInfo;

    .line 209
    .line 210
    :try_start_a
    new-instance v3, Lcom/yunpan/appmanage/db/AppBean;

    .line 211
    .line 212
    invoke-direct {v3, v2}, Lcom/yunpan/appmanage/db/AppBean;-><init>(Landroid/content/pm/ApplicationInfo;)V
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_5

    .line 213
    .line 214
    .line 215
    goto :goto_5

    .line 216
    :catch_5
    nop

    .line 217
    move-object v3, v0

    .line 218
    :goto_5
    if-eqz v3, :cond_3

    .line 219
    .line 220
    iget-object v2, v3, Lcom/yunpan/appmanage/db/AppBean;->pack:Ljava/lang/String;

    .line 221
    .line 222
    sget-object v4, Lcom/yunpan/appmanage/util/j;->a:Lcom/yunpan/appmanage/util/k;

    .line 223
    .line 224
    iget-object v4, v4, Lcom/yunpan/appmanage/util/k;->d:Ljava/lang/String;

    .line 225
    .line 226
    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 227
    .line 228
    .line 229
    move-result v2

    .line 230
    if-eqz v2, :cond_4

    .line 231
    .line 232
    goto :goto_4

    .line 233
    :cond_4
    :try_start_b
    invoke-static {}, Lcom/yunpan/appmanage/db/MyDb;->get()Lcom/yunpan/appmanage/db/MyDb;

    .line 234
    .line 235
    .line 236
    move-result-object v2

    .line 237
    invoke-virtual {v2}, Lcom/yunpan/appmanage/db/MyDb;->getAppDao()Lcom/yunpan/appmanage/db/AppDao;

    .line 238
    .line 239
    .line 240
    move-result-object v2

    .line 241
    invoke-interface {v2, v3}, Lcom/yunpan/appmanage/db/AppDao;->insert(Lcom/yunpan/appmanage/db/AppBean;)J
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_6

    .line 242
    .line 243
    .line 244
    goto :goto_4

    .line 245
    :catch_6
    nop

    .line 246
    goto :goto_4

    .line 247
    :cond_5
    return-void
.end method

.method public static d(Landroid/widget/EditText;)Ljava/lang/String;
    .locals 3

    .line 1
    invoke-virtual {p0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object p0

    .line 9
    const-string v0, " "

    .line 10
    .line 11
    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 12
    .line 13
    .line 14
    move-result v1

    .line 15
    const-string v2, "|"

    .line 16
    .line 17
    if-eqz v1, :cond_0

    .line 18
    .line 19
    invoke-virtual {p0, v0, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    .line 20
    .line 21
    .line 22
    move-result-object p0

    .line 23
    :cond_0
    const-string v0, ","

    .line 24
    .line 25
    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 26
    .line 27
    .line 28
    move-result v1

    .line 29
    if-eqz v1, :cond_1

    .line 30
    .line 31
    invoke-virtual {p0, v0, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    .line 32
    .line 33
    .line 34
    move-result-object p0

    .line 35
    :cond_1
    const-string v0, "\uff0c"

    .line 36
    .line 37
    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 38
    .line 39
    .line 40
    move-result v1

    .line 41
    if-eqz v1, :cond_2

    .line 42
    .line 43
    invoke-virtual {p0, v0, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    .line 44
    .line 45
    .line 46
    move-result-object p0

    .line 47
    :cond_2
    const-string v0, "|."

    .line 48
    .line 49
    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 50
    .line 51
    .line 52
    move-result v1

    .line 53
    if-eqz v1, :cond_3

    .line 54
    .line 55
    invoke-virtual {p0, v0, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    .line 56
    .line 57
    .line 58
    move-result-object p0

    .line 59
    :cond_3
    const-string v0, "||"

    .line 60
    .line 61
    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 62
    .line 63
    .line 64
    move-result v1

    .line 65
    if-eqz v1, :cond_4

    .line 66
    .line 67
    invoke-virtual {p0, v0, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    .line 68
    .line 69
    .line 70
    move-result-object p0

    .line 71
    :cond_4
    return-object p0
.end method


# virtual methods
.method public final b(I)V
    .locals 5

    .line 1
    sget-object v0, Lcom/yunpan/appmanage/util/v;->a:Lcom/yunpan/appmanage/util/w;

    .line 2
    .line 3
    iput p1, v0, Lcom/yunpan/appmanage/util/w;->p0:I

    .line 4
    .line 5
    :try_start_0
    iget-object v1, v0, Lcom/yunpan/appmanage/util/w;->i:Lz7/s;

    .line 6
    .line 7
    const-string v2, "ImageThumbnailMode"

    .line 8
    .line 9
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 10
    .line 11
    .line 12
    move-result-object p1

    .line 13
    invoke-virtual {v1, v2, p1}, Lz7/s;->l(Ljava/lang/String;Ljava/lang/Number;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 14
    .line 15
    .line 16
    :catch_0
    invoke-virtual {v0}, Lcom/yunpan/appmanage/util/w;->m()V

    .line 17
    .line 18
    .line 19
    sget-object p1, Lcom/yunpan/appmanage/util/k;->u0:Ljava/text/DecimalFormat;

    .line 20
    .line 21
    sget-object p1, Lcom/yunpan/appmanage/util/j;->a:Lcom/yunpan/appmanage/util/k;

    .line 22
    .line 23
    invoke-virtual {p1}, Lcom/yunpan/appmanage/util/k;->p()V

    .line 24
    .line 25
    .line 26
    iget-object p1, p0, Lha/e6;->t:Landroid/widget/ImageView;

    .line 27
    .line 28
    sget-object v0, Lcom/yunpan/appmanage/util/v;->a:Lcom/yunpan/appmanage/util/w;

    .line 29
    .line 30
    iget v1, v0, Lcom/yunpan/appmanage/util/w;->p0:I

    .line 31
    .line 32
    const v2, 0x7f0802af

    .line 33
    .line 34
    .line 35
    const v3, 0x7f0802b6

    .line 36
    .line 37
    .line 38
    if-nez v1, :cond_0

    .line 39
    .line 40
    const v1, 0x7f0802b6

    .line 41
    .line 42
    .line 43
    goto :goto_0

    .line 44
    :cond_0
    const v1, 0x7f0802af

    .line 45
    .line 46
    .line 47
    :goto_0
    invoke-virtual {p1, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 48
    .line 49
    .line 50
    iget-object p1, p0, Lha/e6;->v:Landroid/widget/ImageView;

    .line 51
    .line 52
    iget v1, v0, Lcom/yunpan/appmanage/util/w;->p0:I

    .line 53
    .line 54
    const/4 v4, 0x1

    .line 55
    if-ne v1, v4, :cond_1

    .line 56
    .line 57
    const v1, 0x7f0802b6

    .line 58
    .line 59
    .line 60
    goto :goto_1

    .line 61
    :cond_1
    const v1, 0x7f0802af

    .line 62
    .line 63
    .line 64
    :goto_1
    invoke-virtual {p1, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 65
    .line 66
    .line 67
    iget-object p1, p0, Lha/e6;->w:Landroid/widget/ImageView;

    .line 68
    .line 69
    iget v0, v0, Lcom/yunpan/appmanage/util/w;->p0:I

    .line 70
    .line 71
    const/4 v1, 0x2

    .line 72
    if-ne v0, v1, :cond_2

    .line 73
    .line 74
    const v2, 0x7f0802b6

    .line 75
    .line 76
    .line 77
    :cond_2
    invoke-virtual {p1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 78
    .line 79
    .line 80
    return-void
.end method

.method public final c(Landroid/view/View;)V
    .locals 2

    .line 1
    new-instance v0, Lha/n;

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    invoke-direct {v0, v1, p0}, Lha/n;-><init>(ILjava/lang/Object;)V

    .line 5
    .line 6
    .line 7
    invoke-virtual {p1, v0}, Landroid/view/View;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 8
    .line 9
    .line 10
    return-void
.end method

.method public final dismiss()V
    .locals 4

    .line 1
    iget v0, p0, Lha/e6;->s:I

    .line 2
    .line 3
    sget-object v1, Lcom/yunpan/appmanage/util/v;->a:Lcom/yunpan/appmanage/util/w;

    .line 4
    .line 5
    iget v2, v1, Lcom/yunpan/appmanage/util/w;->p0:I

    .line 6
    .line 7
    if-eq v0, v2, :cond_0

    .line 8
    .line 9
    sget-object v0, Lcom/yunpan/appmanage/util/k;->u0:Ljava/text/DecimalFormat;

    .line 10
    .line 11
    sget-object v0, Lcom/yunpan/appmanage/util/j;->a:Lcom/yunpan/appmanage/util/k;

    .line 12
    .line 13
    invoke-virtual {v0}, Lcom/yunpan/appmanage/util/k;->k()V

    .line 14
    .line 15
    .line 16
    iget-object v0, v0, Lcom/yunpan/appmanage/util/k;->g0:Ljava/util/concurrent/ExecutorService;

    .line 17
    .line 18
    new-instance v2, Lcom/gj/server/a;

    .line 19
    .line 20
    const/4 v3, 0x2

    .line 21
    invoke-direct {v2, v3}, Lcom/gj/server/a;-><init>(I)V

    .line 22
    .line 23
    .line 24
    invoke-interface {v0, v2}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    .line 25
    .line 26
    .line 27
    :cond_0
    iget-object v0, p0, Lha/e6;->k:Landroid/widget/EditText;

    .line 28
    .line 29
    invoke-static {v0}, Lha/e6;->d(Landroid/widget/EditText;)Ljava/lang/String;

    .line 30
    .line 31
    .line 32
    move-result-object v0

    .line 33
    iput-object v0, v1, Lcom/yunpan/appmanage/util/w;->y0:Ljava/lang/String;

    .line 34
    .line 35
    const-string v2, "mFileType_apk"

    .line 36
    .line 37
    :try_start_0
    iget-object v3, v1, Lcom/yunpan/appmanage/util/w;->i:Lz7/s;

    .line 38
    .line 39
    invoke-virtual {v3, v2, v0}, Lz7/s;->m(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 40
    .line 41
    .line 42
    :catch_0
    invoke-virtual {v1}, Lcom/yunpan/appmanage/util/w;->m()V

    .line 43
    .line 44
    .line 45
    sget-object v0, Lcom/yunpan/appmanage/util/v;->a:Lcom/yunpan/appmanage/util/w;

    .line 46
    .line 47
    iget-object v1, p0, Lha/e6;->l:Landroid/widget/EditText;

    .line 48
    .line 49
    invoke-static {v1}, Lha/e6;->d(Landroid/widget/EditText;)Ljava/lang/String;

    .line 50
    .line 51
    .line 52
    move-result-object v1

    .line 53
    iput-object v1, v0, Lcom/yunpan/appmanage/util/w;->D0:Ljava/lang/String;

    .line 54
    .line 55
    const-string v2, "mFileType_zip"

    .line 56
    .line 57
    :try_start_1
    iget-object v3, v0, Lcom/yunpan/appmanage/util/w;->i:Lz7/s;

    .line 58
    .line 59
    invoke-virtual {v3, v2, v1}, Lz7/s;->m(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 60
    .line 61
    .line 62
    :catch_1
    invoke-virtual {v0}, Lcom/yunpan/appmanage/util/w;->m()V

    .line 63
    .line 64
    .line 65
    sget-object v0, Lcom/yunpan/appmanage/util/v;->a:Lcom/yunpan/appmanage/util/w;

    .line 66
    .line 67
    iget-object v1, p0, Lha/e6;->m:Landroid/widget/EditText;

    .line 68
    .line 69
    invoke-static {v1}, Lha/e6;->d(Landroid/widget/EditText;)Ljava/lang/String;

    .line 70
    .line 71
    .line 72
    move-result-object v1

    .line 73
    iput-object v1, v0, Lcom/yunpan/appmanage/util/w;->z0:Ljava/lang/String;

    .line 74
    .line 75
    const-string v2, "mFileType_image"

    .line 76
    .line 77
    :try_start_2
    iget-object v3, v0, Lcom/yunpan/appmanage/util/w;->i:Lz7/s;

    .line 78
    .line 79
    invoke-virtual {v3, v2, v1}, Lz7/s;->m(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    .line 80
    .line 81
    .line 82
    :catch_2
    invoke-virtual {v0}, Lcom/yunpan/appmanage/util/w;->m()V

    .line 83
    .line 84
    .line 85
    sget-object v0, Lcom/yunpan/appmanage/util/v;->a:Lcom/yunpan/appmanage/util/w;

    .line 86
    .line 87
    iget-object v1, p0, Lha/e6;->n:Landroid/widget/EditText;

    .line 88
    .line 89
    invoke-static {v1}, Lha/e6;->d(Landroid/widget/EditText;)Ljava/lang/String;

    .line 90
    .line 91
    .line 92
    move-result-object v1

    .line 93
    iput-object v1, v0, Lcom/yunpan/appmanage/util/w;->A0:Ljava/lang/String;

    .line 94
    .line 95
    const-string v2, "mFileType_video"

    .line 96
    .line 97
    :try_start_3
    iget-object v3, v0, Lcom/yunpan/appmanage/util/w;->i:Lz7/s;

    .line 98
    .line 99
    invoke-virtual {v3, v2, v1}, Lz7/s;->m(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3

    .line 100
    .line 101
    .line 102
    :catch_3
    invoke-virtual {v0}, Lcom/yunpan/appmanage/util/w;->m()V

    .line 103
    .line 104
    .line 105
    sget-object v0, Lcom/yunpan/appmanage/util/v;->a:Lcom/yunpan/appmanage/util/w;

    .line 106
    .line 107
    iget-object v1, p0, Lha/e6;->p:Landroid/widget/EditText;

    .line 108
    .line 109
    invoke-static {v1}, Lha/e6;->d(Landroid/widget/EditText;)Ljava/lang/String;

    .line 110
    .line 111
    .line 112
    move-result-object v1

    .line 113
    iput-object v1, v0, Lcom/yunpan/appmanage/util/w;->B0:Ljava/lang/String;

    .line 114
    .line 115
    const-string v2, "mFileType_music"

    .line 116
    .line 117
    :try_start_4
    iget-object v3, v0, Lcom/yunpan/appmanage/util/w;->i:Lz7/s;

    .line 118
    .line 119
    invoke-virtual {v3, v2, v1}, Lz7/s;->m(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_4

    .line 120
    .line 121
    .line 122
    :catch_4
    invoke-virtual {v0}, Lcom/yunpan/appmanage/util/w;->m()V

    .line 123
    .line 124
    .line 125
    sget-object v0, Lcom/yunpan/appmanage/util/v;->a:Lcom/yunpan/appmanage/util/w;

    .line 126
    .line 127
    iget-object v1, p0, Lha/e6;->q:Landroid/widget/EditText;

    .line 128
    .line 129
    invoke-static {v1}, Lha/e6;->d(Landroid/widget/EditText;)Ljava/lang/String;

    .line 130
    .line 131
    .line 132
    move-result-object v1

    .line 133
    iput-object v1, v0, Lcom/yunpan/appmanage/util/w;->C0:Ljava/lang/String;

    .line 134
    .line 135
    const-string v2, "mFileType_txt"

    .line 136
    .line 137
    :try_start_5
    iget-object v3, v0, Lcom/yunpan/appmanage/util/w;->i:Lz7/s;

    .line 138
    .line 139
    invoke-virtual {v3, v2, v1}, Lz7/s;->m(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_5

    .line 140
    .line 141
    .line 142
    :catch_5
    invoke-virtual {v0}, Lcom/yunpan/appmanage/util/w;->m()V

    .line 143
    .line 144
    .line 145
    sget-object v0, Lcom/yunpan/appmanage/util/v;->a:Lcom/yunpan/appmanage/util/w;

    .line 146
    .line 147
    iget-object v1, p0, Lha/e6;->r:Landroid/widget/EditText;

    .line 148
    .line 149
    invoke-static {v1}, Lha/e6;->d(Landroid/widget/EditText;)Ljava/lang/String;

    .line 150
    .line 151
    .line 152
    move-result-object v1

    .line 153
    iput-object v1, v0, Lcom/yunpan/appmanage/util/w;->E0:Ljava/lang/String;

    .line 154
    .line 155
    :try_start_6
    iget-object v2, v0, Lcom/yunpan/appmanage/util/w;->i:Lz7/s;

    .line 156
    .line 157
    const-string v3, "mFileType_wp_apk"

    .line 158
    .line 159
    invoke-virtual {v2, v3, v1}, Lz7/s;->m(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_6

    .line 160
    .line 161
    .line 162
    :catch_6
    invoke-virtual {v0}, Lcom/yunpan/appmanage/util/w;->m()V

    .line 163
    .line 164
    .line 165
    iget-object v0, v0, Lcom/yunpan/appmanage/util/w;->F0:Ljava/util/HashSet;

    .line 166
    .line 167
    invoke-virtual {v0}, Ljava/util/HashSet;->clear()V

    .line 168
    .line 169
    .line 170
    const-string v2, "\\|"

    .line 171
    .line 172
    invoke-virtual {v1, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    .line 173
    .line 174
    .line 175
    move-result-object v1

    .line 176
    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    .line 177
    .line 178
    .line 179
    move-result-object v1

    .line 180
    invoke-interface {v0, v1}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 181
    .line 182
    .line 183
    sget-object v0, Lcom/yunpan/appmanage/util/k;->u0:Ljava/text/DecimalFormat;

    .line 184
    .line 185
    sget-object v0, Lcom/yunpan/appmanage/util/j;->a:Lcom/yunpan/appmanage/util/k;

    .line 186
    .line 187
    invoke-virtual {v0}, Lcom/yunpan/appmanage/util/k;->l()V

    .line 188
    .line 189
    .line 190
    invoke-super {p0}, Landroid/app/Dialog;->dismiss()V

    .line 191
    .line 192
    .line 193
    return-void
.end method

.method public final onCreate(Landroid/os/Bundle;)V
    .locals 5

    .line 1
    invoke-super {p0, p1}, Lha/a4;->onCreate(Landroid/os/Bundle;)V

    .line 2
    .line 3
    .line 4
    const p1, 0x7f0b04f8

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
    iput-object p1, p0, Lha/e6;->g:Lcom/owen/tvrecyclerview/widget/TvRecyclerView;

    .line 14
    .line 15
    new-instance v0, Lcom/owen/tvrecyclerview/widget/V7GridLayoutManager;

    .line 16
    .line 17
    iget-object v1, p0, Lha/a4;->b:Landroid/content/Context;

    .line 18
    .line 19
    const/4 v2, 0x3

    .line 20
    invoke-direct {v0, v1, v2}, Lcom/owen/tvrecyclerview/widget/V7GridLayoutManager;-><init>(Landroid/content/Context;I)V

    .line 21
    .line 22
    .line 23
    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 24
    .line 25
    .line 26
    new-instance p1, Lx9/v0;

    .line 27
    .line 28
    invoke-direct {p1}, Lx9/v0;-><init>()V

    .line 29
    .line 30
    .line 31
    iput-object p1, p0, Lha/e6;->h:Lx9/v0;

    .line 32
    .line 33
    iget-object v0, p0, Lha/e6;->g:Lcom/owen/tvrecyclerview/widget/TvRecyclerView;

    .line 34
    .line 35
    invoke-virtual {v0, p1}, Lcom/owen/tvrecyclerview/widget/TvRecyclerView;->setAdapter(Landroidx/recyclerview/widget/m1;)V

    .line 36
    .line 37
    .line 38
    iget-object p1, p0, Lha/e6;->h:Lx9/v0;

    .line 39
    .line 40
    new-instance v0, Lx9/x0;

    .line 41
    .line 42
    sget-object v1, Lcom/yunpan/appmanage/util/v;->a:Lcom/yunpan/appmanage/util/w;

    .line 43
    .line 44
    iget-boolean v2, v1, Lcom/yunpan/appmanage/util/w;->n0:Z

    .line 45
    .line 46
    const-string v3, "\u6309\u540d\u79f0\u6765\u6392\u5e8f"

    .line 47
    .line 48
    invoke-direct {v0, v3, v2}, Lx9/x0;-><init>(Ljava/lang/String;Z)V

    .line 49
    .line 50
    .line 51
    invoke-virtual {p1, v0}, Lc6/g;->q(Ljava/lang/Object;)V

    .line 52
    .line 53
    .line 54
    iget-object p1, p0, Lha/e6;->h:Lx9/v0;

    .line 55
    .line 56
    new-instance v0, Lx9/x0;

    .line 57
    .line 58
    iget-boolean v2, v1, Lcom/yunpan/appmanage/util/w;->l0:Z

    .line 59
    .line 60
    const-string v3, "\u663e\u793a\u9690\u85cf\u6587\u4ef6"

    .line 61
    .line 62
    invoke-direct {v0, v3, v2}, Lx9/x0;-><init>(Ljava/lang/String;Z)V

    .line 63
    .line 64
    .line 65
    invoke-virtual {p1, v0}, Lc6/g;->q(Ljava/lang/Object;)V

    .line 66
    .line 67
    .line 68
    iget-object p1, p0, Lha/e6;->h:Lx9/v0;

    .line 69
    .line 70
    new-instance v0, Lx9/x0;

    .line 71
    .line 72
    iget-boolean v2, v1, Lcom/yunpan/appmanage/util/w;->m0:Z

    .line 73
    .line 74
    const-string v3, "\u5e94\u7528\u5173\u8054\u56fe\u6807"

    .line 75
    .line 76
    invoke-direct {v0, v3, v2}, Lx9/x0;-><init>(Ljava/lang/String;Z)V

    .line 77
    .line 78
    .line 79
    invoke-virtual {p1, v0}, Lc6/g;->q(Ljava/lang/Object;)V

    .line 80
    .line 81
    .line 82
    iget-object p1, p0, Lha/e6;->h:Lx9/v0;

    .line 83
    .line 84
    new-instance v0, Lx9/x0;

    .line 85
    .line 86
    iget-boolean v2, v1, Lcom/yunpan/appmanage/util/w;->o0:Z

    .line 87
    .line 88
    const-string v3, "\u5141\u8bb8\u591a\u6b21\u7c98\u8d34"

    .line 89
    .line 90
    invoke-direct {v0, v3, v2}, Lx9/x0;-><init>(Ljava/lang/String;Z)V

    .line 91
    .line 92
    .line 93
    invoke-virtual {p1, v0}, Lc6/g;->q(Ljava/lang/Object;)V

    .line 94
    .line 95
    .line 96
    iget-object p1, p0, Lha/e6;->h:Lx9/v0;

    .line 97
    .line 98
    new-instance v0, Lx9/x0;

    .line 99
    .line 100
    iget-boolean v2, v1, Lcom/yunpan/appmanage/util/w;->k0:Z

    .line 101
    .line 102
    const-string v3, "\u5173\u95ed\u56fe\u7247\u9884\u89c8"

    .line 103
    .line 104
    invoke-direct {v0, v3, v2}, Lx9/x0;-><init>(Ljava/lang/String;Z)V

    .line 105
    .line 106
    .line 107
    invoke-virtual {p1, v0}, Lc6/g;->q(Ljava/lang/Object;)V

    .line 108
    .line 109
    .line 110
    iget p1, v1, Lcom/yunpan/appmanage/util/w;->j0:I

    .line 111
    .line 112
    const/4 v0, 0x1

    .line 113
    if-ne p1, v0, :cond_0

    .line 114
    .line 115
    const-string p1, "\u6587\u4ef6\u83dc\u5355\u9760\u5de6"

    .line 116
    .line 117
    goto :goto_0

    .line 118
    :cond_0
    const/4 v0, 0x2

    .line 119
    if-ne p1, v0, :cond_1

    .line 120
    .line 121
    const-string p1, "\u6587\u4ef6\u83dc\u5355\u9760\u53f3"

    .line 122
    .line 123
    goto :goto_0

    .line 124
    :cond_1
    const-string p1, "\u6587\u4ef6\u83dc\u5355\u5c45\u4e2d"

    .line 125
    .line 126
    :goto_0
    iget-object v0, p0, Lha/e6;->h:Lx9/v0;

    .line 127
    .line 128
    new-instance v2, Lx9/x0;

    .line 129
    .line 130
    const/4 v3, 0x0

    .line 131
    invoke-direct {v2, p1, v3}, Lx9/x0;-><init>(Ljava/lang/String;Z)V

    .line 132
    .line 133
    .line 134
    invoke-virtual {v0, v2}, Lc6/g;->q(Ljava/lang/Object;)V

    .line 135
    .line 136
    .line 137
    iget-object p1, p0, Lha/e6;->h:Lx9/v0;

    .line 138
    .line 139
    new-instance v0, Lx9/x0;

    .line 140
    .line 141
    iget-boolean v2, v1, Lcom/yunpan/appmanage/util/w;->r0:Z

    .line 142
    .line 143
    const-string v4, "\u4f7f\u7528\u65e7\u89e3\u538b\u5668"

    .line 144
    .line 145
    invoke-direct {v0, v4, v2}, Lx9/x0;-><init>(Ljava/lang/String;Z)V

    .line 146
    .line 147
    .line 148
    invoke-virtual {p1, v0}, Lc6/g;->q(Ljava/lang/Object;)V

    .line 149
    .line 150
    .line 151
    iget-object p1, p0, Lha/e6;->h:Lx9/v0;

    .line 152
    .line 153
    new-instance v0, Lx9/x0;

    .line 154
    .line 155
    iget-boolean v2, v1, Lcom/yunpan/appmanage/util/w;->s0:Z

    .line 156
    .line 157
    const-string v4, "\u4f7f\u7528\u65e7\u538b\u7f29\u5668"

    .line 158
    .line 159
    invoke-direct {v0, v4, v2}, Lx9/x0;-><init>(Ljava/lang/String;Z)V

    .line 160
    .line 161
    .line 162
    invoke-virtual {p1, v0}, Lc6/g;->q(Ljava/lang/Object;)V

    .line 163
    .line 164
    .line 165
    iget-object p1, p0, Lha/e6;->g:Lcom/owen/tvrecyclerview/widget/TvRecyclerView;

    .line 166
    .line 167
    invoke-virtual {p1, v3}, Lcom/owen/tvrecyclerview/widget/TvRecyclerView;->setSelection(I)V

    .line 168
    .line 169
    .line 170
    iget-object p1, p0, Lha/e6;->h:Lx9/v0;

    .line 171
    .line 172
    new-instance v0, La1/d;

    .line 173
    .line 174
    const/16 v2, 0x18

    .line 175
    .line 176
    invoke-direct {v0, v2, p0}, La1/d;-><init>(ILjava/lang/Object;)V

    .line 177
    .line 178
    .line 179
    iput-object v0, p1, Lc6/g;->e:Lc6/e;

    .line 180
    .line 181
    iget p1, v1, Lcom/yunpan/appmanage/util/w;->p0:I

    .line 182
    .line 183
    iput p1, p0, Lha/e6;->s:I

    .line 184
    .line 185
    const p1, 0x7f0b05b2

    .line 186
    .line 187
    .line 188
    invoke-virtual {p0, p1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    .line 189
    .line 190
    .line 191
    move-result-object p1

    .line 192
    check-cast p1, Landroid/widget/ImageView;

    .line 193
    .line 194
    iput-object p1, p0, Lha/e6;->t:Landroid/widget/ImageView;

    .line 195
    .line 196
    const p1, 0x7f0b05b1

    .line 197
    .line 198
    .line 199
    invoke-virtual {p0, p1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    .line 200
    .line 201
    .line 202
    move-result-object p1

    .line 203
    check-cast p1, Landroid/widget/LinearLayout;

    .line 204
    .line 205
    iput-object p1, p0, Lha/e6;->x:Landroid/widget/LinearLayout;

    .line 206
    .line 207
    const p1, 0x7f0b05b4

    .line 208
    .line 209
    .line 210
    invoke-virtual {p0, p1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    .line 211
    .line 212
    .line 213
    move-result-object p1

    .line 214
    check-cast p1, Landroid/widget/ImageView;

    .line 215
    .line 216
    iput-object p1, p0, Lha/e6;->v:Landroid/widget/ImageView;

    .line 217
    .line 218
    const p1, 0x7f0b05b3

    .line 219
    .line 220
    .line 221
    invoke-virtual {p0, p1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    .line 222
    .line 223
    .line 224
    move-result-object p1

    .line 225
    check-cast p1, Landroid/widget/LinearLayout;

    .line 226
    .line 227
    iput-object p1, p0, Lha/e6;->y:Landroid/widget/LinearLayout;

    .line 228
    .line 229
    const p1, 0x7f0b05b6

    .line 230
    .line 231
    .line 232
    invoke-virtual {p0, p1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    .line 233
    .line 234
    .line 235
    move-result-object p1

    .line 236
    check-cast p1, Landroid/widget/ImageView;

    .line 237
    .line 238
    iput-object p1, p0, Lha/e6;->w:Landroid/widget/ImageView;

    .line 239
    .line 240
    const p1, 0x7f0b05b5

    .line 241
    .line 242
    .line 243
    invoke-virtual {p0, p1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    .line 244
    .line 245
    .line 246
    move-result-object p1

    .line 247
    check-cast p1, Landroid/widget/LinearLayout;

    .line 248
    .line 249
    iput-object p1, p0, Lha/e6;->z:Landroid/widget/LinearLayout;

    .line 250
    .line 251
    iget p1, v1, Lcom/yunpan/appmanage/util/w;->p0:I

    .line 252
    .line 253
    invoke-virtual {p0, p1}, Lha/e6;->b(I)V

    .line 254
    .line 255
    .line 256
    iget-object p1, p0, Lha/e6;->x:Landroid/widget/LinearLayout;

    .line 257
    .line 258
    new-instance v0, Lha/c6;

    .line 259
    .line 260
    const/4 v2, 0x0

    .line 261
    invoke-direct {v0, p0, v2}, Lha/c6;-><init>(Lha/e6;I)V

    .line 262
    .line 263
    .line 264
    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 265
    .line 266
    .line 267
    iget-object p1, p0, Lha/e6;->y:Landroid/widget/LinearLayout;

    .line 268
    .line 269
    new-instance v0, Lha/c6;

    .line 270
    .line 271
    const/4 v2, 0x1

    .line 272
    invoke-direct {v0, p0, v2}, Lha/c6;-><init>(Lha/e6;I)V

    .line 273
    .line 274
    .line 275
    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 276
    .line 277
    .line 278
    iget-object p1, p0, Lha/e6;->z:Landroid/widget/LinearLayout;

    .line 279
    .line 280
    new-instance v0, Lha/c6;

    .line 281
    .line 282
    const/4 v2, 0x2

    .line 283
    invoke-direct {v0, p0, v2}, Lha/c6;-><init>(Lha/e6;I)V

    .line 284
    .line 285
    .line 286
    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 287
    .line 288
    .line 289
    const p1, 0x7f0b055c

    .line 290
    .line 291
    .line 292
    invoke-virtual {p0, p1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    .line 293
    .line 294
    .line 295
    move-result-object p1

    .line 296
    check-cast p1, Landroidx/core/widget/NestedScrollView;

    .line 297
    .line 298
    iput-object p1, p0, Lha/e6;->j:Landroidx/core/widget/NestedScrollView;

    .line 299
    .line 300
    const p1, 0x7f0b0385

    .line 301
    .line 302
    .line 303
    invoke-virtual {p0, p1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    .line 304
    .line 305
    .line 306
    move-result-object p1

    .line 307
    check-cast p1, Landroid/widget/ImageView;

    .line 308
    .line 309
    iget-boolean v0, v1, Lcom/yunpan/appmanage/util/w;->q0:Z

    .line 310
    .line 311
    if-eqz v0, :cond_2

    .line 312
    .line 313
    const v0, 0x7f0800bd

    .line 314
    .line 315
    .line 316
    goto :goto_1

    .line 317
    :cond_2
    const v0, 0x7f0800bc

    .line 318
    .line 319
    .line 320
    :goto_1
    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 321
    .line 322
    .line 323
    const v0, 0x7f0b0384

    .line 324
    .line 325
    .line 326
    invoke-virtual {p0, v0}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    .line 327
    .line 328
    .line 329
    move-result-object v0

    .line 330
    new-instance v2, Lha/f;

    .line 331
    .line 332
    const/4 v3, 0x1

    .line 333
    invoke-direct {v2, p1, v3}, Lha/f;-><init>(Landroid/widget/ImageView;I)V

    .line 334
    .line 335
    .line 336
    invoke-virtual {v0, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 337
    .line 338
    .line 339
    const p1, 0x7f0b042d

    .line 340
    .line 341
    .line 342
    invoke-virtual {p0, p1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    .line 343
    .line 344
    .line 345
    move-result-object p1

    .line 346
    check-cast p1, Landroid/widget/EditText;

    .line 347
    .line 348
    iput-object p1, p0, Lha/e6;->k:Landroid/widget/EditText;

    .line 349
    .line 350
    const p1, 0x7f0b0465

    .line 351
    .line 352
    .line 353
    invoke-virtual {p0, p1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    .line 354
    .line 355
    .line 356
    move-result-object p1

    .line 357
    check-cast p1, Landroid/widget/EditText;

    .line 358
    .line 359
    iput-object p1, p0, Lha/e6;->l:Landroid/widget/EditText;

    .line 360
    .line 361
    const p1, 0x7f0b0436

    .line 362
    .line 363
    .line 364
    invoke-virtual {p0, p1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    .line 365
    .line 366
    .line 367
    move-result-object p1

    .line 368
    check-cast p1, Landroid/widget/EditText;

    .line 369
    .line 370
    iput-object p1, p0, Lha/e6;->m:Landroid/widget/EditText;

    .line 371
    .line 372
    const p1, 0x7f0b0459

    .line 373
    .line 374
    .line 375
    invoke-virtual {p0, p1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    .line 376
    .line 377
    .line 378
    move-result-object p1

    .line 379
    check-cast p1, Landroid/widget/EditText;

    .line 380
    .line 381
    iput-object p1, p0, Lha/e6;->n:Landroid/widget/EditText;

    .line 382
    .line 383
    const p1, 0x7f0b0442

    .line 384
    .line 385
    .line 386
    invoke-virtual {p0, p1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    .line 387
    .line 388
    .line 389
    move-result-object p1

    .line 390
    check-cast p1, Landroid/widget/EditText;

    .line 391
    .line 392
    iput-object p1, p0, Lha/e6;->p:Landroid/widget/EditText;

    .line 393
    .line 394
    const p1, 0x7f0b0450

    .line 395
    .line 396
    .line 397
    invoke-virtual {p0, p1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    .line 398
    .line 399
    .line 400
    move-result-object p1

    .line 401
    check-cast p1, Landroid/widget/EditText;

    .line 402
    .line 403
    iput-object p1, p0, Lha/e6;->q:Landroid/widget/EditText;

    .line 404
    .line 405
    const p1, 0x7f0b045a

    .line 406
    .line 407
    .line 408
    invoke-virtual {p0, p1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    .line 409
    .line 410
    .line 411
    move-result-object p1

    .line 412
    check-cast p1, Landroid/widget/EditText;

    .line 413
    .line 414
    iput-object p1, p0, Lha/e6;->r:Landroid/widget/EditText;

    .line 415
    .line 416
    iget-object p1, p0, Lha/e6;->g:Lcom/owen/tvrecyclerview/widget/TvRecyclerView;

    .line 417
    .line 418
    invoke-virtual {p0, p1}, Lha/e6;->c(Landroid/view/View;)V

    .line 419
    .line 420
    .line 421
    iget-object p1, p0, Lha/e6;->k:Landroid/widget/EditText;

    .line 422
    .line 423
    invoke-virtual {p0, p1}, Lha/e6;->c(Landroid/view/View;)V

    .line 424
    .line 425
    .line 426
    iget-object p1, p0, Lha/e6;->m:Landroid/widget/EditText;

    .line 427
    .line 428
    invoke-virtual {p0, p1}, Lha/e6;->c(Landroid/view/View;)V

    .line 429
    .line 430
    .line 431
    iget-object p1, p0, Lha/e6;->n:Landroid/widget/EditText;

    .line 432
    .line 433
    invoke-virtual {p0, p1}, Lha/e6;->c(Landroid/view/View;)V

    .line 434
    .line 435
    .line 436
    iget-object p1, p0, Lha/e6;->q:Landroid/widget/EditText;

    .line 437
    .line 438
    invoke-virtual {p0, p1}, Lha/e6;->c(Landroid/view/View;)V

    .line 439
    .line 440
    .line 441
    iget-object p1, p0, Lha/e6;->r:Landroid/widget/EditText;

    .line 442
    .line 443
    invoke-virtual {p0, p1}, Lha/e6;->c(Landroid/view/View;)V

    .line 444
    .line 445
    .line 446
    iget-object p1, p0, Lha/e6;->p:Landroid/widget/EditText;

    .line 447
    .line 448
    invoke-virtual {p0, p1}, Lha/e6;->c(Landroid/view/View;)V

    .line 449
    .line 450
    .line 451
    iget-object p1, p0, Lha/e6;->l:Landroid/widget/EditText;

    .line 452
    .line 453
    invoke-virtual {p0, p1}, Lha/e6;->c(Landroid/view/View;)V

    .line 454
    .line 455
    .line 456
    iget-object p1, p0, Lha/e6;->k:Landroid/widget/EditText;

    .line 457
    .line 458
    iget-object v0, v1, Lcom/yunpan/appmanage/util/w;->y0:Ljava/lang/String;

    .line 459
    .line 460
    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 461
    .line 462
    .line 463
    iget-object p1, p0, Lha/e6;->l:Landroid/widget/EditText;

    .line 464
    .line 465
    iget-object v0, v1, Lcom/yunpan/appmanage/util/w;->D0:Ljava/lang/String;

    .line 466
    .line 467
    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 468
    .line 469
    .line 470
    iget-object p1, p0, Lha/e6;->m:Landroid/widget/EditText;

    .line 471
    .line 472
    iget-object v0, v1, Lcom/yunpan/appmanage/util/w;->z0:Ljava/lang/String;

    .line 473
    .line 474
    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 475
    .line 476
    .line 477
    iget-object p1, p0, Lha/e6;->n:Landroid/widget/EditText;

    .line 478
    .line 479
    iget-object v0, v1, Lcom/yunpan/appmanage/util/w;->A0:Ljava/lang/String;

    .line 480
    .line 481
    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 482
    .line 483
    .line 484
    iget-object p1, p0, Lha/e6;->p:Landroid/widget/EditText;

    .line 485
    .line 486
    iget-object v0, v1, Lcom/yunpan/appmanage/util/w;->B0:Ljava/lang/String;

    .line 487
    .line 488
    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 489
    .line 490
    .line 491
    iget-object p1, p0, Lha/e6;->q:Landroid/widget/EditText;

    .line 492
    .line 493
    iget-object v0, v1, Lcom/yunpan/appmanage/util/w;->C0:Ljava/lang/String;

    .line 494
    .line 495
    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 496
    .line 497
    .line 498
    iget-object p1, p0, Lha/e6;->r:Landroid/widget/EditText;

    .line 499
    .line 500
    iget-object v0, v1, Lcom/yunpan/appmanage/util/w;->E0:Ljava/lang/String;

    .line 501
    .line 502
    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 503
    .line 504
    .line 505
    iget-object p1, p0, Lha/e6;->k:Landroid/widget/EditText;

    .line 506
    .line 507
    new-instance v0, Lha/d6;

    .line 508
    .line 509
    const/4 v1, 0x0

    .line 510
    invoke-direct {v0, p0, v1}, Lha/d6;-><init>(Lha/e6;I)V

    .line 511
    .line 512
    .line 513
    invoke-virtual {p1, v0}, Landroid/view/View;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    .line 514
    .line 515
    .line 516
    iget-object p1, p0, Lha/e6;->l:Landroid/widget/EditText;

    .line 517
    .line 518
    new-instance v0, Lha/d6;

    .line 519
    .line 520
    const/4 v1, 0x1

    .line 521
    invoke-direct {v0, p0, v1}, Lha/d6;-><init>(Lha/e6;I)V

    .line 522
    .line 523
    .line 524
    invoke-virtual {p1, v0}, Landroid/view/View;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    .line 525
    .line 526
    .line 527
    iget-object p1, p0, Lha/e6;->m:Landroid/widget/EditText;

    .line 528
    .line 529
    new-instance v0, Lha/d6;

    .line 530
    .line 531
    const/4 v1, 0x2

    .line 532
    invoke-direct {v0, p0, v1}, Lha/d6;-><init>(Lha/e6;I)V

    .line 533
    .line 534
    .line 535
    invoke-virtual {p1, v0}, Landroid/view/View;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    .line 536
    .line 537
    .line 538
    iget-object p1, p0, Lha/e6;->n:Landroid/widget/EditText;

    .line 539
    .line 540
    new-instance v0, Lha/d6;

    .line 541
    .line 542
    const/4 v1, 0x3

    .line 543
    invoke-direct {v0, p0, v1}, Lha/d6;-><init>(Lha/e6;I)V

    .line 544
    .line 545
    .line 546
    invoke-virtual {p1, v0}, Landroid/view/View;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    .line 547
    .line 548
    .line 549
    iget-object p1, p0, Lha/e6;->p:Landroid/widget/EditText;

    .line 550
    .line 551
    new-instance v0, Lha/d6;

    .line 552
    .line 553
    const/4 v1, 0x4

    .line 554
    invoke-direct {v0, p0, v1}, Lha/d6;-><init>(Lha/e6;I)V

    .line 555
    .line 556
    .line 557
    invoke-virtual {p1, v0}, Landroid/view/View;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    .line 558
    .line 559
    .line 560
    iget-object p1, p0, Lha/e6;->q:Landroid/widget/EditText;

    .line 561
    .line 562
    new-instance v0, Lha/d6;

    .line 563
    .line 564
    const/4 v1, 0x5

    .line 565
    invoke-direct {v0, p0, v1}, Lha/d6;-><init>(Lha/e6;I)V

    .line 566
    .line 567
    .line 568
    invoke-virtual {p1, v0}, Landroid/view/View;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    .line 569
    .line 570
    .line 571
    iget-object p1, p0, Lha/e6;->r:Landroid/widget/EditText;

    .line 572
    .line 573
    new-instance v0, Lha/d6;

    .line 574
    .line 575
    const/4 v1, 0x6

    .line 576
    invoke-direct {v0, p0, v1}, Lha/d6;-><init>(Lha/e6;I)V

    .line 577
    .line 578
    .line 579
    invoke-virtual {p1, v0}, Landroid/view/View;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    .line 580
    .line 581
    .line 582
    return-void
.end method
