.class public final Lcom/bumptech/glide/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/ComponentCallbacks2;


# static fields
.field public static volatile h:Lcom/bumptech/glide/b;

.field public static volatile i:Z


# instance fields
.field public final a:Li5/c;

.field public final b:Lj5/g;

.field public final c:Lcom/bumptech/glide/f;

.field public final d:La2/k1;

.field public final e:Lcom/bumptech/glide/manager/k;

.field public final f:Lm7/e;

.field public final g:Ljava/util/ArrayList;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lh5/n;Lj5/g;Li5/c;La2/k1;Lcom/bumptech/glide/manager/k;Lm7/e;ILgf/g;La0/e;Ljava/util/List;Ljava/util/List;Lq4/a;Lcom/bumptech/glide/h;)V
    .locals 13

    move-object v0, p0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, v0, Lcom/bumptech/glide/b;->g:Ljava/util/ArrayList;

    move-object/from16 v1, p4

    .line 3
    iput-object v1, v0, Lcom/bumptech/glide/b;->a:Li5/c;

    move-object/from16 v3, p5

    .line 4
    iput-object v3, v0, Lcom/bumptech/glide/b;->d:La2/k1;

    move-object/from16 v1, p3

    .line 5
    iput-object v1, v0, Lcom/bumptech/glide/b;->b:Lj5/g;

    move-object/from16 v1, p6

    .line 6
    iput-object v1, v0, Lcom/bumptech/glide/b;->e:Lcom/bumptech/glide/manager/k;

    move-object/from16 v1, p7

    .line 7
    iput-object v1, v0, Lcom/bumptech/glide/b;->f:Lm7/e;

    .line 8
    new-instance v4, Landroidx/room/i;

    move-object/from16 v1, p12

    move-object/from16 v2, p13

    invoke-direct {v4, p0, v1, v2}, Landroidx/room/i;-><init>(Lcom/bumptech/glide/b;Ljava/util/List;Lq4/a;)V

    .line 9
    new-instance v5, Ls9/a;

    const/16 v1, 0x17

    const/4 v2, 0x0

    invoke-direct {v5, v1, v2}, Ls9/a;-><init>(IZ)V

    .line 10
    new-instance v12, Lcom/bumptech/glide/f;

    move-object v1, v12

    move-object v2, p1

    move-object/from16 v3, p5

    move-object/from16 v6, p9

    move-object/from16 v7, p10

    move-object/from16 v8, p11

    move-object v9, p2

    move-object/from16 v10, p14

    move/from16 v11, p8

    invoke-direct/range {v1 .. v11}, Lcom/bumptech/glide/f;-><init>(Landroid/content/Context;La2/k1;Landroidx/room/i;Ls9/a;Lgf/g;La0/e;Ljava/util/List;Lh5/n;Lcom/bumptech/glide/h;I)V

    iput-object v12, v0, Lcom/bumptech/glide/b;->c:Lcom/bumptech/glide/f;

    return-void
.end method

.method public static b(Landroid/content/Context;)Lcom/bumptech/glide/b;
    .locals 6

    .line 1
    const/4 v0, 0x0

    .line 2
    const/4 v1, 0x1

    .line 3
    sget-object v2, Lcom/bumptech/glide/b;->h:Lcom/bumptech/glide/b;

    .line 4
    .line 5
    if-nez v2, :cond_2

    .line 6
    .line 7
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    .line 8
    .line 9
    .line 10
    move-result-object v2

    .line 11
    :try_start_0
    const-class v3, Lcom/bumptech/glide/GeneratedAppGlideModuleImpl;

    .line 12
    .line 13
    new-array v4, v1, [Ljava/lang/Class;

    .line 14
    .line 15
    const-class v5, Landroid/content/Context;

    .line 16
    .line 17
    aput-object v5, v4, v0

    .line 18
    .line 19
    invoke-virtual {v3, v4}, Ljava/lang/Class;->getDeclaredConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    .line 20
    .line 21
    .line 22
    move-result-object v3

    .line 23
    invoke-virtual {v2}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    .line 24
    .line 25
    .line 26
    move-result-object v2

    .line 27
    new-array v4, v1, [Ljava/lang/Object;

    .line 28
    .line 29
    aput-object v2, v4, v0

    .line 30
    .line 31
    invoke-virtual {v3, v4}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    .line 32
    .line 33
    .line 34
    move-result-object v2

    .line 35
    check-cast v2, Lcom/bumptech/glide/GeneratedAppGlideModule;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_4
    .catch Ljava/lang/InstantiationException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_0

    .line 36
    .line 37
    goto :goto_4

    .line 38
    :catch_0
    move-exception p0

    .line 39
    goto :goto_0

    .line 40
    :catch_1
    move-exception p0

    .line 41
    goto :goto_1

    .line 42
    :catch_2
    move-exception p0

    .line 43
    goto :goto_2

    .line 44
    :catch_3
    move-exception p0

    .line 45
    goto :goto_3

    .line 46
    :goto_0
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 47
    .line 48
    const-string v1, "GeneratedAppGlideModuleImpl is implemented incorrectly. If you\'ve manually implemented this class, remove your implementation. The Annotation processor will generate a correct implementation."

    .line 49
    .line 50
    invoke-direct {v0, v1, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 51
    .line 52
    .line 53
    throw v0

    .line 54
    :goto_1
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 55
    .line 56
    const-string v1, "GeneratedAppGlideModuleImpl is implemented incorrectly. If you\'ve manually implemented this class, remove your implementation. The Annotation processor will generate a correct implementation."

    .line 57
    .line 58
    invoke-direct {v0, v1, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 59
    .line 60
    .line 61
    throw v0

    .line 62
    :goto_2
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 63
    .line 64
    const-string v1, "GeneratedAppGlideModuleImpl is implemented incorrectly. If you\'ve manually implemented this class, remove your implementation. The Annotation processor will generate a correct implementation."

    .line 65
    .line 66
    invoke-direct {v0, v1, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 67
    .line 68
    .line 69
    throw v0

    .line 70
    :goto_3
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 71
    .line 72
    const-string v1, "GeneratedAppGlideModuleImpl is implemented incorrectly. If you\'ve manually implemented this class, remove your implementation. The Annotation processor will generate a correct implementation."

    .line 73
    .line 74
    invoke-direct {v0, v1, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 75
    .line 76
    .line 77
    throw v0

    .line 78
    :catch_4
    const/4 v2, 0x0

    .line 79
    :goto_4
    const-class v3, Lcom/bumptech/glide/b;

    .line 80
    .line 81
    monitor-enter v3

    .line 82
    :try_start_1
    sget-object v4, Lcom/bumptech/glide/b;->h:Lcom/bumptech/glide/b;

    .line 83
    .line 84
    if-nez v4, :cond_1

    .line 85
    .line 86
    sget-boolean v4, Lcom/bumptech/glide/b;->i:Z

    .line 87
    .line 88
    if-nez v4, :cond_0

    .line 89
    .line 90
    sput-boolean v1, Lcom/bumptech/glide/b;->i:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 91
    .line 92
    :try_start_2
    invoke-static {p0, v2}, Lcom/bumptech/glide/b;->c(Landroid/content/Context;Lcom/bumptech/glide/GeneratedAppGlideModule;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 93
    .line 94
    .line 95
    :try_start_3
    sput-boolean v0, Lcom/bumptech/glide/b;->i:Z

    .line 96
    .line 97
    goto :goto_5

    .line 98
    :catchall_0
    move-exception p0

    .line 99
    sput-boolean v0, Lcom/bumptech/glide/b;->i:Z

    .line 100
    .line 101
    throw p0

    .line 102
    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    .line 103
    .line 104
    const-string v0, "Glide has been called recursively, this is probably an internal library error!"

    .line 105
    .line 106
    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 107
    .line 108
    .line 109
    throw p0

    .line 110
    :cond_1
    :goto_5
    monitor-exit v3

    .line 111
    goto :goto_6

    .line 112
    :catchall_1
    move-exception p0

    .line 113
    monitor-exit v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 114
    throw p0

    .line 115
    :cond_2
    :goto_6
    sget-object p0, Lcom/bumptech/glide/b;->h:Lcom/bumptech/glide/b;

    .line 116
    .line 117
    return-object p0
.end method

.method public static c(Landroid/content/Context;Lcom/bumptech/glide/GeneratedAppGlideModule;)V
    .locals 25

    .line 1
    move-object/from16 v13, p1

    .line 2
    .line 3
    new-instance v0, Lcom/bumptech/glide/e;

    .line 4
    .line 5
    invoke-direct {v0}, Lcom/bumptech/glide/e;-><init>()V

    .line 6
    .line 7
    .line 8
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    .line 9
    .line 10
    .line 11
    move-result-object v15

    .line 12
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    .line 13
    .line 14
    .line 15
    if-eqz v13, :cond_0

    .line 16
    .line 17
    invoke-virtual/range {p1 .. p1}, Lq4/a;->F()V

    .line 18
    .line 19
    .line 20
    :cond_0
    new-instance v12, Ljava/util/ArrayList;

    .line 21
    .line 22
    invoke-direct {v12}, Ljava/util/ArrayList;-><init>()V

    .line 23
    .line 24
    .line 25
    const/4 v1, 0x0

    .line 26
    const/4 v2, 0x2

    .line 27
    :try_start_0
    invoke-virtual {v15}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 28
    .line 29
    .line 30
    move-result-object v3

    .line 31
    invoke-virtual {v15}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    .line 32
    .line 33
    .line 34
    move-result-object v4

    .line 35
    const/16 v5, 0x80

    .line 36
    .line 37
    invoke-virtual {v3, v4, v5}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    .line 38
    .line 39
    .line 40
    move-result-object v3

    .line 41
    if-eqz v3, :cond_4

    .line 42
    .line 43
    iget-object v4, v3, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    .line 44
    .line 45
    if-nez v4, :cond_1

    .line 46
    .line 47
    goto :goto_1

    .line 48
    :cond_1
    const-string v4, "ManifestParser"

    .line 49
    .line 50
    invoke-static {v4, v2}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    .line 51
    .line 52
    .line 53
    move-result v4

    .line 54
    if-eqz v4, :cond_2

    .line 55
    .line 56
    iget-object v4, v3, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    .line 57
    .line 58
    if-eqz v4, :cond_2

    .line 59
    .line 60
    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 61
    .line 62
    .line 63
    :cond_2
    iget-object v4, v3, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    .line 64
    .line 65
    invoke-virtual {v4}, Landroid/os/Bundle;->keySet()Ljava/util/Set;

    .line 66
    .line 67
    .line 68
    move-result-object v4

    .line 69
    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 70
    .line 71
    .line 72
    move-result-object v4

    .line 73
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    .line 74
    .line 75
    .line 76
    move-result v5

    .line 77
    if-eqz v5, :cond_4

    .line 78
    .line 79
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 80
    .line 81
    .line 82
    move-result-object v5

    .line 83
    check-cast v5, Ljava/lang/String;

    .line 84
    .line 85
    const-string v6, "GlideModule"

    .line 86
    .line 87
    iget-object v7, v3, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    .line 88
    .line 89
    invoke-virtual {v7, v5}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    .line 90
    .line 91
    .line 92
    move-result-object v7

    .line 93
    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 94
    .line 95
    .line 96
    move-result v6

    .line 97
    if-nez v6, :cond_3

    .line 98
    .line 99
    goto :goto_0

    .line 100
    :cond_3
    invoke-static {v5}, Lqf/c;->Q(Ljava/lang/String;)V

    .line 101
    .line 102
    .line 103
    throw v1
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 104
    :catch_0
    nop

    .line 105
    :cond_4
    :goto_1
    if-eqz v13, :cond_6

    .line 106
    .line 107
    invoke-virtual/range {p1 .. p1}, Lcom/bumptech/glide/GeneratedAppGlideModule;->d0()Ljava/util/Set;

    .line 108
    .line 109
    .line 110
    move-result-object v3

    .line 111
    invoke-interface {v3}, Ljava/util/Set;->isEmpty()Z

    .line 112
    .line 113
    .line 114
    move-result v3

    .line 115
    if-nez v3, :cond_6

    .line 116
    .line 117
    invoke-virtual/range {p1 .. p1}, Lcom/bumptech/glide/GeneratedAppGlideModule;->d0()Ljava/util/Set;

    .line 118
    .line 119
    .line 120
    invoke-interface {v12}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 121
    .line 122
    .line 123
    move-result-object v3

    .line 124
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    .line 125
    .line 126
    .line 127
    move-result v4

    .line 128
    if-nez v4, :cond_5

    .line 129
    .line 130
    goto :goto_2

    .line 131
    :cond_5
    invoke-static {v3}, Ll2/z;->d(Ljava/util/Iterator;)Ljava/lang/ClassCastException;

    .line 132
    .line 133
    .line 134
    move-result-object v0

    .line 135
    throw v0

    .line 136
    :cond_6
    :goto_2
    const-string v3, "Glide"

    .line 137
    .line 138
    const/4 v4, 0x3

    .line 139
    invoke-static {v3, v4}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    .line 140
    .line 141
    .line 142
    move-result v3

    .line 143
    if-eqz v3, :cond_8

    .line 144
    .line 145
    invoke-interface {v12}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 146
    .line 147
    .line 148
    move-result-object v3

    .line 149
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    .line 150
    .line 151
    .line 152
    move-result v4

    .line 153
    if-nez v4, :cond_7

    .line 154
    .line 155
    goto :goto_3

    .line 156
    :cond_7
    invoke-static {v3}, Ll2/z;->d(Ljava/util/Iterator;)Ljava/lang/ClassCastException;

    .line 157
    .line 158
    .line 159
    move-result-object v0

    .line 160
    throw v0

    .line 161
    :cond_8
    :goto_3
    if-eqz v13, :cond_9

    .line 162
    .line 163
    invoke-virtual/range {p1 .. p1}, Lcom/bumptech/glide/GeneratedAppGlideModule;->e0()Lm7/e;

    .line 164
    .line 165
    .line 166
    move-result-object v1

    .line 167
    :cond_9
    iput-object v1, v0, Lcom/bumptech/glide/e;->n:Lm7/e;

    .line 168
    .line 169
    invoke-interface {v12}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 170
    .line 171
    .line 172
    move-result-object v1

    .line 173
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 174
    .line 175
    .line 176
    move-result v3

    .line 177
    if-nez v3, :cond_1d

    .line 178
    .line 179
    if-eqz v13, :cond_a

    .line 180
    .line 181
    invoke-virtual {v13, v15, v0}, Lq4/a;->b(Landroid/content/Context;Lcom/bumptech/glide/e;)V

    .line 182
    .line 183
    .line 184
    :cond_a
    iget-object v1, v0, Lcom/bumptech/glide/e;->g:Lk5/d;

    .line 185
    .line 186
    const/4 v3, 0x4

    .line 187
    const/4 v4, 0x0

    .line 188
    if-nez v1, :cond_d

    .line 189
    .line 190
    new-instance v1, Lk5/a;

    .line 191
    .line 192
    invoke-direct {v1}, Lk5/a;-><init>()V

    .line 193
    .line 194
    .line 195
    sget v5, Lk5/d;->c:I

    .line 196
    .line 197
    if-nez v5, :cond_b

    .line 198
    .line 199
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    .line 200
    .line 201
    .line 202
    move-result-object v5

    .line 203
    invoke-virtual {v5}, Ljava/lang/Runtime;->availableProcessors()I

    .line 204
    .line 205
    .line 206
    move-result v5

    .line 207
    invoke-static {v3, v5}, Ljava/lang/Math;->min(II)I

    .line 208
    .line 209
    .line 210
    move-result v5

    .line 211
    sput v5, Lk5/d;->c:I

    .line 212
    .line 213
    :cond_b
    sget v18, Lk5/d;->c:I

    .line 214
    .line 215
    const-string v5, "source"

    .line 216
    .line 217
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 218
    .line 219
    .line 220
    move-result v6

    .line 221
    if-nez v6, :cond_c

    .line 222
    .line 223
    new-instance v6, Ljava/util/concurrent/ThreadPoolExecutor;

    .line 224
    .line 225
    sget-object v21, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    .line 226
    .line 227
    new-instance v22, Ljava/util/concurrent/PriorityBlockingQueue;

    .line 228
    .line 229
    invoke-direct/range {v22 .. v22}, Ljava/util/concurrent/PriorityBlockingQueue;-><init>()V

    .line 230
    .line 231
    .line 232
    new-instance v7, Lk5/b;

    .line 233
    .line 234
    invoke-direct {v7, v1, v5, v4}, Lk5/b;-><init>(Lk5/a;Ljava/lang/String;Z)V

    .line 235
    .line 236
    .line 237
    const-wide/16 v19, 0x0

    .line 238
    .line 239
    move-object/from16 v16, v6

    .line 240
    .line 241
    move/from16 v17, v18

    .line 242
    .line 243
    move-object/from16 v23, v7

    .line 244
    .line 245
    invoke-direct/range {v16 .. v23}, Ljava/util/concurrent/ThreadPoolExecutor;-><init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;Ljava/util/concurrent/ThreadFactory;)V

    .line 246
    .line 247
    .line 248
    new-instance v1, Lk5/d;

    .line 249
    .line 250
    invoke-direct {v1, v6}, Lk5/d;-><init>(Ljava/util/concurrent/ThreadPoolExecutor;)V

    .line 251
    .line 252
    .line 253
    iput-object v1, v0, Lcom/bumptech/glide/e;->g:Lk5/d;

    .line 254
    .line 255
    goto :goto_4

    .line 256
    :cond_c
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 257
    .line 258
    const-string v1, "Name must be non-null and non-empty, but given: source"

    .line 259
    .line 260
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 261
    .line 262
    .line 263
    throw v0

    .line 264
    :cond_d
    :goto_4
    iget-object v1, v0, Lcom/bumptech/glide/e;->h:Lk5/d;

    .line 265
    .line 266
    if-nez v1, :cond_f

    .line 267
    .line 268
    sget v1, Lk5/d;->c:I

    .line 269
    .line 270
    new-instance v1, Lk5/a;

    .line 271
    .line 272
    invoke-direct {v1}, Lk5/a;-><init>()V

    .line 273
    .line 274
    .line 275
    const-string v5, "disk-cache"

    .line 276
    .line 277
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 278
    .line 279
    .line 280
    move-result v6

    .line 281
    if-nez v6, :cond_e

    .line 282
    .line 283
    new-instance v6, Ljava/util/concurrent/ThreadPoolExecutor;

    .line 284
    .line 285
    sget-object v21, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    .line 286
    .line 287
    new-instance v22, Ljava/util/concurrent/PriorityBlockingQueue;

    .line 288
    .line 289
    invoke-direct/range {v22 .. v22}, Ljava/util/concurrent/PriorityBlockingQueue;-><init>()V

    .line 290
    .line 291
    .line 292
    new-instance v7, Lk5/b;

    .line 293
    .line 294
    const/4 v8, 0x1

    .line 295
    invoke-direct {v7, v1, v5, v8}, Lk5/b;-><init>(Lk5/a;Ljava/lang/String;Z)V

    .line 296
    .line 297
    .line 298
    const-wide/16 v19, 0x0

    .line 299
    .line 300
    move-object/from16 v16, v6

    .line 301
    .line 302
    move/from16 v17, v8

    .line 303
    .line 304
    move/from16 v18, v8

    .line 305
    .line 306
    move-object/from16 v23, v7

    .line 307
    .line 308
    invoke-direct/range {v16 .. v23}, Ljava/util/concurrent/ThreadPoolExecutor;-><init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;Ljava/util/concurrent/ThreadFactory;)V

    .line 309
    .line 310
    .line 311
    new-instance v1, Lk5/d;

    .line 312
    .line 313
    invoke-direct {v1, v6}, Lk5/d;-><init>(Ljava/util/concurrent/ThreadPoolExecutor;)V

    .line 314
    .line 315
    .line 316
    iput-object v1, v0, Lcom/bumptech/glide/e;->h:Lk5/d;

    .line 317
    .line 318
    goto :goto_5

    .line 319
    :cond_e
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 320
    .line 321
    const-string v1, "Name must be non-null and non-empty, but given: disk-cache"

    .line 322
    .line 323
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 324
    .line 325
    .line 326
    throw v0

    .line 327
    :cond_f
    :goto_5
    iget-object v1, v0, Lcom/bumptech/glide/e;->o:Lk5/d;

    .line 328
    .line 329
    if-nez v1, :cond_13

    .line 330
    .line 331
    sget v1, Lk5/d;->c:I

    .line 332
    .line 333
    if-nez v1, :cond_10

    .line 334
    .line 335
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    .line 336
    .line 337
    .line 338
    move-result-object v1

    .line 339
    invoke-virtual {v1}, Ljava/lang/Runtime;->availableProcessors()I

    .line 340
    .line 341
    .line 342
    move-result v1

    .line 343
    invoke-static {v3, v1}, Ljava/lang/Math;->min(II)I

    .line 344
    .line 345
    .line 346
    move-result v1

    .line 347
    sput v1, Lk5/d;->c:I

    .line 348
    .line 349
    :cond_10
    sget v1, Lk5/d;->c:I

    .line 350
    .line 351
    const/4 v5, 0x1

    .line 352
    if-lt v1, v3, :cond_11

    .line 353
    .line 354
    const/16 v18, 0x2

    .line 355
    .line 356
    goto :goto_6

    .line 357
    :cond_11
    const/16 v18, 0x1

    .line 358
    .line 359
    :goto_6
    new-instance v1, Lk5/a;

    .line 360
    .line 361
    invoke-direct {v1}, Lk5/a;-><init>()V

    .line 362
    .line 363
    .line 364
    const-string v2, "animation"

    .line 365
    .line 366
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 367
    .line 368
    .line 369
    move-result v3

    .line 370
    if-nez v3, :cond_12

    .line 371
    .line 372
    new-instance v3, Ljava/util/concurrent/ThreadPoolExecutor;

    .line 373
    .line 374
    sget-object v21, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    .line 375
    .line 376
    new-instance v22, Ljava/util/concurrent/PriorityBlockingQueue;

    .line 377
    .line 378
    invoke-direct/range {v22 .. v22}, Ljava/util/concurrent/PriorityBlockingQueue;-><init>()V

    .line 379
    .line 380
    .line 381
    new-instance v6, Lk5/b;

    .line 382
    .line 383
    invoke-direct {v6, v1, v2, v5}, Lk5/b;-><init>(Lk5/a;Ljava/lang/String;Z)V

    .line 384
    .line 385
    .line 386
    const-wide/16 v19, 0x0

    .line 387
    .line 388
    move-object/from16 v16, v3

    .line 389
    .line 390
    move/from16 v17, v18

    .line 391
    .line 392
    move-object/from16 v23, v6

    .line 393
    .line 394
    invoke-direct/range {v16 .. v23}, Ljava/util/concurrent/ThreadPoolExecutor;-><init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;Ljava/util/concurrent/ThreadFactory;)V

    .line 395
    .line 396
    .line 397
    new-instance v1, Lk5/d;

    .line 398
    .line 399
    invoke-direct {v1, v3}, Lk5/d;-><init>(Ljava/util/concurrent/ThreadPoolExecutor;)V

    .line 400
    .line 401
    .line 402
    iput-object v1, v0, Lcom/bumptech/glide/e;->o:Lk5/d;

    .line 403
    .line 404
    goto :goto_7

    .line 405
    :cond_12
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 406
    .line 407
    const-string v1, "Name must be non-null and non-empty, but given: animation"

    .line 408
    .line 409
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 410
    .line 411
    .line 412
    throw v0

    .line 413
    :cond_13
    :goto_7
    iget-object v1, v0, Lcom/bumptech/glide/e;->j:Landroidx/media3/exoplayer/video/k;

    .line 414
    .line 415
    if-nez v1, :cond_14

    .line 416
    .line 417
    new-instance v1, Lj5/h;

    .line 418
    .line 419
    invoke-direct {v1, v15}, Lj5/h;-><init>(Landroid/content/Context;)V

    .line 420
    .line 421
    .line 422
    new-instance v2, Landroidx/media3/exoplayer/video/k;

    .line 423
    .line 424
    invoke-direct {v2, v1}, Landroidx/media3/exoplayer/video/k;-><init>(Lj5/h;)V

    .line 425
    .line 426
    .line 427
    iput-object v2, v0, Lcom/bumptech/glide/e;->j:Landroidx/media3/exoplayer/video/k;

    .line 428
    .line 429
    :cond_14
    iget-object v1, v0, Lcom/bumptech/glide/e;->k:Lm7/e;

    .line 430
    .line 431
    if-nez v1, :cond_15

    .line 432
    .line 433
    new-instance v1, Lm7/e;

    .line 434
    .line 435
    const/16 v2, 0xf

    .line 436
    .line 437
    invoke-direct {v1, v2}, Lm7/e;-><init>(I)V

    .line 438
    .line 439
    .line 440
    iput-object v1, v0, Lcom/bumptech/glide/e;->k:Lm7/e;

    .line 441
    .line 442
    :cond_15
    iget-object v1, v0, Lcom/bumptech/glide/e;->d:Li5/c;

    .line 443
    .line 444
    if-nez v1, :cond_17

    .line 445
    .line 446
    iget-object v1, v0, Lcom/bumptech/glide/e;->j:Landroidx/media3/exoplayer/video/k;

    .line 447
    .line 448
    iget v1, v1, Landroidx/media3/exoplayer/video/k;->a:I

    .line 449
    .line 450
    if-lez v1, :cond_16

    .line 451
    .line 452
    new-instance v2, Li5/g;

    .line 453
    .line 454
    int-to-long v5, v1

    .line 455
    invoke-direct {v2, v5, v6}, Li5/g;-><init>(J)V

    .line 456
    .line 457
    .line 458
    iput-object v2, v0, Lcom/bumptech/glide/e;->d:Li5/c;

    .line 459
    .line 460
    goto :goto_8

    .line 461
    :cond_16
    new-instance v1, Lha/l2;

    .line 462
    .line 463
    const/16 v2, 0xb

    .line 464
    .line 465
    invoke-direct {v1, v2}, Lha/l2;-><init>(I)V

    .line 466
    .line 467
    .line 468
    iput-object v1, v0, Lcom/bumptech/glide/e;->d:Li5/c;

    .line 469
    .line 470
    :cond_17
    :goto_8
    iget-object v1, v0, Lcom/bumptech/glide/e;->e:La2/k1;

    .line 471
    .line 472
    if-nez v1, :cond_18

    .line 473
    .line 474
    new-instance v1, La2/k1;

    .line 475
    .line 476
    iget-object v2, v0, Lcom/bumptech/glide/e;->j:Landroidx/media3/exoplayer/video/k;

    .line 477
    .line 478
    iget v2, v2, Landroidx/media3/exoplayer/video/k;->c:I

    .line 479
    .line 480
    invoke-direct {v1, v2}, La2/k1;-><init>(I)V

    .line 481
    .line 482
    .line 483
    iput-object v1, v0, Lcom/bumptech/glide/e;->e:La2/k1;

    .line 484
    .line 485
    :cond_18
    iget-object v1, v0, Lcom/bumptech/glide/e;->f:Lj5/g;

    .line 486
    .line 487
    if-nez v1, :cond_19

    .line 488
    .line 489
    new-instance v1, Lj5/g;

    .line 490
    .line 491
    iget-object v2, v0, Lcom/bumptech/glide/e;->j:Landroidx/media3/exoplayer/video/k;

    .line 492
    .line 493
    iget v2, v2, Landroidx/media3/exoplayer/video/k;->b:I

    .line 494
    .line 495
    int-to-long v2, v2

    .line 496
    invoke-direct {v1, v2, v3}, Lj5/g;-><init>(J)V

    .line 497
    .line 498
    .line 499
    iput-object v1, v0, Lcom/bumptech/glide/e;->f:Lj5/g;

    .line 500
    .line 501
    :cond_19
    iget-object v1, v0, Lcom/bumptech/glide/e;->i:Landroidx/recyclerview/widget/h;

    .line 502
    .line 503
    if-nez v1, :cond_1a

    .line 504
    .line 505
    new-instance v1, Lj5/f;

    .line 506
    .line 507
    invoke-direct {v1, v15}, Lj5/f;-><init>(Landroid/content/Context;)V

    .line 508
    .line 509
    .line 510
    iput-object v1, v0, Lcom/bumptech/glide/e;->i:Landroidx/recyclerview/widget/h;

    .line 511
    .line 512
    :cond_1a
    iget-object v1, v0, Lcom/bumptech/glide/e;->c:Lh5/n;

    .line 513
    .line 514
    if-nez v1, :cond_1b

    .line 515
    .line 516
    new-instance v1, Lh5/n;

    .line 517
    .line 518
    iget-object v6, v0, Lcom/bumptech/glide/e;->f:Lj5/g;

    .line 519
    .line 520
    iget-object v7, v0, Lcom/bumptech/glide/e;->i:Landroidx/recyclerview/widget/h;

    .line 521
    .line 522
    iget-object v8, v0, Lcom/bumptech/glide/e;->h:Lk5/d;

    .line 523
    .line 524
    iget-object v9, v0, Lcom/bumptech/glide/e;->g:Lk5/d;

    .line 525
    .line 526
    new-instance v10, Lk5/d;

    .line 527
    .line 528
    new-instance v2, Ljava/util/concurrent/ThreadPoolExecutor;

    .line 529
    .line 530
    sget-object v21, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    .line 531
    .line 532
    new-instance v22, Ljava/util/concurrent/SynchronousQueue;

    .line 533
    .line 534
    invoke-direct/range {v22 .. v22}, Ljava/util/concurrent/SynchronousQueue;-><init>()V

    .line 535
    .line 536
    .line 537
    new-instance v3, Lk5/b;

    .line 538
    .line 539
    new-instance v5, Lk5/a;

    .line 540
    .line 541
    invoke-direct {v5}, Lk5/a;-><init>()V

    .line 542
    .line 543
    .line 544
    const-string v11, "source-unlimited"

    .line 545
    .line 546
    invoke-direct {v3, v5, v11, v4}, Lk5/b;-><init>(Lk5/a;Ljava/lang/String;Z)V

    .line 547
    .line 548
    .line 549
    sget-wide v19, Lk5/d;->b:J

    .line 550
    .line 551
    const/16 v17, 0x0

    .line 552
    .line 553
    const v18, 0x7fffffff

    .line 554
    .line 555
    .line 556
    move-object/from16 v16, v2

    .line 557
    .line 558
    move-object/from16 v23, v3

    .line 559
    .line 560
    invoke-direct/range {v16 .. v23}, Ljava/util/concurrent/ThreadPoolExecutor;-><init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;Ljava/util/concurrent/ThreadFactory;)V

    .line 561
    .line 562
    .line 563
    invoke-direct {v10, v2}, Lk5/d;-><init>(Ljava/util/concurrent/ThreadPoolExecutor;)V

    .line 564
    .line 565
    .line 566
    iget-object v11, v0, Lcom/bumptech/glide/e;->o:Lk5/d;

    .line 567
    .line 568
    move-object v5, v1

    .line 569
    invoke-direct/range {v5 .. v11}, Lh5/n;-><init>(Lj5/g;Landroidx/recyclerview/widget/h;Lk5/d;Lk5/d;Lk5/d;Lk5/d;)V

    .line 570
    .line 571
    .line 572
    iput-object v1, v0, Lcom/bumptech/glide/e;->c:Lh5/n;

    .line 573
    .line 574
    :cond_1b
    iget-object v1, v0, Lcom/bumptech/glide/e;->p:Ljava/util/List;

    .line 575
    .line 576
    if-nez v1, :cond_1c

    .line 577
    .line 578
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    .line 579
    .line 580
    .line 581
    move-result-object v1

    .line 582
    iput-object v1, v0, Lcom/bumptech/glide/e;->p:Ljava/util/List;

    .line 583
    .line 584
    goto :goto_9

    .line 585
    :cond_1c
    invoke-static {v1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    .line 586
    .line 587
    .line 588
    move-result-object v1

    .line 589
    iput-object v1, v0, Lcom/bumptech/glide/e;->p:Ljava/util/List;

    .line 590
    .line 591
    :goto_9
    iget-object v1, v0, Lcom/bumptech/glide/e;->b:Lcom/bumptech/glide/g;

    .line 592
    .line 593
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 594
    .line 595
    .line 596
    new-instance v14, Lcom/bumptech/glide/h;

    .line 597
    .line 598
    invoke-direct {v14, v1}, Lcom/bumptech/glide/h;-><init>(Lcom/bumptech/glide/g;)V

    .line 599
    .line 600
    .line 601
    new-instance v6, Lcom/bumptech/glide/manager/k;

    .line 602
    .line 603
    iget-object v1, v0, Lcom/bumptech/glide/e;->n:Lm7/e;

    .line 604
    .line 605
    invoke-direct {v6, v1}, Lcom/bumptech/glide/manager/k;-><init>(Lm7/e;)V

    .line 606
    .line 607
    .line 608
    new-instance v11, Lcom/bumptech/glide/b;

    .line 609
    .line 610
    iget-object v2, v0, Lcom/bumptech/glide/e;->c:Lh5/n;

    .line 611
    .line 612
    iget-object v3, v0, Lcom/bumptech/glide/e;->f:Lj5/g;

    .line 613
    .line 614
    iget-object v4, v0, Lcom/bumptech/glide/e;->d:Li5/c;

    .line 615
    .line 616
    iget-object v5, v0, Lcom/bumptech/glide/e;->e:La2/k1;

    .line 617
    .line 618
    iget-object v7, v0, Lcom/bumptech/glide/e;->k:Lm7/e;

    .line 619
    .line 620
    iget-object v10, v0, Lcom/bumptech/glide/e;->a:La0/e;

    .line 621
    .line 622
    iget-object v9, v0, Lcom/bumptech/glide/e;->p:Ljava/util/List;

    .line 623
    .line 624
    iget v8, v0, Lcom/bumptech/glide/e;->l:I

    .line 625
    .line 626
    iget-object v1, v0, Lcom/bumptech/glide/e;->m:Lgf/g;

    .line 627
    .line 628
    move-object v0, v11

    .line 629
    move-object/from16 v16, v1

    .line 630
    .line 631
    move-object v1, v15

    .line 632
    move-object/from16 v17, v9

    .line 633
    .line 634
    move-object/from16 v9, v16

    .line 635
    .line 636
    move-object/from16 v24, v11

    .line 637
    .line 638
    move-object/from16 v11, v17

    .line 639
    .line 640
    move-object/from16 v13, p1

    .line 641
    .line 642
    invoke-direct/range {v0 .. v14}, Lcom/bumptech/glide/b;-><init>(Landroid/content/Context;Lh5/n;Lj5/g;Li5/c;La2/k1;Lcom/bumptech/glide/manager/k;Lm7/e;ILgf/g;La0/e;Ljava/util/List;Ljava/util/List;Lq4/a;Lcom/bumptech/glide/h;)V

    .line 643
    .line 644
    .line 645
    move-object/from16 v0, v24

    .line 646
    .line 647
    invoke-virtual {v15, v0}, Landroid/content/Context;->registerComponentCallbacks(Landroid/content/ComponentCallbacks;)V

    .line 648
    .line 649
    .line 650
    sput-object v0, Lcom/bumptech/glide/b;->h:Lcom/bumptech/glide/b;

    .line 651
    .line 652
    return-void

    .line 653
    :cond_1d
    invoke-static {v1}, Ll2/z;->d(Ljava/util/Iterator;)Ljava/lang/ClassCastException;

    .line 654
    .line 655
    .line 656
    move-result-object v0

    .line 657
    goto :goto_b

    .line 658
    :goto_a
    throw v0

    .line 659
    :goto_b
    goto :goto_a
.end method

.method public static f(Landroid/content/Context;)Lcom/bumptech/glide/p;
    .locals 1

    .line 1
    const-string v0, "You cannot start a load on a not yet attached View or a Fragment where getActivity() returns null (which usually occurs when getActivity() is called before the Fragment is attached or after the Fragment is destroyed)."

    .line 2
    .line 3
    invoke-static {p0, v0}, La6/h;->c(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-static {p0}, Lcom/bumptech/glide/b;->b(Landroid/content/Context;)Lcom/bumptech/glide/b;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    iget-object v0, v0, Lcom/bumptech/glide/b;->e:Lcom/bumptech/glide/manager/k;

    .line 11
    .line 12
    invoke-virtual {v0, p0}, Lcom/bumptech/glide/manager/k;->b(Landroid/content/Context;)Lcom/bumptech/glide/p;

    .line 13
    .line 14
    .line 15
    move-result-object p0

    .line 16
    return-object p0
.end method


# virtual methods
.method public final a()V
    .locals 3

    .line 1
    invoke-static {}, La6/q;->a()V

    .line 2
    .line 3
    .line 4
    const-wide/16 v0, 0x0

    .line 5
    .line 6
    iget-object v2, p0, Lcom/bumptech/glide/b;->b:Lj5/g;

    .line 7
    .line 8
    invoke-virtual {v2, v0, v1}, La6/m;->e(J)V

    .line 9
    .line 10
    .line 11
    iget-object v0, p0, Lcom/bumptech/glide/b;->a:Li5/c;

    .line 12
    .line 13
    invoke-interface {v0}, Li5/c;->F()V

    .line 14
    .line 15
    .line 16
    iget-object v0, p0, Lcom/bumptech/glide/b;->d:La2/k1;

    .line 17
    .line 18
    invoke-virtual {v0}, La2/k1;->b()V

    .line 19
    .line 20
    .line 21
    return-void
.end method

.method public final d()V
    .locals 5

    .line 1
    invoke-static {}, La6/q;->a()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lcom/bumptech/glide/b;->b:Lj5/g;

    .line 5
    .line 6
    monitor-enter v0

    .line 7
    :try_start_0
    iget-wide v1, v0, La6/m;->b:J

    .line 8
    .line 9
    long-to-float v1, v1

    .line 10
    const/high16 v2, 0x3f000000    # 0.5f

    .line 11
    .line 12
    mul-float v1, v1, v2

    .line 13
    .line 14
    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    .line 15
    .line 16
    .line 17
    move-result v1

    .line 18
    int-to-long v3, v1

    .line 19
    iput-wide v3, v0, La6/m;->c:J

    .line 20
    .line 21
    invoke-virtual {v0, v3, v4}, La6/m;->e(J)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 22
    .line 23
    .line 24
    monitor-exit v0

    .line 25
    iget-object v0, p0, Lcom/bumptech/glide/b;->a:Li5/c;

    .line 26
    .line 27
    invoke-interface {v0, v2}, Li5/c;->g(F)V

    .line 28
    .line 29
    .line 30
    return-void

    .line 31
    :catchall_0
    move-exception v1

    .line 32
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 33
    throw v1
.end method

.method public final e(Lcom/bumptech/glide/p;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/bumptech/glide/b;->g:Ljava/util/ArrayList;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    iget-object v1, p0, Lcom/bumptech/glide/b;->g:Ljava/util/ArrayList;

    .line 5
    .line 6
    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    .line 7
    .line 8
    .line 9
    move-result v1

    .line 10
    if-eqz v1, :cond_0

    .line 11
    .line 12
    iget-object v1, p0, Lcom/bumptech/glide/b;->g:Ljava/util/ArrayList;

    .line 13
    .line 14
    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 15
    .line 16
    .line 17
    monitor-exit v0

    .line 18
    return-void

    .line 19
    :catchall_0
    move-exception p1

    .line 20
    goto :goto_0

    .line 21
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 22
    .line 23
    const-string v1, "Cannot unregister not yet registered manager"

    .line 24
    .line 25
    invoke-direct {p1, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 26
    .line 27
    .line 28
    throw p1

    .line 29
    :goto_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 30
    throw p1
.end method

.method public final onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 0

    return-void
.end method

.method public final onLowMemory()V
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/bumptech/glide/b;->a()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public final onTrimMemory(I)V
    .locals 3

    .line 1
    invoke-static {}, La6/q;->a()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lcom/bumptech/glide/b;->g:Ljava/util/ArrayList;

    .line 5
    .line 6
    monitor-enter v0

    .line 7
    :try_start_0
    iget-object v1, p0, Lcom/bumptech/glide/b;->g:Ljava/util/ArrayList;

    .line 8
    .line 9
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 10
    .line 11
    .line 12
    move-result-object v1

    .line 13
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 14
    .line 15
    .line 16
    move-result v2

    .line 17
    if-eqz v2, :cond_0

    .line 18
    .line 19
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 20
    .line 21
    .line 22
    move-result-object v2

    .line 23
    check-cast v2, Lcom/bumptech/glide/p;

    .line 24
    .line 25
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 26
    .line 27
    .line 28
    goto :goto_0

    .line 29
    :catchall_0
    move-exception p1

    .line 30
    goto :goto_1

    .line 31
    :cond_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 32
    iget-object v0, p0, Lcom/bumptech/glide/b;->b:Lj5/g;

    .line 33
    .line 34
    invoke-virtual {v0, p1}, Lj5/g;->f(I)V

    .line 35
    .line 36
    .line 37
    iget-object v0, p0, Lcom/bumptech/glide/b;->a:Li5/c;

    .line 38
    .line 39
    invoke-interface {v0, p1}, Li5/c;->A(I)V

    .line 40
    .line 41
    .line 42
    iget-object v0, p0, Lcom/bumptech/glide/b;->d:La2/k1;

    .line 43
    .line 44
    invoke-virtual {v0, p1}, La2/k1;->j(I)V

    .line 45
    .line 46
    .line 47
    return-void

    .line 48
    :goto_1
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 49
    goto :goto_3

    .line 50
    :goto_2
    throw p1

    .line 51
    :goto_3
    goto :goto_2
.end method
