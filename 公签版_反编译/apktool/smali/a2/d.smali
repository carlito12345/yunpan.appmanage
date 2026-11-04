.class public abstract La2/d;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static a(Landroid/graphics/drawable/Drawable$ConstantState;)Z
    .locals 0

    .line 1
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable$ConstantState;->canApplyTheme()Z

    .line 2
    .line 3
    .line 4
    move-result p0

    .line 5
    return p0
.end method

.method public static b(Lr1/d;)Lu7/y0;
    .locals 6

    .line 1
    sget-object v0, Lu7/g0;->b:Lu7/e0;

    .line 2
    .line 3
    new-instance v0, Lu7/d0;

    .line 4
    .line 5
    invoke-direct {v0}, Lu7/d0;-><init>()V

    .line 6
    .line 7
    .line 8
    sget-object v1, La2/g;->h:Lu7/d1;

    .line 9
    .line 10
    invoke-virtual {v1}, Lu7/d1;->d()Lu7/j0;

    .line 11
    .line 12
    .line 13
    move-result-object v1

    .line 14
    invoke-virtual {v1}, Lu7/b0;->h()Lu7/o1;

    .line 15
    .line 16
    .line 17
    move-result-object v1

    .line 18
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 19
    .line 20
    .line 21
    move-result v2

    .line 22
    if-eqz v2, :cond_2

    .line 23
    .line 24
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 25
    .line 26
    .line 27
    move-result-object v2

    .line 28
    check-cast v2, Ljava/lang/Integer;

    .line 29
    .line 30
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    .line 31
    .line 32
    .line 33
    move-result v3

    .line 34
    sget v4, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 35
    .line 36
    invoke-static {v3}, Lu1/f0;->l(I)I

    .line 37
    .line 38
    .line 39
    move-result v5

    .line 40
    if-ge v4, v5, :cond_1

    .line 41
    .line 42
    goto :goto_0

    .line 43
    :cond_1
    new-instance v4, Landroid/media/AudioFormat$Builder;

    .line 44
    .line 45
    invoke-direct {v4}, Landroid/media/AudioFormat$Builder;-><init>()V

    .line 46
    .line 47
    .line 48
    const/16 v5, 0xc

    .line 49
    .line 50
    invoke-virtual {v4, v5}, Landroid/media/AudioFormat$Builder;->setChannelMask(I)Landroid/media/AudioFormat$Builder;

    .line 51
    .line 52
    .line 53
    move-result-object v4

    .line 54
    invoke-virtual {v4, v3}, Landroid/media/AudioFormat$Builder;->setEncoding(I)Landroid/media/AudioFormat$Builder;

    .line 55
    .line 56
    .line 57
    move-result-object v3

    .line 58
    const v4, 0xbb80

    .line 59
    .line 60
    .line 61
    invoke-virtual {v3, v4}, Landroid/media/AudioFormat$Builder;->setSampleRate(I)Landroid/media/AudioFormat$Builder;

    .line 62
    .line 63
    .line 64
    move-result-object v3

    .line 65
    invoke-virtual {v3}, Landroid/media/AudioFormat$Builder;->build()Landroid/media/AudioFormat;

    .line 66
    .line 67
    .line 68
    move-result-object v3

    .line 69
    invoke-virtual {p0}, Lr1/d;->a()Landroid/media/AudioAttributes;

    .line 70
    .line 71
    .line 72
    move-result-object v4

    .line 73
    invoke-static {v3, v4}, La2/c;->t(Landroid/media/AudioFormat;Landroid/media/AudioAttributes;)Z

    .line 74
    .line 75
    .line 76
    move-result v3

    .line 77
    if-eqz v3, :cond_0

    .line 78
    .line 79
    invoke-virtual {v0, v2}, Lu7/a0;->b(Ljava/lang/Object;)V

    .line 80
    .line 81
    .line 82
    goto :goto_0

    .line 83
    :cond_2
    const/4 p0, 0x2

    .line 84
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 85
    .line 86
    .line 87
    move-result-object p0

    .line 88
    invoke-virtual {v0, p0}, Lu7/a0;->b(Ljava/lang/Object;)V

    .line 89
    .line 90
    .line 91
    invoke-virtual {v0}, Lu7/d0;->g()Lu7/y0;

    .line 92
    .line 93
    .line 94
    move-result-object p0

    .line 95
    return-object p0
.end method

.method public static c(IILr1/d;)I
    .locals 3

    .line 1
    const/16 v0, 0xa

    .line 2
    .line 3
    :goto_0
    if-lez v0, :cond_2

    .line 4
    .line 5
    invoke-static {v0}, Lu1/f0;->n(I)I

    .line 6
    .line 7
    .line 8
    move-result v1

    .line 9
    if-nez v1, :cond_0

    .line 10
    .line 11
    goto :goto_1

    .line 12
    :cond_0
    new-instance v2, Landroid/media/AudioFormat$Builder;

    .line 13
    .line 14
    invoke-direct {v2}, Landroid/media/AudioFormat$Builder;-><init>()V

    .line 15
    .line 16
    .line 17
    invoke-virtual {v2, p0}, Landroid/media/AudioFormat$Builder;->setEncoding(I)Landroid/media/AudioFormat$Builder;

    .line 18
    .line 19
    .line 20
    move-result-object v2

    .line 21
    invoke-virtual {v2, p1}, Landroid/media/AudioFormat$Builder;->setSampleRate(I)Landroid/media/AudioFormat$Builder;

    .line 22
    .line 23
    .line 24
    move-result-object v2

    .line 25
    invoke-virtual {v2, v1}, Landroid/media/AudioFormat$Builder;->setChannelMask(I)Landroid/media/AudioFormat$Builder;

    .line 26
    .line 27
    .line 28
    move-result-object v1

    .line 29
    invoke-virtual {v1}, Landroid/media/AudioFormat$Builder;->build()Landroid/media/AudioFormat;

    .line 30
    .line 31
    .line 32
    move-result-object v1

    .line 33
    invoke-virtual {p2}, Lr1/d;->a()Landroid/media/AudioAttributes;

    .line 34
    .line 35
    .line 36
    move-result-object v2

    .line 37
    invoke-static {v1, v2}, La2/c;->t(Landroid/media/AudioFormat;Landroid/media/AudioAttributes;)Z

    .line 38
    .line 39
    .line 40
    move-result v1

    .line 41
    if-eqz v1, :cond_1

    .line 42
    .line 43
    return v0

    .line 44
    :cond_1
    :goto_1
    add-int/lit8 v0, v0, -0x1

    .line 45
    .line 46
    goto :goto_0

    .line 47
    :cond_2
    const/4 p0, 0x0

    .line 48
    return p0
.end method

.method public static d(Landroid/graphics/drawable/Drawable;Landroid/graphics/Outline;)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Landroid/graphics/drawable/Drawable;->getOutline(Landroid/graphics/Outline;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static e(Landroid/graphics/drawable/Drawable;Landroid/graphics/Outline;)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Landroid/graphics/drawable/Drawable;->getOutline(Landroid/graphics/Outline;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static f(Landroid/content/res/Resources$Theme;)Landroid/content/res/Resources;
    .locals 0

    .line 1
    invoke-virtual {p0}, Landroid/content/res/Resources$Theme;->getResources()Landroid/content/res/Resources;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static g(ILjava/util/List;)V
    .locals 3

    .line 1
    const/4 v0, 0x0

    .line 2
    const/4 v1, 0x1

    .line 3
    if-ge p0, v1, :cond_0

    .line 4
    .line 5
    const/4 p0, 0x0

    .line 6
    :cond_0
    sget-object v2, Lfa/a;->a:Lfa/b;

    .line 7
    .line 8
    invoke-virtual {v2}, Lfa/b;->f()Z

    .line 9
    .line 10
    .line 11
    move-result v2

    .line 12
    if-eqz v2, :cond_1

    .line 13
    .line 14
    invoke-static {p0, p1, v1}, La2/d;->h(ILjava/util/List;Z)V

    .line 15
    .line 16
    .line 17
    goto :goto_0

    .line 18
    :cond_1
    sget-object v1, Lfa/n0;->a:Lfa/o0;

    .line 19
    .line 20
    iget-boolean v1, v1, Lfa/o0;->a:Z

    .line 21
    .line 22
    if-eqz v1, :cond_2

    .line 23
    .line 24
    invoke-static {p0, p1, v0}, La2/d;->h(ILjava/util/List;Z)V

    .line 25
    .line 26
    .line 27
    :goto_0
    return-void

    .line 28
    :cond_2
    new-instance p0, Ljava/lang/Exception;

    .line 29
    .line 30
    const-string p1, "No GJ Jni or shizuku"

    .line 31
    .line 32
    invoke-direct {p0, p1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    .line 33
    .line 34
    .line 35
    throw p0
.end method

.method public static h(ILjava/util/List;Z)V
    .locals 13

    .line 1
    const/4 v0, 0x0

    .line 2
    const/4 v1, 0x1

    .line 3
    const-string v2, "installFlags"

    .line 4
    .line 5
    sget-object v3, Lcom/yunpan/appmanage/base/AppStart;->h:Lcom/yunpan/appmanage/base/AppStart;

    .line 6
    .line 7
    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 8
    .line 9
    .line 10
    move-result-object v3

    .line 11
    sget-object v4, Lfa/a;->a:Lfa/b;

    .line 12
    .line 13
    const/4 v5, 0x0

    .line 14
    if-eqz p2, :cond_1

    .line 15
    .line 16
    :try_start_0
    iget-object v6, v4, Lfa/b;->b:Lcom/yunpan/appmanage/shizuku/IGjAdbFace;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 17
    .line 18
    if-nez v6, :cond_0

    .line 19
    .line 20
    :catch_0
    move-object v6, v5

    .line 21
    goto :goto_1

    .line 22
    :cond_0
    :try_start_1
    new-instance v7, Lcom/gj/server/GjBinderWrapper;

    .line 23
    .line 24
    invoke-virtual {v4}, Lfa/b;->e()Landroid/content/pm/IPackageManager;

    .line 25
    .line 26
    .line 27
    move-result-object v8

    .line 28
    invoke-interface {v8}, Landroid/content/pm/IPackageManager;->getPackageInstaller()Landroid/content/pm/IPackageInstaller;

    .line 29
    .line 30
    .line 31
    move-result-object v8

    .line 32
    invoke-interface {v8}, Landroid/content/pm/IPackageInstaller;->asBinder()Landroid/os/IBinder;

    .line 33
    .line 34
    .line 35
    move-result-object v8

    .line 36
    invoke-direct {v7, v6, v8}, Lcom/gj/server/GjBinderWrapper;-><init>(Lcom/yunpan/appmanage/shizuku/IGjAdbFace;Landroid/os/IBinder;)V

    .line 37
    .line 38
    .line 39
    invoke-static {v7}, Landroid/content/pm/IPackageInstaller$Stub;->asInterface(Landroid/os/IBinder;)Landroid/content/pm/IPackageInstaller;

    .line 40
    .line 41
    .line 42
    move-result-object v6
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 43
    goto :goto_1

    .line 44
    :goto_0
    move-object p2, v5

    .line 45
    goto/16 :goto_e

    .line 46
    .line 47
    :cond_1
    :try_start_2
    sget-object v6, Lfa/n0;->a:Lfa/o0;

    .line 48
    .line 49
    new-instance v7, Lhi/c;

    .line 50
    .line 51
    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 52
    .line 53
    .line 54
    new-instance v6, Lhi/c;

    .line 55
    .line 56
    const-string v8, "package"

    .line 57
    .line 58
    invoke-static {v8}, Lhi/g;->a(Ljava/lang/String;)Landroid/os/IBinder;

    .line 59
    .line 60
    .line 61
    move-result-object v8

    .line 62
    invoke-direct {v6, v8}, Lhi/c;-><init>(Landroid/os/IBinder;)V

    .line 63
    .line 64
    .line 65
    invoke-static {v6}, Landroid/content/pm/IPackageManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/content/pm/IPackageManager;

    .line 66
    .line 67
    .line 68
    move-result-object v6

    .line 69
    invoke-interface {v6}, Landroid/content/pm/IPackageManager;->getPackageInstaller()Landroid/content/pm/IPackageInstaller;

    .line 70
    .line 71
    .line 72
    move-result-object v6

    .line 73
    invoke-interface {v6}, Landroid/content/pm/IPackageInstaller;->asBinder()Landroid/os/IBinder;

    .line 74
    .line 75
    .line 76
    move-result-object v6

    .line 77
    invoke-direct {v7, v6}, Lhi/c;-><init>(Landroid/os/IBinder;)V

    .line 78
    .line 79
    .line 80
    invoke-static {v7}, Landroid/content/pm/IPackageInstaller$Stub;->asInterface(Landroid/os/IBinder;)Landroid/content/pm/IPackageInstaller;

    .line 81
    .line 82
    .line 83
    move-result-object v6

    .line 84
    :goto_1
    sget v7, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 85
    .line 86
    const/16 v8, 0x1f

    .line 87
    .line 88
    if-lt v7, v8, :cond_2

    .line 89
    .line 90
    sget-object v8, Lcom/yunpan/appmanage/base/AppStart;->h:Lcom/yunpan/appmanage/base/AppStart;

    .line 91
    .line 92
    invoke-static {v8}, Landroidx/media3/exoplayer/video/b0;->q(Lcom/yunpan/appmanage/base/AppStart;)Ljava/lang/String;

    .line 93
    .line 94
    .line 95
    move-result-object v8

    .line 96
    goto :goto_2

    .line 97
    :catchall_0
    move-exception p0

    .line 98
    goto :goto_0

    .line 99
    :cond_2
    move-object v8, v5

    .line 100
    :goto_2
    invoke-static {v6, v8, p0}, Lqf/c;->h(Landroid/content/pm/IPackageInstaller;Ljava/lang/String;I)Landroid/content/pm/PackageInstaller;

    .line 101
    .line 102
    .line 103
    move-result-object p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 104
    :try_start_3
    new-instance v8, Landroid/content/pm/PackageInstaller$SessionParams;

    .line 105
    .line 106
    invoke-direct {v8, v1}, Landroid/content/pm/PackageInstaller$SessionParams;-><init>(I)V

    .line 107
    .line 108
    .line 109
    const-class v9, Landroid/content/pm/PackageInstaller$SessionParams;

    .line 110
    .line 111
    invoke-virtual {v9, v2}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    .line 112
    .line 113
    .line 114
    move-result-object v9

    .line 115
    invoke-virtual {v9, v8}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 116
    .line 117
    .line 118
    move-result-object v9

    .line 119
    check-cast v9, Ljava/lang/Integer;

    .line 120
    .line 121
    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    .line 122
    .line 123
    .line 124
    move-result v9

    .line 125
    or-int/lit8 v10, v9, 0x6

    .line 126
    .line 127
    const/16 v11, 0x18

    .line 128
    .line 129
    if-lt v7, v11, :cond_3

    .line 130
    .line 131
    or-int/lit16 v10, v9, 0x86

    .line 132
    .line 133
    :cond_3
    sget-object v9, Lcom/yunpan/appmanage/util/v;->a:Lcom/yunpan/appmanage/util/w;

    .line 134
    .line 135
    iget-boolean v9, v9, Lcom/yunpan/appmanage/util/w;->x:Z

    .line 136
    .line 137
    if-eqz v9, :cond_5

    .line 138
    .line 139
    const/16 v9, 0x17

    .line 140
    .line 141
    if-le v7, v9, :cond_4

    .line 142
    .line 143
    const/16 v9, 0x1d

    .line 144
    .line 145
    if-lt v7, v9, :cond_5

    .line 146
    .line 147
    :cond_4
    const/high16 v7, 0x40000000    # 2.0f

    .line 148
    .line 149
    or-int/2addr v10, v7

    .line 150
    :cond_5
    const-class v7, Landroid/content/pm/PackageInstaller$SessionParams;

    .line 151
    .line 152
    invoke-virtual {v7, v2}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    .line 153
    .line 154
    .line 155
    move-result-object v2

    .line 156
    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 157
    .line 158
    .line 159
    move-result-object v7

    .line 160
    invoke-virtual {v2, v8, v7}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 161
    .line 162
    .line 163
    invoke-virtual {p0, v8}, Landroid/content/pm/PackageInstaller;->createSession(Landroid/content/pm/PackageInstaller$SessionParams;)I

    .line 164
    .line 165
    .line 166
    move-result v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_5

    .line 167
    if-eqz p2, :cond_6

    .line 168
    .line 169
    :try_start_4
    new-instance p2, Lcom/gj/server/GjBinderWrapper;

    .line 170
    .line 171
    iget-object v4, v4, Lfa/b;->b:Lcom/yunpan/appmanage/shizuku/IGjAdbFace;

    .line 172
    .line 173
    invoke-interface {v6, v2}, Landroid/content/pm/IPackageInstaller;->openSession(I)Landroid/content/pm/IPackageInstallerSession;

    .line 174
    .line 175
    .line 176
    move-result-object v6

    .line 177
    invoke-interface {v6}, Landroid/content/pm/IPackageInstallerSession;->asBinder()Landroid/os/IBinder;

    .line 178
    .line 179
    .line 180
    move-result-object v6

    .line 181
    invoke-direct {p2, v4, v6}, Lcom/gj/server/GjBinderWrapper;-><init>(Lcom/yunpan/appmanage/shizuku/IGjAdbFace;Landroid/os/IBinder;)V

    .line 182
    .line 183
    .line 184
    invoke-static {p2}, Landroid/content/pm/IPackageInstallerSession$Stub;->asInterface(Landroid/os/IBinder;)Landroid/content/pm/IPackageInstallerSession;

    .line 185
    .line 186
    .line 187
    move-result-object p2

    .line 188
    goto :goto_4

    .line 189
    :catchall_1
    move-exception p1

    .line 190
    move v0, v2

    .line 191
    :goto_3
    move-object p2, v5

    .line 192
    move-object v5, p0

    .line 193
    move-object p0, p1

    .line 194
    goto/16 :goto_e

    .line 195
    .line 196
    :cond_6
    new-instance p2, Lhi/c;

    .line 197
    .line 198
    invoke-interface {v6, v2}, Landroid/content/pm/IPackageInstaller;->openSession(I)Landroid/content/pm/IPackageInstallerSession;

    .line 199
    .line 200
    .line 201
    move-result-object v4

    .line 202
    invoke-interface {v4}, Landroid/content/pm/IPackageInstallerSession;->asBinder()Landroid/os/IBinder;

    .line 203
    .line 204
    .line 205
    move-result-object v4

    .line 206
    invoke-direct {p2, v4}, Lhi/c;-><init>(Landroid/os/IBinder;)V

    .line 207
    .line 208
    .line 209
    invoke-static {p2}, Landroid/content/pm/IPackageInstallerSession$Stub;->asInterface(Landroid/os/IBinder;)Landroid/content/pm/IPackageInstallerSession;

    .line 210
    .line 211
    .line 212
    move-result-object p2

    .line 213
    :goto_4
    const-class v4, Landroid/content/pm/PackageInstaller$Session;

    .line 214
    .line 215
    new-array v6, v1, [Ljava/lang/Class;

    .line 216
    .line 217
    const-class v7, Landroid/content/pm/IPackageInstallerSession;

    .line 218
    .line 219
    aput-object v7, v6, v0

    .line 220
    .line 221
    invoke-virtual {v4, v6}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    .line 222
    .line 223
    .line 224
    move-result-object v4

    .line 225
    new-array v6, v1, [Ljava/lang/Object;

    .line 226
    .line 227
    aput-object p2, v6, v0

    .line 228
    .line 229
    invoke-virtual {v4, v6}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    .line 230
    .line 231
    .line 232
    move-result-object p2

    .line 233
    check-cast p2, Landroid/content/pm/PackageInstaller$Session;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 234
    .line 235
    :try_start_5
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 236
    .line 237
    .line 238
    move-result-object p1

    .line 239
    const/4 v4, 0x0

    .line 240
    :goto_5
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 241
    .line 242
    .line 243
    move-result v6

    .line 244
    if-eqz v6, :cond_8

    .line 245
    .line 246
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 247
    .line 248
    .line 249
    move-result-object v6

    .line 250
    check-cast v6, Landroid/net/Uri;

    .line 251
    .line 252
    new-instance v7, Ljava/lang/StringBuilder;

    .line 253
    .line 254
    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    .line 255
    .line 256
    .line 257
    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 258
    .line 259
    .line 260
    const-string v8, ".apk"

    .line 261
    .line 262
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 263
    .line 264
    .line 265
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 266
    .line 267
    .line 268
    move-result-object v7

    .line 269
    invoke-virtual {v3, v6}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;

    .line 270
    .line 271
    .line 272
    move-result-object v12

    .line 273
    const-wide/16 v8, 0x0

    .line 274
    .line 275
    const-wide/16 v10, -0x1

    .line 276
    .line 277
    move-object v6, p2

    .line 278
    invoke-virtual/range {v6 .. v11}, Landroid/content/pm/PackageInstaller$Session;->openWrite(Ljava/lang/String;JJ)Ljava/io/OutputStream;

    .line 279
    .line 280
    .line 281
    move-result-object v6

    .line 282
    const/16 v7, 0x2000

    .line 283
    .line 284
    new-array v7, v7, [B
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    .line 285
    .line 286
    :goto_6
    :try_start_6
    invoke-virtual {v12, v7}, Ljava/io/InputStream;->read([B)I

    .line 287
    .line 288
    .line 289
    move-result v8

    .line 290
    if-lez v8, :cond_7

    .line 291
    .line 292
    invoke-virtual {v6, v7, v0, v8}, Ljava/io/OutputStream;->write([BII)V

    .line 293
    .line 294
    .line 295
    invoke-virtual {v6}, Ljava/io/OutputStream;->flush()V

    .line 296
    .line 297
    .line 298
    goto :goto_6

    .line 299
    :catchall_2
    move-exception p1

    .line 300
    goto :goto_9

    .line 301
    :cond_7
    invoke-virtual {p2, v6}, Landroid/content/pm/PackageInstaller$Session;->fsync(Ljava/io/OutputStream;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    .line 302
    .line 303
    .line 304
    :try_start_7
    invoke-virtual {v12}, Ljava/io/InputStream;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_1
    .catchall {:try_start_7 .. :try_end_7} :catchall_3

    .line 305
    .line 306
    .line 307
    goto :goto_7

    .line 308
    :catchall_3
    move-exception p1

    .line 309
    move-object v5, p0

    .line 310
    move-object p0, p1

    .line 311
    move v0, v2

    .line 312
    goto/16 :goto_e

    .line 313
    .line 314
    :catch_1
    move-exception v7

    .line 315
    :try_start_8
    invoke-virtual {v7}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_3

    .line 316
    .line 317
    .line 318
    :goto_7
    :try_start_9
    invoke-virtual {v6}, Ljava/io/OutputStream;->close()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_2
    .catchall {:try_start_9 .. :try_end_9} :catchall_3

    .line 319
    .line 320
    .line 321
    goto :goto_8

    .line 322
    :catch_2
    move-exception v6

    .line 323
    :try_start_a
    invoke-virtual {v6}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_3

    .line 324
    .line 325
    .line 326
    :goto_8
    add-int/2addr v4, v1

    .line 327
    goto :goto_5

    .line 328
    :goto_9
    :try_start_b
    invoke-virtual {v12}, Ljava/io/InputStream;->close()V
    :try_end_b
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_b} :catch_3
    .catchall {:try_start_b .. :try_end_b} :catchall_3

    .line 329
    .line 330
    .line 331
    goto :goto_a

    .line 332
    :catch_3
    move-exception v0

    .line 333
    :try_start_c
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_3

    .line 334
    .line 335
    .line 336
    :goto_a
    :try_start_d
    invoke-virtual {v6}, Ljava/io/OutputStream;->close()V
    :try_end_d
    .catch Ljava/io/IOException; {:try_start_d .. :try_end_d} :catch_4
    .catchall {:try_start_d .. :try_end_d} :catchall_3

    .line 337
    .line 338
    .line 339
    goto :goto_b

    .line 340
    :catch_4
    move-exception v0

    .line 341
    :try_start_e
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 342
    .line 343
    .line 344
    :goto_b
    throw p1

    .line 345
    :cond_8
    new-array p1, v1, [Landroid/content/Intent;

    .line 346
    .line 347
    aput-object v5, p1, v0

    .line 348
    .line 349
    new-instance v3, Ljava/util/concurrent/CountDownLatch;

    .line 350
    .line 351
    invoke-direct {v3, v1}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    .line 352
    .line 353
    .line 354
    new-instance v4, Lma/e;

    .line 355
    .line 356
    invoke-direct {v4, p1, v3}, Lma/e;-><init>([Landroid/content/Intent;Ljava/util/concurrent/CountDownLatch;)V

    .line 357
    .line 358
    .line 359
    new-array v5, v1, [Ljava/lang/Class;

    .line 360
    .line 361
    const-class v6, Landroid/content/IIntentSender;

    .line 362
    .line 363
    aput-object v6, v5, v0

    .line 364
    .line 365
    const-class v6, Landroid/content/IntentSender;

    .line 366
    .line 367
    invoke-virtual {v6, v5}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    .line 368
    .line 369
    .line 370
    move-result-object v5

    .line 371
    new-array v6, v1, [Ljava/lang/Object;

    .line 372
    .line 373
    aput-object v4, v6, v0

    .line 374
    .line 375
    invoke-virtual {v5, v6}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    .line 376
    .line 377
    .line 378
    move-result-object v4

    .line 379
    check-cast v4, Landroid/content/IntentSender;

    .line 380
    .line 381
    invoke-virtual {p2, v4}, Landroid/content/pm/PackageInstaller$Session;->commit(Landroid/content/IntentSender;)V

    .line 382
    .line 383
    .line 384
    sget-object v4, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    .line 385
    .line 386
    const-wide/16 v5, 0x78

    .line 387
    .line 388
    invoke-virtual {v3, v5, v6, v4}, Ljava/util/concurrent/CountDownLatch;->await(JLjava/util/concurrent/TimeUnit;)Z

    .line 389
    .line 390
    .line 391
    move-result v3

    .line 392
    if-eqz v3, :cond_d

    .line 393
    .line 394
    aget-object p1, p1, v0

    .line 395
    .line 396
    const-string v0, "android.content.pm.extra.STATUS"

    .line 397
    .line 398
    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    .line 399
    .line 400
    .line 401
    move-result v0

    .line 402
    const/4 v1, -0x1

    .line 403
    if-eq v0, v1, :cond_a

    .line 404
    .line 405
    if-nez v0, :cond_9

    .line 406
    .line 407
    goto :goto_d

    .line 408
    :cond_9
    const-string v1, "android.content.pm.extra.STATUS_MESSAGE"

    .line 409
    .line 410
    invoke-virtual {p1, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    .line 411
    .line 412
    .line 413
    move-result-object p1

    .line 414
    new-instance v1, Ljava/lang/Exception;

    .line 415
    .line 416
    new-instance v3, Ljava/lang/StringBuilder;

    .line 417
    .line 418
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 419
    .line 420
    .line 421
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 422
    .line 423
    .line 424
    const-string v0, ","

    .line 425
    .line 426
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 427
    .line 428
    .line 429
    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 430
    .line 431
    .line 432
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 433
    .line 434
    .line 435
    move-result-object p1

    .line 436
    invoke-direct {v1, p1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    .line 437
    .line 438
    .line 439
    throw v1

    .line 440
    :cond_a
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_3

    .line 441
    .line 442
    const-string v1, "android.intent.extra.INTENT"

    .line 443
    .line 444
    const/16 v3, 0x21

    .line 445
    .line 446
    if-lt v0, v3, :cond_b

    .line 447
    .line 448
    :try_start_f
    invoke-static {p1}, La2/e;->j(Landroid/content/Intent;)Ljava/lang/Object;

    .line 449
    .line 450
    .line 451
    move-result-object p1

    .line 452
    check-cast p1, Landroid/content/Intent;

    .line 453
    .line 454
    goto :goto_c

    .line 455
    :cond_b
    invoke-virtual {p1, v1}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    .line 456
    .line 457
    .line 458
    move-result-object p1

    .line 459
    check-cast p1, Landroid/content/Intent;

    .line 460
    .line 461
    :goto_c
    if-eqz p1, :cond_c

    .line 462
    .line 463
    const/high16 v0, 0x10000000

    .line 464
    .line 465
    invoke-virtual {p1, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 466
    .line 467
    .line 468
    sget-object v0, Lcom/yunpan/appmanage/base/AppStart;->h:Lcom/yunpan/appmanage/base/AppStart;

    .line 469
    .line 470
    invoke-virtual {v0, p1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_3

    .line 471
    .line 472
    .line 473
    :cond_c
    :goto_d
    :try_start_10
    invoke-virtual {p2}, Landroid/content/pm/PackageInstaller$Session;->close()V
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_4

    .line 474
    .line 475
    .line 476
    :catchall_4
    return-void

    .line 477
    :cond_d
    :try_start_11
    new-instance p1, Ljava/lang/Exception;

    .line 478
    .line 479
    const-string v0, "\u5b89\u88c5\u8d85\u65f6"

    .line 480
    .line 481
    invoke-direct {p1, v0}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    .line 482
    .line 483
    .line 484
    throw p1
    :try_end_11
    .catchall {:try_start_11 .. :try_end_11} :catchall_3

    .line 485
    :catchall_5
    move-exception p1

    .line 486
    goto/16 :goto_3

    .line 487
    .line 488
    :goto_e
    if-eqz v0, :cond_e

    .line 489
    .line 490
    :try_start_12
    invoke-virtual {v5, v0}, Landroid/content/pm/PackageInstaller;->abandonSession(I)V
    :try_end_12
    .catch Ljava/lang/Exception; {:try_start_12 .. :try_end_12} :catch_5

    .line 491
    .line 492
    .line 493
    goto :goto_f

    .line 494
    :catch_5
    nop

    .line 495
    :cond_e
    :goto_f
    if-eqz p2, :cond_f

    .line 496
    .line 497
    :try_start_13
    invoke-virtual {p2}, Landroid/content/pm/PackageInstaller$Session;->close()V
    :try_end_13
    .catchall {:try_start_13 .. :try_end_13} :catchall_6

    .line 498
    .line 499
    .line 500
    :catchall_6
    :cond_f
    goto :goto_11

    .line 501
    :goto_10
    throw p0

    .line 502
    :goto_11
    goto :goto_10
.end method

.method public static i(Landroidx/appcompat/widget/ActionBarContainer;)V
    .locals 0

    .line 1
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->invalidateOutline()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static j()Ljava/lang/Object;
    .locals 1

    .line 1
    new-instance v0, Landroid/media/MediaDescription$Builder;

    .line 2
    .line 3
    invoke-direct {v0}, Landroid/media/MediaDescription$Builder;-><init>()V

    .line 4
    .line 5
    .line 6
    return-object v0
.end method

.method public static k(Lw/q;Landroid/content/res/ColorStateList;)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Landroid/widget/CheckedTextView;->setCheckMarkTintList(Landroid/content/res/ColorStateList;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static l(Lw/q;Landroid/graphics/PorterDuff$Mode;)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Landroid/widget/CheckedTextView;->setCheckMarkTintMode(Landroid/graphics/PorterDuff$Mode;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method
