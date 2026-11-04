.class public final Li6/a;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static volatile b:Li6/a;


# instance fields
.field public final a:Ljava/util/concurrent/CopyOnWriteArrayList;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 5
    .line 6
    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Li6/a;->a:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 10
    .line 11
    return-void
.end method

.method public static a()Li6/a;
    .locals 2

    .line 1
    sget-object v0, Li6/a;->b:Li6/a;

    .line 2
    .line 3
    if-nez v0, :cond_1

    .line 4
    .line 5
    const-class v0, Li6/a;

    .line 6
    .line 7
    monitor-enter v0

    .line 8
    :try_start_0
    sget-object v1, Li6/a;->b:Li6/a;

    .line 9
    .line 10
    if-nez v1, :cond_0

    .line 11
    .line 12
    new-instance v1, Li6/a;

    .line 13
    .line 14
    invoke-direct {v1}, Li6/a;-><init>()V

    .line 15
    .line 16
    .line 17
    sput-object v1, Li6/a;->b:Li6/a;

    .line 18
    .line 19
    goto :goto_0

    .line 20
    :catchall_0
    move-exception v1

    .line 21
    goto :goto_1

    .line 22
    :cond_0
    :goto_0
    monitor-exit v0

    .line 23
    goto :goto_2

    .line 24
    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 25
    throw v1

    .line 26
    :cond_1
    :goto_2
    sget-object v0, Li6/a;->b:Li6/a;

    .line 27
    .line 28
    return-object v0
.end method

.method public static e(Lua/x4;[I)V
    .locals 5

    .line 1
    new-instance v0, Landroid/os/Bundle;

    .line 2
    .line 3
    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 4
    .line 5
    .line 6
    const-string v1, "CMD_ID_ARRAY"

    .line 7
    .line 8
    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putIntArray(Ljava/lang/String;[I)V

    .line 9
    .line 10
    .line 11
    invoke-static {}, Lk6/a;->a()Lk6/a;

    .line 12
    .line 13
    .line 14
    move-result-object p1

    .line 15
    new-instance v1, Lm6/a;

    .line 16
    .line 17
    invoke-direct {v1, v0}, Lm6/a;-><init>(Landroid/os/Bundle;)V

    .line 18
    .line 19
    .line 20
    iget-object p1, p1, Lk6/a;->a:Ll6/f;

    .line 21
    .line 22
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 23
    .line 24
    .line 25
    iget v0, v1, Lm6/a;->a:I

    .line 26
    .line 27
    if-nez v0, :cond_0

    .line 28
    .line 29
    const-string p0, "invalid event"

    .line 30
    .line 31
    invoke-static {p0}, Lif/a;->n0(Ljava/lang/String;)V

    .line 32
    .line 33
    .line 34
    goto/16 :goto_1

    .line 35
    .line 36
    :cond_0
    if-nez p0, :cond_1

    .line 37
    .line 38
    const-string p0, "invalid callback"

    .line 39
    .line 40
    invoke-static {p0}, Lif/a;->n0(Ljava/lang/String;)V

    .line 41
    .line 42
    .line 43
    goto/16 :goto_1

    .line 44
    .line 45
    :cond_1
    shr-int/lit8 v0, v0, 0x10

    .line 46
    .line 47
    invoke-virtual {p1, v0}, Ll6/f;->b(I)Ll6/d;

    .line 48
    .line 49
    .line 50
    move-result-object p1

    .line 51
    if-eqz p1, :cond_8

    .line 52
    .line 53
    new-instance v0, Ljava/lang/StringBuilder;

    .line 54
    .line 55
    const-string v2, "service="

    .line 56
    .line 57
    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 58
    .line 59
    .line 60
    iget-object v2, p1, Ll6/d;->c:Ll6/g;

    .line 61
    .line 62
    iget-object v2, v2, Ll6/g;->g:Ll6/h;

    .line 63
    .line 64
    invoke-virtual {v2}, Ljava/lang/Enum;->name()Ljava/lang/String;

    .line 65
    .line 66
    .line 67
    move-result-object v2

    .line 68
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 69
    .line 70
    .line 71
    const-string v2, "; event=327684"

    .line 72
    .line 73
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 74
    .line 75
    .line 76
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 77
    .line 78
    .line 79
    move-result-object v0

    .line 80
    invoke-static {v0}, Lif/a;->o0(Ljava/lang/String;)V

    .line 81
    .line 82
    .line 83
    iget-object v0, p1, Ll6/d;->c:Ll6/g;

    .line 84
    .line 85
    iget-boolean v0, v0, Ll6/g;->a:Z

    .line 86
    .line 87
    if-nez v0, :cond_2

    .line 88
    .line 89
    new-instance p0, Ljava/lang/StringBuilder;

    .line 90
    .line 91
    const-string v0, "service not install! name="

    .line 92
    .line 93
    invoke-direct {p0, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 94
    .line 95
    .line 96
    iget-object p1, p1, Ll6/d;->c:Ll6/g;

    .line 97
    .line 98
    iget-object p1, p1, Ll6/g;->g:Ll6/h;

    .line 99
    .line 100
    invoke-virtual {p1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    .line 101
    .line 102
    .line 103
    move-result-object p1

    .line 104
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 105
    .line 106
    .line 107
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 108
    .line 109
    .line 110
    move-result-object p0

    .line 111
    invoke-static {p0}, Lif/a;->n0(Ljava/lang/String;)V

    .line 112
    .line 113
    .line 114
    goto :goto_1

    .line 115
    :cond_2
    iget-object v0, p1, Ll6/d;->e:Lj6/c;

    .line 116
    .line 117
    if-nez v0, :cond_4

    .line 118
    .line 119
    const-string v0, "service unbind"

    .line 120
    .line 121
    invoke-static {v0}, Lif/a;->o0(Ljava/lang/String;)V

    .line 122
    .line 123
    .line 124
    iget-object v0, p1, Ll6/d;->c:Ll6/g;

    .line 125
    .line 126
    iget-boolean v0, v0, Ll6/g;->b:Z

    .line 127
    .line 128
    if-eqz v0, :cond_3

    .line 129
    .line 130
    new-instance v0, Ljava/lang/StringBuilder;

    .line 131
    .line 132
    const-string v2, "system service! name="

    .line 133
    .line 134
    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 135
    .line 136
    .line 137
    iget-object v2, p1, Ll6/d;->c:Ll6/g;

    .line 138
    .line 139
    iget-object v2, v2, Ll6/g;->g:Ll6/h;

    .line 140
    .line 141
    invoke-virtual {v2}, Ljava/lang/Enum;->name()Ljava/lang/String;

    .line 142
    .line 143
    .line 144
    move-result-object v2

    .line 145
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 146
    .line 147
    .line 148
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 149
    .line 150
    .line 151
    move-result-object v0

    .line 152
    invoke-static {v0}, Lif/a;->o0(Ljava/lang/String;)V

    .line 153
    .line 154
    .line 155
    :cond_3
    invoke-virtual {p1}, Ll6/d;->a()Z

    .line 156
    .line 157
    .line 158
    :cond_4
    :try_start_0
    iget-object v0, p1, Ll6/d;->e:Lj6/c;

    .line 159
    .line 160
    if-eqz v0, :cond_5

    .line 161
    .line 162
    check-cast v0, Lj6/a;

    .line 163
    .line 164
    invoke-virtual {v0, v1, p0}, Lj6/a;->k(Lm6/a;Lua/x4;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 165
    .line 166
    .line 167
    goto :goto_1

    .line 168
    :catch_0
    move-exception v0

    .line 169
    const-string v2, "VDBus unbind error!!!"

    .line 170
    .line 171
    invoke-static {v2}, Lif/a;->n0(Ljava/lang/String;)V

    .line 172
    .line 173
    .line 174
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 175
    .line 176
    .line 177
    :cond_5
    iget-object v0, p1, Ll6/d;->q:Ljava/util/ArrayList;

    .line 178
    .line 179
    monitor-enter v0

    .line 180
    :try_start_1
    iget-object v2, p1, Ll6/d;->q:Ljava/util/ArrayList;

    .line 181
    .line 182
    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 183
    .line 184
    .line 185
    move-result-object v2

    .line 186
    :cond_6
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 187
    .line 188
    .line 189
    move-result v3

    .line 190
    if-nez v3, :cond_7

    .line 191
    .line 192
    goto :goto_0

    .line 193
    :cond_7
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 194
    .line 195
    .line 196
    move-result-object v3

    .line 197
    check-cast v3, Ll6/c;

    .line 198
    .line 199
    iget-object v4, v3, Ll6/c;->b:Lm6/a;

    .line 200
    .line 201
    if-ne v1, v4, :cond_6

    .line 202
    .line 203
    iget-object v4, v3, Ll6/c;->a:Lua/x4;

    .line 204
    .line 205
    if-ne p0, v4, :cond_6

    .line 206
    .line 207
    iget-object v2, p1, Ll6/d;->q:Ljava/util/ArrayList;

    .line 208
    .line 209
    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 210
    .line 211
    .line 212
    :goto_0
    iget-object p1, p1, Ll6/d;->q:Ljava/util/ArrayList;

    .line 213
    .line 214
    new-instance v2, Ll6/c;

    .line 215
    .line 216
    invoke-direct {v2, v1, p0}, Ll6/c;-><init>(Lm6/a;Lua/x4;)V

    .line 217
    .line 218
    .line 219
    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 220
    .line 221
    .line 222
    monitor-exit v0

    .line 223
    goto :goto_1

    .line 224
    :catchall_0
    move-exception p0

    .line 225
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 226
    throw p0

    .line 227
    :cond_8
    :goto_1
    return-void
.end method

.method public static f(Lua/x4;)V
    .locals 5

    .line 1
    invoke-static {}, Lk6/a;->a()Lk6/a;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    new-instance v1, Lm6/a;

    .line 6
    .line 7
    new-instance v2, Landroid/os/Bundle;

    .line 8
    .line 9
    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    .line 10
    .line 11
    .line 12
    invoke-direct {v1, v2}, Lm6/a;-><init>(Landroid/os/Bundle;)V

    .line 13
    .line 14
    .line 15
    iget-object v0, v0, Lk6/a;->a:Ll6/f;

    .line 16
    .line 17
    if-nez p0, :cond_0

    .line 18
    .line 19
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 20
    .line 21
    .line 22
    const-string p0, "invalid callback"

    .line 23
    .line 24
    invoke-static {p0}, Lif/a;->n0(Ljava/lang/String;)V

    .line 25
    .line 26
    .line 27
    goto :goto_0

    .line 28
    :cond_0
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 29
    .line 30
    .line 31
    iget v2, v1, Lm6/a;->a:I

    .line 32
    .line 33
    shr-int/lit8 v2, v2, 0x10

    .line 34
    .line 35
    invoke-virtual {v0, v2}, Ll6/f;->b(I)Ll6/d;

    .line 36
    .line 37
    .line 38
    move-result-object v0

    .line 39
    if-eqz v0, :cond_2

    .line 40
    .line 41
    new-instance v2, Ljava/lang/StringBuilder;

    .line 42
    .line 43
    const-string v3, "service="

    .line 44
    .line 45
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 46
    .line 47
    .line 48
    iget-object v3, v0, Ll6/d;->c:Ll6/g;

    .line 49
    .line 50
    iget-object v4, v3, Ll6/g;->g:Ll6/h;

    .line 51
    .line 52
    invoke-virtual {v4}, Ljava/lang/Enum;->name()Ljava/lang/String;

    .line 53
    .line 54
    .line 55
    move-result-object v4

    .line 56
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 57
    .line 58
    .line 59
    const-string v4, "; event=327684"

    .line 60
    .line 61
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 62
    .line 63
    .line 64
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 65
    .line 66
    .line 67
    move-result-object v2

    .line 68
    invoke-static {v2}, Lif/a;->o0(Ljava/lang/String;)V

    .line 69
    .line 70
    .line 71
    iget-boolean v2, v3, Ll6/g;->a:Z

    .line 72
    .line 73
    if-nez v2, :cond_1

    .line 74
    .line 75
    new-instance p0, Ljava/lang/StringBuilder;

    .line 76
    .line 77
    const-string v0, "service not install! name="

    .line 78
    .line 79
    invoke-direct {p0, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 80
    .line 81
    .line 82
    iget-object v0, v3, Ll6/g;->g:Ll6/h;

    .line 83
    .line 84
    invoke-virtual {v0}, Ljava/lang/Enum;->name()Ljava/lang/String;

    .line 85
    .line 86
    .line 87
    move-result-object v0

    .line 88
    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 89
    .line 90
    .line 91
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 92
    .line 93
    .line 94
    move-result-object p0

    .line 95
    invoke-static {p0}, Lif/a;->n0(Ljava/lang/String;)V

    .line 96
    .line 97
    .line 98
    goto :goto_0

    .line 99
    :cond_1
    :try_start_0
    iget-object v0, v0, Ll6/d;->e:Lj6/c;

    .line 100
    .line 101
    if-eqz v0, :cond_2

    .line 102
    .line 103
    check-cast v0, Lj6/a;

    .line 104
    .line 105
    invoke-virtual {v0, v1, p0}, Lj6/a;->l(Lm6/a;Lua/x4;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 106
    .line 107
    .line 108
    goto :goto_0

    .line 109
    :catch_0
    move-exception p0

    .line 110
    const-string v0, "VDBus unbind error!!!"

    .line 111
    .line 112
    invoke-static {v0}, Lif/a;->n0(Ljava/lang/String;)V

    .line 113
    .line 114
    .line 115
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 116
    .line 117
    .line 118
    :cond_2
    :goto_0
    return-void
.end method


# virtual methods
.method public final b(Lcom/yunpan/appmanage/ui/ActivityTextDesaysvVds;)V
    .locals 3

    .line 1
    invoke-static {}, Lk6/a;->a()Lk6/a;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0, p1}, Lk6/a;->b(Lcom/yunpan/appmanage/ui/ActivityTextDesaysvVds;)V

    .line 6
    .line 7
    .line 8
    invoke-static {}, Lk6/a;->a()Lk6/a;

    .line 9
    .line 10
    .line 11
    move-result-object p1

    .line 12
    iget-object p1, p1, Lk6/a;->a:Ll6/f;

    .line 13
    .line 14
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 15
    .line 16
    .line 17
    const/4 v0, 0x5

    .line 18
    invoke-virtual {p1, v0}, Ll6/f;->b(I)Ll6/d;

    .line 19
    .line 20
    .line 21
    move-result-object p1

    .line 22
    if-eqz p1, :cond_1

    .line 23
    .line 24
    new-instance v1, Ljava/lang/StringBuilder;

    .line 25
    .line 26
    const-string v2, "service="

    .line 27
    .line 28
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 29
    .line 30
    .line 31
    iget-object v2, p1, Ll6/d;->c:Ll6/g;

    .line 32
    .line 33
    iget-object v2, v2, Ll6/g;->g:Ll6/h;

    .line 34
    .line 35
    invoke-virtual {v2}, Ljava/lang/Enum;->name()Ljava/lang/String;

    .line 36
    .line 37
    .line 38
    move-result-object v2

    .line 39
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 40
    .line 41
    .line 42
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 43
    .line 44
    .line 45
    move-result-object v1

    .line 46
    invoke-static {v1}, Lif/a;->o0(Ljava/lang/String;)V

    .line 47
    .line 48
    .line 49
    iget-object v1, p1, Ll6/d;->l:Ljava/util/ArrayList;

    .line 50
    .line 51
    monitor-enter v1

    .line 52
    :try_start_0
    iget-object v2, p1, Ll6/d;->l:Ljava/util/ArrayList;

    .line 53
    .line 54
    invoke-virtual {v2, p0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    .line 55
    .line 56
    .line 57
    move-result v2

    .line 58
    if-nez v2, :cond_0

    .line 59
    .line 60
    iget-object v2, p1, Ll6/d;->l:Ljava/util/ArrayList;

    .line 61
    .line 62
    invoke-virtual {v2, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 63
    .line 64
    .line 65
    goto :goto_0

    .line 66
    :catchall_0
    move-exception p1

    .line 67
    goto :goto_1

    .line 68
    :cond_0
    :goto_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 69
    iget-object v1, p1, Ll6/d;->e:Lj6/c;

    .line 70
    .line 71
    if-eqz v1, :cond_1

    .line 72
    .line 73
    iget-object p1, p1, Ll6/d;->c:Ll6/g;

    .line 74
    .line 75
    iget-object p1, p1, Ll6/g;->g:Ll6/h;

    .line 76
    .line 77
    invoke-virtual {p0, p1}, Li6/a;->c(Ll6/h;)V

    .line 78
    .line 79
    .line 80
    goto :goto_2

    .line 81
    :goto_1
    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 82
    throw p1

    .line 83
    :cond_1
    :goto_2
    invoke-static {}, Lk6/a;->a()Lk6/a;

    .line 84
    .line 85
    .line 86
    move-result-object p1

    .line 87
    iget-object p1, p1, Lk6/a;->a:Ll6/f;

    .line 88
    .line 89
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 90
    .line 91
    .line 92
    invoke-virtual {p1, v0}, Ll6/f;->b(I)Ll6/d;

    .line 93
    .line 94
    .line 95
    move-result-object p1

    .line 96
    if-eqz p1, :cond_2

    .line 97
    .line 98
    invoke-virtual {p1}, Ll6/d;->a()Z

    .line 99
    .line 100
    .line 101
    :cond_2
    return-void
.end method

.method public final c(Ll6/h;)V
    .locals 2

    .line 1
    if-eqz p1, :cond_0

    .line 2
    .line 3
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    :cond_0
    sget-object v0, Ll6/h;->g:Ll6/h;

    .line 7
    .line 8
    if-ne p1, v0, :cond_3

    .line 9
    .line 10
    iget-object p1, p0, Li6/a;->a:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 11
    .line 12
    monitor-enter p1

    .line 13
    :try_start_0
    iget-object v0, p0, Li6/a;->a:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 14
    .line 15
    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->size()I

    .line 16
    .line 17
    .line 18
    move-result v0

    .line 19
    if-gtz v0, :cond_1

    .line 20
    .line 21
    monitor-exit p1

    .line 22
    goto :goto_1

    .line 23
    :catchall_0
    move-exception v0

    .line 24
    goto :goto_0

    .line 25
    :cond_1
    iget-object v0, p0, Li6/a;->a:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 26
    .line 27
    const/4 v1, 0x0

    .line 28
    invoke-virtual {v0, v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->get(I)Ljava/lang/Object;

    .line 29
    .line 30
    .line 31
    move-result-object v0

    .line 32
    if-nez v0, :cond_2

    .line 33
    .line 34
    const/4 v0, 0x0

    .line 35
    throw v0

    .line 36
    :cond_2
    new-instance v0, Ljava/lang/ClassCastException;

    .line 37
    .line 38
    invoke-direct {v0}, Ljava/lang/ClassCastException;-><init>()V

    .line 39
    .line 40
    .line 41
    throw v0

    .line 42
    :goto_0
    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 43
    throw v0

    .line 44
    :cond_3
    :goto_1
    return-void
.end method

.method public final d(Ll6/h;)V
    .locals 2

    .line 1
    if-eqz p1, :cond_0

    .line 2
    .line 3
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    :cond_0
    sget-object v0, Ll6/h;->g:Ll6/h;

    .line 7
    .line 8
    if-ne p1, v0, :cond_3

    .line 9
    .line 10
    iget-object p1, p0, Li6/a;->a:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 11
    .line 12
    monitor-enter p1

    .line 13
    :try_start_0
    iget-object v0, p0, Li6/a;->a:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 14
    .line 15
    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->size()I

    .line 16
    .line 17
    .line 18
    move-result v0

    .line 19
    if-gtz v0, :cond_1

    .line 20
    .line 21
    monitor-exit p1

    .line 22
    goto :goto_1

    .line 23
    :catchall_0
    move-exception v0

    .line 24
    goto :goto_0

    .line 25
    :cond_1
    iget-object v0, p0, Li6/a;->a:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 26
    .line 27
    const/4 v1, 0x0

    .line 28
    invoke-virtual {v0, v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->get(I)Ljava/lang/Object;

    .line 29
    .line 30
    .line 31
    move-result-object v0

    .line 32
    if-nez v0, :cond_2

    .line 33
    .line 34
    const/4 v0, 0x0

    .line 35
    throw v0

    .line 36
    :cond_2
    new-instance v0, Ljava/lang/ClassCastException;

    .line 37
    .line 38
    invoke-direct {v0}, Ljava/lang/ClassCastException;-><init>()V

    .line 39
    .line 40
    .line 41
    throw v0

    .line 42
    :goto_0
    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 43
    throw v0

    .line 44
    :cond_3
    :goto_1
    return-void
.end method
