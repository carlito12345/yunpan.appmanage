.class public Lcom/yunpan/appmanage/ui/ActivityDownload;
.super Lda/g;
.source "SourceFile"


# static fields
.field public static final synthetic P0:I


# instance fields
.field public C:Lcom/owen/tvrecyclerview/widget/TvRecyclerView;

.field public D:Lcom/owen/tvrecyclerview/widget/TvRecyclerView;

.field public E:Lcom/owen/tvrecyclerview/widget/TvRecyclerView;

.field public F:Lcom/owen/tvrecyclerview/widget/TvRecyclerView;

.field public G:Landroidx/constraintlayout/widget/ConstraintLayout;

.field public H:Landroid/widget/EditText;

.field public I:Landroidx/constraintlayout/widget/ConstraintLayout;

.field public K:Landroid/widget/ImageView;

.field public L:Landroid/widget/TextView;

.field public M:Landroidx/constraintlayout/widget/ConstraintLayout;

.field public M0:Ljava/util/concurrent/ExecutorService;

.field public N:Lcom/owen/tvrecyclerview/widget/TvRecyclerView;

.field public N0:Lha/o1;

.field public O:Landroid/widget/TextView;

.field public final O0:Lcom/yunpan/appmanage/carsdk/u;

.field public P:Landroidx/constraintlayout/widget/ConstraintLayout;

.field public R:Lba/q;

.field public S:Lx9/p5;

.field public T:Lx9/t0;

.field public V:Lx9/t5;

.field public X:Lx9/j2;

.field public Y:Lx9/n5;

.field public Z:Lx9/n5;

.field public h0:Z

.field public t0:Ljava/util/concurrent/ExecutorService;


# direct methods
.method public constructor <init>()V
    .locals 3

    .line 1
    invoke-direct {p0}, Lda/g;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x0

    .line 5
    iput-object v0, p0, Lcom/yunpan/appmanage/ui/ActivityDownload;->Y:Lx9/n5;

    .line 6
    .line 7
    iput-object v0, p0, Lcom/yunpan/appmanage/ui/ActivityDownload;->Z:Lx9/n5;

    .line 8
    .line 9
    const/4 v0, 0x0

    .line 10
    iput-boolean v0, p0, Lcom/yunpan/appmanage/ui/ActivityDownload;->h0:Z

    .line 11
    .line 12
    new-instance v0, Lcom/yunpan/appmanage/carsdk/u;

    .line 13
    .line 14
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    .line 15
    .line 16
    .line 17
    move-result-object v1

    .line 18
    const/16 v2, 0x11

    .line 19
    .line 20
    invoke-direct {v0, p0, v1, v2}, Lcom/yunpan/appmanage/carsdk/u;-><init>(Ljava/lang/Object;Landroid/os/Looper;I)V

    .line 21
    .line 22
    .line 23
    iput-object v0, p0, Lcom/yunpan/appmanage/ui/ActivityDownload;->O0:Lcom/yunpan/appmanage/carsdk/u;

    .line 24
    .line 25
    return-void
.end method

.method public static x(Lcom/yunpan/appmanage/ui/ActivityDownload;Z)Ljava/lang/String;
    .locals 4

    .line 1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    const-string v0, "/Download"

    .line 5
    .line 6
    const-string v1, ""

    .line 7
    .line 8
    if-eqz p1, :cond_3

    .line 9
    .line 10
    sget-object p1, Lfa/g0;->a:Lfa/h0;

    .line 11
    .line 12
    invoke-virtual {p1}, Lfa/h0;->d()Ljava/lang/String;

    .line 13
    .line 14
    .line 15
    move-result-object v2

    .line 16
    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    .line 17
    .line 18
    .line 19
    move-result v2

    .line 20
    if-nez v2, :cond_0

    .line 21
    .line 22
    new-instance v1, Ljava/lang/StringBuilder;

    .line 23
    .line 24
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 25
    .line 26
    .line 27
    invoke-virtual {p1}, Lfa/h0;->d()Ljava/lang/String;

    .line 28
    .line 29
    .line 30
    move-result-object p1

    .line 31
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 32
    .line 33
    .line 34
    const-string p1, "/."

    .line 35
    .line 36
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 37
    .line 38
    .line 39
    sget-object p1, Lcom/yunpan/appmanage/util/k;->u0:Ljava/text/DecimalFormat;

    .line 40
    .line 41
    sget-object p1, Lcom/yunpan/appmanage/util/j;->a:Lcom/yunpan/appmanage/util/k;

    .line 42
    .line 43
    iget-object p1, p1, Lcom/yunpan/appmanage/util/k;->d:Ljava/lang/String;

    .line 44
    .line 45
    const-string v2, "/cache"

    .line 46
    .line 47
    invoke-static {p1, v2, v1}, Lg/b;->l(Ljava/lang/String;Ljava/lang/String;Ljava/lang/StringBuilder;)Ljava/lang/String;

    .line 48
    .line 49
    .line 50
    move-result-object v1

    .line 51
    :try_start_0
    new-instance p1, Ljava/io/File;

    .line 52
    .line 53
    invoke-direct {p1, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 54
    .line 55
    .line 56
    invoke-virtual {p1}, Ljava/io/File;->mkdirs()Z

    .line 57
    .line 58
    .line 59
    new-instance p1, Ljava/io/File;

    .line 60
    .line 61
    invoke-direct {p1, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 62
    .line 63
    .line 64
    invoke-virtual {p1}, Ljava/io/File;->mkdir()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 65
    .line 66
    .line 67
    goto :goto_0

    .line 68
    :catch_0
    nop

    .line 69
    :cond_0
    :goto_0
    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    .line 70
    .line 71
    .line 72
    move-result p1

    .line 73
    if-eqz p1, :cond_2

    .line 74
    .line 75
    :try_start_1
    sget-object p1, Lcom/yunpan/appmanage/util/k;->u0:Ljava/text/DecimalFormat;

    .line 76
    .line 77
    sget-object p1, Lcom/yunpan/appmanage/util/j;->a:Lcom/yunpan/appmanage/util/k;

    .line 78
    .line 79
    iget-object p1, p1, Lcom/yunpan/appmanage/util/k;->v:Ljava/util/HashSet;

    .line 80
    .line 81
    invoke-virtual {p1}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    .line 82
    .line 83
    .line 84
    move-result-object p1

    .line 85
    :cond_1
    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 86
    .line 87
    .line 88
    move-result v2

    .line 89
    if-eqz v2, :cond_2

    .line 90
    .line 91
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 92
    .line 93
    .line 94
    move-result-object v2

    .line 95
    check-cast v2, Ljava/lang/String;

    .line 96
    .line 97
    invoke-static {v2}, Lcom/yunpan/appmanage/util/a0;->g(Ljava/lang/String;)Z

    .line 98
    .line 99
    .line 100
    move-result v3

    .line 101
    if-eqz v3, :cond_1

    .line 102
    .line 103
    invoke-static {v2}, Lcom/yunpan/appmanage/util/a0;->d(Ljava/lang/String;)Z

    .line 104
    .line 105
    .line 106
    move-result v3

    .line 107
    if-eqz v3, :cond_1

    .line 108
    .line 109
    new-instance v3, Ljava/lang/StringBuilder;

    .line 110
    .line 111
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 112
    .line 113
    .line 114
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 115
    .line 116
    .line 117
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 118
    .line 119
    .line 120
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 121
    .line 122
    .line 123
    move-result-object v1

    .line 124
    new-instance v2, Ljava/io/File;

    .line 125
    .line 126
    invoke-direct {v2, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 127
    .line 128
    .line 129
    invoke-virtual {v2}, Ljava/io/File;->mkdir()Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 130
    .line 131
    .line 132
    goto :goto_1

    .line 133
    :catch_1
    nop

    .line 134
    :cond_2
    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    .line 135
    .line 136
    .line 137
    move-result p1

    .line 138
    if-eqz p1, :cond_7

    .line 139
    .line 140
    iget-object p0, p0, Lda/g;->A:Lda/g;

    .line 141
    .line 142
    invoke-virtual {p0}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    .line 143
    .line 144
    .line 145
    move-result-object p0

    .line 146
    invoke-virtual {p0}, Ljava/io/File;->getPath()Ljava/lang/String;

    .line 147
    .line 148
    .line 149
    move-result-object v1

    .line 150
    goto :goto_2

    .line 151
    :cond_3
    sget-object p1, Lfa/g0;->a:Lfa/h0;

    .line 152
    .line 153
    invoke-virtual {p1}, Lfa/h0;->d()Ljava/lang/String;

    .line 154
    .line 155
    .line 156
    move-result-object v2

    .line 157
    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    .line 158
    .line 159
    .line 160
    move-result v2

    .line 161
    if-nez v2, :cond_4

    .line 162
    .line 163
    new-instance p0, Ljava/lang/StringBuilder;

    .line 164
    .line 165
    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    .line 166
    .line 167
    .line 168
    invoke-static {p1, p0, v0}, Lg/b;->g(Lfa/h0;Ljava/lang/StringBuilder;Ljava/lang/String;)Ljava/lang/String;

    .line 169
    .line 170
    .line 171
    move-result-object v1

    .line 172
    new-instance p0, Ljava/io/File;

    .line 173
    .line 174
    invoke-direct {p0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 175
    .line 176
    .line 177
    invoke-virtual {p0}, Ljava/io/File;->mkdir()Z

    .line 178
    .line 179
    .line 180
    goto :goto_2

    .line 181
    :cond_4
    sget-object p1, Lcom/yunpan/appmanage/util/k;->u0:Ljava/text/DecimalFormat;

    .line 182
    .line 183
    sget-object p1, Lcom/yunpan/appmanage/util/j;->a:Lcom/yunpan/appmanage/util/k;

    .line 184
    .line 185
    iget-object p1, p1, Lcom/yunpan/appmanage/util/k;->v:Ljava/util/HashSet;

    .line 186
    .line 187
    invoke-virtual {p1}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    .line 188
    .line 189
    .line 190
    move-result-object p1

    .line 191
    :cond_5
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 192
    .line 193
    .line 194
    move-result v2

    .line 195
    if-eqz v2, :cond_6

    .line 196
    .line 197
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 198
    .line 199
    .line 200
    move-result-object v2

    .line 201
    check-cast v2, Ljava/lang/String;

    .line 202
    .line 203
    invoke-static {v2}, Lcom/yunpan/appmanage/util/a0;->d(Ljava/lang/String;)Z

    .line 204
    .line 205
    .line 206
    move-result v3

    .line 207
    if-eqz v3, :cond_5

    .line 208
    .line 209
    invoke-static {v2, v0}, Lg/b;->j(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 210
    .line 211
    .line 212
    move-result-object v1

    .line 213
    new-instance p1, Ljava/io/File;

    .line 214
    .line 215
    invoke-direct {p1, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 216
    .line 217
    .line 218
    invoke-virtual {p1}, Ljava/io/File;->mkdir()Z

    .line 219
    .line 220
    .line 221
    :cond_6
    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    .line 222
    .line 223
    .line 224
    move-result p1

    .line 225
    if-eqz p1, :cond_7

    .line 226
    .line 227
    iget-object p0, p0, Lda/g;->A:Lda/g;

    .line 228
    .line 229
    invoke-virtual {p0}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    .line 230
    .line 231
    .line 232
    move-result-object p0

    .line 233
    invoke-virtual {p0}, Ljava/io/File;->getPath()Ljava/lang/String;

    .line 234
    .line 235
    .line 236
    move-result-object v1

    .line 237
    :cond_7
    :goto_2
    const-string p0, "/"

    .line 238
    .line 239
    invoke-static {v1, p0}, Lg/b;->j(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 240
    .line 241
    .line 242
    move-result-object p0

    .line 243
    return-object p0
.end method

.method public static y(Lcom/yunpan/appmanage/ui/ActivityDownload;Lx9/u5;)V
    .locals 2

    .line 1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    .line 5
    .line 6
    .line 7
    move-result-object v0

    .line 8
    const/4 v1, 0x1

    .line 9
    iput v1, v0, Landroid/os/Message;->what:I

    .line 10
    .line 11
    iput-object p1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 12
    .line 13
    iget-object p0, p0, Lcom/yunpan/appmanage/ui/ActivityDownload;->O0:Lcom/yunpan/appmanage/carsdk/u;

    .line 14
    .line 15
    invoke-virtual {p0, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 16
    .line 17
    .line 18
    return-void
.end method

.method public static z(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/ResponseBody;
    .locals 7

    .line 1
    const/4 v0, 0x0

    .line 2
    const/4 v1, 0x0

    .line 3
    move-object v2, v0

    .line 4
    :goto_0
    const/4 v3, 0x1

    .line 5
    add-int/2addr v1, v3

    .line 6
    if-ne v1, v3, :cond_0

    .line 7
    .line 8
    sget-object v3, Lcom/yunpan/appmanage/util/f0;->a:Lo9/a;

    .line 9
    .line 10
    iput-object v0, v3, Lo9/a;->b:Lokhttp3/HttpUrl;

    .line 11
    .line 12
    goto :goto_1

    .line 13
    :cond_0
    const/4 v4, 0x2

    .line 14
    if-ne v1, v4, :cond_5

    .line 15
    .line 16
    sget-object v4, Lcom/yunpan/appmanage/util/f0;->a:Lo9/a;

    .line 17
    .line 18
    invoke-static {v3}, Lcom/yunpan/appmanage/util/f0;->a(I)Ljava/lang/String;

    .line 19
    .line 20
    .line 21
    move-result-object v3

    .line 22
    invoke-static {v3}, Lokhttp3/HttpUrl;->get(Ljava/lang/String;)Lokhttp3/HttpUrl;

    .line 23
    .line 24
    .line 25
    move-result-object v3

    .line 26
    iput-object v3, v4, Lo9/a;->b:Lokhttp3/HttpUrl;

    .line 27
    .line 28
    :goto_1
    :try_start_0
    new-instance v3, Ll9/a;

    .line 29
    .line 30
    invoke-direct {v3, p0}, Ll9/a;-><init>(Ljava/lang/String;)V

    .line 31
    .line 32
    .line 33
    const-string v4, "User-Agent"

    .line 34
    .line 35
    const-string v5, "Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/118.0.0.0 Safari/537.36 Edg/118.0.2088.76"

    .line 36
    .line 37
    iget-object v6, v3, Lm9/e;->i:Lk9/a;

    .line 38
    .line 39
    invoke-virtual {v6, v4, v5}, Lk9/a;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 40
    .line 41
    .line 42
    const-string v4, "Accept-Language"

    .line 43
    .line 44
    const-string v5, "zh-CN,zh;q=0.9,en;q=0.8"

    .line 45
    .line 46
    iget-object v6, v3, Lm9/e;->i:Lk9/a;

    .line 47
    .line 48
    invoke-virtual {v6, v4, v5}, Lk9/a;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 49
    .line 50
    .line 51
    if-eqz p1, :cond_1

    .line 52
    .line 53
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    .line 54
    .line 55
    .line 56
    move-result v4

    .line 57
    if-nez v4, :cond_1

    .line 58
    .line 59
    const-string v4, "Referer"

    .line 60
    .line 61
    invoke-virtual {v3, v4, p1}, Lm9/e;->g(Ljava/lang/String;Ljava/lang/String;)V

    .line 62
    .line 63
    .line 64
    goto :goto_2

    .line 65
    :catch_0
    nop

    .line 66
    goto :goto_3

    .line 67
    :cond_1
    :goto_2
    invoke-virtual {v3}, Lm9/e;->a()Lokhttp3/Response;

    .line 68
    .line 69
    .line 70
    move-result-object v3

    .line 71
    invoke-virtual {v3}, Lokhttp3/Response;->isSuccessful()Z

    .line 72
    .line 73
    .line 74
    move-result v4

    .line 75
    if-nez v4, :cond_2

    .line 76
    .line 77
    goto :goto_4

    .line 78
    :cond_2
    invoke-virtual {v3}, Lokhttp3/Response;->body()Lokhttp3/ResponseBody;

    .line 79
    .line 80
    .line 81
    move-result-object v2

    .line 82
    if-nez v2, :cond_3

    .line 83
    .line 84
    goto :goto_4

    .line 85
    :cond_3
    invoke-virtual {v2}, Lokhttp3/ResponseBody;->contentType()Lokhttp3/MediaType;

    .line 86
    .line 87
    .line 88
    move-result-object v3

    .line 89
    invoke-virtual {v3}, Lokhttp3/MediaType;->type()Ljava/lang/String;

    .line 90
    .line 91
    .line 92
    move-result-object v3

    .line 93
    const-string v4, "text"

    .line 94
    .line 95
    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 96
    .line 97
    .line 98
    move-result v3

    .line 99
    if-eqz v3, :cond_4

    .line 100
    .line 101
    sget-object v3, Ljava/lang/System;->out:Ljava/io/PrintStream;

    .line 102
    .line 103
    invoke-virtual {v2}, Lokhttp3/ResponseBody;->string()Ljava/lang/String;

    .line 104
    .line 105
    .line 106
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 107
    .line 108
    .line 109
    :goto_3
    move-object v2, v0

    .line 110
    goto :goto_4

    .line 111
    :cond_4
    return-object v2

    .line 112
    :goto_4
    if-nez v2, :cond_5

    .line 113
    .line 114
    goto :goto_0

    .line 115
    :cond_5
    new-instance p0, Ljava/lang/Exception;

    .line 116
    .line 117
    const-string p1, "\u4e0b\u8f7d\u5931\u8d25"

    .line 118
    .line 119
    invoke-direct {p0, p1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    .line 120
    .line 121
    .line 122
    goto :goto_6

    .line 123
    :goto_5
    throw p0

    .line 124
    :goto_6
    goto :goto_5
.end method


# virtual methods
.method public final A(I)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/yunpan/appmanage/ui/ActivityDownload;->C:Lcom/owen/tvrecyclerview/widget/TvRecyclerView;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Lcom/owen/tvrecyclerview/widget/TvRecyclerView;->setSelection(I)V

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lcom/yunpan/appmanage/ui/ActivityDownload;->R:Lba/q;

    .line 7
    .line 8
    invoke-virtual {v0, p1}, Lc6/g;->t(I)Ljava/lang/Object;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    check-cast v0, Lba/r;

    .line 13
    .line 14
    iget-object v1, p0, Lcom/yunpan/appmanage/ui/ActivityDownload;->P:Landroidx/constraintlayout/widget/ConstraintLayout;

    .line 15
    .line 16
    const/4 v2, 0x0

    .line 17
    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 18
    .line 19
    .line 20
    new-instance v1, Lua/o1;

    .line 21
    .line 22
    const/4 v2, 0x1

    .line 23
    invoke-direct {v1, v0, v2}, Lua/o1;-><init>(Lba/r;I)V

    .line 24
    .line 25
    .line 26
    new-instance v0, Lmc/c;

    .line 27
    .line 28
    const/4 v2, 0x0

    .line 29
    invoke-direct {v0, v2, v1}, Lmc/c;-><init>(ILjava/lang/Object;)V

    .line 30
    .line 31
    .line 32
    sget-object v1, Lrc/f;->b:Lec/j;

    .line 33
    .line 34
    invoke-virtual {v0, v1}, Lec/b;->d(Lec/j;)Lmc/p;

    .line 35
    .line 36
    .line 37
    move-result-object v0

    .line 38
    invoke-static {}, Lfc/b;->a()Lfc/e;

    .line 39
    .line 40
    .line 41
    move-result-object v1

    .line 42
    invoke-virtual {v0, v1}, Lec/b;->a(Lfc/e;)Lmc/g;

    .line 43
    .line 44
    .line 45
    move-result-object v0

    .line 46
    new-instance v1, Lha/s2;

    .line 47
    .line 48
    const/4 v2, 0x4

    .line 49
    invoke-direct {v1, p1, v2, p0}, Lha/s2;-><init>(IILjava/lang/Object;)V

    .line 50
    .line 51
    .line 52
    invoke-virtual {v0, v1}, Lec/b;->b(Lec/e;)V

    .line 53
    .line 54
    .line 55
    return-void
.end method

.method public final B()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/yunpan/appmanage/ui/ActivityDownload;->I:Landroidx/constraintlayout/widget/ConstraintLayout;

    .line 2
    .line 3
    const/16 v1, 0x8

    .line 4
    .line 5
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 6
    .line 7
    .line 8
    iget-object v0, p0, Lcom/yunpan/appmanage/ui/ActivityDownload;->M:Landroidx/constraintlayout/widget/ConstraintLayout;

    .line 9
    .line 10
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 11
    .line 12
    .line 13
    iget-object v0, p0, Lcom/yunpan/appmanage/ui/ActivityDownload;->O:Landroid/widget/TextView;

    .line 14
    .line 15
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 16
    .line 17
    .line 18
    return-void
.end method

.method public final C()V
    .locals 10

    .line 1
    iget-object v0, p0, Lcom/yunpan/appmanage/ui/ActivityDownload;->V:Lx9/t5;

    .line 2
    .line 3
    invoke-virtual {v0}, Lc6/g;->v()Ljava/util/List;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    const/4 v1, 0x1

    .line 12
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 13
    .line 14
    .line 15
    move-result v2

    .line 16
    if-eqz v2, :cond_2

    .line 17
    .line 18
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 19
    .line 20
    .line 21
    move-result-object v2

    .line 22
    check-cast v2, Lx9/u5;

    .line 23
    .line 24
    iget-object v3, v2, Lx9/u5;->c:Ljava/lang/String;

    .line 25
    .line 26
    const-string v4, "\u4e0b\u8f7d\u4e2d"

    .line 27
    .line 28
    invoke-virtual {v3, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 29
    .line 30
    .line 31
    move-result v3

    .line 32
    if-nez v3, :cond_1

    .line 33
    .line 34
    iget-object v3, v2, Lx9/u5;->c:Ljava/lang/String;

    .line 35
    .line 36
    const-string v4, "\u5b89\u88c5\u4e2d"

    .line 37
    .line 38
    invoke-virtual {v3, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 39
    .line 40
    .line 41
    move-result v3

    .line 42
    if-nez v3, :cond_1

    .line 43
    .line 44
    iget-object v2, v2, Lx9/u5;->c:Ljava/lang/String;

    .line 45
    .line 46
    const-string v3, "\u7b49\u5f85\u4e0b\u8f7d"

    .line 47
    .line 48
    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 49
    .line 50
    .line 51
    move-result v2

    .line 52
    if-eqz v2, :cond_0

    .line 53
    .line 54
    :cond_1
    const/4 v1, 0x0

    .line 55
    goto :goto_0

    .line 56
    :cond_2
    if-eqz v1, :cond_3

    .line 57
    .line 58
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    .line 59
    .line 60
    .line 61
    goto :goto_1

    .line 62
    :cond_3
    new-instance v0, Lha/z6;

    .line 63
    .line 64
    iget-object v4, p0, Lda/g;->A:Lda/g;

    .line 65
    .line 66
    new-instance v9, Lua/i1;

    .line 67
    .line 68
    const/4 v1, 0x1

    .line 69
    invoke-direct {v9, v1, p0}, Lua/i1;-><init>(ILjava/lang/Object;)V

    .line 70
    .line 71
    .line 72
    const-string v7, "\u786e\u5b9a"

    .line 73
    .line 74
    const-string v8, "\u53d6\u6d88"

    .line 75
    .line 76
    const-string v5, "\u8fd8\u6709\u4efb\u52a1\u672a\u5b8c\u6210\uff0c\u662f\u5426\u505c\u6b62"

    .line 77
    .line 78
    const-string v6, ""

    .line 79
    .line 80
    move-object v2, v0

    .line 81
    move-object v3, p0

    .line 82
    invoke-direct/range {v2 .. v9}, Lha/z6;-><init>(Landroid/app/Activity;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lha/wd;)V

    .line 83
    .line 84
    .line 85
    invoke-virtual {v0}, Lha/a4;->show()V

    .line 86
    .line 87
    .line 88
    :goto_1
    return-void
.end method

.method public final D()V
    .locals 9

    .line 1
    invoke-virtual {p0}, Lcom/yunpan/appmanage/ui/ActivityDownload;->B()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lcom/yunpan/appmanage/ui/ActivityDownload;->H:Landroid/widget/EditText;

    .line 5
    .line 6
    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 11
    .line 12
    .line 13
    move-result-object v4

    .line 14
    const-string v0, "http://"

    .line 15
    .line 16
    invoke-virtual {v4, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 17
    .line 18
    .line 19
    move-result v0

    .line 20
    const/4 v1, 0x0

    .line 21
    if-nez v0, :cond_0

    .line 22
    .line 23
    const-string v0, "https://"

    .line 24
    .line 25
    invoke-virtual {v4, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 26
    .line 27
    .line 28
    move-result v0

    .line 29
    if-nez v0, :cond_0

    .line 30
    .line 31
    const-string v0, "\u8bf7\u8f93\u5165\u6b63\u786e\u7684\u5206\u4eab\u5730\u5740"

    .line 32
    .line 33
    invoke-static {v0, v1}, Lcom/yunpan/appmanage/util/a0;->z(Ljava/lang/String;Z)V

    .line 34
    .line 35
    .line 36
    return-void

    .line 37
    :cond_0
    const-string v0, "http"

    .line 38
    .line 39
    invoke-virtual {v4, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    .line 40
    .line 41
    .line 42
    move-result v0

    .line 43
    invoke-virtual {v4, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    .line 44
    .line 45
    .line 46
    move-result-object v0

    .line 47
    const-string v2, ".123pan.com"

    .line 48
    .line 49
    invoke-virtual {v0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 50
    .line 51
    .line 52
    move-result v3

    .line 53
    if-eqz v3, :cond_1

    .line 54
    .line 55
    const-string v3, ".123pan.cn"

    .line 56
    .line 57
    invoke-virtual {v0, v2, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    .line 58
    .line 59
    .line 60
    move-result-object v0

    .line 61
    :cond_1
    move-object v3, v0

    .line 62
    const-string v0, "#"

    .line 63
    .line 64
    invoke-virtual {v3, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    .line 65
    .line 66
    .line 67
    move-result v2

    .line 68
    const/4 v5, -0x1

    .line 69
    if-eq v2, v5, :cond_3

    .line 70
    .line 71
    add-int/lit8 v5, v2, 0x1

    .line 72
    .line 73
    invoke-virtual {v3, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    .line 74
    .line 75
    .line 76
    move-result-object v5

    .line 77
    invoke-virtual {v5, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 78
    .line 79
    .line 80
    move-result v6

    .line 81
    if-eqz v6, :cond_2

    .line 82
    .line 83
    invoke-virtual {v3, v0}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    .line 84
    .line 85
    .line 86
    move-result v2

    .line 87
    add-int/lit8 v0, v2, 0x1

    .line 88
    .line 89
    invoke-virtual {v3, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    .line 90
    .line 91
    .line 92
    move-result-object v5

    .line 93
    :cond_2
    invoke-virtual {v3, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 94
    .line 95
    .line 96
    move-result-object v0

    .line 97
    goto :goto_0

    .line 98
    :cond_3
    const-string v5, ""

    .line 99
    .line 100
    move-object v0, v3

    .line 101
    :goto_0
    new-instance v6, Lba/r;

    .line 102
    .line 103
    const-string v2, "\u5206\u4eab\u9875"

    .line 104
    .line 105
    invoke-direct {v6, v2, v0, v5}, Lba/r;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 106
    .line 107
    .line 108
    iget-object v0, p0, Lcom/yunpan/appmanage/ui/ActivityDownload;->D:Lcom/owen/tvrecyclerview/widget/TvRecyclerView;

    .line 109
    .line 110
    invoke-virtual {v0, v1}, Lcom/owen/tvrecyclerview/widget/TvRecyclerView;->setHasMoreData(Z)V

    .line 111
    .line 112
    .line 113
    iget-object v0, p0, Lcom/yunpan/appmanage/ui/ActivityDownload;->G:Landroidx/constraintlayout/widget/ConstraintLayout;

    .line 114
    .line 115
    const/16 v1, 0x8

    .line 116
    .line 117
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 118
    .line 119
    .line 120
    iget-object v0, p0, Lcom/yunpan/appmanage/ui/ActivityDownload;->R:Lba/q;

    .line 121
    .line 122
    new-instance v1, Ljava/util/ArrayList;

    .line 123
    .line 124
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 125
    .line 126
    .line 127
    invoke-virtual {v0, v1}, Lc6/g;->E(Ljava/util/List;)V

    .line 128
    .line 129
    .line 130
    iget-object v0, p0, Lcom/yunpan/appmanage/ui/ActivityDownload;->S:Lx9/p5;

    .line 131
    .line 132
    new-instance v1, Ljava/util/ArrayList;

    .line 133
    .line 134
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 135
    .line 136
    .line 137
    invoke-virtual {v0, v1}, Lc6/g;->E(Ljava/util/List;)V

    .line 138
    .line 139
    .line 140
    new-instance v0, Lcom/hjq/permissions/b;

    .line 141
    .line 142
    const/16 v1, 0xc

    .line 143
    .line 144
    invoke-direct {v0, p0, v6, v3, v1}, Lcom/hjq/permissions/b;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;I)V

    .line 145
    .line 146
    .line 147
    new-instance v1, Lmc/c;

    .line 148
    .line 149
    const/4 v2, 0x0

    .line 150
    invoke-direct {v1, v2, v0}, Lmc/c;-><init>(ILjava/lang/Object;)V

    .line 151
    .line 152
    .line 153
    sget-object v0, Lrc/f;->b:Lec/j;

    .line 154
    .line 155
    invoke-virtual {v1, v0}, Lec/b;->d(Lec/j;)Lmc/p;

    .line 156
    .line 157
    .line 158
    move-result-object v0

    .line 159
    invoke-static {}, Lfc/b;->a()Lfc/e;

    .line 160
    .line 161
    .line 162
    move-result-object v1

    .line 163
    invoke-virtual {v0, v1}, Lec/b;->a(Lfc/e;)Lmc/g;

    .line 164
    .line 165
    .line 166
    move-result-object v0

    .line 167
    new-instance v7, Lua/q1;

    .line 168
    .line 169
    const/4 v8, 0x0

    .line 170
    move-object v1, v7

    .line 171
    move-object v2, p0

    .line 172
    move-object v5, v6

    .line 173
    move v6, v8

    .line 174
    invoke-direct/range {v1 .. v6}, Lua/q1;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/io/Serializable;Ljava/lang/Object;I)V

    .line 175
    .line 176
    .line 177
    invoke-virtual {v0, v7}, Lec/b;->b(Lec/e;)V

    .line 178
    .line 179
    .line 180
    return-void
.end method

.method public final E(Ljava/lang/String;Lx9/b6;)V
    .locals 9

    .line 1
    new-instance v8, Lha/z6;

    .line 2
    .line 3
    iget-object v2, p0, Lda/g;->A:Lda/g;

    .line 4
    .line 5
    invoke-static {p1}, Lif/a;->X(Ljava/lang/String;)Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    if-nez v0, :cond_1

    .line 10
    .line 11
    invoke-static {p1}, Lif/a;->k0(Ljava/lang/String;)Z

    .line 12
    .line 13
    .line 14
    move-result v0

    .line 15
    if-eqz v0, :cond_0

    .line 16
    .line 17
    goto :goto_1

    .line 18
    :cond_0
    const/4 v0, 0x0

    .line 19
    :goto_0
    move-object v6, v0

    .line 20
    goto :goto_2

    .line 21
    :cond_1
    :goto_1
    const-string v0, "\u76f4\u63a5\u5b89\u88c5"

    .line 22
    .line 23
    goto :goto_0

    .line 24
    :goto_2
    new-instance v7, Ls4/a;

    .line 25
    .line 26
    invoke-direct {v7, p0, p1, p2}, Ls4/a;-><init>(Lcom/yunpan/appmanage/ui/ActivityDownload;Ljava/lang/String;Lx9/b6;)V

    .line 27
    .line 28
    .line 29
    const/4 v4, 0x0

    .line 30
    const-string v5, "\u4e0b\u8f7d\u6587\u4ef6"

    .line 31
    .line 32
    const-string v3, "\u8bf7\u786e\u8ba4\u662f\u5426\u4e0b\u8f7d\u6b64\u6587\u4ef6\uff1f"

    .line 33
    .line 34
    move-object v0, v8

    .line 35
    move-object v1, p0

    .line 36
    invoke-direct/range {v0 .. v7}, Lha/z6;-><init>(Landroid/app/Activity;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lha/wd;)V

    .line 37
    .line 38
    .line 39
    invoke-virtual {v8}, Lha/a4;->show()V

    .line 40
    .line 41
    .line 42
    return-void
.end method

.method public final F()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/yunpan/appmanage/ui/ActivityDownload;->I:Landroidx/constraintlayout/widget/ConstraintLayout;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 5
    .line 6
    .line 7
    iget-object v0, p0, Lcom/yunpan/appmanage/ui/ActivityDownload;->L:Landroid/widget/TextView;

    .line 8
    .line 9
    new-instance v1, Ljava/lang/StringBuilder;

    .line 10
    .line 11
    const-string v2, "\u6d4f\u89c8\u5668\uff1a"

    .line 12
    .line 13
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 14
    .line 15
    .line 16
    sget-object v2, Lcom/yunpan/appmanage/util/k;->u0:Ljava/text/DecimalFormat;

    .line 17
    .line 18
    sget-object v2, Lcom/yunpan/appmanage/util/j;->a:Lcom/yunpan/appmanage/util/k;

    .line 19
    .line 20
    iget-object v3, v2, Lcom/yunpan/appmanage/util/k;->i0:Ljava/lang/String;

    .line 21
    .line 22
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 23
    .line 24
    .line 25
    const-string v3, ":"

    .line 26
    .line 27
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 28
    .line 29
    .line 30
    iget v2, v2, Lcom/yunpan/appmanage/util/k;->j0:I

    .line 31
    .line 32
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 33
    .line 34
    .line 35
    const-string v2, "/url.html"

    .line 36
    .line 37
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 38
    .line 39
    .line 40
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 41
    .line 42
    .line 43
    move-result-object v1

    .line 44
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 45
    .line 46
    .line 47
    new-instance v0, Ljava/io/File;

    .line 48
    .line 49
    new-instance v1, Ljava/lang/StringBuilder;

    .line 50
    .line 51
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 52
    .line 53
    .line 54
    iget-object v2, p0, Lda/g;->A:Lda/g;

    .line 55
    .line 56
    invoke-virtual {v2}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    .line 57
    .line 58
    .line 59
    move-result-object v2

    .line 60
    invoke-virtual {v2}, Ljava/io/File;->getPath()Ljava/lang/String;

    .line 61
    .line 62
    .line 63
    move-result-object v2

    .line 64
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 65
    .line 66
    .line 67
    const-string v2, "/qrCode_url"

    .line 68
    .line 69
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 70
    .line 71
    .line 72
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 73
    .line 74
    .line 75
    move-result-object v1

    .line 76
    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 77
    .line 78
    .line 79
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    .line 80
    .line 81
    .line 82
    move-result v0

    .line 83
    if-eqz v0, :cond_0

    .line 84
    .line 85
    iget-object v0, p0, Lcom/yunpan/appmanage/ui/ActivityDownload;->K:Landroid/widget/ImageView;

    .line 86
    .line 87
    new-instance v1, Ljava/lang/StringBuilder;

    .line 88
    .line 89
    const-string v3, "file://"

    .line 90
    .line 91
    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 92
    .line 93
    .line 94
    iget-object v3, p0, Lda/g;->A:Lda/g;

    .line 95
    .line 96
    invoke-virtual {v3}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    .line 97
    .line 98
    .line 99
    move-result-object v3

    .line 100
    invoke-virtual {v3}, Ljava/io/File;->getPath()Ljava/lang/String;

    .line 101
    .line 102
    .line 103
    move-result-object v3

    .line 104
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 105
    .line 106
    .line 107
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 108
    .line 109
    .line 110
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 111
    .line 112
    .line 113
    move-result-object v1

    .line 114
    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    .line 115
    .line 116
    .line 117
    move-result-object v1

    .line 118
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageURI(Landroid/net/Uri;)V

    .line 119
    .line 120
    .line 121
    :cond_0
    return-void
.end method

.method public final G(Lx9/b6;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/yunpan/appmanage/ui/ActivityDownload;->R:Lba/q;

    .line 2
    .line 3
    invoke-virtual {v0}, Lc6/g;->b()I

    .line 4
    .line 5
    .line 6
    move-result v1

    .line 7
    add-int/lit8 v1, v1, -0x1

    .line 8
    .line 9
    invoke-virtual {v0, v1}, Lc6/g;->t(I)Ljava/lang/Object;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    check-cast v0, Lba/r;

    .line 14
    .line 15
    iget-object v1, p0, Lcom/yunpan/appmanage/ui/ActivityDownload;->P:Landroidx/constraintlayout/widget/ConstraintLayout;

    .line 16
    .line 17
    const/4 v2, 0x0

    .line 18
    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 19
    .line 20
    .line 21
    new-instance v1, Lma/b;

    .line 22
    .line 23
    const/16 v2, 0xb

    .line 24
    .line 25
    invoke-direct {v1, p1, v2, v0}, Lma/b;-><init>(Ljava/lang/Object;ILjava/lang/Object;)V

    .line 26
    .line 27
    .line 28
    new-instance p1, Lmc/c;

    .line 29
    .line 30
    const/4 v0, 0x0

    .line 31
    invoke-direct {p1, v0, v1}, Lmc/c;-><init>(ILjava/lang/Object;)V

    .line 32
    .line 33
    .line 34
    sget-object v0, Lrc/f;->b:Lec/j;

    .line 35
    .line 36
    invoke-virtual {p1, v0}, Lec/b;->d(Lec/j;)Lmc/p;

    .line 37
    .line 38
    .line 39
    move-result-object p1

    .line 40
    invoke-static {}, Lfc/b;->a()Lfc/e;

    .line 41
    .line 42
    .line 43
    move-result-object v0

    .line 44
    invoke-virtual {p1, v0}, Lec/b;->a(Lfc/e;)Lmc/g;

    .line 45
    .line 46
    .line 47
    move-result-object p1

    .line 48
    new-instance v0, Lka/c;

    .line 49
    .line 50
    const/16 v1, 0xf

    .line 51
    .line 52
    invoke-direct {v0, v1, p0}, Lka/c;-><init>(ILjava/lang/Object;)V

    .line 53
    .line 54
    .line 55
    invoke-virtual {p1, v0}, Lec/b;->b(Lec/e;)V

    .line 56
    .line 57
    .line 58
    return-void
.end method

.method public final onDestroy()V
    .locals 2

    .line 1
    sget-object v0, Lcom/yunpan/appmanage/util/k;->u0:Ljava/text/DecimalFormat;

    .line 2
    .line 3
    sget-object v0, Lcom/yunpan/appmanage/util/j;->a:Lcom/yunpan/appmanage/util/k;

    .line 4
    .line 5
    const/4 v1, 0x0

    .line 6
    iput-boolean v1, v0, Lcom/yunpan/appmanage/util/k;->f:Z

    .line 7
    .line 8
    const/4 v0, 0x1

    .line 9
    iput-boolean v0, p0, Lcom/yunpan/appmanage/ui/ActivityDownload;->h0:Z

    .line 10
    .line 11
    iget-object v1, p0, Lcom/yunpan/appmanage/ui/ActivityDownload;->t0:Ljava/util/concurrent/ExecutorService;

    .line 12
    .line 13
    invoke-interface {v1}, Ljava/util/concurrent/ExecutorService;->shutdown()V

    .line 14
    .line 15
    .line 16
    invoke-static {}, Lkh/e;->b()Lkh/e;

    .line 17
    .line 18
    .line 19
    move-result-object v1

    .line 20
    invoke-virtual {v1, p0}, Lkh/e;->l(Ljava/lang/Object;)V

    .line 21
    .line 22
    .line 23
    iget-object v1, p0, Lcom/yunpan/appmanage/ui/ActivityDownload;->O0:Lcom/yunpan/appmanage/carsdk/u;

    .line 24
    .line 25
    invoke-virtual {v1, v0}, Landroid/os/Handler;->removeMessages(I)V

    .line 26
    .line 27
    .line 28
    invoke-super {p0}, Lda/g;->onDestroy()V

    .line 29
    .line 30
    .line 31
    return-void
.end method

.method public onReceiveMsg(Lja/a;)V
    .locals 2
    .annotation runtime Lkh/j;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    .line 1
    iget v0, p1, Lja/a;->a:I

    .line 2
    .line 3
    iget-object p1, p1, Lja/a;->b:Ljava/lang/Object;

    .line 4
    .line 5
    const/4 v1, 0x1

    .line 6
    if-ne v0, v1, :cond_0

    .line 7
    .line 8
    iget-object v0, p0, Lcom/yunpan/appmanage/ui/ActivityDownload;->H:Landroid/widget/EditText;

    .line 9
    .line 10
    check-cast p1, Ljava/lang/String;

    .line 11
    .line 12
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 13
    .line 14
    .line 15
    iget-object p1, p0, Lcom/yunpan/appmanage/ui/ActivityDownload;->H:Landroid/widget/EditText;

    .line 16
    .line 17
    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    .line 22
    .line 23
    .line 24
    move-result v0

    .line 25
    invoke-virtual {p1, v0}, Landroid/widget/EditText;->setSelection(I)V

    .line 26
    .line 27
    .line 28
    iget-object p1, p0, Lcom/yunpan/appmanage/ui/ActivityDownload;->E:Lcom/owen/tvrecyclerview/widget/TvRecyclerView;

    .line 29
    .line 30
    const/4 v0, 0x0

    .line 31
    invoke-virtual {p1, v0}, Lcom/owen/tvrecyclerview/widget/TvRecyclerView;->setSelection(I)V

    .line 32
    .line 33
    .line 34
    iget-object p1, p0, Lcom/yunpan/appmanage/ui/ActivityDownload;->E:Lcom/owen/tvrecyclerview/widget/TvRecyclerView;

    .line 35
    .line 36
    invoke-virtual {p1}, Landroid/view/View;->requestFocus()Z

    .line 37
    .line 38
    .line 39
    iget-object p1, p0, Lcom/yunpan/appmanage/ui/ActivityDownload;->I:Landroidx/constraintlayout/widget/ConstraintLayout;

    .line 40
    .line 41
    const/16 v0, 0x8

    .line 42
    .line 43
    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 44
    .line 45
    .line 46
    invoke-virtual {p0}, Lcom/yunpan/appmanage/ui/ActivityDownload;->D()V

    .line 47
    .line 48
    .line 49
    goto :goto_0

    .line 50
    :cond_0
    const/16 v1, 0xa

    .line 51
    .line 52
    if-ne v0, v1, :cond_3

    .line 53
    .line 54
    invoke-virtual {p0}, Landroid/app/Activity;->isFinishing()Z

    .line 55
    .line 56
    .line 57
    move-result v0

    .line 58
    if-nez v0, :cond_3

    .line 59
    .line 60
    invoke-virtual {p0}, Landroid/app/Activity;->isDestroyed()Z

    .line 61
    .line 62
    .line 63
    move-result v0

    .line 64
    if-nez v0, :cond_3

    .line 65
    .line 66
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    .line 67
    .line 68
    .line 69
    move-result-object v0

    .line 70
    if-eqz v0, :cond_3

    .line 71
    .line 72
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    .line 73
    .line 74
    .line 75
    move-result-object v0

    .line 76
    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    .line 77
    .line 78
    .line 79
    move-result-object v0

    .line 80
    invoke-virtual {v0}, Landroid/view/View;->getWindowVisibility()I

    .line 81
    .line 82
    .line 83
    move-result v0

    .line 84
    if-eqz v0, :cond_1

    .line 85
    .line 86
    goto :goto_0

    .line 87
    :cond_1
    iget-object v0, p0, Lcom/yunpan/appmanage/ui/ActivityDownload;->N0:Lha/o1;

    .line 88
    .line 89
    if-eqz v0, :cond_2

    .line 90
    .line 91
    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    .line 92
    .line 93
    .line 94
    move-result v0

    .line 95
    if-eqz v0, :cond_2

    .line 96
    .line 97
    iget-object v0, p0, Lcom/yunpan/appmanage/ui/ActivityDownload;->N0:Lha/o1;

    .line 98
    .line 99
    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 100
    .line 101
    .line 102
    const/4 v0, 0x0

    .line 103
    iput-object v0, p0, Lcom/yunpan/appmanage/ui/ActivityDownload;->N0:Lha/o1;

    .line 104
    .line 105
    :cond_2
    new-instance v0, Lha/o1;

    .line 106
    .line 107
    check-cast p1, Ljava/lang/String;

    .line 108
    .line 109
    invoke-direct {v0, p0, p0, p1}, Lha/o1;-><init>(Lda/g;Lda/g;Ljava/lang/String;)V

    .line 110
    .line 111
    .line 112
    iput-object v0, p0, Lcom/yunpan/appmanage/ui/ActivityDownload;->N0:Lha/o1;

    .line 113
    .line 114
    invoke-virtual {v0}, Lha/a4;->show()V

    .line 115
    .line 116
    .line 117
    nop

    .line 118
    :cond_3
    :goto_0
    return-void
.end method

.method public final t()I
    .locals 1

    .line 1
    const v0, 0x7f0e0033

    return v0
.end method

.method public final u()V
    .locals 14

    .line 1
    const/16 v0, 0x32

    .line 2
    .line 3
    const/4 v1, 0x3

    .line 4
    const/4 v2, 0x6

    .line 5
    const/16 v3, 0x9

    .line 6
    .line 7
    const/16 v4, 0x8

    .line 8
    .line 9
    const/4 v5, 0x2

    .line 10
    const/4 v6, 0x0

    .line 11
    const/4 v7, 0x1

    .line 12
    sget-object v8, Lcom/yunpan/appmanage/util/k;->u0:Ljava/text/DecimalFormat;

    .line 13
    .line 14
    sget-object v8, Lcom/yunpan/appmanage/util/j;->a:Lcom/yunpan/appmanage/util/k;

    .line 15
    .line 16
    iput-boolean v7, v8, Lcom/yunpan/appmanage/util/k;->f:Z

    .line 17
    .line 18
    invoke-static {v5}, Ljava/util/concurrent/Executors;->newFixedThreadPool(I)Ljava/util/concurrent/ExecutorService;

    .line 19
    .line 20
    .line 21
    move-result-object v8

    .line 22
    iput-object v8, p0, Lcom/yunpan/appmanage/ui/ActivityDownload;->t0:Ljava/util/concurrent/ExecutorService;

    .line 23
    .line 24
    invoke-static {v7}, Ljava/util/concurrent/Executors;->newFixedThreadPool(I)Ljava/util/concurrent/ExecutorService;

    .line 25
    .line 26
    .line 27
    move-result-object v8

    .line 28
    iput-object v8, p0, Lcom/yunpan/appmanage/ui/ActivityDownload;->M0:Ljava/util/concurrent/ExecutorService;

    .line 29
    .line 30
    const v8, 0x7f0b050a

    .line 31
    .line 32
    .line 33
    invoke-virtual {p0, v8}, Lq/i;->findViewById(I)Landroid/view/View;

    .line 34
    .line 35
    .line 36
    move-result-object v8

    .line 37
    check-cast v8, Lcom/owen/tvrecyclerview/widget/TvRecyclerView;

    .line 38
    .line 39
    iput-object v8, p0, Lcom/yunpan/appmanage/ui/ActivityDownload;->C:Lcom/owen/tvrecyclerview/widget/TvRecyclerView;

    .line 40
    .line 41
    const v8, 0x7f0b04ff

    .line 42
    .line 43
    .line 44
    invoke-virtual {p0, v8}, Lq/i;->findViewById(I)Landroid/view/View;

    .line 45
    .line 46
    .line 47
    move-result-object v8

    .line 48
    check-cast v8, Lcom/owen/tvrecyclerview/widget/TvRecyclerView;

    .line 49
    .line 50
    iput-object v8, p0, Lcom/yunpan/appmanage/ui/ActivityDownload;->D:Lcom/owen/tvrecyclerview/widget/TvRecyclerView;

    .line 51
    .line 52
    const v8, 0x7f0b0500

    .line 53
    .line 54
    .line 55
    invoke-virtual {p0, v8}, Lq/i;->findViewById(I)Landroid/view/View;

    .line 56
    .line 57
    .line 58
    move-result-object v8

    .line 59
    check-cast v8, Lcom/owen/tvrecyclerview/widget/TvRecyclerView;

    .line 60
    .line 61
    iput-object v8, p0, Lcom/yunpan/appmanage/ui/ActivityDownload;->E:Lcom/owen/tvrecyclerview/widget/TvRecyclerView;

    .line 62
    .line 63
    const v8, 0x7f0b04fd

    .line 64
    .line 65
    .line 66
    invoke-virtual {p0, v8}, Lq/i;->findViewById(I)Landroid/view/View;

    .line 67
    .line 68
    .line 69
    move-result-object v9

    .line 70
    check-cast v9, Lcom/owen/tvrecyclerview/widget/TvRecyclerView;

    .line 71
    .line 72
    iput-object v9, p0, Lcom/yunpan/appmanage/ui/ActivityDownload;->F:Lcom/owen/tvrecyclerview/widget/TvRecyclerView;

    .line 73
    .line 74
    const v9, 0x7f0b05ff

    .line 75
    .line 76
    .line 77
    invoke-virtual {p0, v9}, Lq/i;->findViewById(I)Landroid/view/View;

    .line 78
    .line 79
    .line 80
    move-result-object v9

    .line 81
    check-cast v9, Landroid/widget/EditText;

    .line 82
    .line 83
    iput-object v9, p0, Lcom/yunpan/appmanage/ui/ActivityDownload;->H:Landroid/widget/EditText;

    .line 84
    .line 85
    const v9, 0x7f0b04e1

    .line 86
    .line 87
    .line 88
    invoke-virtual {p0, v9}, Lq/i;->findViewById(I)Landroid/view/View;

    .line 89
    .line 90
    .line 91
    move-result-object v9

    .line 92
    check-cast v9, Landroidx/constraintlayout/widget/ConstraintLayout;

    .line 93
    .line 94
    iput-object v9, p0, Lcom/yunpan/appmanage/ui/ActivityDownload;->I:Landroidx/constraintlayout/widget/ConstraintLayout;

    .line 95
    .line 96
    const v9, 0x7f0b04bb

    .line 97
    .line 98
    .line 99
    invoke-virtual {p0, v9}, Lq/i;->findViewById(I)Landroid/view/View;

    .line 100
    .line 101
    .line 102
    move-result-object v9

    .line 103
    check-cast v9, Landroid/widget/ImageView;

    .line 104
    .line 105
    iput-object v9, p0, Lcom/yunpan/appmanage/ui/ActivityDownload;->K:Landroid/widget/ImageView;

    .line 106
    .line 107
    const v9, 0x7f0b053d

    .line 108
    .line 109
    .line 110
    invoke-virtual {p0, v9}, Lq/i;->findViewById(I)Landroid/view/View;

    .line 111
    .line 112
    .line 113
    move-result-object v9

    .line 114
    check-cast v9, Landroid/widget/TextView;

    .line 115
    .line 116
    iput-object v9, p0, Lcom/yunpan/appmanage/ui/ActivityDownload;->L:Landroid/widget/TextView;

    .line 117
    .line 118
    const v9, 0x7f0b04d9

    .line 119
    .line 120
    .line 121
    invoke-virtual {p0, v9}, Lq/i;->findViewById(I)Landroid/view/View;

    .line 122
    .line 123
    .line 124
    move-result-object v9

    .line 125
    check-cast v9, Landroidx/constraintlayout/widget/ConstraintLayout;

    .line 126
    .line 127
    iput-object v9, p0, Lcom/yunpan/appmanage/ui/ActivityDownload;->M:Landroidx/constraintlayout/widget/ConstraintLayout;

    .line 128
    .line 129
    const v9, 0x7f0b0501

    .line 130
    .line 131
    .line 132
    invoke-virtual {p0, v9}, Lq/i;->findViewById(I)Landroid/view/View;

    .line 133
    .line 134
    .line 135
    move-result-object v10

    .line 136
    check-cast v10, Lcom/owen/tvrecyclerview/widget/TvRecyclerView;

    .line 137
    .line 138
    iput-object v10, p0, Lcom/yunpan/appmanage/ui/ActivityDownload;->N:Lcom/owen/tvrecyclerview/widget/TvRecyclerView;

    .line 139
    .line 140
    const v10, 0x7f0b04b3

    .line 141
    .line 142
    .line 143
    invoke-virtual {p0, v10}, Lq/i;->findViewById(I)Landroid/view/View;

    .line 144
    .line 145
    .line 146
    move-result-object v10

    .line 147
    check-cast v10, Landroid/widget/TextView;

    .line 148
    .line 149
    iput-object v10, p0, Lcom/yunpan/appmanage/ui/ActivityDownload;->O:Landroid/widget/TextView;

    .line 150
    .line 151
    const v10, 0x7f0b0517

    .line 152
    .line 153
    .line 154
    invoke-virtual {p0, v10}, Lq/i;->findViewById(I)Landroid/view/View;

    .line 155
    .line 156
    .line 157
    move-result-object v10

    .line 158
    check-cast v10, Landroidx/constraintlayout/widget/ConstraintLayout;

    .line 159
    .line 160
    iput-object v10, p0, Lcom/yunpan/appmanage/ui/ActivityDownload;->P:Landroidx/constraintlayout/widget/ConstraintLayout;

    .line 161
    .line 162
    const v10, 0x7f0b04dc

    .line 163
    .line 164
    .line 165
    invoke-virtual {p0, v10}, Lq/i;->findViewById(I)Landroid/view/View;

    .line 166
    .line 167
    .line 168
    move-result-object v10

    .line 169
    check-cast v10, Landroidx/constraintlayout/widget/ConstraintLayout;

    .line 170
    .line 171
    iput-object v10, p0, Lcom/yunpan/appmanage/ui/ActivityDownload;->G:Landroidx/constraintlayout/widget/ConstraintLayout;

    .line 172
    .line 173
    invoke-virtual {v10, v4}, Landroid/view/View;->setVisibility(I)V

    .line 174
    .line 175
    .line 176
    iget-object v10, p0, Lcom/yunpan/appmanage/ui/ActivityDownload;->I:Landroidx/constraintlayout/widget/ConstraintLayout;

    .line 177
    .line 178
    invoke-virtual {v10, v4}, Landroid/view/View;->setVisibility(I)V

    .line 179
    .line 180
    .line 181
    iget-object v10, p0, Lcom/yunpan/appmanage/ui/ActivityDownload;->M:Landroidx/constraintlayout/widget/ConstraintLayout;

    .line 182
    .line 183
    invoke-virtual {v10, v4}, Landroid/view/View;->setVisibility(I)V

    .line 184
    .line 185
    .line 186
    iget-object v10, p0, Lcom/yunpan/appmanage/ui/ActivityDownload;->O:Landroid/widget/TextView;

    .line 187
    .line 188
    invoke-virtual {v10, v4}, Landroid/view/View;->setVisibility(I)V

    .line 189
    .line 190
    .line 191
    iget-object v10, p0, Lcom/yunpan/appmanage/ui/ActivityDownload;->P:Landroidx/constraintlayout/widget/ConstraintLayout;

    .line 192
    .line 193
    invoke-virtual {v10, v4}, Landroid/view/View;->setVisibility(I)V

    .line 194
    .line 195
    .line 196
    iget-object v10, p0, Lcom/yunpan/appmanage/ui/ActivityDownload;->H:Landroid/widget/EditText;

    .line 197
    .line 198
    new-instance v11, Lha/c0;

    .line 199
    .line 200
    invoke-direct {v11, p0, v3}, Lha/c0;-><init>(Landroid/view/KeyEvent$Callback;I)V

    .line 201
    .line 202
    .line 203
    invoke-virtual {v10, v11}, Landroid/view/View;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    .line 204
    .line 205
    .line 206
    new-instance v10, Lx9/t0;

    .line 207
    .line 208
    invoke-direct {v10, v6}, Lx9/t0;-><init>(I)V

    .line 209
    .line 210
    .line 211
    iput-object v10, p0, Lcom/yunpan/appmanage/ui/ActivityDownload;->T:Lx9/t0;

    .line 212
    .line 213
    iget-object v10, p0, Lcom/yunpan/appmanage/ui/ActivityDownload;->E:Lcom/owen/tvrecyclerview/widget/TvRecyclerView;

    .line 214
    .line 215
    new-instance v11, Lcom/owen/tvrecyclerview/widget/V7GridLayoutManager;

    .line 216
    .line 217
    iget-object v12, p0, Lda/g;->A:Lda/g;

    .line 218
    .line 219
    invoke-direct {v11, v12, v2}, Lcom/owen/tvrecyclerview/widget/V7GridLayoutManager;-><init>(Landroid/content/Context;I)V

    .line 220
    .line 221
    .line 222
    invoke-virtual {v10, v11}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 223
    .line 224
    .line 225
    iget-object v10, p0, Lcom/yunpan/appmanage/ui/ActivityDownload;->E:Lcom/owen/tvrecyclerview/widget/TvRecyclerView;

    .line 226
    .line 227
    iget-object v11, p0, Lcom/yunpan/appmanage/ui/ActivityDownload;->T:Lx9/t0;

    .line 228
    .line 229
    invoke-virtual {v10, v11}, Lcom/owen/tvrecyclerview/widget/TvRecyclerView;->setAdapter(Landroidx/recyclerview/widget/m1;)V

    .line 230
    .line 231
    .line 232
    iget-object v10, p0, Lcom/yunpan/appmanage/ui/ActivityDownload;->T:Lx9/t0;

    .line 233
    .line 234
    new-instance v11, Lcom/yunpan/appmanage/bean/NameIcoTypeBean;

    .line 235
    .line 236
    const v12, 0x7f0802a4

    .line 237
    .line 238
    .line 239
    const-string v13, "\u6253\u5f00"

    .line 240
    .line 241
    invoke-direct {v11, v12, v13, v7}, Lcom/yunpan/appmanage/bean/NameIcoTypeBean;-><init>(ILjava/lang/String;I)V

    .line 242
    .line 243
    .line 244
    invoke-virtual {v10, v11}, Lc6/g;->q(Ljava/lang/Object;)V

    .line 245
    .line 246
    .line 247
    iget-object v10, p0, Lcom/yunpan/appmanage/ui/ActivityDownload;->T:Lx9/t0;

    .line 248
    .line 249
    new-instance v11, Lcom/yunpan/appmanage/bean/NameIcoTypeBean;

    .line 250
    .line 251
    const v12, 0x7f080293

    .line 252
    .line 253
    .line 254
    const-string v13, "\u5386\u53f2"

    .line 255
    .line 256
    invoke-direct {v11, v12, v13, v7}, Lcom/yunpan/appmanage/bean/NameIcoTypeBean;-><init>(ILjava/lang/String;I)V

    .line 257
    .line 258
    .line 259
    invoke-virtual {v10, v11}, Lc6/g;->q(Ljava/lang/Object;)V

    .line 260
    .line 261
    .line 262
    iget-object v10, p0, Lcom/yunpan/appmanage/ui/ActivityDownload;->T:Lx9/t0;

    .line 263
    .line 264
    new-instance v11, Lcom/yunpan/appmanage/bean/NameIcoTypeBean;

    .line 265
    .line 266
    const v12, 0x7f0802d0

    .line 267
    .line 268
    .line 269
    const-string v13, "\u626b\u7801"

    .line 270
    .line 271
    invoke-direct {v11, v12, v13, v7}, Lcom/yunpan/appmanage/bean/NameIcoTypeBean;-><init>(ILjava/lang/String;I)V

    .line 272
    .line 273
    .line 274
    invoke-virtual {v10, v11}, Lc6/g;->q(Ljava/lang/Object;)V

    .line 275
    .line 276
    .line 277
    iget-object v10, p0, Lcom/yunpan/appmanage/ui/ActivityDownload;->T:Lx9/t0;

    .line 278
    .line 279
    new-instance v11, Lcom/yunpan/appmanage/bean/NameIcoTypeBean;

    .line 280
    .line 281
    const v12, 0x7f0801f5

    .line 282
    .line 283
    .line 284
    const-string v13, "\u63a8\u9001"

    .line 285
    .line 286
    invoke-direct {v11, v12, v13, v7}, Lcom/yunpan/appmanage/bean/NameIcoTypeBean;-><init>(ILjava/lang/String;I)V

    .line 287
    .line 288
    .line 289
    invoke-virtual {v10, v11}, Lc6/g;->q(Ljava/lang/Object;)V

    .line 290
    .line 291
    .line 292
    iget-object v10, p0, Lcom/yunpan/appmanage/ui/ActivityDownload;->T:Lx9/t0;

    .line 293
    .line 294
    new-instance v11, Lcom/yunpan/appmanage/bean/NameIcoTypeBean;

    .line 295
    .line 296
    const v12, 0x7f080127

    .line 297
    .line 298
    .line 299
    const-string v13, "\u8bf4\u660e"

    .line 300
    .line 301
    invoke-direct {v11, v12, v13, v7}, Lcom/yunpan/appmanage/bean/NameIcoTypeBean;-><init>(ILjava/lang/String;I)V

    .line 302
    .line 303
    .line 304
    invoke-virtual {v10, v11}, Lc6/g;->q(Ljava/lang/Object;)V

    .line 305
    .line 306
    .line 307
    iget-object v10, p0, Lcom/yunpan/appmanage/ui/ActivityDownload;->T:Lx9/t0;

    .line 308
    .line 309
    new-instance v11, Lcom/yunpan/appmanage/bean/NameIcoTypeBean;

    .line 310
    .line 311
    const v12, 0x7f08025b

    .line 312
    .line 313
    .line 314
    const-string v13, "\u8fd4\u56de"

    .line 315
    .line 316
    invoke-direct {v11, v12, v13, v7}, Lcom/yunpan/appmanage/bean/NameIcoTypeBean;-><init>(ILjava/lang/String;I)V

    .line 317
    .line 318
    .line 319
    invoke-virtual {v10, v11}, Lc6/g;->q(Ljava/lang/Object;)V

    .line 320
    .line 321
    .line 322
    iget-object v10, p0, Lcom/yunpan/appmanage/ui/ActivityDownload;->E:Lcom/owen/tvrecyclerview/widget/TvRecyclerView;

    .line 323
    .line 324
    invoke-virtual {v10, v6}, Lcom/owen/tvrecyclerview/widget/TvRecyclerView;->setSelection(I)V

    .line 325
    .line 326
    .line 327
    iget-object v10, p0, Lcom/yunpan/appmanage/ui/ActivityDownload;->T:Lx9/t0;

    .line 328
    .line 329
    new-instance v11, Lua/n1;

    .line 330
    .line 331
    invoke-direct {v11, p0, v1}, Lua/n1;-><init>(Lcom/yunpan/appmanage/ui/ActivityDownload;I)V

    .line 332
    .line 333
    .line 334
    iput-object v11, v10, Lc6/g;->e:Lc6/e;

    .line 335
    .line 336
    iget-object v10, p0, Lcom/yunpan/appmanage/ui/ActivityDownload;->E:Lcom/owen/tvrecyclerview/widget/TvRecyclerView;

    .line 337
    .line 338
    new-instance v11, Lua/s1;

    .line 339
    .line 340
    invoke-direct {v11, p0}, Lua/s1;-><init>(Lcom/yunpan/appmanage/ui/ActivityDownload;)V

    .line 341
    .line 342
    .line 343
    invoke-virtual {v10, v11}, Lcom/owen/tvrecyclerview/widget/TvRecyclerView;->setOnItemListener(Lcom/owen/tvrecyclerview/widget/TvRecyclerView$OnItemListener;)V

    .line 344
    .line 345
    .line 346
    iget-object v10, p0, Lcom/yunpan/appmanage/ui/ActivityDownload;->E:Lcom/owen/tvrecyclerview/widget/TvRecyclerView;

    .line 347
    .line 348
    new-instance v11, Lua/n1;

    .line 349
    .line 350
    const/4 v12, 0x4

    .line 351
    invoke-direct {v11, p0, v12}, Lua/n1;-><init>(Lcom/yunpan/appmanage/ui/ActivityDownload;I)V

    .line 352
    .line 353
    .line 354
    invoke-virtual {v10, v11}, Lcom/owen/tvrecyclerview/widget/TvRecyclerView;->setOnInBorderKeyEventListener(Lcom/owen/tvrecyclerview/widget/TvRecyclerView$OnInBorderKeyEventListener;)V

    .line 355
    .line 356
    .line 357
    new-instance v10, Lba/q;

    .line 358
    .line 359
    invoke-direct {v10}, Lba/q;-><init>()V

    .line 360
    .line 361
    .line 362
    iput-object v10, p0, Lcom/yunpan/appmanage/ui/ActivityDownload;->R:Lba/q;

    .line 363
    .line 364
    iget-object v10, p0, Lcom/yunpan/appmanage/ui/ActivityDownload;->C:Lcom/owen/tvrecyclerview/widget/TvRecyclerView;

    .line 365
    .line 366
    new-instance v11, Lcom/owen/tvrecyclerview/widget/V7LinearLayoutManager;

    .line 367
    .line 368
    iget-object v12, p0, Lda/g;->A:Lda/g;

    .line 369
    .line 370
    invoke-direct {v11, v12, v6, v6}, Lcom/owen/tvrecyclerview/widget/V7LinearLayoutManager;-><init>(Landroid/content/Context;IZ)V

    .line 371
    .line 372
    .line 373
    invoke-virtual {v10, v11}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 374
    .line 375
    .line 376
    iget-object v10, p0, Lcom/yunpan/appmanage/ui/ActivityDownload;->C:Lcom/owen/tvrecyclerview/widget/TvRecyclerView;

    .line 377
    .line 378
    iget-object v11, p0, Lcom/yunpan/appmanage/ui/ActivityDownload;->R:Lba/q;

    .line 379
    .line 380
    invoke-virtual {v10, v11}, Lcom/owen/tvrecyclerview/widget/TvRecyclerView;->setAdapter(Landroidx/recyclerview/widget/m1;)V

    .line 381
    .line 382
    .line 383
    iget-object v10, p0, Lcom/yunpan/appmanage/ui/ActivityDownload;->R:Lba/q;

    .line 384
    .line 385
    new-instance v11, Lua/n1;

    .line 386
    .line 387
    invoke-direct {v11, p0, v5}, Lua/n1;-><init>(Lcom/yunpan/appmanage/ui/ActivityDownload;I)V

    .line 388
    .line 389
    .line 390
    iput-object v11, v10, Lc6/g;->e:Lc6/e;

    .line 391
    .line 392
    new-instance v5, Lx9/p5;

    .line 393
    .line 394
    invoke-direct {v5}, Lx9/p5;-><init>()V

    .line 395
    .line 396
    .line 397
    iput-object v5, p0, Lcom/yunpan/appmanage/ui/ActivityDownload;->S:Lx9/p5;

    .line 398
    .line 399
    iget-object v5, p0, Lcom/yunpan/appmanage/ui/ActivityDownload;->D:Lcom/owen/tvrecyclerview/widget/TvRecyclerView;

    .line 400
    .line 401
    new-instance v10, Lcom/owen/tvrecyclerview/widget/V7LinearLayoutManager;

    .line 402
    .line 403
    iget-object v11, p0, Lda/g;->A:Lda/g;

    .line 404
    .line 405
    invoke-direct {v10, v11, v7, v6}, Lcom/owen/tvrecyclerview/widget/V7LinearLayoutManager;-><init>(Landroid/content/Context;IZ)V

    .line 406
    .line 407
    .line 408
    invoke-virtual {v5, v10}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 409
    .line 410
    .line 411
    iget-object v5, p0, Lcom/yunpan/appmanage/ui/ActivityDownload;->D:Lcom/owen/tvrecyclerview/widget/TvRecyclerView;

    .line 412
    .line 413
    iget-object v10, p0, Lcom/yunpan/appmanage/ui/ActivityDownload;->S:Lx9/p5;

    .line 414
    .line 415
    invoke-virtual {v5, v10}, Lcom/owen/tvrecyclerview/widget/TvRecyclerView;->setAdapter(Landroidx/recyclerview/widget/m1;)V

    .line 416
    .line 417
    .line 418
    iget-object v5, p0, Lcom/yunpan/appmanage/ui/ActivityDownload;->D:Lcom/owen/tvrecyclerview/widget/TvRecyclerView;

    .line 419
    .line 420
    invoke-virtual {v5, v7}, Landroid/view/View;->setFocusableInTouchMode(Z)V

    .line 421
    .line 422
    .line 423
    iget-object v5, p0, Lcom/yunpan/appmanage/ui/ActivityDownload;->D:Lcom/owen/tvrecyclerview/widget/TvRecyclerView;

    .line 424
    .line 425
    invoke-virtual {v5, v1}, Lcom/owen/tvrecyclerview/widget/TvRecyclerView;->setLoadMoreBeforehandCount(I)V

    .line 426
    .line 427
    .line 428
    iget-object v1, p0, Lcom/yunpan/appmanage/ui/ActivityDownload;->D:Lcom/owen/tvrecyclerview/widget/TvRecyclerView;

    .line 429
    .line 430
    new-instance v5, Lua/n1;

    .line 431
    .line 432
    const/16 v10, 0xa

    .line 433
    .line 434
    invoke-direct {v5, p0, v10}, Lua/n1;-><init>(Lcom/yunpan/appmanage/ui/ActivityDownload;I)V

    .line 435
    .line 436
    .line 437
    invoke-virtual {v1, v5}, Lcom/owen/tvrecyclerview/widget/TvRecyclerView;->setOnLoadMoreListener(Lcom/owen/tvrecyclerview/widget/TvRecyclerView$OnLoadMoreListener;)V

    .line 438
    .line 439
    .line 440
    iget-object v1, p0, Lcom/yunpan/appmanage/ui/ActivityDownload;->S:Lx9/p5;

    .line 441
    .line 442
    new-instance v5, Lua/n1;

    .line 443
    .line 444
    invoke-direct {v5, p0, v6}, Lua/n1;-><init>(Lcom/yunpan/appmanage/ui/ActivityDownload;I)V

    .line 445
    .line 446
    .line 447
    iput-object v5, v1, Lc6/g;->e:Lc6/e;

    .line 448
    .line 449
    iget-object v1, p0, Lcom/yunpan/appmanage/ui/ActivityDownload;->D:Lcom/owen/tvrecyclerview/widget/TvRecyclerView;

    .line 450
    .line 451
    new-instance v5, Lua/u1;

    .line 452
    .line 453
    invoke-direct {v5}, Lua/u1;-><init>()V

    .line 454
    .line 455
    .line 456
    invoke-virtual {v1, v5}, Lcom/owen/tvrecyclerview/widget/TvRecyclerView;->setOnItemListener(Lcom/owen/tvrecyclerview/widget/TvRecyclerView$OnItemListener;)V

    .line 457
    .line 458
    .line 459
    iget-object v1, p0, Lcom/yunpan/appmanage/ui/ActivityDownload;->D:Lcom/owen/tvrecyclerview/widget/TvRecyclerView;

    .line 460
    .line 461
    new-instance v5, Lua/n1;

    .line 462
    .line 463
    invoke-direct {v5, p0, v7}, Lua/n1;-><init>(Lcom/yunpan/appmanage/ui/ActivityDownload;I)V

    .line 464
    .line 465
    .line 466
    invoke-virtual {v1, v5}, Lcom/owen/tvrecyclerview/widget/TvRecyclerView;->setOnInBorderKeyEventListener(Lcom/owen/tvrecyclerview/widget/TvRecyclerView$OnInBorderKeyEventListener;)V

    .line 467
    .line 468
    .line 469
    new-instance v1, Lx9/t5;

    .line 470
    .line 471
    invoke-direct {v1}, Lx9/t5;-><init>()V

    .line 472
    .line 473
    .line 474
    iput-object v1, p0, Lcom/yunpan/appmanage/ui/ActivityDownload;->V:Lx9/t5;

    .line 475
    .line 476
    invoke-virtual {p0, v8}, Lq/i;->findViewById(I)Landroid/view/View;

    .line 477
    .line 478
    .line 479
    move-result-object v1

    .line 480
    check-cast v1, Lcom/owen/tvrecyclerview/widget/TvRecyclerView;

    .line 481
    .line 482
    iput-object v1, p0, Lcom/yunpan/appmanage/ui/ActivityDownload;->F:Lcom/owen/tvrecyclerview/widget/TvRecyclerView;

    .line 483
    .line 484
    new-instance v5, Lcom/owen/tvrecyclerview/widget/V7LinearLayoutManager;

    .line 485
    .line 486
    iget-object v8, p0, Lda/g;->A:Lda/g;

    .line 487
    .line 488
    invoke-direct {v5, v8, v7, v6}, Lcom/owen/tvrecyclerview/widget/V7LinearLayoutManager;-><init>(Landroid/content/Context;IZ)V

    .line 489
    .line 490
    .line 491
    invoke-virtual {v1, v5}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 492
    .line 493
    .line 494
    iget-object v1, p0, Lcom/yunpan/appmanage/ui/ActivityDownload;->F:Lcom/owen/tvrecyclerview/widget/TvRecyclerView;

    .line 495
    .line 496
    iget-object v5, p0, Lcom/yunpan/appmanage/ui/ActivityDownload;->V:Lx9/t5;

    .line 497
    .line 498
    invoke-virtual {v1, v5}, Lcom/owen/tvrecyclerview/widget/TvRecyclerView;->setAdapter(Landroidx/recyclerview/widget/m1;)V

    .line 499
    .line 500
    .line 501
    iget-object v1, p0, Lcom/yunpan/appmanage/ui/ActivityDownload;->V:Lx9/t5;

    .line 502
    .line 503
    new-instance v5, Lua/n1;

    .line 504
    .line 505
    const/4 v8, 0x5

    .line 506
    invoke-direct {v5, p0, v8}, Lua/n1;-><init>(Lcom/yunpan/appmanage/ui/ActivityDownload;I)V

    .line 507
    .line 508
    .line 509
    iput-object v5, v1, Lc6/g;->e:Lc6/e;

    .line 510
    .line 511
    iget-object v1, p0, Lcom/yunpan/appmanage/ui/ActivityDownload;->F:Lcom/owen/tvrecyclerview/widget/TvRecyclerView;

    .line 512
    .line 513
    new-instance v5, Lua/v1;

    .line 514
    .line 515
    invoke-direct {v5}, Lua/v1;-><init>()V

    .line 516
    .line 517
    .line 518
    invoke-virtual {v1, v5}, Lcom/owen/tvrecyclerview/widget/TvRecyclerView;->setOnItemListener(Lcom/owen/tvrecyclerview/widget/TvRecyclerView$OnItemListener;)V

    .line 519
    .line 520
    .line 521
    iget-object v1, p0, Lcom/yunpan/appmanage/ui/ActivityDownload;->F:Lcom/owen/tvrecyclerview/widget/TvRecyclerView;

    .line 522
    .line 523
    new-instance v5, Lua/n1;

    .line 524
    .line 525
    invoke-direct {v5, p0, v2}, Lua/n1;-><init>(Lcom/yunpan/appmanage/ui/ActivityDownload;I)V

    .line 526
    .line 527
    .line 528
    invoke-virtual {v1, v5}, Lcom/owen/tvrecyclerview/widget/TvRecyclerView;->setOnInBorderKeyEventListener(Lcom/owen/tvrecyclerview/widget/TvRecyclerView$OnInBorderKeyEventListener;)V

    .line 529
    .line 530
    .line 531
    new-instance v1, Lx9/j2;

    .line 532
    .line 533
    invoke-direct {v1}, Lx9/j2;-><init>()V

    .line 534
    .line 535
    .line 536
    iput-object v1, p0, Lcom/yunpan/appmanage/ui/ActivityDownload;->X:Lx9/j2;

    .line 537
    .line 538
    invoke-virtual {p0, v9}, Lq/i;->findViewById(I)Landroid/view/View;

    .line 539
    .line 540
    .line 541
    move-result-object v1

    .line 542
    check-cast v1, Lcom/owen/tvrecyclerview/widget/TvRecyclerView;

    .line 543
    .line 544
    iput-object v1, p0, Lcom/yunpan/appmanage/ui/ActivityDownload;->N:Lcom/owen/tvrecyclerview/widget/TvRecyclerView;

    .line 545
    .line 546
    new-instance v2, Lcom/owen/tvrecyclerview/widget/V7LinearLayoutManager;

    .line 547
    .line 548
    iget-object v5, p0, Lda/g;->A:Lda/g;

    .line 549
    .line 550
    invoke-direct {v2, v5, v7, v6}, Lcom/owen/tvrecyclerview/widget/V7LinearLayoutManager;-><init>(Landroid/content/Context;IZ)V

    .line 551
    .line 552
    .line 553
    invoke-virtual {v1, v2}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 554
    .line 555
    .line 556
    iget-object v1, p0, Lcom/yunpan/appmanage/ui/ActivityDownload;->N:Lcom/owen/tvrecyclerview/widget/TvRecyclerView;

    .line 557
    .line 558
    iget-object v2, p0, Lcom/yunpan/appmanage/ui/ActivityDownload;->X:Lx9/j2;

    .line 559
    .line 560
    invoke-virtual {v1, v2}, Lcom/owen/tvrecyclerview/widget/TvRecyclerView;->setAdapter(Landroidx/recyclerview/widget/m1;)V

    .line 561
    .line 562
    .line 563
    sget-object v1, Lcom/yunpan/appmanage/util/c0;->a:Lcom/yunpan/appmanage/util/d0;

    .line 564
    .line 565
    invoke-virtual {v1}, Lcom/yunpan/appmanage/util/d0;->e()Ljava/util/ArrayList;

    .line 566
    .line 567
    .line 568
    move-result-object v1

    .line 569
    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    .line 570
    .line 571
    .line 572
    move-result v2

    .line 573
    if-nez v2, :cond_1

    .line 574
    .line 575
    iget-object v2, p0, Lcom/yunpan/appmanage/ui/ActivityDownload;->H:Landroid/widget/EditText;

    .line 576
    .line 577
    invoke-static {v7, v1}, Lta/q;->h(ILjava/util/ArrayList;)Ljava/lang/Object;

    .line 578
    .line 579
    .line 580
    move-result-object v5

    .line 581
    check-cast v5, Ljava/lang/CharSequence;

    .line 582
    .line 583
    invoke-virtual {v2, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 584
    .line 585
    .line 586
    iget-object v2, p0, Lcom/yunpan/appmanage/ui/ActivityDownload;->H:Landroid/widget/EditText;

    .line 587
    .line 588
    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    .line 589
    .line 590
    .line 591
    move-result-object v5

    .line 592
    invoke-interface {v5}, Ljava/lang/CharSequence;->length()I

    .line 593
    .line 594
    .line 595
    move-result v5

    .line 596
    invoke-virtual {v2, v5}, Landroid/widget/EditText;->setSelection(I)V

    .line 597
    .line 598
    .line 599
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    .line 600
    .line 601
    .line 602
    move-result v2

    .line 603
    add-int/lit8 v5, v2, -0x1

    .line 604
    .line 605
    :goto_0
    if-ltz v5, :cond_1

    .line 606
    .line 607
    if-le v2, v0, :cond_0

    .line 608
    .line 609
    add-int/lit8 v6, v2, -0x32

    .line 610
    .line 611
    if-ge v5, v6, :cond_0

    .line 612
    .line 613
    sget-object v6, Lcom/yunpan/appmanage/util/c0;->a:Lcom/yunpan/appmanage/util/d0;

    .line 614
    .line 615
    invoke-virtual {v6, v5}, Lcom/yunpan/appmanage/util/d0;->b(I)V

    .line 616
    .line 617
    .line 618
    goto :goto_1

    .line 619
    :cond_0
    iget-object v6, p0, Lcom/yunpan/appmanage/ui/ActivityDownload;->X:Lx9/j2;

    .line 620
    .line 621
    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 622
    .line 623
    .line 624
    move-result-object v7

    .line 625
    check-cast v7, Ljava/lang/String;

    .line 626
    .line 627
    invoke-virtual {v6, v7}, Lc6/g;->q(Ljava/lang/Object;)V

    .line 628
    .line 629
    .line 630
    :goto_1
    add-int/lit8 v5, v5, -0x1

    .line 631
    .line 632
    goto :goto_0

    .line 633
    :cond_1
    iget-object v0, p0, Lcom/yunpan/appmanage/ui/ActivityDownload;->X:Lx9/j2;

    .line 634
    .line 635
    new-instance v1, Lua/n1;

    .line 636
    .line 637
    const/4 v2, 0x7

    .line 638
    invoke-direct {v1, p0, v2}, Lua/n1;-><init>(Lcom/yunpan/appmanage/ui/ActivityDownload;I)V

    .line 639
    .line 640
    .line 641
    iput-object v1, v0, Lc6/g;->e:Lc6/e;

    .line 642
    .line 643
    new-instance v1, Lua/n1;

    .line 644
    .line 645
    invoke-direct {v1, p0, v4}, Lua/n1;-><init>(Lcom/yunpan/appmanage/ui/ActivityDownload;I)V

    .line 646
    .line 647
    .line 648
    iput-object v1, v0, Lc6/g;->f:Lc6/f;

    .line 649
    .line 650
    iget-object v0, p0, Lcom/yunpan/appmanage/ui/ActivityDownload;->N:Lcom/owen/tvrecyclerview/widget/TvRecyclerView;

    .line 651
    .line 652
    new-instance v1, Lua/p1;

    .line 653
    .line 654
    invoke-direct {v1}, Lua/p1;-><init>()V

    .line 655
    .line 656
    .line 657
    invoke-virtual {v0, v1}, Lcom/owen/tvrecyclerview/widget/TvRecyclerView;->setOnItemListener(Lcom/owen/tvrecyclerview/widget/TvRecyclerView$OnItemListener;)V

    .line 658
    .line 659
    .line 660
    iget-object v0, p0, Lcom/yunpan/appmanage/ui/ActivityDownload;->N:Lcom/owen/tvrecyclerview/widget/TvRecyclerView;

    .line 661
    .line 662
    new-instance v1, Lua/n1;

    .line 663
    .line 664
    invoke-direct {v1, p0, v3}, Lua/n1;-><init>(Lcom/yunpan/appmanage/ui/ActivityDownload;I)V

    .line 665
    .line 666
    .line 667
    invoke-virtual {v0, v1}, Lcom/owen/tvrecyclerview/widget/TvRecyclerView;->setOnInBorderKeyEventListener(Lcom/owen/tvrecyclerview/widget/TvRecyclerView$OnInBorderKeyEventListener;)V

    .line 668
    .line 669
    .line 670
    invoke-static {}, Lkh/e;->b()Lkh/e;

    .line 671
    .line 672
    .line 673
    move-result-object v0

    .line 674
    invoke-virtual {v0, p0}, Lkh/e;->e(Ljava/lang/Object;)Z

    .line 675
    .line 676
    .line 677
    move-result v0

    .line 678
    if-nez v0, :cond_2

    .line 679
    .line 680
    invoke-static {}, Lkh/e;->b()Lkh/e;

    .line 681
    .line 682
    .line 683
    move-result-object v0

    .line 684
    invoke-virtual {v0, p0}, Lkh/e;->j(Ljava/lang/Object;)V

    .line 685
    .line 686
    .line 687
    :cond_2
    invoke-virtual {p0}, Landroidx/activity/m;->a()Landroidx/activity/w;

    .line 688
    .line 689
    .line 690
    move-result-object v0

    .line 691
    new-instance v1, Landroidx/fragment/app/u0;

    .line 692
    .line 693
    invoke-direct {v1, p0}, Landroidx/fragment/app/u0;-><init>(Lcom/yunpan/appmanage/ui/ActivityDownload;)V

    .line 694
    .line 695
    .line 696
    invoke-virtual {v0, p0, v1}, Landroidx/activity/w;->a(Landroidx/lifecycle/t;Landroidx/fragment/app/u0;)V

    .line 697
    .line 698
    .line 699
    return-void
.end method
