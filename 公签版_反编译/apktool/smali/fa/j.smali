.class public final Lfa/j;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public a:Lfa/g;

.field public b:Ly9/b;

.field public c:Ljava/net/Socket;

.field public d:Ly9/f;

.field public e:Ly9/g;

.field public f:Z

.field public g:Z

.field public h:Ljava/lang/String;

.field public i:Ly9/c;

.field public j:I

.field public k:I

.field public final l:Lcom/yunpan/appmanage/carsdk/u;


# direct methods
.method public constructor <init>()V
    .locals 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x0

    .line 5
    iput-boolean v0, p0, Lfa/j;->f:Z

    .line 6
    .line 7
    iput-boolean v0, p0, Lfa/j;->g:Z

    .line 8
    .line 9
    const-string v0, ""

    .line 10
    .line 11
    iput-object v0, p0, Lfa/j;->h:Ljava/lang/String;

    .line 12
    .line 13
    const/4 v0, -0x1

    .line 14
    iput v0, p0, Lfa/j;->j:I

    .line 15
    .line 16
    iput v0, p0, Lfa/j;->k:I

    .line 17
    .line 18
    new-instance v0, Lcom/yunpan/appmanage/carsdk/u;

    .line 19
    .line 20
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    .line 21
    .line 22
    .line 23
    move-result-object v1

    .line 24
    const/4 v2, 0x4

    .line 25
    invoke-direct {v0, p0, v1, v2}, Lcom/yunpan/appmanage/carsdk/u;-><init>(Ljava/lang/Object;Landroid/os/Looper;I)V

    .line 26
    .line 27
    .line 28
    iput-object v0, p0, Lfa/j;->l:Lcom/yunpan/appmanage/carsdk/u;

    .line 29
    .line 30
    return-void
.end method


# virtual methods
.method public final a()V
    .locals 7

    .line 1
    sget-object v0, Lcom/yunpan/appmanage/util/v;->a:Lcom/yunpan/appmanage/util/w;

    .line 2
    .line 3
    iget-object v1, v0, Lcom/yunpan/appmanage/util/w;->l:Ljava/lang/String;

    .line 4
    .line 5
    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object v1

    .line 9
    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    .line 10
    .line 11
    .line 12
    move-result v1

    .line 13
    const-string v2, "shell:"

    .line 14
    .line 15
    if-nez v1, :cond_0

    .line 16
    .line 17
    iget-object v1, p0, Lfa/j;->b:Ly9/b;

    .line 18
    .line 19
    new-instance v3, Ljava/lang/StringBuilder;

    .line 20
    .line 21
    invoke-direct {v3, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 22
    .line 23
    .line 24
    iget-object v4, v0, Lcom/yunpan/appmanage/util/w;->l:Ljava/lang/String;

    .line 25
    .line 26
    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    .line 27
    .line 28
    .line 29
    move-result-object v4

    .line 30
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 31
    .line 32
    .line 33
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 34
    .line 35
    .line 36
    move-result-object v3

    .line 37
    invoke-virtual {v1, v3}, Ly9/b;->J(Ljava/lang/String;)Ly9/f;

    .line 38
    .line 39
    .line 40
    const-wide/16 v3, 0x14d

    .line 41
    .line 42
    invoke-static {v3, v4}, Ljava/lang/Thread;->sleep(J)V

    .line 43
    .line 44
    .line 45
    :cond_0
    iget-object v1, p0, Lfa/j;->b:Ly9/b;

    .line 46
    .line 47
    invoke-virtual {v1, v2}, Ly9/b;->J(Ljava/lang/String;)Ly9/f;

    .line 48
    .line 49
    .line 50
    move-result-object v1

    .line 51
    iput-object v1, p0, Lfa/j;->d:Ly9/f;

    .line 52
    .line 53
    iget-object v2, p0, Lfa/j;->c:Ljava/net/Socket;

    .line 54
    .line 55
    if-eqz v2, :cond_7

    .line 56
    .line 57
    iget-boolean v2, v1, Ly9/f;->f:Z

    .line 58
    .line 59
    if-nez v2, :cond_7

    .line 60
    .line 61
    iget-object v1, v1, Ly9/f;->e:Ly9/g;

    .line 62
    .line 63
    iput-object v1, p0, Lfa/j;->e:Ly9/g;

    .line 64
    .line 65
    if-eqz v1, :cond_6

    .line 66
    .line 67
    iget-boolean v1, v0, Lcom/yunpan/appmanage/util/w;->m:Z

    .line 68
    .line 69
    const-wide/16 v2, 0x7d0

    .line 70
    .line 71
    if-eqz v1, :cond_1

    .line 72
    .line 73
    goto :goto_0

    .line 74
    :cond_1
    iget-object v1, v0, Lcom/yunpan/appmanage/util/w;->l:Ljava/lang/String;

    .line 75
    .line 76
    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    .line 77
    .line 78
    .line 79
    move-result v1

    .line 80
    if-eqz v1, :cond_2

    .line 81
    .line 82
    iget-object v1, p0, Lfa/j;->d:Ly9/f;

    .line 83
    .line 84
    const-string v4, "adb36987\n"

    .line 85
    .line 86
    invoke-virtual {v1, v4}, Ly9/f;->A(Ljava/lang/String;)V

    .line 87
    .line 88
    .line 89
    invoke-virtual {p0, v2, v3}, Lfa/j;->f(J)Lfa/i;

    .line 90
    .line 91
    .line 92
    goto :goto_0

    .line 93
    :cond_2
    iget-object v1, p0, Lfa/j;->d:Ly9/f;

    .line 94
    .line 95
    new-instance v4, Ljava/lang/StringBuilder;

    .line 96
    .line 97
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 98
    .line 99
    .line 100
    iget-object v5, v0, Lcom/yunpan/appmanage/util/w;->l:Ljava/lang/String;

    .line 101
    .line 102
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 103
    .line 104
    .line 105
    const-string v5, "\n"

    .line 106
    .line 107
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 108
    .line 109
    .line 110
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 111
    .line 112
    .line 113
    move-result-object v4

    .line 114
    invoke-virtual {v1, v4}, Ly9/f;->A(Ljava/lang/String;)V

    .line 115
    .line 116
    .line 117
    invoke-virtual {p0, v2, v3}, Lfa/j;->f(J)Lfa/i;

    .line 118
    .line 119
    .line 120
    :goto_0
    iget-object v1, p0, Lfa/j;->d:Ly9/f;

    .line 121
    .line 122
    const-string v4, "id\n"

    .line 123
    .line 124
    invoke-virtual {v1, v4}, Ly9/f;->A(Ljava/lang/String;)V

    .line 125
    .line 126
    .line 127
    const-wide/16 v5, 0x378

    .line 128
    .line 129
    invoke-static {v5, v6}, Ljava/lang/Thread;->sleep(J)V

    .line 130
    .line 131
    .line 132
    invoke-virtual {p0}, Lfa/j;->e()V

    .line 133
    .line 134
    .line 135
    iget-object v1, p0, Lfa/j;->d:Ly9/f;

    .line 136
    .line 137
    invoke-virtual {v1, v4}, Ly9/f;->A(Ljava/lang/String;)V

    .line 138
    .line 139
    .line 140
    invoke-virtual {p0, v2, v3}, Lfa/j;->f(J)Lfa/i;

    .line 141
    .line 142
    .line 143
    move-result-object v1

    .line 144
    invoke-virtual {v1}, Lfa/i;->a()Ljava/lang/String;

    .line 145
    .line 146
    .line 147
    move-result-object v1

    .line 148
    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    .line 149
    .line 150
    .line 151
    move-result-object v2

    .line 152
    const-string v3, "tream open actively rejected"

    .line 153
    .line 154
    invoke-virtual {v2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 155
    .line 156
    .line 157
    move-result v2

    .line 158
    if-nez v2, :cond_5

    .line 159
    .line 160
    const-string v2, "uid="

    .line 161
    .line 162
    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 163
    .line 164
    .line 165
    move-result v1

    .line 166
    if-nez v1, :cond_4

    .line 167
    .line 168
    iget-boolean v0, v0, Lcom/yunpan/appmanage/util/w;->G:Z

    .line 169
    .line 170
    if-eqz v0, :cond_3

    .line 171
    .line 172
    const-string v0, "adb shell\u5bc6\u7801\u9519\u8bef"

    .line 173
    .line 174
    invoke-static {v0}, Lcom/hjq/toast/Toaster;->showLong(Ljava/lang/CharSequence;)V

    .line 175
    .line 176
    .line 177
    :cond_3
    new-instance v0, Ljava/lang/Exception;

    .line 178
    .line 179
    const-string v1, "\u53ef\u4ee5\u8fde\u63a5\uff0c\u4f46adb shell\u9700\u8981\u5bc6\u7801"

    .line 180
    .line 181
    invoke-direct {v0, v1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    .line 182
    .line 183
    .line 184
    throw v0

    .line 185
    :cond_4
    return-void

    .line 186
    :cond_5
    iget-object v0, p0, Lfa/j;->d:Ly9/f;

    .line 187
    .line 188
    invoke-virtual {v0}, Ly9/f;->close()V

    .line 189
    .line 190
    .line 191
    const/4 v0, 0x0

    .line 192
    iput-object v0, p0, Lfa/j;->d:Ly9/f;

    .line 193
    .line 194
    new-instance v0, Ljava/lang/Exception;

    .line 195
    .line 196
    const-string v1, "adb shell \u9700\u8981\u5bc6\u7801"

    .line 197
    .line 198
    invoke-direct {v0, v1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    .line 199
    .line 200
    .line 201
    throw v0

    .line 202
    :cond_6
    new-instance v0, Ljava/lang/Exception;

    .line 203
    .line 204
    const-string v1, "\u8fde\u63a5\u8f93\u51fa\u6d41\u51fa\u9519"

    .line 205
    .line 206
    invoke-direct {v0, v1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    .line 207
    .line 208
    .line 209
    throw v0

    .line 210
    :cond_7
    new-instance v0, Ljava/lang/Exception;

    .line 211
    .line 212
    const-string v1, "\u672a\u8fde\u63a5"

    .line 213
    .line 214
    invoke-direct {v0, v1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    .line 215
    .line 216
    .line 217
    throw v0
.end method

.method public final b()V
    .locals 4

    .line 1
    :try_start_0
    sget-object v0, Lcom/yunpan/appmanage/util/k;->u0:Ljava/text/DecimalFormat;

    .line 2
    .line 3
    sget-object v0, Lcom/yunpan/appmanage/util/j;->a:Lcom/yunpan/appmanage/util/k;

    .line 4
    .line 5
    iget-object v1, v0, Lcom/yunpan/appmanage/util/k;->a:Landroid/content/ContextWrapper;

    .line 6
    .line 7
    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 8
    .line 9
    .line 10
    move-result-object v1

    .line 11
    const-string v2, "verifier_verify_adb_installs"

    .line 12
    .line 13
    const/4 v3, 0x0

    .line 14
    invoke-static {v1, v2, v3}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 15
    .line 16
    .line 17
    iget-object v1, v0, Lcom/yunpan/appmanage/util/k;->a:Landroid/content/ContextWrapper;

    .line 18
    .line 19
    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 20
    .line 21
    .line 22
    move-result-object v1

    .line 23
    const-string v2, "package_verifier_enable"

    .line 24
    .line 25
    invoke-static {v1, v2, v3}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 26
    .line 27
    .line 28
    iget-object v0, v0, Lcom/yunpan/appmanage/util/k;->a:Landroid/content/ContextWrapper;

    .line 29
    .line 30
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 31
    .line 32
    .line 33
    move-result-object v0

    .line 34
    const-string v1, "install_non_market_apps"

    .line 35
    .line 36
    const/4 v2, 0x1

    .line 37
    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 38
    .line 39
    .line 40
    goto :goto_0

    .line 41
    :catch_0
    const-string v0, "settings put secure install_non_market_apps 1"

    .line 42
    .line 43
    invoke-virtual {p0, v0}, Lfa/j;->c(Ljava/lang/String;)Lfa/i;

    .line 44
    .line 45
    .line 46
    :goto_0
    const-string v0, "setprop persist.TCL.debug.installapk 1"

    .line 47
    .line 48
    invoke-virtual {p0, v0}, Lfa/j;->c(Ljava/lang/String;)Lfa/i;

    .line 49
    .line 50
    .line 51
    const-string v0, "setprop persist.tcl.installapk.enable 1"

    .line 52
    .line 53
    invoke-virtual {p0, v0}, Lfa/j;->c(Ljava/lang/String;)Lfa/i;

    .line 54
    .line 55
    .line 56
    return-void
.end method

.method public final c(Ljava/lang/String;)Lfa/i;
    .locals 2

    .line 1
    new-instance v0, Lfa/i;

    .line 2
    .line 3
    invoke-direct {v0}, Lfa/i;-><init>()V

    .line 4
    .line 5
    .line 6
    iget-object v1, p0, Lfa/j;->c:Ljava/net/Socket;

    .line 7
    .line 8
    if-eqz v1, :cond_1

    .line 9
    .line 10
    iget-object v1, p0, Lfa/j;->d:Ly9/f;

    .line 11
    .line 12
    if-eqz v1, :cond_1

    .line 13
    .line 14
    iget-boolean v1, v1, Ly9/f;->f:Z

    .line 15
    .line 16
    if-nez v1, :cond_1

    .line 17
    .line 18
    iget-object v1, p0, Lfa/j;->e:Ly9/g;

    .line 19
    .line 20
    if-nez v1, :cond_0

    .line 21
    .line 22
    goto :goto_0

    .line 23
    :cond_0
    :try_start_0
    invoke-virtual {p0, p1}, Lfa/j;->n(Ljava/lang/String;)Lfa/i;

    .line 24
    .line 25
    .line 26
    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 27
    return-object p1

    .line 28
    :catch_0
    const/16 p1, 0x194

    .line 29
    .line 30
    iput p1, v0, Lfa/i;->a:I

    .line 31
    .line 32
    const-string p1, "\u6267\u884c\u5931\u8d25"

    .line 33
    .line 34
    iput-object p1, v0, Lfa/i;->b:Ljava/lang/String;

    .line 35
    .line 36
    iget-object p1, v0, Lfa/i;->c:Ljava/util/ArrayList;

    .line 37
    .line 38
    iget-object v1, v0, Lfa/i;->b:Ljava/lang/String;

    .line 39
    .line 40
    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 41
    .line 42
    .line 43
    return-object v0

    .line 44
    :cond_1
    :goto_0
    const/4 p1, -0x1

    .line 45
    iput p1, v0, Lfa/i;->a:I

    .line 46
    .line 47
    iget-object p1, v0, Lfa/i;->c:Ljava/util/ArrayList;

    .line 48
    .line 49
    const-string v1, "\u672a\u8fde\u63a5adb"

    .line 50
    .line 51
    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 52
    .line 53
    .line 54
    return-object v0
.end method

.method public final d(Z)V
    .locals 2

    .line 1
    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Lfa/j;->g:Z

    .line 3
    .line 4
    if-eqz p1, :cond_0

    .line 5
    .line 6
    :try_start_0
    iget-object p1, p0, Lfa/j;->b:Ly9/b;

    .line 7
    .line 8
    if-eqz p1, :cond_0

    .line 9
    .line 10
    invoke-virtual {p0}, Lfa/j;->i()Z

    .line 11
    .line 12
    .line 13
    move-result p1

    .line 14
    if-eqz p1, :cond_0

    .line 15
    .line 16
    iget-object p1, p0, Lfa/j;->b:Ly9/b;

    .line 17
    .line 18
    const-string v1, "disconnect:"

    .line 19
    .line 20
    invoke-virtual {p1, v1}, Ly9/b;->J(Ljava/lang/String;)Ly9/f;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 21
    .line 22
    .line 23
    goto :goto_0

    .line 24
    :catch_0
    move-exception p1

    .line 25
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 26
    .line 27
    .line 28
    :cond_0
    :goto_0
    const/4 p1, 0x0

    .line 29
    :try_start_1
    iget-object v1, p0, Lfa/j;->d:Ly9/f;

    .line 30
    .line 31
    if-eqz v1, :cond_1

    .line 32
    .line 33
    invoke-virtual {v1}, Ly9/f;->close()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 34
    .line 35
    .line 36
    goto :goto_1

    .line 37
    :catchall_0
    move-exception v0

    .line 38
    goto :goto_f

    .line 39
    :catch_1
    move-exception v1

    .line 40
    goto :goto_2

    .line 41
    :cond_1
    :goto_1
    iput-object p1, p0, Lfa/j;->d:Ly9/f;

    .line 42
    .line 43
    goto :goto_3

    .line 44
    :goto_2
    :try_start_2
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 45
    .line 46
    .line 47
    goto :goto_1

    .line 48
    :goto_3
    :try_start_3
    iget-object v1, p0, Lfa/j;->e:Ly9/g;

    .line 49
    .line 50
    if-eqz v1, :cond_2

    .line 51
    .line 52
    iput-boolean v0, v1, Ly9/g;->a:Z
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 53
    .line 54
    :cond_2
    :goto_4
    iput-object p1, p0, Lfa/j;->e:Ly9/g;

    .line 55
    .line 56
    goto :goto_5

    .line 57
    :catchall_1
    move-exception v0

    .line 58
    goto :goto_e

    .line 59
    :catch_2
    move-exception v0

    .line 60
    :try_start_4
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 61
    .line 62
    .line 63
    goto :goto_4

    .line 64
    :goto_5
    :try_start_5
    iget-object v0, p0, Lfa/j;->b:Ly9/b;

    .line 65
    .line 66
    if-eqz v0, :cond_3

    .line 67
    .line 68
    invoke-virtual {v0}, Ly9/b;->close()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_3
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    .line 69
    .line 70
    .line 71
    goto :goto_6

    .line 72
    :catchall_2
    move-exception v0

    .line 73
    goto :goto_d

    .line 74
    :catch_3
    move-exception v0

    .line 75
    goto :goto_7

    .line 76
    :cond_3
    :goto_6
    iput-object p1, p0, Lfa/j;->b:Ly9/b;

    .line 77
    .line 78
    goto :goto_8

    .line 79
    :goto_7
    :try_start_6
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    .line 80
    .line 81
    .line 82
    goto :goto_6

    .line 83
    :goto_8
    :try_start_7
    iget-object v0, p0, Lfa/j;->c:Ljava/net/Socket;

    .line 84
    .line 85
    if-eqz v0, :cond_4

    .line 86
    .line 87
    invoke-virtual {v0}, Ljava/net/Socket;->close()V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_4
    .catchall {:try_start_7 .. :try_end_7} :catchall_3

    .line 88
    .line 89
    .line 90
    goto :goto_9

    .line 91
    :catchall_3
    move-exception v0

    .line 92
    goto :goto_c

    .line 93
    :catch_4
    move-exception v0

    .line 94
    goto :goto_a

    .line 95
    :cond_4
    :goto_9
    iput-object p1, p0, Lfa/j;->c:Ljava/net/Socket;

    .line 96
    .line 97
    goto :goto_b

    .line 98
    :goto_a
    :try_start_8
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_3

    .line 99
    .line 100
    .line 101
    goto :goto_9

    .line 102
    :goto_b
    sget-object p1, Lfa/h;->a:Lfa/j;

    .line 103
    .line 104
    const-string v0, "\u672a\u8fde\u63a5"

    .line 105
    .line 106
    iput-object v0, p1, Lfa/j;->h:Ljava/lang/String;

    .line 107
    .line 108
    return-void

    .line 109
    :goto_c
    iput-object p1, p0, Lfa/j;->c:Ljava/net/Socket;

    .line 110
    .line 111
    throw v0

    .line 112
    :goto_d
    iput-object p1, p0, Lfa/j;->b:Ly9/b;

    .line 113
    .line 114
    throw v0

    .line 115
    :goto_e
    iput-object p1, p0, Lfa/j;->e:Ly9/g;

    .line 116
    .line 117
    throw v0

    .line 118
    :goto_f
    iput-object p1, p0, Lfa/j;->d:Ly9/f;

    .line 119
    .line 120
    goto :goto_11

    .line 121
    :goto_10
    throw v0

    .line 122
    :goto_11
    goto :goto_10
.end method

.method public final e()V
    .locals 3

    .line 1
    invoke-virtual {p0}, Lfa/j;->o()V

    .line 2
    .line 3
    .line 4
    const/16 v0, 0x1a0a

    .line 5
    .line 6
    :try_start_0
    new-array v0, v0, [B

    .line 7
    .line 8
    const/4 v1, 0x0

    .line 9
    :cond_0
    iget-object v2, p0, Lfa/j;->e:Ly9/g;

    .line 10
    .line 11
    invoke-virtual {v2, v0}, Ljava/io/InputStream;->read([B)I

    .line 12
    .line 13
    .line 14
    move-result v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 15
    if-gtz v2, :cond_1

    .line 16
    .line 17
    add-int/lit8 v1, v1, 0x1

    .line 18
    .line 19
    :cond_1
    const/4 v2, 0x3

    .line 20
    if-lt v1, v2, :cond_0

    .line 21
    .line 22
    :catch_0
    return-void
.end method

.method public final f(J)Lfa/i;
    .locals 15

    .line 1
    move-object v0, p0

    .line 2
    new-instance v1, Lfa/i;

    .line 3
    .line 4
    invoke-direct {v1}, Lfa/i;-><init>()V

    .line 5
    .line 6
    .line 7
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 8
    .line 9
    .line 10
    move-result-wide v2

    .line 11
    new-instance v4, Ljava/io/ByteArrayOutputStream;

    .line 12
    .line 13
    invoke-direct {v4}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 14
    .line 15
    .line 16
    const/16 v5, 0x1a0a

    .line 17
    .line 18
    new-array v5, v5, [B

    .line 19
    .line 20
    const/4 v6, 0x0

    .line 21
    const/4 v7, 0x0

    .line 22
    const/4 v8, 0x0

    .line 23
    :cond_0
    iget-object v9, v0, Lfa/j;->b:Ly9/b;

    .line 24
    .line 25
    iget-boolean v9, v9, Ly9/b;->f:Z

    .line 26
    .line 27
    const/4 v10, 0x1

    .line 28
    const-string v11, "UTF-8"

    .line 29
    .line 30
    if-nez v9, :cond_1

    .line 31
    .line 32
    goto/16 :goto_3

    .line 33
    .line 34
    :cond_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 35
    .line 36
    .line 37
    move-result-wide v12

    .line 38
    sub-long/2addr v12, v2

    .line 39
    cmp-long v9, v12, p1

    .line 40
    .line 41
    if-lez v9, :cond_2

    .line 42
    .line 43
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 44
    .line 45
    .line 46
    new-instance v2, Ljava/lang/String;

    .line 47
    .line 48
    invoke-virtual {v4}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    .line 49
    .line 50
    .line 51
    move-result-object v3

    .line 52
    invoke-static {v11}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    .line 53
    .line 54
    .line 55
    move-result-object v5

    .line 56
    invoke-direct {v2, v3, v5}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    .line 57
    .line 58
    .line 59
    goto/16 :goto_3

    .line 60
    .line 61
    :cond_2
    iget-object v9, v0, Lfa/j;->e:Ly9/g;

    .line 62
    .line 63
    invoke-virtual {v9, v5}, Ljava/io/InputStream;->read([B)I

    .line 64
    .line 65
    .line 66
    move-result v9

    .line 67
    const/4 v12, 0x4

    .line 68
    if-gtz v9, :cond_4

    .line 69
    .line 70
    add-int/2addr v7, v10

    .line 71
    const/4 v9, 0x2

    .line 72
    if-le v7, v9, :cond_a

    .line 73
    .line 74
    invoke-virtual {v4}, Ljava/io/ByteArrayOutputStream;->size()I

    .line 75
    .line 76
    .line 77
    move-result v9

    .line 78
    if-le v9, v12, :cond_3

    .line 79
    .line 80
    invoke-virtual {v4}, Ljava/io/ByteArrayOutputStream;->size()I

    .line 81
    .line 82
    .line 83
    move-result v9

    .line 84
    const/16 v12, 0x14

    .line 85
    .line 86
    if-ge v9, v12, :cond_3

    .line 87
    .line 88
    invoke-virtual {v4}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    .line 89
    .line 90
    .line 91
    move-result-object v9

    .line 92
    new-instance v12, Ljava/lang/String;

    .line 93
    .line 94
    invoke-static {v11}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    .line 95
    .line 96
    .line 97
    move-result-object v13

    .line 98
    invoke-direct {v12, v9, v13}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    .line 99
    .line 100
    .line 101
    invoke-virtual {v12}, Ljava/lang/String;->trim()Ljava/lang/String;

    .line 102
    .line 103
    .line 104
    move-result-object v9

    .line 105
    const-string v12, "assword:"

    .line 106
    .line 107
    invoke-virtual {v9, v12}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    .line 108
    .line 109
    .line 110
    move-result v9

    .line 111
    if-eqz v9, :cond_3

    .line 112
    .line 113
    goto/16 :goto_3

    .line 114
    .line 115
    :cond_3
    const-wide/16 v12, 0xc8

    .line 116
    .line 117
    :try_start_0
    invoke-static {v12, v13}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 118
    .line 119
    .line 120
    goto/16 :goto_2

    .line 121
    .line 122
    :catch_0
    nop

    .line 123
    goto :goto_2

    .line 124
    :cond_4
    invoke-virtual {v4, v5, v6, v9}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    .line 125
    .line 126
    .line 127
    invoke-virtual {v4}, Ljava/io/ByteArrayOutputStream;->size()I

    .line 128
    .line 129
    .line 130
    move-result v7

    .line 131
    if-le v7, v12, :cond_9

    .line 132
    .line 133
    invoke-virtual {v4}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    .line 134
    .line 135
    .line 136
    move-result-object v7

    .line 137
    array-length v9, v7

    .line 138
    add-int/lit8 v12, v9, -0x1

    .line 139
    .line 140
    aget-byte v12, v7, v12

    .line 141
    .line 142
    const/16 v13, 0x20

    .line 143
    .line 144
    if-eq v12, v13, :cond_5

    .line 145
    .line 146
    goto :goto_1

    .line 147
    :cond_5
    add-int/lit8 v12, v9, -0x2

    .line 148
    .line 149
    aget-byte v12, v7, v12

    .line 150
    .line 151
    const/16 v14, 0x26

    .line 152
    .line 153
    if-eq v12, v14, :cond_6

    .line 154
    .line 155
    const/16 v14, 0x23

    .line 156
    .line 157
    if-eq v12, v14, :cond_6

    .line 158
    .line 159
    const/16 v14, 0x24

    .line 160
    .line 161
    if-eq v12, v14, :cond_6

    .line 162
    .line 163
    goto :goto_1

    .line 164
    :cond_6
    add-int/lit8 v12, v9, -0x3

    .line 165
    .line 166
    aget-byte v12, v7, v12

    .line 167
    .line 168
    if-ne v12, v13, :cond_8

    .line 169
    .line 170
    add-int/lit8 v12, v9, -0x4

    .line 171
    .line 172
    aget-byte v12, v7, v12

    .line 173
    .line 174
    const/16 v13, 0x2f

    .line 175
    .line 176
    if-ne v12, v13, :cond_8

    .line 177
    .line 178
    add-int/lit8 v9, v9, -0x5

    .line 179
    .line 180
    aget-byte v9, v7, v9

    .line 181
    .line 182
    const/16 v12, 0x3a

    .line 183
    .line 184
    if-eq v9, v12, :cond_7

    .line 185
    .line 186
    goto :goto_1

    .line 187
    :cond_7
    :goto_0
    const/4 v7, 0x0

    .line 188
    const/4 v8, 0x1

    .line 189
    goto :goto_2

    .line 190
    :cond_8
    :goto_1
    new-instance v9, Ljava/lang/String;

    .line 191
    .line 192
    invoke-static {v11}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    .line 193
    .line 194
    .line 195
    move-result-object v12

    .line 196
    invoke-direct {v9, v7, v12}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    .line 197
    .line 198
    .line 199
    const-string v7, ":"

    .line 200
    .line 201
    invoke-virtual {v9, v7}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 202
    .line 203
    .line 204
    move-result v7

    .line 205
    if-eqz v7, :cond_9

    .line 206
    .line 207
    const-string v7, " $ "

    .line 208
    .line 209
    invoke-virtual {v9, v7}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    .line 210
    .line 211
    .line 212
    move-result v7

    .line 213
    if-nez v7, :cond_7

    .line 214
    .line 215
    const-string v7, " # "

    .line 216
    .line 217
    invoke-virtual {v9, v7}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    .line 218
    .line 219
    .line 220
    move-result v7

    .line 221
    if-eqz v7, :cond_9

    .line 222
    .line 223
    goto :goto_0

    .line 224
    :cond_9
    const/4 v7, 0x0

    .line 225
    :cond_a
    :goto_2
    if-eqz v8, :cond_0

    .line 226
    .line 227
    :goto_3
    if-nez v8, :cond_b

    .line 228
    .line 229
    invoke-virtual {p0}, Lfa/j;->o()V

    .line 230
    .line 231
    .line 232
    const/16 v2, 0x194

    .line 233
    .line 234
    iput v2, v1, Lfa/i;->a:I

    .line 235
    .line 236
    const-string v2, "\u547d\u4ee4\u6267\u884c\u8d85\u65f6"

    .line 237
    .line 238
    iput-object v2, v1, Lfa/i;->b:Ljava/lang/String;

    .line 239
    .line 240
    iget-object v3, v1, Lfa/i;->c:Ljava/util/ArrayList;

    .line 241
    .line 242
    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 243
    .line 244
    .line 245
    goto :goto_5

    .line 246
    :cond_b
    invoke-virtual {v4}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    .line 247
    .line 248
    .line 249
    move-result-object v2

    .line 250
    new-instance v3, Ljava/lang/String;

    .line 251
    .line 252
    invoke-static {v11}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    .line 253
    .line 254
    .line 255
    move-result-object v4

    .line 256
    invoke-direct {v3, v2, v4}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    .line 257
    .line 258
    .line 259
    const-string v2, "\n"

    .line 260
    .line 261
    invoke-virtual {v3, v2}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    .line 262
    .line 263
    .line 264
    move-result v4

    .line 265
    add-int/2addr v4, v10

    .line 266
    invoke-virtual {v3, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    .line 267
    .line 268
    .line 269
    move-result-object v4

    .line 270
    const-string v5, "|"

    .line 271
    .line 272
    invoke-virtual {v4, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 273
    .line 274
    .line 275
    move-result v7

    .line 276
    if-eqz v7, :cond_c

    .line 277
    .line 278
    new-instance v7, Ljava/lang/Integer;

    .line 279
    .line 280
    invoke-virtual {v4, v5}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    .line 281
    .line 282
    .line 283
    move-result v5

    .line 284
    invoke-virtual {v4, v6, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 285
    .line 286
    .line 287
    move-result-object v4

    .line 288
    invoke-direct {v7, v4}, Ljava/lang/Integer;-><init>(Ljava/lang/String;)V

    .line 289
    .line 290
    .line 291
    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    .line 292
    .line 293
    .line 294
    move-result v4

    .line 295
    iput v4, v1, Lfa/i;->a:I

    .line 296
    .line 297
    goto :goto_4

    .line 298
    :cond_c
    iput v6, v1, Lfa/i;->a:I

    .line 299
    .line 300
    :goto_4
    new-instance v4, Ljava/util/ArrayList;

    .line 301
    .line 302
    invoke-virtual {v3, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    .line 303
    .line 304
    .line 305
    move-result-object v2

    .line 306
    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    .line 307
    .line 308
    .line 309
    move-result-object v2

    .line 310
    invoke-direct {v4, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 311
    .line 312
    .line 313
    iput-object v4, v1, Lfa/i;->c:Ljava/util/ArrayList;

    .line 314
    .line 315
    invoke-virtual {v4}, Ljava/util/ArrayList;->isEmpty()Z

    .line 316
    .line 317
    .line 318
    move-result v2

    .line 319
    if-nez v2, :cond_d

    .line 320
    .line 321
    iget-object v2, v1, Lfa/i;->c:Ljava/util/ArrayList;

    .line 322
    .line 323
    invoke-virtual {v2, v6}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 324
    .line 325
    .line 326
    :cond_d
    :goto_5
    return-object v1
.end method

.method public final g(Ljava/lang/String;)V
    .locals 4

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    const-string v1, "pm grant"

    .line 4
    .line 5
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    sget-object v1, Lcom/yunpan/appmanage/util/k;->u0:Ljava/text/DecimalFormat;

    .line 9
    .line 10
    sget-object v1, Lcom/yunpan/appmanage/util/j;->a:Lcom/yunpan/appmanage/util/k;

    .line 11
    .line 12
    iget v2, v1, Lcom/yunpan/appmanage/util/k;->n:I

    .line 13
    .line 14
    if-nez v2, :cond_0

    .line 15
    .line 16
    const-string v1, ""

    .line 17
    .line 18
    goto :goto_0

    .line 19
    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    .line 20
    .line 21
    const-string v3, " --user "

    .line 22
    .line 23
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 24
    .line 25
    .line 26
    iget v1, v1, Lcom/yunpan/appmanage/util/k;->n:I

    .line 27
    .line 28
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 29
    .line 30
    .line 31
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 32
    .line 33
    .line 34
    move-result-object v1

    .line 35
    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 36
    .line 37
    .line 38
    const-string v1, " "

    .line 39
    .line 40
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 41
    .line 42
    .line 43
    sget-object v2, Lcom/yunpan/appmanage/base/AppStart;->h:Lcom/yunpan/appmanage/base/AppStart;

    .line 44
    .line 45
    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    .line 46
    .line 47
    .line 48
    move-result-object v2

    .line 49
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 50
    .line 51
    .line 52
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 53
    .line 54
    .line 55
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 56
    .line 57
    .line 58
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 59
    .line 60
    .line 61
    move-result-object p1

    .line 62
    invoke-virtual {p0, p1}, Lfa/j;->c(Ljava/lang/String;)Lfa/i;

    .line 63
    .line 64
    .line 65
    return-void
.end method

.method public final h(Lua/h6;)V
    .locals 2

    .line 1
    iput-object p1, p0, Lfa/j;->a:Lfa/g;

    .line 2
    .line 3
    new-instance p1, Lfg/b;

    .line 4
    .line 5
    new-instance v0, Lfa/f;

    .line 6
    .line 7
    const/4 v1, 0x0

    .line 8
    invoke-direct {v0, p0, v1}, Lfa/f;-><init>(Lfa/j;I)V

    .line 9
    .line 10
    .line 11
    const/4 v1, 0x1

    .line 12
    invoke-direct {p1, v0, v1}, Lfg/b;-><init>(Ljava/lang/Runnable;I)V

    .line 13
    .line 14
    .line 15
    invoke-virtual {p1}, Ljava/lang/Thread;->start()V

    .line 16
    .line 17
    .line 18
    return-void
.end method

.method public final i()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lfa/j;->c:Ljava/net/Socket;

    .line 2
    .line 3
    if-eqz v0, :cond_1

    .line 4
    .line 5
    iget-object v0, p0, Lfa/j;->d:Ly9/f;

    .line 6
    .line 7
    if-eqz v0, :cond_1

    .line 8
    .line 9
    iget-boolean v0, v0, Ly9/f;->f:Z

    .line 10
    .line 11
    if-nez v0, :cond_1

    .line 12
    .line 13
    iget-object v0, p0, Lfa/j;->e:Ly9/g;

    .line 14
    .line 15
    if-nez v0, :cond_0

    .line 16
    .line 17
    goto :goto_0

    .line 18
    :cond_0
    iget-boolean v0, p0, Lfa/j;->f:Z

    .line 19
    .line 20
    return v0

    .line 21
    :cond_1
    :goto_0
    const/4 v0, 0x0

    .line 22
    return v0
.end method

.method public final j()V
    .locals 32

    move-object/from16 v1, p0

    .line 1
    const-string v2, "ADB\u8fde\u63a5\u6210\u529f\uff0c\u53ef\u6267\u884cADB\u547d\u4ee4"

    const-string v3, "enabled_notification_listeners"

    const-string v4, "/emulated"

    const-string v5, "touch "

    const-string v6, "/.111111222222"

    const-string v7, "  "

    const-string v8, "/su_xingrui"

    const-string v9, "/data/local/tmp/su_xingrui"

    const-string v10, "\n"

    .line 2
    const-string v11, ""

    .line 3
    const-string v12, "setprop service.adb.root 1"

    const-string v13, "setprop ro.debuggable 1"

    const-string v14, ":"

    const-string v15, "/mnt/user/"

    move-object/from16 v16, v2

    const-string v2, "setprop ctl.restart adbd"

    move-object/from16 v17, v14

    const-string v14, "touch /system/app/111222"

    move-object/from16 v18, v3

    new-instance v3, Lfa/i;

    invoke-direct {v3}, Lfa/i;-><init>()V

    .line 4
    invoke-virtual/range {p0 .. p0}, Lfa/j;->i()Z

    move-result v0

    move-object/from16 v19, v4

    iget-object v4, v1, Lfa/j;->l:Lcom/yunpan/appmanage/carsdk/u;

    move-object/from16 v20, v15

    const-string v15, "\u5df2\u8fde\u63a5"

    move-object/from16 v21, v5

    if-nez v0, :cond_0

    .line 5
    sget-object v0, Lfa/l;->a:Lfa/m;

    .line 6
    invoke-virtual {v0}, Lio/github/muntashirakon/adb/AbsAdbConnectionManager;->isConnected()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 7
    :cond_0
    iget v0, v1, Lfa/j;->j:I

    invoke-static {}, Lcom/yunpan/appmanage/util/w;->b()Lcom/yunpan/appmanage/util/w;

    move-result-object v5

    .line 8
    iget v5, v5, Lcom/yunpan/appmanage/util/w;->O:I

    if-ne v0, v5, :cond_2

    .line 9
    iget v0, v1, Lfa/j;->k:I

    invoke-static {}, Lcom/yunpan/appmanage/util/w;->b()Lcom/yunpan/appmanage/util/w;

    move-result-object v5

    .line 10
    iget v5, v5, Lcom/yunpan/appmanage/util/w;->P:I

    if-ne v0, v5, :cond_2

    .line 11
    invoke-static {}, Lwa/u;->a()Lwa/u;

    move-result-object v0

    iget-boolean v0, v0, Lwa/u;->v:Z

    if-eqz v0, :cond_1

    const-string v0, "adb\u8fde\u63a5\u8fc7\u4e86\uff0c\u8fd4\u56de"

    invoke-static {v0}, Lwa/w;->b(Ljava/lang/String;)V

    .line 12
    :cond_1
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    const/16 v2, 0x64

    .line 13
    iput v2, v0, Landroid/os/Message;->what:I

    const/4 v2, 0x0

    .line 14
    iput v2, v3, Lfa/i;->a:I

    .line 15
    const-string v2, "\u8fde\u63a5\u8fc7\u4e86"

    iput-object v2, v3, Lfa/i;->b:Ljava/lang/String;

    .line 16
    iput-object v15, v1, Lfa/j;->h:Ljava/lang/String;

    .line 17
    iput-object v3, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 18
    invoke-virtual {v4, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 19
    invoke-static {}, Lcom/yunpan/appmanage/util/k;->f()Lcom/yunpan/appmanage/util/k;

    move-result-object v0

    const/4 v2, 0x1

    iput-boolean v2, v0, Lcom/yunpan/appmanage/util/k;->h:Z

    return-void

    .line 20
    :cond_2
    invoke-static {}, Lcom/yunpan/appmanage/util/w;->b()Lcom/yunpan/appmanage/util/w;

    move-result-object v0

    .line 21
    iget v0, v0, Lcom/yunpan/appmanage/util/w;->O:I

    .line 22
    iput v0, v1, Lfa/j;->j:I

    .line 23
    invoke-static {}, Lcom/yunpan/appmanage/util/w;->b()Lcom/yunpan/appmanage/util/w;

    move-result-object v0

    .line 24
    iget v0, v0, Lcom/yunpan/appmanage/util/w;->P:I

    .line 25
    iput v0, v1, Lfa/j;->k:I

    .line 26
    invoke-static {}, Lwa/u;->a()Lwa/u;

    move-result-object v0

    iget-boolean v0, v0, Lwa/u;->v:Z

    if-eqz v0, :cond_3

    const-string v0, "\u5c1d\u8bd5\u8fde\u63a5adb"

    invoke-static {v0}, Lwa/w;->b(Ljava/lang/String;)V

    :cond_3
    const/4 v5, 0x0

    .line 27
    iput-boolean v5, v1, Lfa/j;->f:Z

    .line 28
    const-string v5, "\u8fde\u63a5\u4e2d"

    iput-object v5, v1, Lfa/j;->h:Ljava/lang/String;

    move-object/from16 v23, v4

    const/16 v4, 0x15

    .line 29
    :try_start_0
    invoke-static {}, Lfa/a;->a()V

    .line 30
    invoke-static {}, Lfa/a;->b()V

    .line 31
    invoke-static {}, Lcom/yunpan/appmanage/util/w;->b()Lcom/yunpan/appmanage/util/w;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yunpan/appmanage/util/w;->i()Z

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_10

    if-eqz v0, :cond_4

    :try_start_1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    if-ge v0, v4, :cond_5

    :cond_4
    move-object/from16 v24, v5

    goto :goto_1

    .line 32
    :cond_5
    new-instance v0, Ljava/lang/Exception;

    const-string v2, "\u4f7f\u7528\u65b0\u7248Adb\u534f\u8bae"

    invoke-direct {v0, v2}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    :catch_0
    move-exception v0

    move-object v4, v0

    move-object v2, v3

    move-object/from16 v24, v5

    :goto_0
    move-object/from16 v3, v16

    goto/16 :goto_1e

    .line 33
    :goto_1
    :try_start_2
    new-instance v0, Ljava/net/Socket;

    invoke-static {}, Lcom/yunpan/appmanage/util/w;->b()Lcom/yunpan/appmanage/util/w;

    move-result-object v4

    .line 34
    iget v4, v4, Lcom/yunpan/appmanage/util/w;->k:I

    .line 35
    invoke-direct {v0, v11, v4}, Ljava/net/Socket;-><init>(Ljava/lang/String;I)V

    iput-object v0, v1, Lfa/j;->c:Ljava/net/Socket;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    :goto_2
    move-object/from16 v26, v3

    goto/16 :goto_9

    :catch_1
    const/16 v4, 0x15b3

    .line 36
    :try_start_3
    invoke-static {}, Lcom/yunpan/appmanage/util/w;->b()Lcom/yunpan/appmanage/util/w;

    move-result-object v0

    .line 37
    iget v0, v0, Lcom/yunpan/appmanage/util/w;->k:I

    const/16 v5, 0x15b5

    if-eq v0, v5, :cond_6

    .line 38
    new-instance v0, Ljava/net/Socket;

    invoke-direct {v0, v11, v5}, Ljava/net/Socket;-><init>(Ljava/lang/String;I)V

    iput-object v0, v1, Lfa/j;->c:Ljava/net/Socket;

    .line 39
    invoke-static {}, Lcom/yunpan/appmanage/util/w;->b()Lcom/yunpan/appmanage/util/w;

    move-result-object v0

    invoke-virtual {v0, v5}, Lcom/yunpan/appmanage/util/w;->n(I)V

    goto :goto_2

    :catch_2
    move-exception v0

    goto :goto_3

    .line 40
    :cond_6
    new-instance v0, Ljava/net/Socket;

    invoke-direct {v0, v11, v4}, Ljava/net/Socket;-><init>(Ljava/lang/String;I)V

    iput-object v0, v1, Lfa/j;->c:Ljava/net/Socket;

    .line 41
    invoke-static {}, Lcom/yunpan/appmanage/util/w;->b()Lcom/yunpan/appmanage/util/w;

    move-result-object v0

    invoke-virtual {v0, v4}, Lcom/yunpan/appmanage/util/w;->n(I)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    goto :goto_2

    .line 42
    :goto_3
    :try_start_4
    invoke-static {}, Lcom/yunpan/appmanage/util/w;->b()Lcom/yunpan/appmanage/util/w;

    move-result-object v5
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_e

    .line 43
    :try_start_5
    iget-boolean v5, v5, Lcom/yunpan/appmanage/util/w;->z:Z
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_f

    if-nez v5, :cond_8

    .line 44
    :try_start_6
    invoke-static {}, Lcom/yunpan/appmanage/util/w;->b()Lcom/yunpan/appmanage/util/w;

    move-result-object v5

    .line 45
    iget-boolean v5, v5, Lcom/yunpan/appmanage/util/w;->A:Z

    if-eqz v5, :cond_7

    goto :goto_4

    .line 46
    :cond_7
    throw v0
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_3

    :catch_3
    move-exception v0

    move-object v4, v0

    move-object v2, v3

    goto :goto_0

    .line 47
    :cond_8
    :goto_4
    :try_start_7
    invoke-static {}, Lcom/yunpan/appmanage/util/w;->b()Lcom/yunpan/appmanage/util/w;

    move-result-object v5
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_e

    .line 48
    :try_start_8
    iget-boolean v5, v5, Lcom/yunpan/appmanage/util/w;->z:Z
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_f

    if-eqz v5, :cond_a

    const/4 v5, 0x1

    .line 49
    :try_start_9
    new-array v4, v5, [Ljava/lang/String;

    const-string v5, "setprop service.adb.tcp.port 5555"

    const/16 v22, 0x0

    aput-object v5, v4, v22

    invoke-static {v4}, Lu9/d;->r([Ljava/lang/String;)Lv9/e;

    move-result-object v4

    invoke-virtual {v4}, Lv9/e;->l0()Landroidx/room/s;

    move-result-object v4

    invoke-virtual {v4}, Landroidx/room/s;->q()Z

    move-result v4

    if-eqz v4, :cond_9

    goto :goto_5

    .line 50
    :cond_9
    throw v0
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_3

    .line 51
    :cond_a
    :goto_5
    :try_start_a
    invoke-static {}, Lcom/yunpan/appmanage/util/w;->b()Lcom/yunpan/appmanage/util/w;

    move-result-object v4
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_e

    .line 52
    :try_start_b
    iget-boolean v4, v4, Lcom/yunpan/appmanage/util/w;->A:Z
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_f

    if-eqz v4, :cond_c

    const/4 v4, 0x1

    .line 53
    :try_start_c
    new-array v5, v4, [Ljava/lang/String;

    const-string v4, "setprop persist.adb.tcp.port 5555"

    const/16 v22, 0x0

    aput-object v4, v5, v22

    invoke-static {v5}, Lu9/d;->r([Ljava/lang/String;)Lv9/e;

    move-result-object v4

    invoke-virtual {v4}, Lv9/e;->l0()Landroidx/room/s;

    move-result-object v4

    invoke-virtual {v4}, Landroidx/room/s;->q()Z

    move-result v4

    if-eqz v4, :cond_b

    goto :goto_6

    .line 54
    :cond_b
    throw v0
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_c} :catch_3

    :cond_c
    :goto_6
    const-wide/16 v4, 0x14d

    .line 55
    :try_start_d
    invoke-static {v4, v5}, Ljava/lang/Thread;->sleep(J)V
    :try_end_d
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_d} :catch_e

    const/4 v4, 0x1

    .line 56
    :try_start_e
    new-array v0, v4, [Ljava/lang/String;

    const/4 v4, 0x0

    aput-object v2, v0, v4
    :try_end_e
    .catch Ljava/lang/Exception; {:try_start_e .. :try_end_e} :catch_f

    :try_start_f
    invoke-static {v0}, Lu9/d;->r([Ljava/lang/String;)Lv9/e;

    move-result-object v0

    invoke-virtual {v0}, Lv9/e;->l0()Landroidx/room/s;

    const-wide/16 v4, 0x7d0

    .line 57
    invoke-static {v4, v5}, Ljava/lang/Thread;->sleep(J)V

    .line 58
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4
    :try_end_f
    .catch Ljava/lang/Exception; {:try_start_f .. :try_end_f} :catch_e

    .line 59
    :goto_7
    :try_start_10
    new-instance v0, Ljava/net/Socket;
    :try_end_10
    .catch Ljava/lang/Exception; {:try_start_10 .. :try_end_10} :catch_4

    move-object/from16 v26, v3

    const/16 v3, 0x15b3

    :try_start_11
    invoke-direct {v0, v11, v3}, Ljava/net/Socket;-><init>(Ljava/lang/String;I)V

    iput-object v0, v1, Lfa/j;->c:Ljava/net/Socket;
    :try_end_11
    .catch Ljava/lang/Exception; {:try_start_11 .. :try_end_11} :catch_5

    goto :goto_8

    :catch_4
    move-object/from16 v26, v3

    :catch_5
    const-wide/16 v27, 0xde

    .line 60
    :try_start_12
    invoke-static/range {v27 .. v28}, Ljava/lang/Thread;->sleep(J)V

    .line 61
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v27

    sub-long v27, v27, v4

    const-wide/16 v29, 0xbb8

    cmp-long v0, v27, v29

    if-ltz v0, :cond_3e

    .line 62
    :goto_8
    iget-object v0, v1, Lfa/j;->c:Ljava/net/Socket;

    if-eqz v0, :cond_3d

    invoke-virtual {v0}, Ljava/net/Socket;->isClosed()Z

    move-result v0

    if-nez v0, :cond_3d

    .line 63
    invoke-static {}, Lcom/yunpan/appmanage/util/w;->b()Lcom/yunpan/appmanage/util/w;

    move-result-object v0

    .line 64
    iget v0, v0, Lcom/yunpan/appmanage/util/w;->k:I
    :try_end_12
    .catch Ljava/lang/Exception; {:try_start_12 .. :try_end_12} :catch_d

    const/16 v3, 0x15b3

    if-eq v0, v3, :cond_d

    .line 65
    :try_start_13
    invoke-static {}, Lcom/yunpan/appmanage/util/w;->b()Lcom/yunpan/appmanage/util/w;

    move-result-object v0

    invoke-virtual {v0, v3}, Lcom/yunpan/appmanage/util/w;->n(I)V
    :try_end_13
    .catch Ljava/lang/Exception; {:try_start_13 .. :try_end_13} :catch_6

    goto :goto_9

    :catch_6
    move-exception v0

    move-object v4, v0

    move-object/from16 v3, v16

    move-object/from16 v2, v26

    goto/16 :goto_1e

    .line 66
    :cond_d
    :goto_9
    :try_start_14
    invoke-static {}, Lwa/u;->a()Lwa/u;

    move-result-object v0

    iget-boolean v0, v0, Lwa/u;->v:Z
    :try_end_14
    .catch Ljava/lang/Exception; {:try_start_14 .. :try_end_14} :catch_d

    if-eqz v0, :cond_e

    :try_start_15
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "tcp\u8fde\u63a5\u6210\u529f,\u7aef\u53e3\uff1a"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/yunpan/appmanage/util/w;->b()Lcom/yunpan/appmanage/util/w;

    move-result-object v3

    .line 67
    iget v3, v3, Lcom/yunpan/appmanage/util/w;->k:I

    .line 68
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lwa/w;->b(Ljava/lang/String;)V
    :try_end_15
    .catch Ljava/lang/Exception; {:try_start_15 .. :try_end_15} :catch_6

    .line 69
    :cond_e
    :try_start_16
    invoke-static {}, Lcom/yunpan/appmanage/base/AppStart;->b()Lcom/yunpan/appmanage/base/AppStart;

    move-result-object v0

    invoke-static {v0}, Lfa/a;->c(Lcom/yunpan/appmanage/base/AppStart;)Ly9/c;

    move-result-object v0

    iput-object v0, v1, Lfa/j;->i:Ly9/c;

    .line 70
    iget-object v3, v1, Lfa/j;->c:Ljava/net/Socket;

    invoke-static {v3, v0}, Ly9/b;->A(Ljava/net/Socket;Ly9/c;)Ly9/b;

    move-result-object v0

    iput-object v0, v1, Lfa/j;->b:Ly9/b;

    .line 71
    invoke-virtual {v0}, Ly9/b;->r()V

    .line 72
    invoke-static {}, Lwa/u;->a()Lwa/u;

    move-result-object v0

    iget-boolean v0, v0, Lwa/u;->v:Z
    :try_end_16
    .catch Ljava/lang/Exception; {:try_start_16 .. :try_end_16} :catch_d

    if-eqz v0, :cond_f

    :try_start_17
    const-string v0, "adb\u534f\u8bae\u8fde\u63a5\u6210\u529f"

    invoke-static {v0}, Lwa/w;->b(Ljava/lang/String;)V
    :try_end_17
    .catch Ljava/lang/Exception; {:try_start_17 .. :try_end_17} :catch_6

    .line 73
    :cond_f
    :try_start_18
    invoke-static {}, Lcom/yunpan/appmanage/util/w;->b()Lcom/yunpan/appmanage/util/w;

    move-result-object v0

    .line 74
    iget v0, v0, Lcom/yunpan/appmanage/util/w;->O:I
    :try_end_18
    .catch Ljava/lang/Exception; {:try_start_18 .. :try_end_18} :catch_d

    const/4 v3, 0x1

    if-ne v0, v3, :cond_12

    .line 75
    :try_start_19
    const-string v0, "root:"

    invoke-virtual {v1, v0}, Lfa/j;->k(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 76
    const-string v4, "adbd cannot run as root in production builds"

    invoke-virtual {v0, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_11

    .line 77
    new-array v0, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    aput-object v13, v0, v4

    invoke-static {v0}, Lu9/d;->r([Ljava/lang/String;)Lv9/e;

    move-result-object v0

    invoke-virtual {v0}, Lv9/e;->l0()Landroidx/room/s;

    .line 78
    new-array v0, v3, [Ljava/lang/String;

    aput-object v12, v0, v4

    invoke-static {v0}, Lu9/d;->r([Ljava/lang/String;)Lv9/e;

    move-result-object v0

    invoke-virtual {v0}, Lv9/e;->l0()Landroidx/room/s;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/room/s;->q()Z

    move-result v0

    const-wide/16 v3, 0x3e8

    if-eqz v0, :cond_10

    const/4 v5, 0x1

    .line 79
    new-array v0, v5, [Ljava/lang/String;

    const/4 v5, 0x0

    aput-object v2, v0, v5

    invoke-static {v0}, Lu9/d;->r([Ljava/lang/String;)Lv9/e;

    move-result-object v0

    invoke-virtual {v0}, Lv9/e;->l0()Landroidx/room/s;

    .line 80
    invoke-static {v3, v4}, Ljava/lang/Thread;->sleep(J)V

    goto :goto_a

    .line 81
    :cond_10
    invoke-static {}, La2/w0;->F()La2/w0;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-wide/16 v3, 0x7d0

    invoke-static {v3, v4, v13}, La2/w0;->q(JLjava/lang/String;)Lfa/a0;

    .line 82
    invoke-static {}, La2/w0;->F()La2/w0;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v3, v4, v12}, La2/w0;->q(JLjava/lang/String;)Lfa/a0;

    move-result-object v0

    iget v0, v0, Lfa/a0;->a:I

    if-nez v0, :cond_11

    .line 83
    invoke-static {}, La2/w0;->F()La2/w0;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v3, v4, v2}, La2/w0;->q(JLjava/lang/String;)Lfa/a0;

    const-wide/16 v2, 0x3e8

    .line 84
    invoke-static {v2, v3}, Ljava/lang/Thread;->sleep(J)V

    .line 85
    :cond_11
    :goto_a
    invoke-virtual/range {p0 .. p0}, Lfa/j;->m()V

    .line 86
    invoke-static {}, Lcom/yunpan/appmanage/util/w;->b()Lcom/yunpan/appmanage/util/w;

    move-result-object v0

    .line 87
    iget v0, v0, Lcom/yunpan/appmanage/util/w;->P:I

    const/4 v2, 0x1

    if-ne v0, v2, :cond_13

    .line 88
    iget-object v0, v1, Lfa/j;->b:Ly9/b;

    const-string v2, "remount:"

    invoke-virtual {v0, v2}, Ly9/b;->J(Ljava/lang/String;)Ly9/f;
    :try_end_19
    .catch Ljava/lang/Exception; {:try_start_19 .. :try_end_19} :catch_6

    goto :goto_b

    .line 89
    :cond_12
    :try_start_1a
    invoke-virtual/range {p0 .. p0}, Lfa/j;->a()V

    .line 90
    :cond_13
    :goto_b
    invoke-static {}, Lcom/yunpan/appmanage/util/w;->b()Lcom/yunpan/appmanage/util/w;

    move-result-object v0

    .line 91
    iget v0, v0, Lcom/yunpan/appmanage/util/w;->O:I
    :try_end_1a
    .catch Ljava/lang/Exception; {:try_start_1a .. :try_end_1a} :catch_d

    const/4 v2, 0x2

    if-ne v0, v2, :cond_14

    .line 92
    :try_start_1b
    iget-object v0, v1, Lfa/j;->d:Ly9/f;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/yunpan/appmanage/util/w;->b()Lcom/yunpan/appmanage/util/w;

    move-result-object v4

    .line 93
    iget-object v4, v4, Lcom/yunpan/appmanage/util/w;->b0:Ljava/lang/String;

    .line 94
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ly9/f;->A(Ljava/lang/String;)V

    .line 95
    invoke-static {}, Lcom/yunpan/appmanage/util/w;->b()Lcom/yunpan/appmanage/util/w;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-wide/16 v3, 0x378

    invoke-virtual {v1, v3, v4}, Lfa/j;->f(J)Lfa/i;
    :try_end_1b
    .catch Ljava/lang/Exception; {:try_start_1b .. :try_end_1b} :catch_6

    .line 96
    :cond_14
    :try_start_1c
    invoke-static {}, Lcom/yunpan/appmanage/util/w;->b()Lcom/yunpan/appmanage/util/w;

    move-result-object v0

    .line 97
    iget v0, v0, Lcom/yunpan/appmanage/util/w;->P:I
    :try_end_1c
    .catch Ljava/lang/Exception; {:try_start_1c .. :try_end_1c} :catch_d

    if-lez v0, :cond_15

    .line 98
    :try_start_1d
    const-string v0, "setenforce 0"

    invoke-virtual {v1, v0}, Lfa/j;->c(Ljava/lang/String;)Lfa/i;

    .line 99
    const-string v0, "setprop ro.adb.secure 0"

    invoke-virtual {v1, v0}, Lfa/j;->c(Ljava/lang/String;)Lfa/i;

    .line 100
    const-string v0, "setprop ro.secure 0"

    invoke-virtual {v1, v0}, Lfa/j;->c(Ljava/lang/String;)Lfa/i;
    :try_end_1d
    .catch Ljava/lang/Exception; {:try_start_1d .. :try_end_1d} :catch_6

    .line 101
    :cond_15
    :try_start_1e
    iput-object v15, v1, Lfa/j;->h:Ljava/lang/String;

    .line 102
    invoke-static {}, Lwa/u;->a()Lwa/u;

    move-result-object v0

    iget-boolean v0, v0, Lwa/u;->v:Z
    :try_end_1e
    .catch Ljava/lang/Exception; {:try_start_1e .. :try_end_1e} :catch_d

    if-eqz v0, :cond_16

    :try_start_1f
    const-string v0, "\u5df2\u5b8c\u6210\u8fde\u63a5"

    invoke-static {v0}, Lwa/w;->b(Ljava/lang/String;)V
    :try_end_1f
    .catch Ljava/lang/Exception; {:try_start_1f .. :try_end_1f} :catch_6

    .line 103
    :cond_16
    :try_start_20
    invoke-static {}, Lcom/yunpan/appmanage/util/w;->b()Lcom/yunpan/appmanage/util/w;

    move-result-object v0

    .line 104
    iget-boolean v0, v0, Lcom/yunpan/appmanage/util/w;->J:Z
    :try_end_20
    .catch Ljava/lang/Exception; {:try_start_20 .. :try_end_20} :catch_d

    if-eqz v0, :cond_1a

    .line 105
    :try_start_21
    invoke-static {v9}, Lcom/yunpan/appmanage/util/a0;->g(Ljava/lang/String;)Z

    move-result v0
    :try_end_21
    .catch Ljava/lang/Exception; {:try_start_21 .. :try_end_21} :catch_6

    if-nez v0, :cond_19

    .line 106
    :try_start_22
    invoke-static {}, Lcom/yunpan/appmanage/util/k;->f()Lcom/yunpan/appmanage/util/k;

    move-result-object v0

    iget-object v0, v0, Lcom/yunpan/appmanage/util/k;->a:Landroid/content/ContextWrapper;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v3, 0x7f120025

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->openRawResource(I)Ljava/io/InputStream;

    move-result-object v3
    :try_end_22
    .catch Ljava/lang/Exception; {:try_start_22 .. :try_end_22} :catch_7

    :try_start_23
    new-instance v4, Ljava/io/FileOutputStream;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lfa/h0;->c()Lfa/h0;

    move-result-object v5

    invoke-virtual {v5}, Lfa/h0;->d()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v4, v0}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V
    :try_end_23
    .catchall {:try_start_23 .. :try_end_23} :catchall_1

    const/high16 v0, 0x100000

    .line 107
    :try_start_24
    new-array v0, v0, [B

    .line 108
    :goto_c
    invoke-virtual {v3, v0}, Ljava/io/InputStream;->read([B)I

    move-result v5

    const/4 v12, -0x1

    if-eq v5, v12, :cond_17

    const/4 v12, 0x0

    .line 109
    invoke-virtual {v4, v0, v12, v5}, Ljava/io/OutputStream;->write([BII)V
    :try_end_24
    .catchall {:try_start_24 .. :try_end_24} :catchall_0

    goto :goto_c

    :catchall_0
    move-exception v0

    move-object v5, v0

    goto :goto_d

    .line 110
    :cond_17
    :try_start_25
    invoke-virtual {v4}, Ljava/io/OutputStream;->close()V
    :try_end_25
    .catchall {:try_start_25 .. :try_end_25} :catchall_1

    :try_start_26
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V
    :try_end_26
    .catch Ljava/lang/Exception; {:try_start_26 .. :try_end_26} :catch_7

    goto :goto_11

    :catchall_1
    move-exception v0

    move-object v4, v0

    goto :goto_f

    .line 111
    :goto_d
    :try_start_27
    invoke-virtual {v4}, Ljava/io/OutputStream;->close()V
    :try_end_27
    .catchall {:try_start_27 .. :try_end_27} :catchall_2

    goto :goto_e

    :catchall_2
    move-exception v0

    move-object v4, v0

    :try_start_28
    invoke-static {v5, v4}, Lta/q;->u(Ljava/lang/Throwable;Ljava/lang/Throwable;)V

    :goto_e
    throw v5
    :try_end_28
    .catchall {:try_start_28 .. :try_end_28} :catchall_1

    :goto_f
    if-eqz v3, :cond_18

    :try_start_29
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V
    :try_end_29
    .catchall {:try_start_29 .. :try_end_29} :catchall_3

    goto :goto_10

    :catchall_3
    move-exception v0

    move-object v3, v0

    :try_start_2a
    invoke-static {v4, v3}, Lta/q;->u(Ljava/lang/Throwable;Ljava/lang/Throwable;)V

    :cond_18
    :goto_10
    throw v4
    :try_end_2a
    .catch Ljava/lang/Exception; {:try_start_2a .. :try_end_2a} :catch_7

    .line 112
    :catch_7
    :goto_11
    :try_start_2b
    invoke-static {}, La2/w0;->F()La2/w0;

    move-result-object v0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "dd if=\'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lfa/h0;->c()Lfa/h0;

    move-result-object v4

    invoke-virtual {v4}, Lfa/h0;->d()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "/su_xingrui\' of=\'/data/local/tmp/su_xingrui\'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v3}, La2/w0;->h(Ljava/lang/String;)Lfa/a0;

    .line 113
    invoke-static {}, La2/w0;->F()La2/w0;

    move-result-object v0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "mv \'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lfa/h0;->c()Lfa/h0;

    move-result-object v4

    invoke-virtual {v4}, Lfa/h0;->d()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "/su_xingrui\' \'/data/local/tmp/\'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v3}, La2/w0;->h(Ljava/lang/String;)Lfa/a0;

    .line 114
    invoke-static {}, La2/w0;->F()La2/w0;

    move-result-object v0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "rm -rf "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lfa/h0;->c()Lfa/h0;

    move-result-object v4

    invoke-virtual {v4}, Lfa/h0;->d()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v3}, La2/w0;->h(Ljava/lang/String;)Lfa/a0;

    .line 115
    invoke-static {}, La2/w0;->F()La2/w0;

    move-result-object v0

    const-string v3, "chmod 777 \'/data/local/tmp/su_xingrui\'"

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v3}, La2/w0;->h(Ljava/lang/String;)Lfa/a0;

    .line 116
    :cond_19
    invoke-static {}, La2/w0;->F()La2/w0;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v9}, La2/w0;->h(Ljava/lang/String;)Lfa/a0;
    :try_end_2b
    .catch Ljava/lang/Exception; {:try_start_2b .. :try_end_2b} :catch_6

    :cond_1a
    const/4 v3, 0x1

    .line 117
    :try_start_2c
    iput-boolean v3, v1, Lfa/j;->f:Z

    .line 118
    const-string v0, "id"

    invoke-virtual {v1, v0}, Lfa/j;->c(Ljava/lang/String;)Lfa/i;

    move-result-object v0

    .line 119
    invoke-virtual {v0}, Lfa/i;->a()Ljava/lang/String;

    move-result-object v0

    const-string v3, "uid=0("

    invoke-virtual {v0, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0
    :try_end_2c
    .catch Ljava/lang/Exception; {:try_start_2c .. :try_end_2c} :catch_d

    const-string v3, " "

    const-string v4, "/"

    if-eqz v0, :cond_26

    const/4 v5, 0x1

    .line 120
    :try_start_2d
    iput-boolean v5, v1, Lfa/j;->g:Z

    .line 121
    invoke-static {}, Lwa/u;->a()Lwa/u;

    move-result-object v0

    iget-boolean v0, v0, Lwa/u;->v:Z

    if-eqz v0, :cond_1b

    const-string v0, "uid=0,\u5df2\u83b7\u5f97root\u6743\u9650"

    invoke-static {v0}, Lwa/w;->b(Ljava/lang/String;)V

    .line 122
    :cond_1b
    invoke-virtual {v1, v14}, Lfa/j;->c(Ljava/lang/String;)Lfa/i;

    move-result-object v0

    .line 123
    iget v5, v0, Lfa/i;->a:I

    if-eqz v5, :cond_25

    .line 124
    invoke-static {}, Lcom/yunpan/appmanage/util/w;->b()Lcom/yunpan/appmanage/util/w;

    move-result-object v5

    .line 125
    iget-boolean v5, v5, Lcom/yunpan/appmanage/util/w;->J:Z

    if-eqz v5, :cond_1c

    .line 126
    const-string v0, "mount -o remount,rw -t ext4 /system"

    invoke-virtual {v1, v0}, Lfa/j;->c(Ljava/lang/String;)Lfa/i;

    .line 127
    invoke-virtual {v1, v14}, Lfa/j;->c(Ljava/lang/String;)Lfa/i;

    move-result-object v0

    goto/16 :goto_15

    .line 128
    :cond_1c
    invoke-static {}, Lcom/yunpan/appmanage/util/w;->b()Lcom/yunpan/appmanage/util/w;

    move-result-object v5

    .line 129
    iget v5, v5, Lcom/yunpan/appmanage/util/w;->P:I

    if-lez v5, :cond_25

    .line 130
    const-string v0, "mount"

    invoke-virtual {v1, v0}, Lfa/j;->c(Ljava/lang/String;)Lfa/i;

    move-result-object v0

    .line 131
    iget-object v0, v0, Lfa/i;->c:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :catch_8
    :cond_1d
    :goto_12
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_24

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 132
    const-string v8, " /system "

    invoke-virtual {v5, v8}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v8

    if-eqz v8, :cond_1e

    .line 133
    const-string v8, "/system"

    goto :goto_13

    .line 134
    :cond_1e
    const-string v8, " /vendor "

    invoke-virtual {v5, v8}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v8

    if-eqz v8, :cond_1f

    .line 135
    const-string v8, "/vendor"

    goto :goto_13

    .line 136
    :cond_1f
    const-string v8, " /oem "

    invoke-virtual {v5, v8}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v8

    if-eqz v8, :cond_20

    .line 137
    const-string v8, "/oem"

    goto :goto_13

    .line 138
    :cond_20
    const-string v8, " / "

    invoke-virtual {v5, v8}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v8

    if-eqz v8, :cond_1d

    move-object v8, v4

    .line 139
    :goto_13
    invoke-virtual {v5, v7}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v9

    if-eqz v9, :cond_21

    .line 140
    invoke-virtual {v5}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5, v7, v3}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    goto :goto_13

    .line 141
    :cond_21
    invoke-virtual {v5, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v9

    .line 142
    array-length v12, v9
    :try_end_2d
    .catch Ljava/lang/Exception; {:try_start_2d .. :try_end_2d} :catch_6

    const/4 v13, 0x4

    if-ge v12, v13, :cond_22

    goto :goto_12

    .line 143
    :cond_22
    :try_start_2e
    const-string v12, " (r"

    invoke-virtual {v5, v12}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_23

    .line 144
    aget-object v5, v9, v13

    goto :goto_14

    .line 145
    :cond_23
    aget-object v5, v9, v2

    .line 146
    :goto_14
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "mount -o remount,rw -t "

    invoke-virtual {v9, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Lfa/j;->c(Ljava/lang/String;)Lfa/i;
    :try_end_2e
    .catch Ljava/lang/Exception; {:try_start_2e .. :try_end_2e} :catch_8

    goto :goto_12

    .line 147
    :cond_24
    :try_start_2f
    invoke-virtual {v1, v14}, Lfa/j;->c(Ljava/lang/String;)Lfa/i;

    move-result-object v0

    .line 148
    iget v2, v0, Lfa/i;->a:I

    if-eqz v2, :cond_25

    .line 149
    const-string v0, "mount -o remount,rw /oem"

    invoke-virtual {v1, v0}, Lfa/j;->c(Ljava/lang/String;)Lfa/i;

    .line 150
    const-string v0, "mount -o remount,rw /system"

    invoke-virtual {v1, v0}, Lfa/j;->c(Ljava/lang/String;)Lfa/i;

    .line 151
    const-string v0, "mount -o remount,rw /"

    invoke-virtual {v1, v0}, Lfa/j;->c(Ljava/lang/String;)Lfa/i;

    .line 152
    invoke-virtual {v1, v14}, Lfa/j;->c(Ljava/lang/String;)Lfa/i;

    move-result-object v0

    .line 153
    :cond_25
    :goto_15
    iget v0, v0, Lfa/i;->a:I

    if-nez v0, :cond_26

    .line 154
    invoke-static {}, Lcom/yunpan/appmanage/util/k;->f()Lcom/yunpan/appmanage/util/k;

    move-result-object v0

    const/4 v2, 0x1

    iput-boolean v2, v0, Lcom/yunpan/appmanage/util/k;->m:Z

    .line 155
    const-string v0, "rm -rf /system/app/111222"

    invoke-virtual {v1, v0}, Lfa/j;->c(Ljava/lang/String;)Lfa/i;

    .line 156
    const-string v0, "touch /system/bin/111222"

    invoke-virtual {v1, v0}, Lfa/j;->c(Ljava/lang/String;)Lfa/i;

    move-result-object v0

    .line 157
    iget v0, v0, Lfa/i;->a:I

    if-nez v0, :cond_26

    .line 158
    invoke-static {}, Lcom/yunpan/appmanage/util/k;->f()Lcom/yunpan/appmanage/util/k;

    move-result-object v0

    const/4 v2, 0x1

    iput-boolean v2, v0, Lcom/yunpan/appmanage/util/k;->l:Z

    .line 159
    const-string v0, "rm -rf /system/bin/111222"

    invoke-virtual {v1, v0}, Lfa/j;->c(Ljava/lang/String;)Lfa/i;
    :try_end_2f
    .catch Ljava/lang/Exception; {:try_start_2f .. :try_end_2f} :catch_6

    .line 160
    :cond_26
    :try_start_30
    invoke-static {}, Lcom/yunpan/appmanage/util/k;->f()Lcom/yunpan/appmanage/util/k;

    move-result-object v0

    iget-object v0, v0, Lcom/yunpan/appmanage/util/k;->s:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0
    :try_end_30
    .catch Ljava/lang/Exception; {:try_start_30 .. :try_end_30} :catch_d

    if-nez v0, :cond_27

    .line 161
    :try_start_31
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ls -l \""

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/yunpan/appmanage/util/k;->f()Lcom/yunpan/appmanage/util/k;

    move-result-object v2

    iget-object v2, v2, Lcom/yunpan/appmanage/util/k;->s:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "/\""

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lfa/j;->c(Ljava/lang/String;)Lfa/i;

    move-result-object v0

    .line 162
    iget v0, v0, Lfa/i;->a:I

    const/4 v2, 0x1

    if-ne v0, v2, :cond_27

    .line 163
    invoke-static {}, Lcom/yunpan/appmanage/util/k;->f()Lcom/yunpan/appmanage/util/k;

    move-result-object v0

    const/4 v2, 0x0

    iput-boolean v2, v0, Lcom/yunpan/appmanage/util/k;->L:Z
    :try_end_31
    .catch Ljava/lang/Exception; {:try_start_31 .. :try_end_31} :catch_6

    .line 164
    :cond_27
    :try_start_32
    invoke-static {}, Lfa/h0;->c()Lfa/h0;

    move-result-object v0

    invoke-virtual {v0}, Lfa/h0;->f()Z

    move-result v0
    :try_end_32
    .catch Ljava/lang/Exception; {:try_start_32 .. :try_end_32} :catch_d

    if-nez v0, :cond_2c

    :try_start_33
    invoke-static {}, Lfa/h0;->c()Lfa/h0;

    move-result-object v0

    invoke-virtual {v0}, Lfa/h0;->d()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0
    :try_end_33
    .catch Ljava/lang/Exception; {:try_start_33 .. :try_end_33} :catch_6

    if-nez v0, :cond_2c

    .line 165
    :try_start_34
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lfa/h0;->c()Lfa/h0;

    move-result-object v2

    invoke-virtual {v2}, Lfa/h0;->d()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 166
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->delete()Z

    .line 167
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v5, v21

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lfa/j;->c(Ljava/lang/String;)Lfa/i;

    .line 168
    invoke-static {v0}, Lcom/yunpan/appmanage/util/a0;->g(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_28

    .line 169
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->delete()Z

    goto/16 :goto_18

    .line 170
    :cond_28
    invoke-static {}, Lcom/yunpan/appmanage/util/k;->f()Lcom/yunpan/appmanage/util/k;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 171
    const-string v0, "df"

    invoke-virtual {v1, v0}, Lfa/j;->c(Ljava/lang/String;)Lfa/i;

    move-result-object v0

    .line 172
    iget v2, v0, Lfa/i;->a:I

    if-nez v2, :cond_2b

    .line 173
    iget-object v0, v0, Lfa/i;->c:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_16
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2c

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    move-object/from16 v7, v20

    .line 174
    invoke-virtual {v2, v7}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v8

    if-eqz v8, :cond_29

    move-object/from16 v8, v19

    invoke-virtual {v2, v8}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v9

    if-eqz v9, :cond_2a

    const/4 v9, 0x0

    .line 175
    invoke-static {v2, v7, v8, v9}, Lif/a;->N(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v2

    .line 176
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v12, "/emulated/"

    invoke-virtual {v9, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    .line 177
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v12, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    .line 178
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v13, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v1, v12}, Lfa/j;->c(Ljava/lang/String;)Lfa/i;

    move-result-object v12

    iget v12, v12, Lfa/i;->a:I

    if-nez v12, :cond_2a

    .line 179
    invoke-static {}, Lcom/yunpan/appmanage/util/k;->f()Lcom/yunpan/appmanage/util/k;

    move-result-object v12

    iput-object v9, v12, Lcom/yunpan/appmanage/util/k;->O:Ljava/lang/String;

    .line 180
    invoke-static {}, Lcom/yunpan/appmanage/util/k;->f()Lcom/yunpan/appmanage/util/k;

    move-result-object v9

    iput-object v2, v9, Lcom/yunpan/appmanage/util/k;->N:Ljava/lang/String;

    goto :goto_17

    :cond_29
    move-object/from16 v8, v19

    :cond_2a
    :goto_17
    move-object/from16 v20, v7

    move-object/from16 v19, v8

    goto :goto_16

    .line 181
    :cond_2b
    new-instance v0, Ljava/lang/Exception;

    const-string v2, "\u6267\u884cdf\u5931\u8d25"

    invoke-direct {v0, v2}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_34
    .catch Ljava/lang/Exception; {:try_start_34 .. :try_end_34} :catch_9

    .line 182
    :catch_9
    :cond_2c
    :goto_18
    :try_start_35
    sget-object v0, Lfa/a;->a:Lfa/b;

    invoke-virtual {v0}, Lfa/b;->f()Z

    move-result v2
    :try_end_35
    .catch Ljava/lang/Exception; {:try_start_35 .. :try_end_35} :catch_d

    if-nez v2, :cond_2d

    .line 183
    :try_start_36
    invoke-static {}, Lcom/yunpan/appmanage/base/AppStart;->b()Lcom/yunpan/appmanage/base/AppStart;

    move-result-object v0

    invoke-static {v0}, Lfa/b;->a(Lcom/yunpan/appmanage/base/AppStart;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lfa/j;->c(Ljava/lang/String;)Lfa/i;
    :try_end_36
    .catch Ljava/lang/Exception; {:try_start_36 .. :try_end_36} :catch_6

    goto :goto_19

    .line 184
    :cond_2d
    :try_start_37
    iget-boolean v2, v1, Lfa/j;->g:Z
    :try_end_37
    .catch Ljava/lang/Exception; {:try_start_37 .. :try_end_37} :catch_d

    if-eqz v2, :cond_2e

    :try_start_38
    iget-object v0, v0, Lfa/b;->b:Lcom/yunpan/appmanage/shizuku/IGjAdbFace;

    invoke-interface {v0}, Lcom/yunpan/appmanage/shizuku/IGjAdbFace;->getUid()I

    move-result v0

    if-eqz v0, :cond_2e

    .line 185
    invoke-static {}, Lcom/yunpan/appmanage/base/AppStart;->b()Lcom/yunpan/appmanage/base/AppStart;

    move-result-object v0

    invoke-static {v0}, Lfa/b;->a(Lcom/yunpan/appmanage/base/AppStart;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lfa/j;->c(Ljava/lang/String;)Lfa/i;
    :try_end_38
    .catch Ljava/lang/Exception; {:try_start_38 .. :try_end_38} :catch_6

    .line 186
    :cond_2e
    :goto_19
    :try_start_39
    const-string v0, "setprop persist.sv.enable_adb_install 1"

    invoke-virtual {v1, v0}, Lfa/j;->c(Ljava/lang/String;)Lfa/i;

    .line 187
    invoke-static {}, Lcom/yunpan/appmanage/util/k;->f()Lcom/yunpan/appmanage/util/k;

    move-result-object v0

    iget-boolean v0, v0, Lcom/yunpan/appmanage/util/k;->j:Z
    :try_end_39
    .catch Ljava/lang/Exception; {:try_start_39 .. :try_end_39} :catch_d

    if-nez v0, :cond_35

    .line 188
    :try_start_3a
    invoke-static {}, Lcom/yunpan/appmanage/util/k;->f()Lcom/yunpan/appmanage/util/k;

    move-result-object v0

    iget-object v0, v0, Lcom/yunpan/appmanage/util/k;->a:Landroid/content/ContextWrapper;

    invoke-static {}, Lcom/hjq/permissions/permission/PermissionLists;->getWriteSettingsPermission()Lcom/hjq/permissions/permission/base/IPermission;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/hjq/permissions/XXPermissions;->isGrantedPermission(Landroid/content/Context;Lcom/hjq/permissions/permission/base/IPermission;)Z

    move-result v0

    if-nez v0, :cond_2f

    .line 189
    const-string v0, "WRITE_SETTINGS"

    invoke-virtual {v1, v0}, Lfa/j;->l(Ljava/lang/String;)V

    .line 190
    :cond_2f
    invoke-static {}, Lcom/yunpan/appmanage/util/k;->f()Lcom/yunpan/appmanage/util/k;

    move-result-object v0

    iget-object v0, v0, Lcom/yunpan/appmanage/util/k;->a:Landroid/content/ContextWrapper;

    invoke-static {}, Lcom/hjq/permissions/permission/PermissionLists;->getAnswerPhoneCallsPermission()Lcom/hjq/permissions/permission/base/IPermission;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/hjq/permissions/XXPermissions;->isGrantedPermission(Landroid/content/Context;Lcom/hjq/permissions/permission/base/IPermission;)Z

    move-result v0

    if-nez v0, :cond_30

    .line 191
    const-string v0, "ANSWER_PHONE_CALLS"

    invoke-virtual {v1, v0}, Lfa/j;->l(Ljava/lang/String;)V

    .line 192
    :cond_30
    const-string v0, "android.permission.WRITE_SECURE_SETTINGS"

    invoke-virtual {v1, v0}, Lfa/j;->g(Ljava/lang/String;)V

    .line 193
    const-string v0, "android.permission.DUMP"

    invoke-virtual {v1, v0}, Lfa/j;->g(Ljava/lang/String;)V

    .line 194
    const-string v0, "android.permission.READ_LOGS"

    invoke-virtual {v1, v0}, Lfa/j;->g(Ljava/lang/String;)V

    .line 195
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x17

    if-lt v0, v2, :cond_35

    .line 196
    invoke-static {}, Lcom/yunpan/appmanage/util/k;->f()Lcom/yunpan/appmanage/util/k;

    move-result-object v2

    iget-boolean v2, v2, Lcom/yunpan/appmanage/util/k;->k:Z

    if-nez v2, :cond_33

    .line 197
    invoke-static {}, Lcom/yunpan/appmanage/util/k;->f()Lcom/yunpan/appmanage/util/k;

    move-result-object v2

    iget-object v2, v2, Lcom/yunpan/appmanage/util/k;->a:Landroid/content/ContextWrapper;

    invoke-static {}, Lcom/hjq/permissions/permission/PermissionLists;->getPackageUsageStatsPermission()Lcom/hjq/permissions/permission/base/IPermission;

    move-result-object v5

    invoke-static {v2, v5}, Lcom/hjq/permissions/XXPermissions;->isGrantedPermission(Landroid/content/Context;Lcom/hjq/permissions/permission/base/IPermission;)Z

    move-result v2

    if-nez v2, :cond_31

    .line 198
    const-string v2, "GET_USAGE_STATS"

    invoke-virtual {v1, v2}, Lfa/j;->l(Ljava/lang/String;)V

    .line 199
    const-string v2, "android.permission.PACKAGE_USAGE_STATS"

    invoke-virtual {v1, v2}, Lfa/j;->l(Ljava/lang/String;)V

    .line 200
    :cond_31
    const-string v2, "android.permission.GET_APP_OPS_STATS"

    invoke-virtual {v1, v2}, Lfa/j;->l(Ljava/lang/String;)V

    .line 201
    invoke-static {}, Lcom/yunpan/appmanage/util/k;->f()Lcom/yunpan/appmanage/util/k;

    move-result-object v2

    iget-object v2, v2, Lcom/yunpan/appmanage/util/k;->a:Landroid/content/ContextWrapper;

    invoke-static {}, Lcom/hjq/permissions/permission/PermissionLists;->getWriteExternalStoragePermission()Lcom/hjq/permissions/permission/base/IPermission;

    move-result-object v5

    invoke-static {v2, v5}, Lcom/hjq/permissions/XXPermissions;->isGrantedPermission(Landroid/content/Context;Lcom/hjq/permissions/permission/base/IPermission;)Z

    move-result v2

    if-nez v2, :cond_32

    .line 202
    const-string v2, "READ_EXTERNAL_STORAGE"

    invoke-virtual {v1, v2}, Lfa/j;->l(Ljava/lang/String;)V

    .line 203
    const-string v2, "WRITE_EXTERNAL_STORAGE"

    invoke-virtual {v1, v2}, Lfa/j;->l(Ljava/lang/String;)V

    .line 204
    :cond_32
    invoke-static {}, Lcom/yunpan/appmanage/util/k;->f()Lcom/yunpan/appmanage/util/k;

    move-result-object v2

    iget-object v2, v2, Lcom/yunpan/appmanage/util/k;->a:Landroid/content/ContextWrapper;

    invoke-static {}, Lcom/hjq/permissions/permission/PermissionLists;->getSystemAlertWindowPermission()Lcom/hjq/permissions/permission/base/IPermission;

    move-result-object v5

    invoke-static {v2, v5}, Lcom/hjq/permissions/XXPermissions;->isGrantedPermission(Landroid/content/Context;Lcom/hjq/permissions/permission/base/IPermission;)Z

    move-result v2

    if-nez v2, :cond_33

    .line 205
    const-string v2, "SYSTEM_ALERT_WINDOW"

    invoke-virtual {v1, v2}, Lfa/j;->l(Ljava/lang/String;)V

    .line 206
    :cond_33
    invoke-static {}, Lcom/yunpan/appmanage/util/k;->f()Lcom/yunpan/appmanage/util/k;

    move-result-object v2

    iget-object v2, v2, Lcom/yunpan/appmanage/util/k;->a:Landroid/content/ContextWrapper;

    invoke-static {}, Lcom/hjq/permissions/permission/PermissionLists;->getRequestInstallPackagesPermission()Lcom/hjq/permissions/permission/base/IPermission;

    move-result-object v5

    invoke-static {v2, v5}, Lcom/hjq/permissions/XXPermissions;->isGrantedPermission(Landroid/content/Context;Lcom/hjq/permissions/permission/base/IPermission;)Z

    move-result v2

    if-nez v2, :cond_35

    const/16 v2, 0x1e

    if-ne v0, v2, :cond_34

    .line 207
    const-string v0, "\u6388\u6743\u4e2d\uff0c\u5982\u679c\u51fa\u73b0\u95ea\u9000\u8bf7\u91cd\u65b0\u6253\u5f00"

    invoke-static {v0}, Lcom/yunpan/appmanage/util/a0;->r(Ljava/lang/String;)V
    :try_end_3a
    .catch Ljava/lang/Exception; {:try_start_3a .. :try_end_3a} :catch_6

    const-wide/16 v5, 0x8ae

    .line 208
    :try_start_3b
    invoke-static {v5, v6}, Ljava/lang/Thread;->sleep(J)V
    :try_end_3b
    .catch Ljava/lang/Exception; {:try_start_3b .. :try_end_3b} :catch_a

    .line 209
    :catch_a
    :cond_34
    :try_start_3c
    const-string v0, "REQUEST_INSTALL_PACKAGES"

    invoke-virtual {v1, v0}, Lfa/j;->l(Ljava/lang/String;)V
    :try_end_3c
    .catch Ljava/lang/Exception; {:try_start_3c .. :try_end_3c} :catch_6

    .line 210
    :cond_35
    :try_start_3d
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I
    :try_end_3d
    .catch Ljava/lang/Exception; {:try_start_3d .. :try_end_3d} :catch_d

    const/16 v2, 0x12

    if-lt v0, v2, :cond_3b

    :try_start_3e
    invoke-static {}, Lcom/yunpan/appmanage/base/AppStart;->b()Lcom/yunpan/appmanage/base/AppStart;

    move-result-object v0

    invoke-static {v0}, Lif/a;->b0(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_3b

    .line 211
    invoke-static {}, Lcom/yunpan/appmanage/util/k;->f()Lcom/yunpan/appmanage/util/k;

    move-result-object v0

    iget-object v0, v0, Lcom/yunpan/appmanage/util/k;->a:Landroid/content/ContextWrapper;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    move-object/from16 v2, v18

    invoke-static {v0, v2}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_36

    .line 212
    const-string v5, "null"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_37

    :cond_36
    move-object v0, v11

    .line 213
    :cond_37
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/yunpan/appmanage/util/k;->f()Lcom/yunpan/appmanage/util/k;

    move-result-object v6

    iget-object v6, v6, Lcom/yunpan/appmanage/util/k;->d:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_3b

    .line 214
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v6, v17

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/yunpan/appmanage/util/k;->f()Lcom/yunpan/appmanage/util/k;

    move-result-object v0

    iget-object v0, v0, Lcom/yunpan/appmanage/util/k;->d:Ljava/lang/String;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-class v0, Lcom/yunpan/appmanage/service/StartService;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 215
    const-string v5, "::"

    invoke-virtual {v0, v5, v11}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    .line 216
    invoke-virtual {v0, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_38

    const/4 v5, 0x1

    invoke-virtual {v0, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_1a

    :cond_38
    const/4 v5, 0x1

    .line 217
    :goto_1a
    invoke-virtual {v0, v6}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_39

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v6

    sub-int/2addr v6, v5

    const/4 v5, 0x0

    invoke-virtual {v0, v5, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 218
    :cond_39
    invoke-static {}, Lcom/yunpan/appmanage/util/k;->f()Lcom/yunpan/appmanage/util/k;

    move-result-object v5

    iget-object v5, v5, Lcom/yunpan/appmanage/util/k;->a:Landroid/content/ContextWrapper;

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    invoke-static {v5, v2, v0}, Landroid/provider/Settings$Secure;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 219
    invoke-static {}, Lcom/yunpan/appmanage/util/k;->f()Lcom/yunpan/appmanage/util/k;

    move-result-object v0

    iget-object v0, v0, Lcom/yunpan/appmanage/util/k;->a:Landroid/content/ContextWrapper;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v2, "notification_enabled"

    const/4 v5, 0x1

    invoke-static {v0, v2, v5}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 220
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "cmd notification allow_listener"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/yunpan/appmanage/util/k;->f()Lcom/yunpan/appmanage/util/k;

    move-result-object v2

    iget v2, v2, Lcom/yunpan/appmanage/util/k;->n:I

    if-nez v2, :cond_3a

    move-object v2, v11

    goto :goto_1b

    :cond_3a
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, " --user "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/yunpan/appmanage/util/k;->f()Lcom/yunpan/appmanage/util/k;

    move-result-object v5

    iget v5, v5, Lcom/yunpan/appmanage/util/k;->n:I

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    :goto_1b
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/yunpan/appmanage/util/k;->f()Lcom/yunpan/appmanage/util/k;

    move-result-object v2

    iget-object v2, v2, Lcom/yunpan/appmanage/util/k;->d:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-class v2, Lcom/yunpan/appmanage/service/StartService;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lfa/j;->c(Ljava/lang/String;)Lfa/i;
    :try_end_3e
    .catch Ljava/lang/Exception; {:try_start_3e .. :try_end_3e} :catch_6

    .line 221
    :cond_3b
    :try_start_3f
    invoke-static {}, Lcom/yunpan/appmanage/util/w;->b()Lcom/yunpan/appmanage/util/w;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yunpan/appmanage/util/w;->f()Z

    move-result v0
    :try_end_3f
    .catch Ljava/lang/Exception; {:try_start_3f .. :try_end_3f} :catch_d

    if-eqz v0, :cond_3c

    .line 222
    :try_start_40
    invoke-virtual/range {p0 .. p0}, Lfa/j;->b()V

    .line 223
    invoke-static {}, Lcom/yunpan/appmanage/util/w;->b()Lcom/yunpan/appmanage/util/w;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yunpan/appmanage/util/w;->A()V
    :try_end_40
    .catch Ljava/lang/Exception; {:try_start_40 .. :try_end_40} :catch_6

    :cond_3c
    move-object/from16 v2, v26

    const/4 v3, 0x0

    .line 224
    :try_start_41
    iput v3, v2, Lfa/i;->a:I
    :try_end_41
    .catch Ljava/lang/Exception; {:try_start_41 .. :try_end_41} :catch_c

    move-object/from16 v3, v16

    .line 225
    :try_start_42
    iput-object v3, v2, Lfa/i;->b:Ljava/lang/String;

    .line 226
    iget-object v0, v2, Lfa/i;->c:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 227
    iget-object v0, v2, Lfa/i;->c:Ljava/util/ArrayList;

    iget-object v4, v2, Lfa/i;->b:Ljava/lang/String;

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 228
    invoke-static {}, Lcom/yunpan/appmanage/util/w;->b()Lcom/yunpan/appmanage/util/w;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yunpan/appmanage/util/w;->c()Z

    move-result v0

    if-eqz v0, :cond_43

    .line 229
    const-string v0, "adb\u8fde\u63a5\u6210\u529f"

    invoke-static {v0}, Lcom/yunpan/appmanage/util/a0;->w(Ljava/lang/String;)V

    goto/16 :goto_20

    :goto_1c
    move-object v4, v0

    goto :goto_1e

    :catch_b
    move-exception v0

    goto :goto_1c

    :catch_c
    move-exception v0

    :goto_1d
    move-object/from16 v3, v16

    goto :goto_1c

    :catch_d
    move-exception v0

    move-object/from16 v3, v16

    move-object/from16 v2, v26

    goto :goto_1c

    :cond_3d
    move-object/from16 v3, v16

    move-object/from16 v2, v26

    .line 230
    new-instance v0, Ljava/lang/Exception;

    const-string v4, "\u65e0\u6cd5\u8fde\u63a5\uff0c\u81ea\u52a8\u6253\u5f00\u65e0\u7ebfadb"

    invoke-direct {v0, v4}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_42
    .catch Ljava/lang/Exception; {:try_start_42 .. :try_end_42} :catch_b

    :cond_3e
    move-object/from16 v3, v16

    move-object/from16 v16, v19

    move-object/from16 v19, v2

    move-object/from16 v2, v26

    move-wide/from16 v25, v4

    move-object/from16 v4, v18

    move-object/from16 v18, v20

    const/16 v20, 0x15b3

    move-object/from16 v20, v18

    move-object/from16 v18, v4

    move-wide/from16 v4, v25

    move-object/from16 v31, v3

    move-object v3, v2

    move-object/from16 v2, v19

    move-object/from16 v19, v16

    move-object/from16 v16, v31

    goto/16 :goto_7

    :catch_e
    move-exception v0

    move-object v2, v3

    goto :goto_1d

    :catch_f
    move-exception v0

    move-object v2, v3

    goto :goto_1d

    :catch_10
    move-exception v0

    move-object v2, v3

    move-object/from16 v24, v5

    goto :goto_1d

    .line 231
    :goto_1e
    invoke-virtual {v4}, Ljava/lang/Throwable;->printStackTrace()V

    .line 232
    invoke-static {}, Lwa/u;->a()Lwa/u;

    move-result-object v0

    iget-boolean v0, v0, Lwa/u;->v:Z

    if-eqz v0, :cond_3f

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v5, "\u8fde\u63a5\u5931\u8d25\uff1a"

    invoke-direct {v0, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lwa/w;->b(Ljava/lang/String;)V

    :cond_3f
    const/4 v5, -0x1

    .line 233
    iput v5, v2, Lfa/i;->a:I

    .line 234
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v5, "ADB\u8fde\u63a5\u5931\u8d25\uff0c\u8bf7\u786e\u4fdd\u7cfb\u7edf\u5df2\u5f00\u542fUSB\u65e0\u7ebf\u8c03\u8bd5\uff0c\u5e76\u4e14\u6b63\u786e\u8bbe\u7f6e\u65e0\u7ebfadb\u7aef\u53e3\uff0c\u60a8\u5728\u7ba1\u5bb6\u4e2d\u8bbe\u7f6e\u7684\u7aef\u53e3\u662f\uff1a"

    invoke-direct {v0, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Lcom/yunpan/appmanage/util/w;->b()Lcom/yunpan/appmanage/util/w;

    move-result-object v5

    .line 235
    iget v5, v5, Lcom/yunpan/appmanage/util/w;->k:I

    .line 236
    invoke-static {v0, v5, v10}, Landroid/support/v4/media/session/a;->s(Ljava/lang/StringBuilder;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 237
    iput-object v0, v2, Lfa/i;->b:Ljava/lang/String;

    .line 238
    iget-object v5, v2, Lfa/i;->c:Ljava/util/ArrayList;

    const/4 v6, 0x0

    invoke-virtual {v5, v6, v0}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 239
    iget-object v0, v2, Lfa/i;->c:Ljava/util/ArrayList;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 v5, 0x1

    .line 240
    invoke-virtual {v1, v5}, Lfa/j;->d(Z)V

    .line 241
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const-string v5, "\u672a\u8fde\u63a5"

    const/16 v6, 0x15

    if-lt v0, v6, :cond_42

    move-object/from16 v6, v24

    .line 242
    :try_start_43
    iput-object v6, v1, Lfa/j;->h:Ljava/lang/String;

    .line 243
    sget-object v0, Lfa/l;->a:Lfa/m;

    .line 244
    invoke-static {}, Lcom/yunpan/appmanage/util/k;->f()Lcom/yunpan/appmanage/util/k;

    move-result-object v6

    iget-object v6, v6, Lcom/yunpan/appmanage/util/k;->a:Landroid/content/ContextWrapper;

    invoke-virtual {v0, v6}, Lfa/m;->M(Landroid/content/Context;)V

    .line 245
    sget-object v0, Lfa/l;->a:Lfa/m;

    .line 246
    invoke-virtual {v0}, Lio/github/muntashirakon/adb/AbsAdbConnectionManager;->isConnected()Z

    move-result v0

    if-eqz v0, :cond_40

    .line 247
    iput-object v15, v1, Lfa/j;->h:Ljava/lang/String;

    const/4 v6, 0x0

    .line 248
    iput v6, v2, Lfa/i;->a:I

    .line 249
    iput-object v3, v2, Lfa/i;->b:Ljava/lang/String;

    .line 250
    iget-object v0, v2, Lfa/i;->c:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 251
    iget-object v0, v2, Lfa/i;->c:Ljava/util/ArrayList;

    iget-object v3, v2, Lfa/i;->b:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_20

    :catch_11
    move-exception v0

    goto :goto_1f

    .line 252
    :cond_40
    iput-object v5, v1, Lfa/j;->h:Ljava/lang/String;
    :try_end_43
    .catch Ljava/lang/Exception; {:try_start_43 .. :try_end_43} :catch_11

    goto :goto_20

    .line 253
    :goto_1f
    invoke-static {}, Lwa/u;->a()Lwa/u;

    move-result-object v3

    iget-boolean v3, v3, Lwa/u;->v:Z

    if-eqz v3, :cond_41

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v6, "AdbPair\u8fde\u63a5\u5931\u8d25\uff1a"

    invoke-direct {v3, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lwa/w;->b(Ljava/lang/String;)V

    .line 254
    :cond_41
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 255
    iput-object v5, v1, Lfa/j;->h:Ljava/lang/String;

    goto :goto_20

    .line 256
    :cond_42
    iput-object v5, v1, Lfa/j;->h:Ljava/lang/String;

    .line 257
    :cond_43
    :goto_20
    invoke-static {}, Lcom/yunpan/appmanage/util/k;->f()Lcom/yunpan/appmanage/util/k;

    move-result-object v0

    const/4 v3, 0x1

    iput-boolean v3, v0, Lcom/yunpan/appmanage/util/k;->h:Z

    .line 258
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    const/16 v3, 0x64

    .line 259
    iput v3, v0, Landroid/os/Message;->what:I

    .line 260
    iput-object v2, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v2, v23

    .line 261
    invoke-virtual {v2, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public final k(Ljava/lang/String;)Ljava/lang/String;
    .locals 8

    .line 1
    const/4 v0, 0x0

    .line 2
    :try_start_0
    const-string v1, "install:"

    .line 3
    .line 4
    invoke-virtual {p1, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 5
    .line 6
    .line 7
    move-result v1

    .line 8
    if-eqz v1, :cond_0

    .line 9
    .line 10
    const-string p1, "\u4e0d\u652f\u6301adb install\u6d41\u5f0f\u5b89\u88c5\uff0c\u8bf7\u7528pm install"

    .line 11
    .line 12
    return-object p1

    .line 13
    :catchall_0
    move-exception p1

    .line 14
    move-object v1, v0

    .line 15
    goto/16 :goto_2

    .line 16
    .line 17
    :catch_0
    move-object p1, v0

    .line 18
    goto/16 :goto_3

    .line 19
    .line 20
    :cond_0
    iget-object v1, p0, Lfa/j;->b:Ly9/b;

    .line 21
    .line 22
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    .line 23
    .line 24
    .line 25
    move-result-object p1

    .line 26
    invoke-virtual {v1, p1}, Ly9/b;->J(Ljava/lang/String;)Ly9/f;

    .line 27
    .line 28
    .line 29
    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 30
    :try_start_1
    iget-object v1, p0, Lfa/j;->c:Ljava/net/Socket;

    .line 31
    .line 32
    if-eqz v1, :cond_5

    .line 33
    .line 34
    iget-object v0, p1, Ly9/f;->e:Ly9/g;

    .line 35
    .line 36
    if-eqz v0, :cond_4

    .line 37
    .line 38
    const-wide/16 v1, 0x29a

    .line 39
    .line 40
    invoke-static {v1, v2}, Ljava/lang/Thread;->sleep(J)V

    .line 41
    .line 42
    .line 43
    new-instance v1, Ljava/io/ByteArrayOutputStream;

    .line 44
    .line 45
    invoke-direct {v1}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 46
    .line 47
    .line 48
    const/16 v2, 0x1a0a

    .line 49
    .line 50
    new-array v2, v2, [B

    .line 51
    .line 52
    const/4 v3, 0x0

    .line 53
    const/4 v4, 0x0

    .line 54
    :cond_1
    invoke-virtual {v0, v2}, Ljava/io/InputStream;->read([B)I

    .line 55
    .line 56
    .line 57
    move-result v5

    .line 58
    if-gtz v5, :cond_3

    .line 59
    .line 60
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->size()I

    .line 61
    .line 62
    .line 63
    move-result v5

    .line 64
    const/4 v6, 0x5

    .line 65
    if-le v5, v6, :cond_2

    .line 66
    .line 67
    goto :goto_1

    .line 68
    :cond_2
    add-int/lit8 v4, v4, 0x1

    .line 69
    .line 70
    const-wide/16 v5, 0x14d

    .line 71
    .line 72
    invoke-static {v5, v6}, Ljava/lang/Thread;->sleep(J)V

    .line 73
    .line 74
    .line 75
    goto :goto_0

    .line 76
    :catchall_1
    move-exception v1

    .line 77
    move-object v7, v1

    .line 78
    move-object v1, p1

    .line 79
    move-object p1, v7

    .line 80
    goto :goto_2

    .line 81
    :cond_3
    invoke-virtual {v1, v2, v3, v5}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    .line 82
    .line 83
    .line 84
    :goto_0
    const/16 v5, 0xa

    .line 85
    .line 86
    if-lt v4, v5, :cond_1

    .line 87
    .line 88
    :goto_1
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    .line 89
    .line 90
    .line 91
    move-result-object v1

    .line 92
    array-length v2, v1

    .line 93
    new-instance v2, Ljava/lang/String;

    .line 94
    .line 95
    const-string v3, "UTF-8"

    .line 96
    .line 97
    invoke-static {v3}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    .line 98
    .line 99
    .line 100
    move-result-object v3

    .line 101
    invoke-direct {v2, v1, v3}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 102
    .line 103
    .line 104
    invoke-static {v0}, Lq4/a;->e(Ljava/io/Closeable;)V

    .line 105
    .line 106
    .line 107
    invoke-static {p1}, Lq4/a;->e(Ljava/io/Closeable;)V

    .line 108
    .line 109
    .line 110
    return-object v2

    .line 111
    :cond_4
    :try_start_2
    new-instance v1, Ljava/lang/Exception;

    .line 112
    .line 113
    const-string v2, "\u8fde\u63a5\u8f93\u51fa\u6d41\u51fa\u9519"

    .line 114
    .line 115
    invoke-direct {v1, v2}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    .line 116
    .line 117
    .line 118
    throw v1

    .line 119
    :cond_5
    new-instance v1, Ljava/lang/Exception;

    .line 120
    .line 121
    const-string v2, "\u672a\u8fde\u63a5"

    .line 122
    .line 123
    invoke-direct {v1, v2}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    .line 124
    .line 125
    .line 126
    throw v1
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 127
    :goto_2
    invoke-static {v0}, Lq4/a;->e(Ljava/io/Closeable;)V

    .line 128
    .line 129
    .line 130
    invoke-static {v1}, Lq4/a;->e(Ljava/io/Closeable;)V

    .line 131
    .line 132
    .line 133
    throw p1

    .line 134
    :catch_1
    :goto_3
    invoke-static {v0}, Lq4/a;->e(Ljava/io/Closeable;)V

    .line 135
    .line 136
    .line 137
    invoke-static {p1}, Lq4/a;->e(Ljava/io/Closeable;)V

    .line 138
    .line 139
    .line 140
    const-string p1, ""

    .line 141
    .line 142
    return-object p1
.end method

.method public final l(Ljava/lang/String;)V
    .locals 4

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 4
    .line 5
    .line 6
    sget-object v1, Lcom/yunpan/appmanage/util/k;->u0:Ljava/text/DecimalFormat;

    .line 7
    .line 8
    sget-object v1, Lcom/yunpan/appmanage/util/j;->a:Lcom/yunpan/appmanage/util/k;

    .line 9
    .line 10
    iget-boolean v2, v1, Lcom/yunpan/appmanage/util/k;->g:Z

    .line 11
    .line 12
    const-string v3, ""

    .line 13
    .line 14
    if-eqz v2, :cond_0

    .line 15
    .line 16
    const-string v2, "cmd "

    .line 17
    .line 18
    goto :goto_0

    .line 19
    :cond_0
    move-object v2, v3

    .line 20
    :goto_0
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 21
    .line 22
    .line 23
    const-string v2, "appops set"

    .line 24
    .line 25
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 26
    .line 27
    .line 28
    iget v2, v1, Lcom/yunpan/appmanage/util/k;->n:I

    .line 29
    .line 30
    if-nez v2, :cond_1

    .line 31
    .line 32
    goto :goto_1

    .line 33
    :cond_1
    new-instance v2, Ljava/lang/StringBuilder;

    .line 34
    .line 35
    const-string v3, " --user "

    .line 36
    .line 37
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 38
    .line 39
    .line 40
    iget v1, v1, Lcom/yunpan/appmanage/util/k;->n:I

    .line 41
    .line 42
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 43
    .line 44
    .line 45
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 46
    .line 47
    .line 48
    move-result-object v3

    .line 49
    :goto_1
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 50
    .line 51
    .line 52
    const-string v1, " "

    .line 53
    .line 54
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 55
    .line 56
    .line 57
    sget-object v2, Lcom/yunpan/appmanage/base/AppStart;->h:Lcom/yunpan/appmanage/base/AppStart;

    .line 58
    .line 59
    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    .line 60
    .line 61
    .line 62
    move-result-object v2

    .line 63
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 64
    .line 65
    .line 66
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 67
    .line 68
    .line 69
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 70
    .line 71
    .line 72
    const-string p1, " allow"

    .line 73
    .line 74
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 75
    .line 76
    .line 77
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 78
    .line 79
    .line 80
    move-result-object p1

    .line 81
    invoke-virtual {p0, p1}, Lfa/j;->c(Ljava/lang/String;)Lfa/i;

    .line 82
    .line 83
    .line 84
    return-void
.end method

.method public final m()V
    .locals 7

    .line 1
    const-wide/16 v0, 0x29a

    .line 2
    .line 3
    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0}, Lfa/j;->i()Z

    .line 7
    .line 8
    .line 9
    move-result v0

    .line 10
    if-eqz v0, :cond_0

    .line 11
    .line 12
    :try_start_0
    iget-object v1, p0, Lfa/j;->b:Ly9/b;

    .line 13
    .line 14
    iget-boolean v0, v1, Ly9/b;->f:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 15
    .line 16
    goto :goto_0

    .line 17
    :catch_0
    nop

    .line 18
    :cond_0
    :goto_0
    if-nez v0, :cond_4

    .line 19
    .line 20
    :try_start_1
    iget-object v0, p0, Lfa/j;->e:Ly9/g;

    .line 21
    .line 22
    invoke-static {v0}, Lq4/a;->e(Ljava/io/Closeable;)V

    .line 23
    .line 24
    .line 25
    iget-object v0, p0, Lfa/j;->d:Ly9/f;

    .line 26
    .line 27
    invoke-static {v0}, Lq4/a;->e(Ljava/io/Closeable;)V

    .line 28
    .line 29
    .line 30
    iget-object v0, p0, Lfa/j;->b:Ly9/b;

    .line 31
    .line 32
    invoke-static {v0}, Lq4/a;->e(Ljava/io/Closeable;)V

    .line 33
    .line 34
    .line 35
    iget-object v0, p0, Lfa/j;->c:Ljava/net/Socket;

    .line 36
    .line 37
    invoke-static {v0}, Lq4/a;->e(Ljava/io/Closeable;)V

    .line 38
    .line 39
    .line 40
    const/4 v0, 0x0

    .line 41
    iput-object v0, p0, Lfa/j;->e:Ly9/g;

    .line 42
    .line 43
    iput-object v0, p0, Lfa/j;->d:Ly9/f;

    .line 44
    .line 45
    iput-object v0, p0, Lfa/j;->b:Ly9/b;

    .line 46
    .line 47
    iput-object v0, p0, Lfa/j;->c:Ljava/net/Socket;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 48
    .line 49
    :catch_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 50
    .line 51
    .line 52
    move-result-wide v0

    .line 53
    :cond_1
    :try_start_2
    new-instance v2, Ljava/net/Socket;

    .line 54
    .line 55
    const-string v3, ""

    .line 56
    .line 57
    sget-object v4, Lcom/yunpan/appmanage/util/v;->a:Lcom/yunpan/appmanage/util/w;

    .line 58
    .line 59
    iget v4, v4, Lcom/yunpan/appmanage/util/w;->k:I

    .line 60
    .line 61
    invoke-direct {v2, v3, v4}, Ljava/net/Socket;-><init>(Ljava/lang/String;I)V

    .line 62
    .line 63
    .line 64
    iput-object v2, p0, Lfa/j;->c:Ljava/net/Socket;

    .line 65
    .line 66
    invoke-virtual {v2}, Ljava/net/Socket;->isClosed()Z

    .line 67
    .line 68
    .line 69
    move-result v2
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    .line 70
    if-nez v2, :cond_2

    .line 71
    .line 72
    goto :goto_1

    .line 73
    :catch_2
    nop

    .line 74
    :cond_2
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 75
    .line 76
    .line 77
    move-result-wide v2

    .line 78
    sub-long/2addr v2, v0

    .line 79
    const-wide/16 v4, 0x1770

    .line 80
    .line 81
    cmp-long v6, v2, v4

    .line 82
    .line 83
    if-ltz v6, :cond_1

    .line 84
    .line 85
    :goto_1
    iget-object v0, p0, Lfa/j;->c:Ljava/net/Socket;

    .line 86
    .line 87
    if-eqz v0, :cond_3

    .line 88
    .line 89
    invoke-virtual {v0}, Ljava/net/Socket;->isClosed()Z

    .line 90
    .line 91
    .line 92
    move-result v0

    .line 93
    if-nez v0, :cond_3

    .line 94
    .line 95
    iget-object v0, p0, Lfa/j;->c:Ljava/net/Socket;

    .line 96
    .line 97
    iget-object v1, p0, Lfa/j;->i:Ly9/c;

    .line 98
    .line 99
    invoke-static {v0, v1}, Ly9/b;->A(Ljava/net/Socket;Ly9/c;)Ly9/b;

    .line 100
    .line 101
    .line 102
    move-result-object v0

    .line 103
    iput-object v0, p0, Lfa/j;->b:Ly9/b;

    .line 104
    .line 105
    invoke-virtual {v0}, Ly9/b;->r()V

    .line 106
    .line 107
    .line 108
    goto :goto_2

    .line 109
    :cond_3
    new-instance v0, Ljava/lang/Exception;

    .line 110
    .line 111
    const-string v1, "\u672a\u8fde\u63a5\uff0c\u63d0\u6743\u540e\u8fde\u63a5\u5931\u8d25"

    .line 112
    .line 113
    invoke-direct {v0, v1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    .line 114
    .line 115
    .line 116
    throw v0

    .line 117
    :cond_4
    :goto_2
    invoke-virtual {p0}, Lfa/j;->a()V

    .line 118
    .line 119
    .line 120
    const-string v0, "\u5df2\u8fde\u63a5"

    .line 121
    .line 122
    iput-object v0, p0, Lfa/j;->h:Ljava/lang/String;

    .line 123
    .line 124
    return-void
.end method

.method public final n(Ljava/lang/String;)Lfa/i;
    .locals 3

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    invoke-virtual {p0}, Lfa/j;->e()V

    .line 3
    .line 4
    .line 5
    iget-object v0, p0, Lfa/j;->d:Ly9/f;

    .line 6
    .line 7
    new-instance v1, Ljava/lang/StringBuilder;

    .line 8
    .line 9
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 10
    .line 11
    .line 12
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 13
    .line 14
    .line 15
    const-string v2, "\n"

    .line 16
    .line 17
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 18
    .line 19
    .line 20
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 21
    .line 22
    .line 23
    move-result-object v1

    .line 24
    invoke-virtual {v0, v1}, Ly9/f;->A(Ljava/lang/String;)V

    .line 25
    .line 26
    .line 27
    const-string v0, "cp "

    .line 28
    .line 29
    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 30
    .line 31
    .line 32
    move-result v0

    .line 33
    if-eqz v0, :cond_0

    .line 34
    .line 35
    const p1, 0x2dc6c0

    .line 36
    .line 37
    .line 38
    goto :goto_2

    .line 39
    :cond_0
    const-string v0, "\\cp "

    .line 40
    .line 41
    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 42
    .line 43
    .line 44
    move-result v0

    .line 45
    if-nez v0, :cond_7

    .line 46
    .line 47
    const-string v0, "cp -R \'"

    .line 48
    .line 49
    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 50
    .line 51
    .line 52
    move-result v0

    .line 53
    if-eqz v0, :cond_1

    .line 54
    .line 55
    goto :goto_1

    .line 56
    :cond_1
    const-string v0, "ls -lR "

    .line 57
    .line 58
    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 59
    .line 60
    .line 61
    move-result v0

    .line 62
    if-eqz v0, :cond_2

    .line 63
    .line 64
    const p1, 0x2dc6c2

    .line 65
    .line 66
    .line 67
    goto :goto_2

    .line 68
    :cond_2
    const-string v0, "pm install "

    .line 69
    .line 70
    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 71
    .line 72
    .line 73
    move-result v0

    .line 74
    const v1, 0x927c0

    .line 75
    .line 76
    .line 77
    if-eqz v0, :cond_3

    .line 78
    .line 79
    :goto_0
    const p1, 0x927c0

    .line 80
    .line 81
    .line 82
    goto :goto_2

    .line 83
    :cond_3
    const-string v0, "pm install-write "

    .line 84
    .line 85
    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 86
    .line 87
    .line 88
    move-result v0

    .line 89
    if-eqz v0, :cond_4

    .line 90
    .line 91
    goto :goto_0

    .line 92
    :cond_4
    const-string v0, "cmd package install"

    .line 93
    .line 94
    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 95
    .line 96
    .line 97
    move-result v0

    .line 98
    if-eqz v0, :cond_5

    .line 99
    .line 100
    goto :goto_0

    .line 101
    :cond_5
    const-string v0, "rm "

    .line 102
    .line 103
    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 104
    .line 105
    .line 106
    move-result p1

    .line 107
    if-eqz p1, :cond_6

    .line 108
    .line 109
    const/16 p1, 0x3a98

    .line 110
    .line 111
    goto :goto_2

    .line 112
    :cond_6
    const p1, 0xc350

    .line 113
    .line 114
    .line 115
    goto :goto_2

    .line 116
    :catchall_0
    move-exception p1

    .line 117
    goto :goto_3

    .line 118
    :cond_7
    :goto_1
    const p1, 0x2dc6c1

    .line 119
    .line 120
    .line 121
    :goto_2
    int-to-long v0, p1

    .line 122
    invoke-virtual {p0, v0, v1}, Lfa/j;->f(J)Lfa/i;

    .line 123
    .line 124
    .line 125
    move-result-object p1

    .line 126
    monitor-exit p0

    .line 127
    return-object p1

    .line 128
    :goto_3
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 129
    goto :goto_5

    .line 130
    :goto_4
    throw p1

    .line 131
    :goto_5
    goto :goto_4
.end method

.method public final o()V
    .locals 2

    .line 1
    :try_start_0
    iget-object v0, p0, Lfa/j;->d:Ly9/f;

    .line 2
    .line 3
    const/4 v1, 0x3

    .line 4
    new-array v1, v1, [B

    .line 5
    .line 6
    fill-array-data v1, :array_0

    .line 7
    .line 8
    .line 9
    invoke-virtual {v0, v1}, Ly9/f;->J([B)V

    .line 10
    .line 11
    .line 12
    const-wide/16 v0, 0x3c

    .line 13
    .line 14
    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 15
    .line 16
    .line 17
    :catch_0
    return-void

    .line 18
    nop

    .line 19
    :array_0
    .array-data 1
        0x0t
        0x1ct
        0xat
    .end array-data
.end method
