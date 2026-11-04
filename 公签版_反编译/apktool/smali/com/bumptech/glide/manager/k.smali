.class public final Lcom/bumptech/glide/manager/k;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/Handler$Callback;


# static fields
.field public static final e:Lm7/e;


# instance fields
.field public volatile a:Lcom/bumptech/glide/p;

.field public final b:Lm7/e;

.field public final c:Lcom/bumptech/glide/manager/f;

.field public final d:La2/g1;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lm7/e;

    .line 2
    .line 3
    const/16 v1, 0x11

    .line 4
    .line 5
    invoke-direct {v0, v1}, Lm7/e;-><init>(I)V

    .line 6
    .line 7
    .line 8
    sput-object v0, Lcom/bumptech/glide/manager/k;->e:Lm7/e;

    .line 9
    .line 10
    return-void
.end method

.method public constructor <init>(Lm7/e;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    if-eqz p1, :cond_0

    .line 5
    .line 6
    goto :goto_0

    .line 7
    :cond_0
    sget-object p1, Lcom/bumptech/glide/manager/k;->e:Lm7/e;

    .line 8
    .line 9
    :goto_0
    iput-object p1, p0, Lcom/bumptech/glide/manager/k;->b:Lm7/e;

    .line 10
    .line 11
    new-instance v0, La2/g1;

    .line 12
    .line 13
    invoke-direct {v0, p1}, La2/g1;-><init>(Lm7/e;)V

    .line 14
    .line 15
    .line 16
    iput-object v0, p0, Lcom/bumptech/glide/manager/k;->d:La2/g1;

    .line 17
    .line 18
    sget-boolean p1, Lo5/v;->f:Z

    .line 19
    .line 20
    if-eqz p1, :cond_2

    .line 21
    .line 22
    sget-boolean p1, Lo5/v;->e:Z

    .line 23
    .line 24
    if-nez p1, :cond_1

    .line 25
    .line 26
    goto :goto_1

    .line 27
    :cond_1
    new-instance p1, Lcom/bumptech/glide/manager/e;

    .line 28
    .line 29
    invoke-direct {p1}, Lcom/bumptech/glide/manager/e;-><init>()V

    .line 30
    .line 31
    .line 32
    goto :goto_2

    .line 33
    :cond_2
    :goto_1
    new-instance p1, Lgf/g;

    .line 34
    .line 35
    const/16 v0, 0x10

    .line 36
    .line 37
    invoke-direct {p1, v0}, Lgf/g;-><init>(I)V

    .line 38
    .line 39
    .line 40
    :goto_2
    iput-object p1, p0, Lcom/bumptech/glide/manager/k;->c:Lcom/bumptech/glide/manager/f;

    .line 41
    .line 42
    return-void
.end method

.method public static a(Landroid/content/Context;)Landroid/app/Activity;
    .locals 1

    .line 1
    instance-of v0, p0, Landroid/app/Activity;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    check-cast p0, Landroid/app/Activity;

    .line 6
    .line 7
    return-object p0

    .line 8
    :cond_0
    instance-of v0, p0, Landroid/content/ContextWrapper;

    .line 9
    .line 10
    if-eqz v0, :cond_1

    .line 11
    .line 12
    check-cast p0, Landroid/content/ContextWrapper;

    .line 13
    .line 14
    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getBaseContext()Landroid/content/Context;

    .line 15
    .line 16
    .line 17
    move-result-object p0

    .line 18
    invoke-static {p0}, Lcom/bumptech/glide/manager/k;->a(Landroid/content/Context;)Landroid/app/Activity;

    .line 19
    .line 20
    .line 21
    move-result-object p0

    .line 22
    return-object p0

    .line 23
    :cond_1
    const/4 p0, 0x0

    .line 24
    return-object p0
.end method


# virtual methods
.method public final b(Landroid/content/Context;)Lcom/bumptech/glide/p;
    .locals 7

    .line 1
    if-eqz p1, :cond_b

    .line 2
    .line 3
    sget-object v0, La6/q;->a:[C

    .line 4
    .line 5
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    .line 10
    .line 11
    .line 12
    move-result-object v1

    .line 13
    if-ne v0, v1, :cond_8

    .line 14
    .line 15
    instance-of v0, p1, Landroid/app/Application;

    .line 16
    .line 17
    if-nez v0, :cond_8

    .line 18
    .line 19
    instance-of v0, p1, Landroidx/fragment/app/j0;

    .line 20
    .line 21
    if-eqz v0, :cond_7

    .line 22
    .line 23
    check-cast p1, Landroidx/fragment/app/j0;

    .line 24
    .line 25
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    .line 26
    .line 27
    .line 28
    move-result-object v0

    .line 29
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    .line 30
    .line 31
    .line 32
    move-result-object v1

    .line 33
    const/4 v2, 0x0

    .line 34
    const/4 v3, 0x1

    .line 35
    if-ne v0, v1, :cond_0

    .line 36
    .line 37
    const/4 v0, 0x1

    .line 38
    goto :goto_0

    .line 39
    :cond_0
    const/4 v0, 0x0

    .line 40
    :goto_0
    if-nez v0, :cond_1

    .line 41
    .line 42
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    .line 43
    .line 44
    .line 45
    move-result-object p1

    .line 46
    invoke-virtual {p0, p1}, Lcom/bumptech/glide/manager/k;->b(Landroid/content/Context;)Lcom/bumptech/glide/p;

    .line 47
    .line 48
    .line 49
    move-result-object p1

    .line 50
    goto :goto_1

    .line 51
    :cond_1
    invoke-virtual {p1}, Landroid/app/Activity;->isDestroyed()Z

    .line 52
    .line 53
    .line 54
    move-result v0

    .line 55
    if-nez v0, :cond_6

    .line 56
    .line 57
    iget-object v0, p0, Lcom/bumptech/glide/manager/k;->c:Lcom/bumptech/glide/manager/f;

    .line 58
    .line 59
    invoke-interface {v0, p1}, Lcom/bumptech/glide/manager/f;->k(Landroidx/fragment/app/j0;)V

    .line 60
    .line 61
    .line 62
    invoke-static {p1}, Lcom/bumptech/glide/manager/k;->a(Landroid/content/Context;)Landroid/app/Activity;

    .line 63
    .line 64
    .line 65
    move-result-object v0

    .line 66
    if-eqz v0, :cond_2

    .line 67
    .line 68
    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    .line 69
    .line 70
    .line 71
    move-result v0

    .line 72
    if-nez v0, :cond_3

    .line 73
    .line 74
    :cond_2
    const/4 v2, 0x1

    .line 75
    :cond_3
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    .line 76
    .line 77
    .line 78
    move-result-object v0

    .line 79
    invoke-static {v0}, Lcom/bumptech/glide/b;->b(Landroid/content/Context;)Lcom/bumptech/glide/b;

    .line 80
    .line 81
    .line 82
    move-result-object v0

    .line 83
    invoke-virtual {p1}, Landroidx/fragment/app/j0;->p()Landroidx/fragment/app/e1;

    .line 84
    .line 85
    .line 86
    move-result-object v1

    .line 87
    iget-object v3, p0, Lcom/bumptech/glide/manager/k;->d:La2/g1;

    .line 88
    .line 89
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 90
    .line 91
    .line 92
    invoke-static {}, La6/q;->a()V

    .line 93
    .line 94
    .line 95
    iget-object v4, p1, Landroidx/activity/m;->d:Landroidx/lifecycle/v;

    .line 96
    .line 97
    invoke-static {}, La6/q;->a()V

    .line 98
    .line 99
    .line 100
    iget-object v5, v3, La2/g1;->b:Ljava/lang/Object;

    .line 101
    .line 102
    check-cast v5, Ljava/util/HashMap;

    .line 103
    .line 104
    invoke-virtual {v5, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 105
    .line 106
    .line 107
    move-result-object v5

    .line 108
    check-cast v5, Lcom/bumptech/glide/p;

    .line 109
    .line 110
    if-nez v5, :cond_4

    .line 111
    .line 112
    new-instance v5, Lcom/bumptech/glide/manager/LifecycleLifecycle;

    .line 113
    .line 114
    invoke-direct {v5, v4}, Lcom/bumptech/glide/manager/LifecycleLifecycle;-><init>(Landroidx/lifecycle/v;)V

    .line 115
    .line 116
    .line 117
    new-instance v6, Lgf/g;

    .line 118
    .line 119
    invoke-direct {v6, v3, v1}, Lgf/g;-><init>(La2/g1;Landroidx/fragment/app/e1;)V

    .line 120
    .line 121
    .line 122
    iget-object v1, v3, La2/g1;->c:Ljava/lang/Object;

    .line 123
    .line 124
    check-cast v1, Lm7/e;

    .line 125
    .line 126
    invoke-virtual {v1, v0, v5, v6, p1}, Lm7/e;->g(Lcom/bumptech/glide/b;Lcom/bumptech/glide/manager/g;Lcom/bumptech/glide/manager/l;Landroid/content/Context;)Lcom/bumptech/glide/p;

    .line 127
    .line 128
    .line 129
    move-result-object p1

    .line 130
    iget-object v0, v3, La2/g1;->b:Ljava/lang/Object;

    .line 131
    .line 132
    check-cast v0, Ljava/util/HashMap;

    .line 133
    .line 134
    invoke-virtual {v0, v4, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 135
    .line 136
    .line 137
    new-instance v0, Lcom/bumptech/glide/manager/i;

    .line 138
    .line 139
    invoke-direct {v0, v3, v4}, Lcom/bumptech/glide/manager/i;-><init>(La2/g1;Landroidx/lifecycle/v;)V

    .line 140
    .line 141
    .line 142
    invoke-virtual {v5, v0}, Lcom/bumptech/glide/manager/LifecycleLifecycle;->h(Lcom/bumptech/glide/manager/h;)V

    .line 143
    .line 144
    .line 145
    if-eqz v2, :cond_5

    .line 146
    .line 147
    invoke-virtual {p1}, Lcom/bumptech/glide/p;->k()V

    .line 148
    .line 149
    .line 150
    goto :goto_1

    .line 151
    :cond_4
    move-object p1, v5

    .line 152
    :cond_5
    :goto_1
    return-object p1

    .line 153
    :cond_6
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 154
    .line 155
    const-string v0, "You cannot start a load for a destroyed activity"

    .line 156
    .line 157
    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 158
    .line 159
    .line 160
    throw p1

    .line 161
    :cond_7
    instance-of v0, p1, Landroid/content/ContextWrapper;

    .line 162
    .line 163
    if-eqz v0, :cond_8

    .line 164
    .line 165
    move-object v0, p1

    .line 166
    check-cast v0, Landroid/content/ContextWrapper;

    .line 167
    .line 168
    invoke-virtual {v0}, Landroid/content/ContextWrapper;->getBaseContext()Landroid/content/Context;

    .line 169
    .line 170
    .line 171
    move-result-object v1

    .line 172
    invoke-virtual {v1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    .line 173
    .line 174
    .line 175
    move-result-object v1

    .line 176
    if-eqz v1, :cond_8

    .line 177
    .line 178
    invoke-virtual {v0}, Landroid/content/ContextWrapper;->getBaseContext()Landroid/content/Context;

    .line 179
    .line 180
    .line 181
    move-result-object p1

    .line 182
    invoke-virtual {p0, p1}, Lcom/bumptech/glide/manager/k;->b(Landroid/content/Context;)Lcom/bumptech/glide/p;

    .line 183
    .line 184
    .line 185
    move-result-object p1

    .line 186
    return-object p1

    .line 187
    :cond_8
    iget-object v0, p0, Lcom/bumptech/glide/manager/k;->a:Lcom/bumptech/glide/p;

    .line 188
    .line 189
    if-nez v0, :cond_a

    .line 190
    .line 191
    monitor-enter p0

    .line 192
    :try_start_0
    iget-object v0, p0, Lcom/bumptech/glide/manager/k;->a:Lcom/bumptech/glide/p;

    .line 193
    .line 194
    if-nez v0, :cond_9

    .line 195
    .line 196
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    .line 197
    .line 198
    .line 199
    move-result-object v0

    .line 200
    invoke-static {v0}, Lcom/bumptech/glide/b;->b(Landroid/content/Context;)Lcom/bumptech/glide/b;

    .line 201
    .line 202
    .line 203
    move-result-object v0

    .line 204
    iget-object v1, p0, Lcom/bumptech/glide/manager/k;->b:Lm7/e;

    .line 205
    .line 206
    new-instance v2, Lgf/g;

    .line 207
    .line 208
    const/16 v3, 0xf

    .line 209
    .line 210
    invoke-direct {v2, v3}, Lgf/g;-><init>(I)V

    .line 211
    .line 212
    .line 213
    new-instance v3, Lm7/e;

    .line 214
    .line 215
    const/16 v4, 0x10

    .line 216
    .line 217
    invoke-direct {v3, v4}, Lm7/e;-><init>(I)V

    .line 218
    .line 219
    .line 220
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    .line 221
    .line 222
    .line 223
    move-result-object p1

    .line 224
    invoke-virtual {v1, v0, v2, v3, p1}, Lm7/e;->g(Lcom/bumptech/glide/b;Lcom/bumptech/glide/manager/g;Lcom/bumptech/glide/manager/l;Landroid/content/Context;)Lcom/bumptech/glide/p;

    .line 225
    .line 226
    .line 227
    move-result-object p1

    .line 228
    iput-object p1, p0, Lcom/bumptech/glide/manager/k;->a:Lcom/bumptech/glide/p;

    .line 229
    .line 230
    goto :goto_2

    .line 231
    :catchall_0
    move-exception p1

    .line 232
    goto :goto_3

    .line 233
    :cond_9
    :goto_2
    monitor-exit p0

    .line 234
    goto :goto_4

    .line 235
    :goto_3
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 236
    throw p1

    .line 237
    :cond_a
    :goto_4
    iget-object p1, p0, Lcom/bumptech/glide/manager/k;->a:Lcom/bumptech/glide/p;

    .line 238
    .line 239
    return-object p1

    .line 240
    :cond_b
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 241
    .line 242
    const-string v0, "You cannot start a load on a null Context"

    .line 243
    .line 244
    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 245
    .line 246
    .line 247
    throw p1
.end method

.method public final handleMessage(Landroid/os/Message;)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method
