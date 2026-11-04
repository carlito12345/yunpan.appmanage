.class public final Lcom/yunpan/appmanage/carsdk/u;
.super Landroid/os/Handler;
.source "SourceFile"


# instance fields
.field public final synthetic a:I

.field public final b:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(ILjava/lang/Object;)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/yunpan/appmanage/carsdk/u;->a:I

    iput-object p2, p0, Lcom/yunpan/appmanage/carsdk/u;->b:Ljava/lang/Object;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/Object;Landroid/os/Looper;I)V
    .locals 0

    .line 2
    iput p3, p0, Lcom/yunpan/appmanage/carsdk/u;->a:I

    iput-object p1, p0, Lcom/yunpan/appmanage/carsdk/u;->b:Ljava/lang/Object;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method

.method public constructor <init>(Lq/g;)V
    .locals 1

    const/16 v0, 0xe

    iput v0, p0, Lcom/yunpan/appmanage/carsdk/u;->a:I

    .line 3
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    .line 4
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/yunpan/appmanage/carsdk/u;->b:Ljava/lang/Object;

    return-void
.end method

.method private final a(Landroid/os/Message;)V
    .locals 3

    .line 1
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 2
    .line 3
    .line 4
    iget v0, p1, Landroid/os/Message;->what:I

    .line 5
    .line 6
    iget-object v1, p0, Lcom/yunpan/appmanage/carsdk/u;->b:Ljava/lang/Object;

    .line 7
    .line 8
    check-cast v1, Ll6/d;

    .line 9
    .line 10
    const/16 v2, 0x3e8

    .line 11
    .line 12
    if-ne v0, v2, :cond_1

    .line 13
    .line 14
    new-instance p1, Ljava/lang/StringBuilder;

    .line 15
    .line 16
    const-string v0, "MSG_RECONNECT_SERVICE count="

    .line 17
    .line 18
    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 19
    .line 20
    .line 21
    iget v0, v1, Ll6/d;->h:I

    .line 22
    .line 23
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 24
    .line 25
    .line 26
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 27
    .line 28
    .line 29
    move-result-object p1

    .line 30
    invoke-static {p1}, Lif/a;->o0(Ljava/lang/String;)V

    .line 31
    .line 32
    .line 33
    iget p1, v1, Ll6/d;->h:I

    .line 34
    .line 35
    const/16 v0, 0xa

    .line 36
    .line 37
    const/4 v2, 0x0

    .line 38
    if-lt p1, v0, :cond_0

    .line 39
    .line 40
    iput v2, v1, Ll6/d;->h:I

    .line 41
    .line 42
    return-void

    .line 43
    :cond_0
    add-int/lit8 p1, p1, 0x1

    .line 44
    .line 45
    iput p1, v1, Ll6/d;->h:I

    .line 46
    .line 47
    iput v2, v1, Ll6/d;->s:I

    .line 48
    .line 49
    invoke-virtual {v1}, Ll6/d;->a()Z

    .line 50
    .line 51
    .line 52
    return-void

    .line 53
    :cond_1
    const/16 v2, 0x7d0

    .line 54
    .line 55
    if-ne v0, v2, :cond_4

    .line 56
    .line 57
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 58
    .line 59
    check-cast p1, Lm6/a;

    .line 60
    .line 61
    if-nez p1, :cond_2

    .line 62
    .line 63
    new-instance v0, Ljava/lang/StringBuilder;

    .line 64
    .line 65
    const-string v2, "service="

    .line 66
    .line 67
    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 68
    .line 69
    .line 70
    iget-object v1, v1, Ll6/d;->c:Ll6/g;

    .line 71
    .line 72
    iget-object v1, v1, Ll6/g;->g:Ll6/h;

    .line 73
    .line 74
    invoke-virtual {v1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    .line 75
    .line 76
    .line 77
    move-result-object v1

    .line 78
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 79
    .line 80
    .line 81
    const-string v1, "; Invalid arguments: event="

    .line 82
    .line 83
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 84
    .line 85
    .line 86
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 87
    .line 88
    .line 89
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 90
    .line 91
    .line 92
    move-result-object p1

    .line 93
    invoke-static {p1}, Lif/a;->n0(Ljava/lang/String;)V

    .line 94
    .line 95
    .line 96
    goto :goto_1

    .line 97
    :cond_2
    iget-object p1, v1, Ll6/d;->c:Ll6/g;

    .line 98
    .line 99
    iget-object p1, p1, Ll6/g;->g:Ll6/h;

    .line 100
    .line 101
    invoke-virtual {p1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    .line 102
    .line 103
    .line 104
    iget-object v2, v1, Ll6/d;->j:Ljava/util/ArrayList;

    .line 105
    .line 106
    monitor-enter v2

    .line 107
    :try_start_0
    new-instance p1, Ljava/util/ArrayList;

    .line 108
    .line 109
    iget-object v0, v1, Ll6/d;->j:Ljava/util/ArrayList;

    .line 110
    .line 111
    invoke-direct {p1, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 112
    .line 113
    .line 114
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 115
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 116
    .line 117
    .line 118
    move-result-object p1

    .line 119
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 120
    .line 121
    .line 122
    move-result v0

    .line 123
    if-eqz v0, :cond_6

    .line 124
    .line 125
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 126
    .line 127
    .line 128
    move-result-object v0

    .line 129
    if-nez v0, :cond_3

    .line 130
    .line 131
    goto :goto_0

    .line 132
    :cond_3
    new-instance p1, Ljava/lang/ClassCastException;

    .line 133
    .line 134
    invoke-direct {p1}, Ljava/lang/ClassCastException;-><init>()V

    .line 135
    .line 136
    .line 137
    throw p1

    .line 138
    :catchall_0
    move-exception p1

    .line 139
    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 140
    throw p1

    .line 141
    :cond_4
    const/16 v1, 0xbb8

    .line 142
    .line 143
    if-eq v0, v1, :cond_5

    .line 144
    .line 145
    return-void

    .line 146
    :cond_5
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 147
    .line 148
    check-cast p1, Ljava/util/Map;

    .line 149
    .line 150
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    .line 151
    .line 152
    .line 153
    move-result-object p1

    .line 154
    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 155
    .line 156
    .line 157
    move-result-object p1

    .line 158
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 159
    .line 160
    .line 161
    move-result v0

    .line 162
    if-nez v0, :cond_7

    .line 163
    .line 164
    :cond_6
    :goto_1
    return-void

    .line 165
    :cond_7
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 166
    .line 167
    .line 168
    move-result-object p1

    .line 169
    check-cast p1, Ljava/util/Map$Entry;

    .line 170
    .line 171
    invoke-interface {p1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    .line 172
    .line 173
    .line 174
    move-result-object v0

    .line 175
    if-nez v0, :cond_8

    .line 176
    .line 177
    invoke-interface {p1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 178
    .line 179
    .line 180
    move-result-object p1

    .line 181
    check-cast p1, Lm6/a;

    .line 182
    .line 183
    const/4 p1, 0x0

    .line 184
    throw p1

    .line 185
    :cond_8
    new-instance p1, Ljava/lang/ClassCastException;

    .line 186
    .line 187
    invoke-direct {p1}, Ljava/lang/ClassCastException;-><init>()V

    .line 188
    .line 189
    .line 190
    goto :goto_3

    .line 191
    :goto_2
    throw p1

    .line 192
    :goto_3
    goto :goto_2
.end method

.method private final b(Landroid/os/Message;)V
    .locals 6

    .line 1
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 2
    .line 3
    .line 4
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 5
    .line 6
    check-cast v0, Lm6/a;

    .line 7
    .line 8
    iget v1, p1, Landroid/os/Message;->arg1:I

    .line 9
    .line 10
    new-instance v2, Ljava/lang/StringBuilder;

    .line 11
    .line 12
    const-string v3, "debounce event="

    .line 13
    .line 14
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 15
    .line 16
    .line 17
    iget p1, p1, Landroid/os/Message;->what:I

    .line 18
    .line 19
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 20
    .line 21
    .line 22
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 23
    .line 24
    .line 25
    move-result-object p1

    .line 26
    invoke-static {p1}, Lif/a;->o0(Ljava/lang/String;)V

    .line 27
    .line 28
    .line 29
    iget-object p1, p0, Lcom/yunpan/appmanage/carsdk/u;->b:Ljava/lang/Object;

    .line 30
    .line 31
    check-cast p1, Ll6/f;

    .line 32
    .line 33
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 34
    .line 35
    .line 36
    iget v2, v0, Lm6/a;->a:I

    .line 37
    .line 38
    shr-int/lit8 v2, v2, 0x10

    .line 39
    .line 40
    invoke-virtual {p1, v2}, Ll6/f;->b(I)Ll6/d;

    .line 41
    .line 42
    .line 43
    move-result-object p1

    .line 44
    if-eqz p1, :cond_9

    .line 45
    .line 46
    if-nez v1, :cond_5

    .line 47
    .line 48
    new-instance v1, Ljava/lang/StringBuilder;

    .line 49
    .line 50
    const-string v2, "service="

    .line 51
    .line 52
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 53
    .line 54
    .line 55
    iget-object v2, p1, Ll6/d;->c:Ll6/g;

    .line 56
    .line 57
    iget-object v2, v2, Ll6/g;->g:Ll6/h;

    .line 58
    .line 59
    invoke-virtual {v2}, Ljava/lang/Enum;->name()Ljava/lang/String;

    .line 60
    .line 61
    .line 62
    move-result-object v2

    .line 63
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 64
    .line 65
    .line 66
    const-string v2, "; event="

    .line 67
    .line 68
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 69
    .line 70
    .line 71
    iget v2, v0, Lm6/a;->a:I

    .line 72
    .line 73
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 74
    .line 75
    .line 76
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 77
    .line 78
    .line 79
    move-result-object v1

    .line 80
    invoke-static {v1}, Lif/a;->o0(Ljava/lang/String;)V

    .line 81
    .line 82
    .line 83
    iget-object v1, p1, Ll6/d;->c:Ll6/g;

    .line 84
    .line 85
    iget-boolean v1, v1, Ll6/g;->a:Z

    .line 86
    .line 87
    if-nez v1, :cond_0

    .line 88
    .line 89
    new-instance v0, Ljava/lang/StringBuilder;

    .line 90
    .line 91
    const-string v1, "service not install! name="

    .line 92
    .line 93
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

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
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 105
    .line 106
    .line 107
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 108
    .line 109
    .line 110
    move-result-object p1

    .line 111
    invoke-static {p1}, Lif/a;->n0(Ljava/lang/String;)V

    .line 112
    .line 113
    .line 114
    goto/16 :goto_1

    .line 115
    .line 116
    :cond_0
    iget-object v1, p1, Ll6/d;->e:Lj6/c;

    .line 117
    .line 118
    if-nez v1, :cond_1

    .line 119
    .line 120
    const-string v1, "service unbind"

    .line 121
    .line 122
    invoke-static {v1}, Lif/a;->o0(Ljava/lang/String;)V

    .line 123
    .line 124
    .line 125
    invoke-virtual {p1}, Ll6/d;->a()Z

    .line 126
    .line 127
    .line 128
    :cond_1
    :try_start_0
    iget-object v1, p1, Ll6/d;->e:Lj6/c;

    .line 129
    .line 130
    if-eqz v1, :cond_2

    .line 131
    .line 132
    check-cast v1, Lj6/a;

    .line 133
    .line 134
    invoke-virtual {v1, v0}, Lj6/a;->i(Lm6/a;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 135
    .line 136
    .line 137
    goto/16 :goto_1

    .line 138
    .line 139
    :catch_0
    move-exception v1

    .line 140
    const-string v2, "VDBus unbind error!!!"

    .line 141
    .line 142
    invoke-static {v2}, Lif/a;->n0(Ljava/lang/String;)V

    .line 143
    .line 144
    .line 145
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 146
    .line 147
    .line 148
    :cond_2
    iget-object v1, p1, Ll6/d;->m:Ljava/util/ArrayList;

    .line 149
    .line 150
    monitor-enter v1

    .line 151
    :try_start_1
    iget-object v2, p1, Ll6/d;->m:Ljava/util/ArrayList;

    .line 152
    .line 153
    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 154
    .line 155
    .line 156
    move-result-object v2

    .line 157
    :cond_3
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 158
    .line 159
    .line 160
    move-result v3

    .line 161
    if-nez v3, :cond_4

    .line 162
    .line 163
    goto :goto_0

    .line 164
    :cond_4
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 165
    .line 166
    .line 167
    move-result-object v3

    .line 168
    check-cast v3, Lm6/a;

    .line 169
    .line 170
    iget v4, v0, Lm6/a;->a:I

    .line 171
    .line 172
    iget v5, v3, Lm6/a;->a:I

    .line 173
    .line 174
    if-ne v4, v5, :cond_3

    .line 175
    .line 176
    iget-object v2, p1, Ll6/d;->m:Ljava/util/ArrayList;

    .line 177
    .line 178
    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 179
    .line 180
    .line 181
    :goto_0
    iget-object v2, p1, Ll6/d;->m:Ljava/util/ArrayList;

    .line 182
    .line 183
    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 184
    .line 185
    .line 186
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 187
    invoke-virtual {p1}, Ll6/d;->a()Z

    .line 188
    .line 189
    .line 190
    goto :goto_1

    .line 191
    :catchall_0
    move-exception p1

    .line 192
    :try_start_2
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 193
    throw p1

    .line 194
    :cond_5
    new-instance v1, Ljava/lang/StringBuilder;

    .line 195
    .line 196
    const-string v2, "service="

    .line 197
    .line 198
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 199
    .line 200
    .line 201
    iget-object v2, p1, Ll6/d;->c:Ll6/g;

    .line 202
    .line 203
    iget-object v3, v2, Ll6/g;->g:Ll6/h;

    .line 204
    .line 205
    invoke-virtual {v3}, Ljava/lang/Enum;->name()Ljava/lang/String;

    .line 206
    .line 207
    .line 208
    move-result-object v3

    .line 209
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 210
    .line 211
    .line 212
    const-string v3, "; event="

    .line 213
    .line 214
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 215
    .line 216
    .line 217
    iget v3, v0, Lm6/a;->a:I

    .line 218
    .line 219
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 220
    .line 221
    .line 222
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 223
    .line 224
    .line 225
    move-result-object v1

    .line 226
    invoke-static {v1}, Lif/a;->o0(Ljava/lang/String;)V

    .line 227
    .line 228
    .line 229
    iget-boolean v1, v2, Ll6/g;->a:Z

    .line 230
    .line 231
    if-nez v1, :cond_6

    .line 232
    .line 233
    new-instance p1, Ljava/lang/StringBuilder;

    .line 234
    .line 235
    const-string v0, "service not install! name="

    .line 236
    .line 237
    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 238
    .line 239
    .line 240
    iget-object v0, v2, Ll6/g;->g:Ll6/h;

    .line 241
    .line 242
    invoke-virtual {v0}, Ljava/lang/Enum;->name()Ljava/lang/String;

    .line 243
    .line 244
    .line 245
    move-result-object v0

    .line 246
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 247
    .line 248
    .line 249
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 250
    .line 251
    .line 252
    move-result-object p1

    .line 253
    invoke-static {p1}, Lif/a;->n0(Ljava/lang/String;)V

    .line 254
    .line 255
    .line 256
    goto :goto_1

    .line 257
    :cond_6
    iget-object v1, p1, Ll6/d;->e:Lj6/c;

    .line 258
    .line 259
    if-nez v1, :cond_7

    .line 260
    .line 261
    const-string v1, "service unbind"

    .line 262
    .line 263
    invoke-static {v1}, Lif/a;->o0(Ljava/lang/String;)V

    .line 264
    .line 265
    .line 266
    invoke-virtual {p1}, Ll6/d;->a()Z

    .line 267
    .line 268
    .line 269
    :cond_7
    :try_start_3
    iget-object v1, p1, Ll6/d;->e:Lj6/c;

    .line 270
    .line 271
    if-eqz v1, :cond_8

    .line 272
    .line 273
    check-cast v1, Lj6/a;

    .line 274
    .line 275
    invoke-virtual {v1, v0}, Lj6/a;->i(Lm6/a;)V
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_1

    .line 276
    .line 277
    .line 278
    goto :goto_1

    .line 279
    :catch_1
    move-exception v0

    .line 280
    const-string v1, "VDBus unbind error!!!"

    .line 281
    .line 282
    invoke-static {v1}, Lif/a;->n0(Ljava/lang/String;)V

    .line 283
    .line 284
    .line 285
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 286
    .line 287
    .line 288
    :cond_8
    invoke-virtual {p1}, Ll6/d;->a()Z

    .line 289
    .line 290
    .line 291
    :cond_9
    :goto_1
    return-void
.end method

.method private final c(Landroid/os/Message;)V
    .locals 7

    .line 1
    :try_start_0
    iget v0, p1, Landroid/os/Message;->what:I

    .line 2
    .line 3
    if-nez v0, :cond_b

    .line 4
    .line 5
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 6
    .line 7
    check-cast p1, Lm6/a;

    .line 8
    .line 9
    iget-object v0, p1, Lm6/a;->b:Landroid/os/Bundle;

    .line 10
    .line 11
    const-string v1, "CMD_ID"

    .line 12
    .line 13
    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    .line 14
    .line 15
    .line 16
    move-result v0

    .line 17
    iget-object p1, p1, Lm6/a;->b:Landroid/os/Bundle;

    .line 18
    .line 19
    const-string v1, "VALUE"

    .line 20
    .line 21
    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getIntArray(Ljava/lang/String;)[I

    .line 22
    .line 23
    .line 24
    move-result-object p1

    .line 25
    const/4 v1, 0x0

    .line 26
    aget p1, p1, v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 27
    .line 28
    iget-object v2, p0, Lcom/yunpan/appmanage/carsdk/u;->b:Ljava/lang/Object;

    .line 29
    .line 30
    check-cast v2, Lcom/yunpan/appmanage/ui/ActivityTextDesaysvVds;

    .line 31
    .line 32
    if-eqz v0, :cond_a

    .line 33
    .line 34
    const/16 v3, 0x17

    .line 35
    .line 36
    if-eq v0, v3, :cond_9

    .line 37
    .line 38
    const/16 v3, 0x1a

    .line 39
    .line 40
    if-eq v0, v3, :cond_8

    .line 41
    .line 42
    const/16 v3, 0x27

    .line 43
    .line 44
    if-eq v0, v3, :cond_7

    .line 45
    .line 46
    const/16 v3, 0x2f

    .line 47
    .line 48
    const-string v4, "\u5173"

    .line 49
    .line 50
    const-string v5, "\u5f00"

    .line 51
    .line 52
    const/4 v6, 0x1

    .line 53
    if-eq v0, v3, :cond_5

    .line 54
    .line 55
    packed-switch v0, :pswitch_data_0

    .line 56
    .line 57
    .line 58
    goto/16 :goto_1

    .line 59
    .line 60
    :pswitch_0
    :try_start_1
    iget-object v0, v2, Lcom/yunpan/appmanage/ui/ActivityTextDesaysvVds;->F:Lx9/h2;

    .line 61
    .line 62
    const/4 v1, 0x4

    .line 63
    invoke-virtual {v0, v1}, Lc6/g;->t(I)Ljava/lang/Object;

    .line 64
    .line 65
    .line 66
    move-result-object v0

    .line 67
    check-cast v0, Lcom/yunpan/appmanage/bean/NameValueBean;

    .line 68
    .line 69
    if-ne p1, v6, :cond_0

    .line 70
    .line 71
    move-object v4, v5

    .line 72
    :cond_0
    iput-object v4, v0, Lcom/yunpan/appmanage/bean/NameValueBean;->value:Ljava/lang/String;

    .line 73
    .line 74
    iget-object p1, v2, Lcom/yunpan/appmanage/ui/ActivityTextDesaysvVds;->F:Lx9/h2;

    .line 75
    .line 76
    invoke-virtual {p1, v1}, Landroidx/recyclerview/widget/m1;->e(I)V

    .line 77
    .line 78
    .line 79
    goto/16 :goto_1

    .line 80
    .line 81
    :catchall_0
    move-exception p1

    .line 82
    goto/16 :goto_0

    .line 83
    .line 84
    :pswitch_1
    iget-object v0, v2, Lcom/yunpan/appmanage/ui/ActivityTextDesaysvVds;->F:Lx9/h2;

    .line 85
    .line 86
    const/4 v1, 0x3

    .line 87
    invoke-virtual {v0, v1}, Lc6/g;->t(I)Ljava/lang/Object;

    .line 88
    .line 89
    .line 90
    move-result-object v0

    .line 91
    check-cast v0, Lcom/yunpan/appmanage/bean/NameValueBean;

    .line 92
    .line 93
    if-ne p1, v6, :cond_1

    .line 94
    .line 95
    move-object v4, v5

    .line 96
    :cond_1
    iput-object v4, v0, Lcom/yunpan/appmanage/bean/NameValueBean;->value:Ljava/lang/String;

    .line 97
    .line 98
    iget-object p1, v2, Lcom/yunpan/appmanage/ui/ActivityTextDesaysvVds;->F:Lx9/h2;

    .line 99
    .line 100
    invoke-virtual {p1, v1}, Landroidx/recyclerview/widget/m1;->e(I)V

    .line 101
    .line 102
    .line 103
    goto/16 :goto_1

    .line 104
    .line 105
    :pswitch_2
    iget-object v0, v2, Lcom/yunpan/appmanage/ui/ActivityTextDesaysvVds;->F:Lx9/h2;

    .line 106
    .line 107
    const/4 v1, 0x2

    .line 108
    invoke-virtual {v0, v1}, Lc6/g;->t(I)Ljava/lang/Object;

    .line 109
    .line 110
    .line 111
    move-result-object v0

    .line 112
    check-cast v0, Lcom/yunpan/appmanage/bean/NameValueBean;

    .line 113
    .line 114
    if-ne p1, v6, :cond_2

    .line 115
    .line 116
    move-object v4, v5

    .line 117
    :cond_2
    iput-object v4, v0, Lcom/yunpan/appmanage/bean/NameValueBean;->value:Ljava/lang/String;

    .line 118
    .line 119
    iget-object p1, v2, Lcom/yunpan/appmanage/ui/ActivityTextDesaysvVds;->F:Lx9/h2;

    .line 120
    .line 121
    invoke-virtual {p1, v1}, Landroidx/recyclerview/widget/m1;->e(I)V

    .line 122
    .line 123
    .line 124
    goto/16 :goto_1

    .line 125
    .line 126
    :pswitch_3
    iget-object v0, v2, Lcom/yunpan/appmanage/ui/ActivityTextDesaysvVds;->F:Lx9/h2;

    .line 127
    .line 128
    invoke-virtual {v0, v6}, Lc6/g;->t(I)Ljava/lang/Object;

    .line 129
    .line 130
    .line 131
    move-result-object v0

    .line 132
    check-cast v0, Lcom/yunpan/appmanage/bean/NameValueBean;

    .line 133
    .line 134
    if-ne p1, v6, :cond_3

    .line 135
    .line 136
    move-object v4, v5

    .line 137
    :cond_3
    iput-object v4, v0, Lcom/yunpan/appmanage/bean/NameValueBean;->value:Ljava/lang/String;

    .line 138
    .line 139
    iget-object p1, v2, Lcom/yunpan/appmanage/ui/ActivityTextDesaysvVds;->F:Lx9/h2;

    .line 140
    .line 141
    invoke-virtual {p1, v6}, Landroidx/recyclerview/widget/m1;->e(I)V

    .line 142
    .line 143
    .line 144
    goto/16 :goto_1

    .line 145
    .line 146
    :pswitch_4
    iget-object v0, v2, Lcom/yunpan/appmanage/ui/ActivityTextDesaysvVds;->F:Lx9/h2;

    .line 147
    .line 148
    invoke-virtual {v0, v1}, Lc6/g;->t(I)Ljava/lang/Object;

    .line 149
    .line 150
    .line 151
    move-result-object v0

    .line 152
    check-cast v0, Lcom/yunpan/appmanage/bean/NameValueBean;

    .line 153
    .line 154
    if-ne p1, v6, :cond_4

    .line 155
    .line 156
    move-object v4, v5

    .line 157
    :cond_4
    iput-object v4, v0, Lcom/yunpan/appmanage/bean/NameValueBean;->value:Ljava/lang/String;

    .line 158
    .line 159
    iget-object p1, v2, Lcom/yunpan/appmanage/ui/ActivityTextDesaysvVds;->F:Lx9/h2;

    .line 160
    .line 161
    invoke-virtual {p1, v1}, Landroidx/recyclerview/widget/m1;->e(I)V

    .line 162
    .line 163
    .line 164
    goto/16 :goto_1

    .line 165
    .line 166
    :cond_5
    iget-object v0, v2, Lcom/yunpan/appmanage/ui/ActivityTextDesaysvVds;->F:Lx9/h2;

    .line 167
    .line 168
    const/4 v1, 0x5

    .line 169
    invoke-virtual {v0, v1}, Lc6/g;->t(I)Ljava/lang/Object;

    .line 170
    .line 171
    .line 172
    move-result-object v0

    .line 173
    check-cast v0, Lcom/yunpan/appmanage/bean/NameValueBean;

    .line 174
    .line 175
    if-ne p1, v6, :cond_6

    .line 176
    .line 177
    move-object v4, v5

    .line 178
    :cond_6
    iput-object v4, v0, Lcom/yunpan/appmanage/bean/NameValueBean;->value:Ljava/lang/String;

    .line 179
    .line 180
    iget-object p1, v2, Lcom/yunpan/appmanage/ui/ActivityTextDesaysvVds;->F:Lx9/h2;

    .line 181
    .line 182
    invoke-virtual {p1, v1}, Landroidx/recyclerview/widget/m1;->e(I)V

    .line 183
    .line 184
    .line 185
    goto :goto_1

    .line 186
    :cond_7
    iget-object v0, v2, Lcom/yunpan/appmanage/ui/ActivityTextDesaysvVds;->F:Lx9/h2;

    .line 187
    .line 188
    const/16 v1, 0x9

    .line 189
    .line 190
    invoke-virtual {v0, v1}, Lc6/g;->t(I)Ljava/lang/Object;

    .line 191
    .line 192
    .line 193
    move-result-object v0

    .line 194
    check-cast v0, Lcom/yunpan/appmanage/bean/NameValueBean;

    .line 195
    .line 196
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 197
    .line 198
    .line 199
    move-result-object p1

    .line 200
    iput-object p1, v0, Lcom/yunpan/appmanage/bean/NameValueBean;->value:Ljava/lang/String;

    .line 201
    .line 202
    iget-object p1, v2, Lcom/yunpan/appmanage/ui/ActivityTextDesaysvVds;->F:Lx9/h2;

    .line 203
    .line 204
    invoke-virtual {p1, v1}, Landroidx/recyclerview/widget/m1;->e(I)V

    .line 205
    .line 206
    .line 207
    goto :goto_1

    .line 208
    :cond_8
    iget-object v0, v2, Lcom/yunpan/appmanage/ui/ActivityTextDesaysvVds;->F:Lx9/h2;

    .line 209
    .line 210
    const/4 v1, 0x6

    .line 211
    invoke-virtual {v0, v1}, Lc6/g;->t(I)Ljava/lang/Object;

    .line 212
    .line 213
    .line 214
    move-result-object v0

    .line 215
    check-cast v0, Lcom/yunpan/appmanage/bean/NameValueBean;

    .line 216
    .line 217
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 218
    .line 219
    .line 220
    move-result-object p1

    .line 221
    iput-object p1, v0, Lcom/yunpan/appmanage/bean/NameValueBean;->value:Ljava/lang/String;

    .line 222
    .line 223
    iget-object p1, v2, Lcom/yunpan/appmanage/ui/ActivityTextDesaysvVds;->F:Lx9/h2;

    .line 224
    .line 225
    invoke-virtual {p1, v1}, Landroidx/recyclerview/widget/m1;->e(I)V

    .line 226
    .line 227
    .line 228
    goto :goto_1

    .line 229
    :cond_9
    iget-object v0, v2, Lcom/yunpan/appmanage/ui/ActivityTextDesaysvVds;->F:Lx9/h2;

    .line 230
    .line 231
    const/16 v1, 0x8

    .line 232
    .line 233
    invoke-virtual {v0, v1}, Lc6/g;->t(I)Ljava/lang/Object;

    .line 234
    .line 235
    .line 236
    move-result-object v0

    .line 237
    check-cast v0, Lcom/yunpan/appmanage/bean/NameValueBean;

    .line 238
    .line 239
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 240
    .line 241
    .line 242
    move-result-object p1

    .line 243
    iput-object p1, v0, Lcom/yunpan/appmanage/bean/NameValueBean;->value:Ljava/lang/String;

    .line 244
    .line 245
    iget-object p1, v2, Lcom/yunpan/appmanage/ui/ActivityTextDesaysvVds;->F:Lx9/h2;

    .line 246
    .line 247
    invoke-virtual {p1, v1}, Landroidx/recyclerview/widget/m1;->e(I)V

    .line 248
    .line 249
    .line 250
    goto :goto_1

    .line 251
    :cond_a
    iget-object v0, v2, Lcom/yunpan/appmanage/ui/ActivityTextDesaysvVds;->F:Lx9/h2;

    .line 252
    .line 253
    const/4 v1, 0x7

    .line 254
    invoke-virtual {v0, v1}, Lc6/g;->t(I)Ljava/lang/Object;

    .line 255
    .line 256
    .line 257
    move-result-object v0

    .line 258
    check-cast v0, Lcom/yunpan/appmanage/bean/NameValueBean;

    .line 259
    .line 260
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 261
    .line 262
    .line 263
    move-result-object p1

    .line 264
    iput-object p1, v0, Lcom/yunpan/appmanage/bean/NameValueBean;->value:Ljava/lang/String;

    .line 265
    .line 266
    iget-object p1, v2, Lcom/yunpan/appmanage/ui/ActivityTextDesaysvVds;->F:Lx9/h2;

    .line 267
    .line 268
    invoke-virtual {p1, v1}, Landroidx/recyclerview/widget/m1;->e(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 269
    .line 270
    .line 271
    goto :goto_1

    .line 272
    :goto_0
    new-instance v0, Ljava/lang/StringBuilder;

    .line 273
    .line 274
    const-string v1, "\u62a5\u9519\uff1a"

    .line 275
    .line 276
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 277
    .line 278
    .line 279
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 280
    .line 281
    .line 282
    move-result-object p1

    .line 283
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 284
    .line 285
    .line 286
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 287
    .line 288
    .line 289
    move-result-object p1

    .line 290
    invoke-static {p1}, Lcom/yunpan/appmanage/util/a0;->u(Ljava/lang/CharSequence;)V

    .line 291
    .line 292
    .line 293
    :cond_b
    :goto_1
    return-void

    .line 294
    nop

    .line 295
    :pswitch_data_0
    .packed-switch 0xf
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private final d(Landroid/os/Message;)V
    .locals 6

    .line 1
    iget v0, p1, Landroid/os/Message;->what:I

    .line 2
    .line 3
    const/16 v1, 0x3e8

    .line 4
    .line 5
    const/4 v2, 0x0

    .line 6
    iget-object v3, p0, Lcom/yunpan/appmanage/carsdk/u;->b:Ljava/lang/Object;

    .line 7
    .line 8
    check-cast v3, Lua/q8;

    .line 9
    .line 10
    if-ne v0, v1, :cond_0

    .line 11
    .line 12
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 13
    .line 14
    check-cast p1, Lja/g;

    .line 15
    .line 16
    iget-object v0, p1, Lja/g;->a:Ljava/lang/String;

    .line 17
    .line 18
    invoke-virtual {v3}, Lua/q8;->x()V

    .line 19
    .line 20
    .line 21
    new-instance v1, Lx9/m5;

    .line 22
    .line 23
    iget-object v4, p1, Lja/g;->b:Ljava/lang/String;

    .line 24
    .line 25
    iget-object v5, p1, Lja/g;->c:Ljava/lang/String;

    .line 26
    .line 27
    iget-object p1, p1, Lja/g;->d:Ljava/lang/String;

    .line 28
    .line 29
    invoke-direct {v1, v4, v5, v0, p1}, Lx9/m5;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 30
    .line 31
    .line 32
    iget-object p1, v3, Lua/q8;->D:Lcom/owen/tvrecyclerview/widget/TvRecyclerView;

    .line 33
    .line 34
    invoke-virtual {p1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 35
    .line 36
    .line 37
    iget-object p1, v3, Lua/q8;->E:Lx9/l5;

    .line 38
    .line 39
    invoke-virtual {p1, v1}, Lc6/g;->q(Ljava/lang/Object;)V

    .line 40
    .line 41
    .line 42
    iget-object p1, v3, Lua/q8;->G:Ljava/util/concurrent/ExecutorService;

    .line 43
    .line 44
    new-instance v0, Landroidx/activity/f;

    .line 45
    .line 46
    iget-object v2, v3, Lua/q8;->E:Lx9/l5;

    .line 47
    .line 48
    invoke-virtual {v2}, Lc6/g;->b()I

    .line 49
    .line 50
    .line 51
    move-result v2

    .line 52
    add-int/lit8 v2, v2, -0x1

    .line 53
    .line 54
    const/4 v4, 0x3

    .line 55
    invoke-direct {v0, v3, v2, v1, v4}, Landroidx/activity/f;-><init>(Ljava/lang/Object;ILjava/lang/Object;I)V

    .line 56
    .line 57
    .line 58
    invoke-interface {p1, v0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 59
    .line 60
    .line 61
    goto :goto_1

    .line 62
    :cond_0
    if-nez v0, :cond_3

    .line 63
    .line 64
    sget-object p1, Lcom/yunpan/appmanage/util/k;->u0:Ljava/text/DecimalFormat;

    .line 65
    .line 66
    sget-object p1, Lcom/yunpan/appmanage/util/j;->a:Lcom/yunpan/appmanage/util/k;

    .line 67
    .line 68
    iget-boolean v0, p1, Lcom/yunpan/appmanage/util/k;->d0:Z

    .line 69
    .line 70
    if-eqz v0, :cond_1

    .line 71
    .line 72
    iget-object p1, v3, Lua/q8;->S:Landroid/widget/LinearLayout;

    .line 73
    .line 74
    invoke-virtual {p1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 75
    .line 76
    .line 77
    goto :goto_0

    .line 78
    :cond_1
    iget-boolean p1, p1, Lcom/yunpan/appmanage/util/k;->e0:Z

    .line 79
    .line 80
    if-eqz p1, :cond_2

    .line 81
    .line 82
    iget-object p1, v3, Lua/q8;->S:Landroid/widget/LinearLayout;

    .line 83
    .line 84
    invoke-virtual {p1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 85
    .line 86
    .line 87
    goto :goto_0

    .line 88
    :cond_2
    iget-object p1, v3, Lua/q8;->S:Landroid/widget/LinearLayout;

    .line 89
    .line 90
    const/16 v0, 0x8

    .line 91
    .line 92
    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 93
    .line 94
    .line 95
    :goto_0
    iget-object p1, v3, Lua/q8;->X:Lcom/yunpan/appmanage/carsdk/u;

    .line 96
    .line 97
    const-wide/16 v0, 0x7d0

    .line 98
    .line 99
    invoke-virtual {p1, v2, v0, v1}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 100
    .line 101
    .line 102
    :cond_3
    :goto_1
    return-void
.end method

.method private final e(Landroid/os/Message;)V
    .locals 3

    .line 1
    iget v0, p1, Landroid/os/Message;->what:I

    .line 2
    .line 3
    const/16 v1, 0xa

    .line 4
    .line 5
    iget-object v2, p0, Lcom/yunpan/appmanage/carsdk/u;->b:Ljava/lang/Object;

    .line 6
    .line 7
    check-cast v2, Lua/i9;

    .line 8
    .line 9
    if-ne v0, v1, :cond_0

    .line 10
    .line 11
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 12
    .line 13
    check-cast p1, Lcom/yunpan/appmanage/bean/WpTaskBean;

    .line 14
    .line 15
    iget-object v0, v2, Lua/i9;->F:Lx9/c6;

    .line 16
    .line 17
    iget p1, p1, Lcom/yunpan/appmanage/bean/WpTaskBean;->position:I

    .line 18
    .line 19
    invoke-virtual {v0, p1}, Landroidx/recyclerview/widget/m1;->e(I)V

    .line 20
    .line 21
    .line 22
    goto :goto_0

    .line 23
    :cond_0
    const/16 v1, 0xb

    .line 24
    .line 25
    if-ne v0, v1, :cond_2

    .line 26
    .line 27
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 28
    .line 29
    check-cast p1, Lcom/yunpan/appmanage/bean/WpTaskBean;

    .line 30
    .line 31
    iget-object v0, v2, Lua/i9;->F:Lx9/c6;

    .line 32
    .line 33
    iget p1, p1, Lcom/yunpan/appmanage/bean/WpTaskBean;->position:I

    .line 34
    .line 35
    invoke-virtual {v0, p1}, Landroidx/recyclerview/widget/m1;->e(I)V

    .line 36
    .line 37
    .line 38
    iget-object p1, v2, Lua/i9;->C:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 39
    .line 40
    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicInteger;->decrementAndGet()I

    .line 41
    .line 42
    .line 43
    iget-object p1, v2, Lua/i9;->B:Landroid/widget/TextView;

    .line 44
    .line 45
    new-instance v0, Ljava/lang/StringBuilder;

    .line 46
    .line 47
    const-string v1, ""

    .line 48
    .line 49
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 50
    .line 51
    .line 52
    iget-object v1, v2, Lua/i9;->C:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 53
    .line 54
    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    .line 55
    .line 56
    .line 57
    move-result v1

    .line 58
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 59
    .line 60
    .line 61
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 62
    .line 63
    .line 64
    move-result-object v0

    .line 65
    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 66
    .line 67
    .line 68
    iget-object p1, v2, Lua/i9;->C:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 69
    .line 70
    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    .line 71
    .line 72
    .line 73
    move-result p1

    .line 74
    if-nez p1, :cond_2

    .line 75
    .line 76
    iget-object p1, v2, Lua/i9;->p:Lcom/owen/tvrecyclerview/widget/TvRecyclerView;

    .line 77
    .line 78
    invoke-virtual {p1}, Landroid/view/View;->hasFocus()Z

    .line 79
    .line 80
    .line 81
    move-result p1

    .line 82
    if-eqz p1, :cond_1

    .line 83
    .line 84
    iget-object p1, v2, Lua/i9;->m:Lcom/owen/tvrecyclerview/widget/TvRecyclerView;

    .line 85
    .line 86
    invoke-virtual {p1}, Landroid/view/View;->requestFocus()Z

    .line 87
    .line 88
    .line 89
    :cond_1
    iget-object p1, v2, Lua/i9;->n:Lx9/a6;

    .line 90
    .line 91
    invoke-virtual {p1}, Lc6/g;->b()I

    .line 92
    .line 93
    .line 94
    move-result p1

    .line 95
    if-lez p1, :cond_2

    .line 96
    .line 97
    const/4 p1, 0x0

    .line 98
    invoke-virtual {v2, p1}, Lua/i9;->z(Z)V

    .line 99
    .line 100
    .line 101
    :cond_2
    :goto_0
    return-void
.end method


# virtual methods
.method public final handleMessage(Landroid/os/Message;)V
    .locals 23

    .line 1
    move-object/from16 v1, p0

    .line 2
    .line 3
    move-object/from16 v0, p1

    .line 4
    .line 5
    const/16 v3, 0x2710

    .line 6
    .line 7
    const/16 v4, 0x13

    .line 8
    .line 9
    const/16 v5, 0x12d

    .line 10
    .line 11
    const/16 v6, 0x12c

    .line 12
    .line 13
    const/16 v7, 0x8

    .line 14
    .line 15
    const/4 v8, 0x4

    .line 16
    const/4 v9, -0x1

    .line 17
    const/16 v10, 0x64

    .line 18
    .line 19
    const/4 v11, 0x0

    .line 20
    const/4 v12, 0x2

    .line 21
    const/4 v13, 0x3

    .line 22
    const/4 v14, 0x0

    .line 23
    const/4 v15, 0x1

    .line 24
    iget v2, v1, Lcom/yunpan/appmanage/carsdk/u;->a:I

    .line 25
    .line 26
    packed-switch v2, :pswitch_data_0

    .line 27
    .line 28
    .line 29
    iget v2, v0, Landroid/os/Message;->what:I

    .line 30
    .line 31
    const/16 v3, 0x15

    .line 32
    .line 33
    const/16 v5, 0x14

    .line 34
    .line 35
    const/16 v6, 0x16

    .line 36
    .line 37
    const/4 v10, 0x0

    .line 38
    iget-object v15, v1, Lcom/yunpan/appmanage/carsdk/u;->b:Ljava/lang/Object;

    .line 39
    .line 40
    check-cast v15, Lya/i;

    .line 41
    .line 42
    if-ne v2, v9, :cond_7

    .line 43
    .line 44
    invoke-virtual {v15}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 45
    .line 46
    .line 47
    :try_start_0
    invoke-static {}, Lwa/s;->c()Lwa/s;

    .line 48
    .line 49
    .line 50
    move-result-object v0

    .line 51
    iget-boolean v0, v0, Lwa/s;->a:Z

    .line 52
    .line 53
    if-eqz v0, :cond_0

    .line 54
    .line 55
    const-string v0, "input"

    .line 56
    .line 57
    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    .line 58
    .line 59
    .line 60
    move-result-object v0

    .line 61
    invoke-static {v0}, Landroid/hardware/input/IInputManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/hardware/input/IInputManager;

    .line 62
    .line 63
    .line 64
    move-result-object v0

    .line 65
    goto :goto_0

    .line 66
    :cond_0
    sget-object v0, Lfa/a;->a:Lfa/b;

    .line 67
    .line 68
    invoke-virtual {v0}, Lfa/b;->f()Z

    .line 69
    .line 70
    .line 71
    move-result v2

    .line 72
    if-eqz v2, :cond_1

    .line 73
    .line 74
    invoke-virtual {v0}, Lfa/b;->d()Landroid/hardware/input/IInputManager;

    .line 75
    .line 76
    .line 77
    move-result-object v0

    .line 78
    goto :goto_0

    .line 79
    :cond_1
    sget-object v0, Lfa/n0;->a:Lfa/o0;

    .line 80
    .line 81
    iget-boolean v0, v0, Lfa/o0;->a:Z

    .line 82
    .line 83
    if-eqz v0, :cond_2

    .line 84
    .line 85
    invoke-static {}, Lfa/o0;->c()Landroid/hardware/input/IInputManager;

    .line 86
    .line 87
    .line 88
    move-result-object v0

    .line 89
    goto :goto_0

    .line 90
    :catch_0
    nop

    .line 91
    goto :goto_1

    .line 92
    :cond_2
    move-object v0, v11

    .line 93
    :goto_0
    iput-object v0, v15, Lya/i;->n:Landroid/hardware/input/IInputManager;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 94
    .line 95
    :goto_1
    iget-object v0, v15, Lya/i;->a:Lcom/yunpan/appmanage/service/AccService;

    .line 96
    .line 97
    const-string v2, "window"

    .line 98
    .line 99
    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 100
    .line 101
    .line 102
    move-result-object v2

    .line 103
    check-cast v2, Landroid/view/WindowManager;

    .line 104
    .line 105
    iput-object v2, v15, Lya/i;->c:Landroid/view/WindowManager;

    .line 106
    .line 107
    invoke-static {v0}, Lif/a;->R(Landroid/content/Context;)Landroid/graphics/Point;

    .line 108
    .line 109
    .line 110
    move-result-object v2

    .line 111
    iget v7, v2, Landroid/graphics/Point;->x:I

    .line 112
    .line 113
    iput v7, v15, Lya/i;->h:I

    .line 114
    .line 115
    iget v2, v2, Landroid/graphics/Point;->y:I

    .line 116
    .line 117
    iput v2, v15, Lya/i;->i:I

    .line 118
    .line 119
    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    .line 120
    .line 121
    .line 122
    move-result-object v0

    .line 123
    const v2, 0x7f0e0210

    .line 124
    .line 125
    .line 126
    invoke-virtual {v0, v2, v11}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 127
    .line 128
    .line 129
    move-result-object v0

    .line 130
    iput-object v0, v15, Lya/i;->d:Landroid/view/View;

    .line 131
    .line 132
    invoke-virtual {v0, v14}, Landroid/view/View;->setClickable(Z)V

    .line 133
    .line 134
    .line 135
    iget-object v0, v15, Lya/i;->d:Landroid/view/View;

    .line 136
    .line 137
    invoke-virtual {v0, v14}, Landroid/view/View;->setFocusable(Z)V

    .line 138
    .line 139
    .line 140
    iget-object v0, v15, Lya/i;->d:Landroid/view/View;

    .line 141
    .line 142
    invoke-virtual {v0, v14}, Landroid/view/View;->setFocusableInTouchMode(Z)V

    .line 143
    .line 144
    .line 145
    iget-object v0, v15, Lya/i;->d:Landroid/view/View;

    .line 146
    .line 147
    invoke-virtual {v0, v14}, Landroid/view/View;->setEnabled(Z)V

    .line 148
    .line 149
    .line 150
    new-instance v0, Landroid/view/WindowManager$LayoutParams;

    .line 151
    .line 152
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 153
    .line 154
    if-lt v2, v6, :cond_3

    .line 155
    .line 156
    const/16 v7, 0x7f0

    .line 157
    .line 158
    const/16 v19, 0x7f0

    .line 159
    .line 160
    goto :goto_2

    .line 161
    :cond_3
    const/16 v7, 0x7d2

    .line 162
    .line 163
    const/16 v19, 0x7d2

    .line 164
    .line 165
    :goto_2
    const/16 v17, -0x1

    .line 166
    .line 167
    const/16 v18, -0x1

    .line 168
    .line 169
    const/16 v20, 0x138

    .line 170
    .line 171
    const/16 v21, -0x3

    .line 172
    .line 173
    move-object/from16 v16, v0

    .line 174
    .line 175
    invoke-direct/range {v16 .. v21}, Landroid/view/WindowManager$LayoutParams;-><init>(IIIII)V

    .line 176
    .line 177
    .line 178
    const/16 v7, 0x1c

    .line 179
    .line 180
    if-lt v2, v7, :cond_4

    .line 181
    .line 182
    invoke-static {v0}, Landroidx/emoji2/text/b;->x(Landroid/view/WindowManager$LayoutParams;)V

    .line 183
    .line 184
    .line 185
    :cond_4
    const v2, 0x800033

    .line 186
    .line 187
    .line 188
    iput v2, v0, Landroid/view/WindowManager$LayoutParams;->gravity:I

    .line 189
    .line 190
    iput v14, v0, Landroid/view/WindowManager$LayoutParams;->x:I

    .line 191
    .line 192
    iput v14, v0, Landroid/view/WindowManager$LayoutParams;->y:I

    .line 193
    .line 194
    iget-object v2, v15, Lya/i;->d:Landroid/view/View;

    .line 195
    .line 196
    const v7, 0x7f0b0413

    .line 197
    .line 198
    .line 199
    invoke-virtual {v2, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 200
    .line 201
    .line 202
    move-result-object v2

    .line 203
    check-cast v2, Landroid/widget/ImageView;

    .line 204
    .line 205
    iput-object v2, v15, Lya/i;->e:Landroid/widget/ImageView;

    .line 206
    .line 207
    iget-object v2, v15, Lya/i;->b:Lz7/s;

    .line 208
    .line 209
    const-string v7, "cursor_size"

    .line 210
    .line 211
    invoke-virtual {v2, v7}, Lz7/s;->o(Ljava/lang/String;)Lz7/p;

    .line 212
    .line 213
    .line 214
    move-result-object v7

    .line 215
    invoke-virtual {v7}, Lz7/p;->e()I

    .line 216
    .line 217
    .line 218
    move-result v7

    .line 219
    iput v7, v15, Lya/i;->j:I

    .line 220
    .line 221
    iget-object v7, v15, Lya/i;->o:Ljava/util/HashMap;

    .line 222
    .line 223
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 224
    .line 225
    .line 226
    move-result-object v4

    .line 227
    iget v9, v15, Lya/i;->j:I

    .line 228
    .line 229
    div-int/2addr v9, v12

    .line 230
    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 231
    .line 232
    .line 233
    move-result-object v9

    .line 234
    invoke-virtual {v7, v4, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 235
    .line 236
    .line 237
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 238
    .line 239
    .line 240
    move-result-object v4

    .line 241
    iget v5, v15, Lya/i;->j:I

    .line 242
    .line 243
    div-int/2addr v5, v12

    .line 244
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 245
    .line 246
    .line 247
    move-result-object v5

    .line 248
    invoke-virtual {v7, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 249
    .line 250
    .line 251
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 252
    .line 253
    .line 254
    move-result-object v3

    .line 255
    iget v4, v15, Lya/i;->j:I

    .line 256
    .line 257
    div-int/2addr v4, v12

    .line 258
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 259
    .line 260
    .line 261
    move-result-object v4

    .line 262
    invoke-virtual {v7, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 263
    .line 264
    .line 265
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 266
    .line 267
    .line 268
    move-result-object v3

    .line 269
    iget v4, v15, Lya/i;->j:I

    .line 270
    .line 271
    div-int/2addr v4, v12

    .line 272
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 273
    .line 274
    .line 275
    move-result-object v4

    .line 276
    invoke-virtual {v7, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 277
    .line 278
    .line 279
    iget-object v3, v15, Lya/i;->e:Landroid/widget/ImageView;

    .line 280
    .line 281
    invoke-virtual {v3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 282
    .line 283
    .line 284
    move-result-object v3

    .line 285
    iget v4, v15, Lya/i;->j:I

    .line 286
    .line 287
    iput v4, v3, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 288
    .line 289
    iput v4, v3, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 290
    .line 291
    iget-object v4, v15, Lya/i;->e:Landroid/widget/ImageView;

    .line 292
    .line 293
    invoke-virtual {v4, v3}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 294
    .line 295
    .line 296
    const-string v3, "cursor_style"

    .line 297
    .line 298
    invoke-virtual {v2, v3}, Lz7/s;->o(Ljava/lang/String;)Lz7/p;

    .line 299
    .line 300
    .line 301
    move-result-object v2

    .line 302
    invoke-virtual {v2}, Lz7/p;->e()I

    .line 303
    .line 304
    .line 305
    move-result v2

    .line 306
    packed-switch v2, :pswitch_data_1

    .line 307
    .line 308
    .line 309
    const v3, 0x7f080264

    .line 310
    .line 311
    .line 312
    goto :goto_3

    .line 313
    :pswitch_0
    const v3, 0x7f08012b

    .line 314
    .line 315
    .line 316
    goto :goto_3

    .line 317
    :pswitch_1
    const v3, 0x7f08012a

    .line 318
    .line 319
    .line 320
    goto :goto_3

    .line 321
    :pswitch_2
    const v3, 0x7f080129

    .line 322
    .line 323
    .line 324
    goto :goto_3

    .line 325
    :pswitch_3
    const v3, 0x7f080128

    .line 326
    .line 327
    .line 328
    goto :goto_3

    .line 329
    :pswitch_4
    const v3, 0x7f080266

    .line 330
    .line 331
    .line 332
    goto :goto_3

    .line 333
    :pswitch_5
    const v3, 0x7f080265

    .line 334
    .line 335
    .line 336
    goto :goto_3

    .line 337
    :pswitch_6
    const v3, 0x7f08026e

    .line 338
    .line 339
    .line 340
    goto :goto_3

    .line 341
    :pswitch_7
    const v3, 0x7f08026d

    .line 342
    .line 343
    .line 344
    goto :goto_3

    .line 345
    :pswitch_8
    const v3, 0x7f08026c

    .line 346
    .line 347
    .line 348
    goto :goto_3

    .line 349
    :pswitch_9
    const v3, 0x7f08026b

    .line 350
    .line 351
    .line 352
    goto :goto_3

    .line 353
    :pswitch_a
    const v3, 0x7f08026a

    .line 354
    .line 355
    .line 356
    goto :goto_3

    .line 357
    :pswitch_b
    const v3, 0x7f080269

    .line 358
    .line 359
    .line 360
    goto :goto_3

    .line 361
    :pswitch_c
    const v3, 0x7f080268

    .line 362
    .line 363
    .line 364
    goto :goto_3

    .line 365
    :pswitch_d
    const v3, 0x7f080267

    .line 366
    .line 367
    .line 368
    goto :goto_3

    .line 369
    :pswitch_e
    const v3, 0x7f0800a5

    .line 370
    .line 371
    .line 372
    goto :goto_3

    .line 373
    :pswitch_f
    const v3, 0x7f0800a4

    .line 374
    .line 375
    .line 376
    goto :goto_3

    .line 377
    :pswitch_10
    const v3, 0x7f0800a3

    .line 378
    .line 379
    .line 380
    goto :goto_3

    .line 381
    :pswitch_11
    const v3, 0x7f0800a2

    .line 382
    .line 383
    .line 384
    :goto_3
    if-ge v2, v8, :cond_5

    .line 385
    .line 386
    iget-object v2, v15, Lya/i;->e:Landroid/widget/ImageView;

    .line 387
    .line 388
    invoke-virtual {v2, v11}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 389
    .line 390
    .line 391
    iget-object v2, v15, Lya/i;->e:Landroid/widget/ImageView;

    .line 392
    .line 393
    invoke-virtual {v2, v3}, Landroid/view/View;->setBackgroundResource(I)V

    .line 394
    .line 395
    .line 396
    goto :goto_4

    .line 397
    :cond_5
    iget-object v2, v15, Lya/i;->e:Landroid/widget/ImageView;

    .line 398
    .line 399
    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 400
    .line 401
    .line 402
    :goto_4
    iget-object v2, v15, Lya/i;->c:Landroid/view/WindowManager;

    .line 403
    .line 404
    iget-object v3, v15, Lya/i;->d:Landroid/view/View;

    .line 405
    .line 406
    invoke-interface {v2, v3, v0}, Landroid/view/ViewManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 407
    .line 408
    .line 409
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    .line 410
    .line 411
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 412
    .line 413
    .line 414
    iget v0, v15, Lya/i;->h:I

    .line 415
    .line 416
    int-to-float v2, v0

    .line 417
    const/high16 v3, 0x40000000    # 2.0f

    .line 418
    .line 419
    div-float/2addr v2, v3

    .line 420
    iget v4, v15, Lya/i;->j:I

    .line 421
    .line 422
    int-to-float v4, v4

    .line 423
    div-float/2addr v4, v3

    .line 424
    sub-float/2addr v2, v4

    .line 425
    iget v5, v15, Lya/i;->i:I

    .line 426
    .line 427
    int-to-float v5, v5

    .line 428
    div-float/2addr v5, v3

    .line 429
    sub-float/2addr v5, v4

    .line 430
    iget-object v3, v15, Lya/i;->e:Landroid/widget/ImageView;

    .line 431
    .line 432
    if-nez v3, :cond_6

    .line 433
    .line 434
    goto/16 :goto_5

    .line 435
    .line 436
    :cond_6
    invoke-virtual {v3}, Landroid/view/View;->getWidth()I

    .line 437
    .line 438
    .line 439
    move-result v3

    .line 440
    sub-int/2addr v0, v3

    .line 441
    int-to-float v0, v0

    .line 442
    invoke-static {v0, v2}, Ljava/lang/Math;->min(FF)F

    .line 443
    .line 444
    .line 445
    move-result v0

    .line 446
    invoke-static {v10, v0}, Ljava/lang/Math;->max(FF)F

    .line 447
    .line 448
    .line 449
    move-result v0

    .line 450
    iget v2, v15, Lya/i;->i:I

    .line 451
    .line 452
    iget-object v3, v15, Lya/i;->e:Landroid/widget/ImageView;

    .line 453
    .line 454
    invoke-virtual {v3}, Landroid/view/View;->getHeight()I

    .line 455
    .line 456
    .line 457
    move-result v3

    .line 458
    sub-int/2addr v2, v3

    .line 459
    int-to-float v2, v2

    .line 460
    invoke-static {v2, v5}, Ljava/lang/Math;->min(FF)F

    .line 461
    .line 462
    .line 463
    move-result v2

    .line 464
    invoke-static {v10, v2}, Ljava/lang/Math;->max(FF)F

    .line 465
    .line 466
    .line 467
    move-result v2

    .line 468
    iget-object v3, v15, Lya/i;->e:Landroid/widget/ImageView;

    .line 469
    .line 470
    invoke-virtual {v3, v0}, Landroid/view/View;->setTranslationX(F)V

    .line 471
    .line 472
    .line 473
    iget-object v3, v15, Lya/i;->e:Landroid/widget/ImageView;

    .line 474
    .line 475
    invoke-virtual {v3, v2}, Landroid/view/View;->setTranslationY(F)V

    .line 476
    .line 477
    .line 478
    iput v0, v15, Lya/i;->f:F

    .line 479
    .line 480
    iput v2, v15, Lya/i;->g:F

    .line 481
    .line 482
    goto/16 :goto_5

    .line 483
    .line 484
    :cond_7
    const/16 v8, -0x64

    .line 485
    .line 486
    if-ne v2, v8, :cond_8

    .line 487
    .line 488
    iget-object v0, v15, Lya/i;->e:Landroid/widget/ImageView;

    .line 489
    .line 490
    invoke-virtual {v0, v7}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 491
    .line 492
    .line 493
    goto/16 :goto_5

    .line 494
    .line 495
    :cond_8
    const/16 v7, 0x18

    .line 496
    .line 497
    const/high16 v8, 0x40a00000    # 5.0f

    .line 498
    .line 499
    const-wide/16 v5, 0x12c

    .line 500
    .line 501
    if-ne v2, v4, :cond_b

    .line 502
    .line 503
    iget v3, v15, Lya/i;->g:F

    .line 504
    .line 505
    cmpl-float v3, v3, v10

    .line 506
    .line 507
    if-nez v3, :cond_a

    .line 508
    .line 509
    iget-object v2, v15, Lya/i;->n:Landroid/hardware/input/IInputManager;

    .line 510
    .line 511
    if-eqz v2, :cond_9

    .line 512
    .line 513
    iget v3, v15, Lya/i;->f:F

    .line 514
    .line 515
    float-to-int v3, v3

    .line 516
    iget v4, v15, Lya/i;->i:I

    .line 517
    .line 518
    div-int/2addr v4, v12

    .line 519
    invoke-static {v2, v3, v4, v10, v8}, Lwa/c;->f(Landroid/hardware/input/IInputManager;IIFF)V

    .line 520
    .line 521
    .line 522
    iget-object v2, v15, Lya/i;->s:Lcom/yunpan/appmanage/carsdk/u;

    .line 523
    .line 524
    iget v0, v0, Landroid/os/Message;->what:I

    .line 525
    .line 526
    invoke-virtual {v2, v0, v5, v6}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 527
    .line 528
    .line 529
    goto/16 :goto_5

    .line 530
    .line 531
    :cond_9
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 532
    .line 533
    if-lt v2, v7, :cond_14

    .line 534
    .line 535
    iget-object v2, v15, Lya/i;->a:Lcom/yunpan/appmanage/service/AccService;

    .line 536
    .line 537
    iget v3, v15, Lya/i;->h:I

    .line 538
    .line 539
    div-int/2addr v3, v12

    .line 540
    int-to-float v3, v3

    .line 541
    iget v4, v15, Lya/i;->i:I

    .line 542
    .line 543
    div-int/lit8 v7, v4, 0x3

    .line 544
    .line 545
    int-to-float v7, v7

    .line 546
    div-int/2addr v4, v12

    .line 547
    int-to-float v4, v4

    .line 548
    const-wide/16 v21, 0xc8

    .line 549
    .line 550
    move-object/from16 v16, v2

    .line 551
    .line 552
    move/from16 v17, v3

    .line 553
    .line 554
    move/from16 v18, v7

    .line 555
    .line 556
    move/from16 v19, v3

    .line 557
    .line 558
    move/from16 v20, v4

    .line 559
    .line 560
    invoke-static/range {v16 .. v22}, Lwa/b;->d(Lcom/yunpan/appmanage/service/AccService;FFFFJ)V

    .line 561
    .line 562
    .line 563
    iget-object v2, v15, Lya/i;->s:Lcom/yunpan/appmanage/carsdk/u;

    .line 564
    .line 565
    iget v0, v0, Landroid/os/Message;->what:I

    .line 566
    .line 567
    invoke-virtual {v2, v0, v5, v6}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 568
    .line 569
    .line 570
    goto/16 :goto_5

    .line 571
    .line 572
    :cond_a
    iget-object v3, v15, Lya/i;->o:Ljava/util/HashMap;

    .line 573
    .line 574
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 575
    .line 576
    .line 577
    move-result-object v2

    .line 578
    invoke-virtual {v3, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 579
    .line 580
    .line 581
    move-result-object v2

    .line 582
    check-cast v2, Ljava/lang/Integer;

    .line 583
    .line 584
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    .line 585
    .line 586
    .line 587
    move-result v2

    .line 588
    neg-int v2, v2

    .line 589
    invoke-static {v15, v14, v2}, Lya/i;->b(Lya/i;II)V

    .line 590
    .line 591
    .line 592
    iget v0, v0, Landroid/os/Message;->what:I

    .line 593
    .line 594
    invoke-static {v15, v0}, Lya/i;->a(Lya/i;I)V

    .line 595
    .line 596
    .line 597
    goto/16 :goto_5

    .line 598
    .line 599
    :cond_b
    const/high16 v4, -0x3f600000    # -5.0f

    .line 600
    .line 601
    const/16 v9, 0x14

    .line 602
    .line 603
    if-ne v2, v9, :cond_e

    .line 604
    .line 605
    iget v2, v15, Lya/i;->i:I

    .line 606
    .line 607
    iget-object v3, v15, Lya/i;->e:Landroid/widget/ImageView;

    .line 608
    .line 609
    invoke-virtual {v3}, Landroid/view/View;->getHeight()I

    .line 610
    .line 611
    .line 612
    move-result v3

    .line 613
    sub-int/2addr v2, v3

    .line 614
    int-to-float v2, v2

    .line 615
    iget v3, v15, Lya/i;->g:F

    .line 616
    .line 617
    cmpl-float v2, v2, v3

    .line 618
    .line 619
    if-nez v2, :cond_d

    .line 620
    .line 621
    iget-object v2, v15, Lya/i;->n:Landroid/hardware/input/IInputManager;

    .line 622
    .line 623
    if-eqz v2, :cond_c

    .line 624
    .line 625
    iget v3, v15, Lya/i;->f:F

    .line 626
    .line 627
    float-to-int v3, v3

    .line 628
    iget v7, v15, Lya/i;->i:I

    .line 629
    .line 630
    div-int/2addr v7, v12

    .line 631
    invoke-static {v2, v3, v7, v10, v4}, Lwa/c;->f(Landroid/hardware/input/IInputManager;IIFF)V

    .line 632
    .line 633
    .line 634
    iget-object v2, v15, Lya/i;->s:Lcom/yunpan/appmanage/carsdk/u;

    .line 635
    .line 636
    iget v0, v0, Landroid/os/Message;->what:I

    .line 637
    .line 638
    invoke-virtual {v2, v0, v5, v6}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 639
    .line 640
    .line 641
    goto/16 :goto_5

    .line 642
    .line 643
    :cond_c
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 644
    .line 645
    if-lt v2, v7, :cond_14

    .line 646
    .line 647
    iget-object v2, v15, Lya/i;->a:Lcom/yunpan/appmanage/service/AccService;

    .line 648
    .line 649
    iget v3, v15, Lya/i;->h:I

    .line 650
    .line 651
    div-int/2addr v3, v12

    .line 652
    int-to-float v3, v3

    .line 653
    iget v4, v15, Lya/i;->i:I

    .line 654
    .line 655
    div-int/2addr v4, v13

    .line 656
    mul-int/lit8 v12, v4, 0x2

    .line 657
    .line 658
    int-to-float v7, v12

    .line 659
    int-to-float v4, v4

    .line 660
    const-wide/16 v21, 0xc8

    .line 661
    .line 662
    move-object/from16 v16, v2

    .line 663
    .line 664
    move/from16 v17, v3

    .line 665
    .line 666
    move/from16 v18, v7

    .line 667
    .line 668
    move/from16 v19, v3

    .line 669
    .line 670
    move/from16 v20, v4

    .line 671
    .line 672
    invoke-static/range {v16 .. v22}, Lwa/b;->d(Lcom/yunpan/appmanage/service/AccService;FFFFJ)V

    .line 673
    .line 674
    .line 675
    iget-object v2, v15, Lya/i;->s:Lcom/yunpan/appmanage/carsdk/u;

    .line 676
    .line 677
    iget v0, v0, Landroid/os/Message;->what:I

    .line 678
    .line 679
    invoke-virtual {v2, v0, v5, v6}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 680
    .line 681
    .line 682
    goto/16 :goto_5

    .line 683
    .line 684
    :cond_d
    iget-object v2, v15, Lya/i;->o:Ljava/util/HashMap;

    .line 685
    .line 686
    iget v3, v0, Landroid/os/Message;->what:I

    .line 687
    .line 688
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 689
    .line 690
    .line 691
    move-result-object v3

    .line 692
    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 693
    .line 694
    .line 695
    move-result-object v2

    .line 696
    check-cast v2, Ljava/lang/Integer;

    .line 697
    .line 698
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    .line 699
    .line 700
    .line 701
    move-result v2

    .line 702
    invoke-static {v15, v14, v2}, Lya/i;->b(Lya/i;II)V

    .line 703
    .line 704
    .line 705
    iget v0, v0, Landroid/os/Message;->what:I

    .line 706
    .line 707
    invoke-static {v15, v0}, Lya/i;->a(Lya/i;I)V

    .line 708
    .line 709
    .line 710
    goto/16 :goto_5

    .line 711
    .line 712
    :cond_e
    if-ne v2, v3, :cond_10

    .line 713
    .line 714
    iget v3, v15, Lya/i;->f:F

    .line 715
    .line 716
    cmpl-float v3, v3, v10

    .line 717
    .line 718
    if-nez v3, :cond_f

    .line 719
    .line 720
    iget-object v2, v15, Lya/i;->n:Landroid/hardware/input/IInputManager;

    .line 721
    .line 722
    if-eqz v2, :cond_14

    .line 723
    .line 724
    iget v3, v15, Lya/i;->h:I

    .line 725
    .line 726
    div-int/2addr v3, v12

    .line 727
    iget v4, v15, Lya/i;->g:F

    .line 728
    .line 729
    float-to-int v4, v4

    .line 730
    invoke-static {v2, v3, v4, v8, v10}, Lwa/c;->f(Landroid/hardware/input/IInputManager;IIFF)V

    .line 731
    .line 732
    .line 733
    iget-object v2, v15, Lya/i;->s:Lcom/yunpan/appmanage/carsdk/u;

    .line 734
    .line 735
    iget v0, v0, Landroid/os/Message;->what:I

    .line 736
    .line 737
    invoke-virtual {v2, v0, v5, v6}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 738
    .line 739
    .line 740
    goto :goto_5

    .line 741
    :cond_f
    iget-object v3, v15, Lya/i;->o:Ljava/util/HashMap;

    .line 742
    .line 743
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 744
    .line 745
    .line 746
    move-result-object v2

    .line 747
    invoke-virtual {v3, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 748
    .line 749
    .line 750
    move-result-object v2

    .line 751
    check-cast v2, Ljava/lang/Integer;

    .line 752
    .line 753
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    .line 754
    .line 755
    .line 756
    move-result v2

    .line 757
    neg-int v2, v2

    .line 758
    invoke-static {v15, v2, v14}, Lya/i;->b(Lya/i;II)V

    .line 759
    .line 760
    .line 761
    iget v0, v0, Landroid/os/Message;->what:I

    .line 762
    .line 763
    invoke-static {v15, v0}, Lya/i;->a(Lya/i;I)V

    .line 764
    .line 765
    .line 766
    goto :goto_5

    .line 767
    :cond_10
    const/16 v3, 0x16

    .line 768
    .line 769
    if-ne v2, v3, :cond_12

    .line 770
    .line 771
    iget v2, v15, Lya/i;->h:I

    .line 772
    .line 773
    iget-object v3, v15, Lya/i;->e:Landroid/widget/ImageView;

    .line 774
    .line 775
    invoke-virtual {v3}, Landroid/view/View;->getWidth()I

    .line 776
    .line 777
    .line 778
    move-result v3

    .line 779
    sub-int/2addr v2, v3

    .line 780
    int-to-float v2, v2

    .line 781
    iget v3, v15, Lya/i;->f:F

    .line 782
    .line 783
    cmpl-float v2, v2, v3

    .line 784
    .line 785
    if-nez v2, :cond_11

    .line 786
    .line 787
    iget-object v2, v15, Lya/i;->n:Landroid/hardware/input/IInputManager;

    .line 788
    .line 789
    if-eqz v2, :cond_14

    .line 790
    .line 791
    iget v3, v15, Lya/i;->h:I

    .line 792
    .line 793
    div-int/2addr v3, v12

    .line 794
    iget v7, v15, Lya/i;->g:F

    .line 795
    .line 796
    float-to-int v7, v7

    .line 797
    invoke-static {v2, v3, v7, v4, v10}, Lwa/c;->f(Landroid/hardware/input/IInputManager;IIFF)V

    .line 798
    .line 799
    .line 800
    iget-object v2, v15, Lya/i;->s:Lcom/yunpan/appmanage/carsdk/u;

    .line 801
    .line 802
    iget v0, v0, Landroid/os/Message;->what:I

    .line 803
    .line 804
    invoke-virtual {v2, v0, v5, v6}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 805
    .line 806
    .line 807
    goto :goto_5

    .line 808
    :cond_11
    iget-object v2, v15, Lya/i;->o:Ljava/util/HashMap;

    .line 809
    .line 810
    iget v3, v0, Landroid/os/Message;->what:I

    .line 811
    .line 812
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 813
    .line 814
    .line 815
    move-result-object v3

    .line 816
    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 817
    .line 818
    .line 819
    move-result-object v2

    .line 820
    check-cast v2, Ljava/lang/Integer;

    .line 821
    .line 822
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    .line 823
    .line 824
    .line 825
    move-result v2

    .line 826
    invoke-static {v15, v2, v14}, Lya/i;->b(Lya/i;II)V

    .line 827
    .line 828
    .line 829
    iget v0, v0, Landroid/os/Message;->what:I

    .line 830
    .line 831
    invoke-static {v15, v0}, Lya/i;->a(Lya/i;I)V

    .line 832
    .line 833
    .line 834
    goto :goto_5

    .line 835
    :cond_12
    const/16 v0, 0xa5

    .line 836
    .line 837
    if-eq v2, v0, :cond_13

    .line 838
    .line 839
    const/16 v0, 0x52

    .line 840
    .line 841
    if-eq v2, v0, :cond_13

    .line 842
    .line 843
    if-eq v2, v13, :cond_13

    .line 844
    .line 845
    const/16 v0, 0x1d

    .line 846
    .line 847
    if-ne v2, v0, :cond_14

    .line 848
    .line 849
    :cond_13
    invoke-virtual {v15}, Lya/i;->c()V

    .line 850
    .line 851
    .line 852
    :cond_14
    :goto_5
    return-void

    .line 853
    :pswitch_12
    iget v2, v0, Landroid/os/Message;->what:I

    .line 854
    .line 855
    iget-object v3, v1, Lcom/yunpan/appmanage/carsdk/u;->b:Ljava/lang/Object;

    .line 856
    .line 857
    check-cast v3, Lx0/m;

    .line 858
    .line 859
    if-eq v2, v15, :cond_18

    .line 860
    .line 861
    if-eq v2, v12, :cond_17

    .line 862
    .line 863
    if-ne v2, v13, :cond_16

    .line 864
    .line 865
    iget-object v0, v3, Lx0/m;->g:Landroid/view/GestureDetector$OnDoubleTapListener;

    .line 866
    .line 867
    if-eqz v0, :cond_19

    .line 868
    .line 869
    iget-boolean v2, v3, Lx0/m;->h:Z

    .line 870
    .line 871
    if-nez v2, :cond_15

    .line 872
    .line 873
    iget-object v2, v3, Lx0/m;->m:Landroid/view/MotionEvent;

    .line 874
    .line 875
    invoke-interface {v0, v2}, Landroid/view/GestureDetector$OnDoubleTapListener;->onSingleTapConfirmed(Landroid/view/MotionEvent;)Z

    .line 876
    .line 877
    .line 878
    goto :goto_6

    .line 879
    :cond_15
    iput-boolean v15, v3, Lx0/m;->i:Z

    .line 880
    .line 881
    goto :goto_6

    .line 882
    :cond_16
    new-instance v2, Ljava/lang/RuntimeException;

    .line 883
    .line 884
    new-instance v3, Ljava/lang/StringBuilder;

    .line 885
    .line 886
    const-string v4, "Unknown message "

    .line 887
    .line 888
    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 889
    .line 890
    .line 891
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 892
    .line 893
    .line 894
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 895
    .line 896
    .line 897
    move-result-object v0

    .line 898
    invoke-direct {v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 899
    .line 900
    .line 901
    throw v2

    .line 902
    :cond_17
    iget-object v0, v3, Lx0/m;->e:Lcom/yunpan/appmanage/carsdk/u;

    .line 903
    .line 904
    invoke-virtual {v0, v13}, Landroid/os/Handler;->removeMessages(I)V

    .line 905
    .line 906
    .line 907
    iput-boolean v14, v3, Lx0/m;->i:Z

    .line 908
    .line 909
    iput-boolean v15, v3, Lx0/m;->j:Z

    .line 910
    .line 911
    iget-object v0, v3, Lx0/m;->f:Landroidx/recyclerview/widget/q0;

    .line 912
    .line 913
    iget-object v2, v3, Lx0/m;->m:Landroid/view/MotionEvent;

    .line 914
    .line 915
    invoke-virtual {v0, v2}, Landroidx/recyclerview/widget/q0;->onLongPress(Landroid/view/MotionEvent;)V

    .line 916
    .line 917
    .line 918
    goto :goto_6

    .line 919
    :cond_18
    iget-object v0, v3, Lx0/m;->f:Landroidx/recyclerview/widget/q0;

    .line 920
    .line 921
    iget-object v2, v3, Lx0/m;->m:Landroid/view/MotionEvent;

    .line 922
    .line 923
    invoke-virtual {v0, v2}, Landroid/view/GestureDetector$SimpleOnGestureListener;->onShowPress(Landroid/view/MotionEvent;)V

    .line 924
    .line 925
    .line 926
    :cond_19
    :goto_6
    return-void

    .line 927
    :pswitch_13
    invoke-direct/range {p0 .. p1}, Lcom/yunpan/appmanage/carsdk/u;->e(Landroid/os/Message;)V

    .line 928
    .line 929
    .line 930
    return-void

    .line 931
    :pswitch_14
    invoke-direct/range {p0 .. p1}, Lcom/yunpan/appmanage/carsdk/u;->d(Landroid/os/Message;)V

    .line 932
    .line 933
    .line 934
    return-void

    .line 935
    :pswitch_15
    iget v0, v0, Landroid/os/Message;->what:I

    .line 936
    .line 937
    if-ne v0, v15, :cond_1a

    .line 938
    .line 939
    :try_start_1
    iget-object v0, v1, Lcom/yunpan/appmanage/carsdk/u;->b:Ljava/lang/Object;

    .line 940
    .line 941
    check-cast v0, Lcom/yunpan/appmanage/ui/ActivityTextFlyOSAll;

    .line 942
    .line 943
    iget-object v2, v0, Lcom/yunpan/appmanage/ui/ActivityTextFlyOSAll;->F:Lx9/h2;

    .line 944
    .line 945
    iget-object v0, v0, Lcom/yunpan/appmanage/ui/ActivityTextFlyOSAll;->I:Ljava/util/ArrayList;

    .line 946
    .line 947
    invoke-virtual {v2, v0}, Lc6/g;->E(Ljava/util/List;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 948
    .line 949
    .line 950
    :catch_1
    :cond_1a
    return-void

    .line 951
    :pswitch_16
    invoke-direct/range {p0 .. p1}, Lcom/yunpan/appmanage/carsdk/u;->c(Landroid/os/Message;)V

    .line 952
    .line 953
    .line 954
    return-void

    .line 955
    :pswitch_17
    iget v0, v0, Landroid/os/Message;->what:I

    .line 956
    .line 957
    if-nez v0, :cond_1b

    .line 958
    .line 959
    sget-object v0, Lcom/yunpan/appmanage/util/v;->a:Lcom/yunpan/appmanage/util/w;

    .line 960
    .line 961
    iget-boolean v0, v0, Lcom/yunpan/appmanage/util/w;->G0:Z

    .line 962
    .line 963
    if-eqz v0, :cond_1b

    .line 964
    .line 965
    sget-object v0, Lcom/yunpan/appmanage/util/k;->u0:Ljava/text/DecimalFormat;

    .line 966
    .line 967
    sget-object v0, Lcom/yunpan/appmanage/util/j;->a:Lcom/yunpan/appmanage/util/k;

    .line 968
    .line 969
    iget-object v0, v0, Lcom/yunpan/appmanage/util/k;->y:Lcom/yunpan/appmanage/bean/ImageData;

    .line 970
    .line 971
    iget v2, v0, Lcom/yunpan/appmanage/bean/ImageData;->position:I

    .line 972
    .line 973
    add-int/2addr v2, v15

    .line 974
    iput v2, v0, Lcom/yunpan/appmanage/bean/ImageData;->position:I

    .line 975
    .line 976
    sget v0, Lcom/yunpan/appmanage/ui/ActivityImage2;->M0:I

    .line 977
    .line 978
    iget-object v0, v1, Lcom/yunpan/appmanage/carsdk/u;->b:Ljava/lang/Object;

    .line 979
    .line 980
    check-cast v0, Lcom/yunpan/appmanage/ui/ActivityImage2;

    .line 981
    .line 982
    invoke-virtual {v0}, Lcom/yunpan/appmanage/ui/ActivityImage2;->y()V

    .line 983
    .line 984
    .line 985
    :cond_1b
    return-void

    .line 986
    :pswitch_18
    iget v0, v0, Landroid/os/Message;->what:I

    .line 987
    .line 988
    if-nez v0, :cond_1c

    .line 989
    .line 990
    sget-object v0, Lcom/yunpan/appmanage/util/v;->a:Lcom/yunpan/appmanage/util/w;

    .line 991
    .line 992
    iget-boolean v0, v0, Lcom/yunpan/appmanage/util/w;->G0:Z

    .line 993
    .line 994
    if-eqz v0, :cond_1c

    .line 995
    .line 996
    sget-object v0, Lcom/yunpan/appmanage/util/k;->u0:Ljava/text/DecimalFormat;

    .line 997
    .line 998
    sget-object v0, Lcom/yunpan/appmanage/util/j;->a:Lcom/yunpan/appmanage/util/k;

    .line 999
    .line 1000
    iget-object v0, v0, Lcom/yunpan/appmanage/util/k;->y:Lcom/yunpan/appmanage/bean/ImageData;

    .line 1001
    .line 1002
    iget v2, v0, Lcom/yunpan/appmanage/bean/ImageData;->position:I

    .line 1003
    .line 1004
    add-int/2addr v2, v15

    .line 1005
    iput v2, v0, Lcom/yunpan/appmanage/bean/ImageData;->position:I

    .line 1006
    .line 1007
    sget v0, Lcom/yunpan/appmanage/ui/ActivityImage;->t0:I

    .line 1008
    .line 1009
    iget-object v0, v1, Lcom/yunpan/appmanage/carsdk/u;->b:Ljava/lang/Object;

    .line 1010
    .line 1011
    check-cast v0, Lcom/yunpan/appmanage/ui/ActivityImage;

    .line 1012
    .line 1013
    invoke-virtual {v0}, Lcom/yunpan/appmanage/ui/ActivityImage;->y()V

    .line 1014
    .line 1015
    .line 1016
    :cond_1c
    return-void

    .line 1017
    :pswitch_19
    iget v2, v0, Landroid/os/Message;->what:I

    .line 1018
    .line 1019
    iget-object v4, v1, Lcom/yunpan/appmanage/carsdk/u;->b:Ljava/lang/Object;

    .line 1020
    .line 1021
    check-cast v4, Lcom/yunpan/appmanage/ui/ActivityHome;

    .line 1022
    .line 1023
    if-ne v2, v3, :cond_20

    .line 1024
    .line 1025
    sget v0, Lcom/yunpan/appmanage/ui/ActivityHome;->O:I

    .line 1026
    .line 1027
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1028
    .line 1029
    .line 1030
    new-instance v0, Ljava/lang/StringBuilder;

    .line 1031
    .line 1032
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 1033
    .line 1034
    .line 1035
    sget-object v2, Lfa/g0;->a:Lfa/h0;

    .line 1036
    .line 1037
    invoke-virtual {v2}, Lfa/h0;->f()Z

    .line 1038
    .line 1039
    .line 1040
    move-result v5

    .line 1041
    const-string v6, "\n\u7cfb\u7edf\uff1a\u53ef\u5199\u5165"

    .line 1042
    .line 1043
    if-eqz v5, :cond_1e

    .line 1044
    .line 1045
    iget-boolean v2, v2, Lfa/h0;->b:Z

    .line 1046
    .line 1047
    if-eqz v2, :cond_1d

    .line 1048
    .line 1049
    const-string v2, "jni\uff1a\u5df2\u6fc0\u6d3b"

    .line 1050
    .line 1051
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1052
    .line 1053
    .line 1054
    goto :goto_7

    .line 1055
    :cond_1d
    const-string v2, "root\uff1a\u5df2\u6388\u6743"

    .line 1056
    .line 1057
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1058
    .line 1059
    .line 1060
    :goto_7
    sget-object v2, Lcom/yunpan/appmanage/util/k;->u0:Ljava/text/DecimalFormat;

    .line 1061
    .line 1062
    sget-object v2, Lcom/yunpan/appmanage/util/j;->a:Lcom/yunpan/appmanage/util/k;

    .line 1063
    .line 1064
    iget-boolean v2, v2, Lcom/yunpan/appmanage/util/k;->m:Z

    .line 1065
    .line 1066
    if-eqz v2, :cond_1f

    .line 1067
    .line 1068
    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1069
    .line 1070
    .line 1071
    goto :goto_8

    .line 1072
    :cond_1e
    sget-object v2, Lfa/h;->a:Lfa/j;

    .line 1073
    .line 1074
    iget-object v5, v2, Lfa/j;->h:Ljava/lang/String;

    .line 1075
    .line 1076
    invoke-virtual {v5}, Ljava/lang/String;->isEmpty()Z

    .line 1077
    .line 1078
    .line 1079
    move-result v5

    .line 1080
    if-nez v5, :cond_1f

    .line 1081
    .line 1082
    const-string v5, "adb\uff1a"

    .line 1083
    .line 1084
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1085
    .line 1086
    .line 1087
    iget-object v2, v2, Lfa/j;->h:Ljava/lang/String;

    .line 1088
    .line 1089
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1090
    .line 1091
    .line 1092
    sget-object v2, Lcom/yunpan/appmanage/util/k;->u0:Ljava/text/DecimalFormat;

    .line 1093
    .line 1094
    sget-object v2, Lcom/yunpan/appmanage/util/j;->a:Lcom/yunpan/appmanage/util/k;

    .line 1095
    .line 1096
    iget-boolean v2, v2, Lcom/yunpan/appmanage/util/k;->m:Z

    .line 1097
    .line 1098
    if-eqz v2, :cond_1f

    .line 1099
    .line 1100
    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1101
    .line 1102
    .line 1103
    :cond_1f
    :goto_8
    iget-object v2, v4, Lcom/yunpan/appmanage/ui/ActivityHome;->H:Landroid/widget/TextView;

    .line 1104
    .line 1105
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1106
    .line 1107
    .line 1108
    move-result-object v0

    .line 1109
    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1110
    .line 1111
    .line 1112
    iget-object v0, v4, Lcom/yunpan/appmanage/ui/ActivityHome;->M:Lcom/yunpan/appmanage/carsdk/u;

    .line 1113
    .line 1114
    const-wide/16 v4, 0xd05

    .line 1115
    .line 1116
    invoke-virtual {v0, v3, v4, v5}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 1117
    .line 1118
    .line 1119
    goto/16 :goto_a

    .line 1120
    .line 1121
    :cond_20
    if-eqz v2, :cond_26

    .line 1122
    .line 1123
    if-eq v2, v15, :cond_26

    .line 1124
    .line 1125
    if-eq v2, v12, :cond_26

    .line 1126
    .line 1127
    if-ne v2, v13, :cond_21

    .line 1128
    .line 1129
    goto/16 :goto_9

    .line 1130
    .line 1131
    :cond_21
    const/16 v0, 0x7b

    .line 1132
    .line 1133
    if-ne v2, v0, :cond_22

    .line 1134
    .line 1135
    sget-object v0, Lcom/yunpan/appmanage/util/v;->a:Lcom/yunpan/appmanage/util/w;

    .line 1136
    .line 1137
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1138
    .line 1139
    .line 1140
    iget-object v0, v4, Lcom/yunpan/appmanage/ui/ActivityHome;->D:Lcom/owen/tvrecyclerview/widget/TvRecyclerView;

    .line 1141
    .line 1142
    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    .line 1143
    .line 1144
    .line 1145
    iget-object v0, v4, Lcom/yunpan/appmanage/ui/ActivityHome;->F:Lcom/yunpan/appmanage/view/NoScrollViewPager;

    .line 1146
    .line 1147
    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    .line 1148
    .line 1149
    .line 1150
    :try_start_2
    iget-object v0, v4, Lcom/yunpan/appmanage/ui/ActivityHome;->G:Lx9/k2;

    .line 1151
    .line 1152
    iget-object v0, v0, Lx9/k2;->h:Ljava/util/ArrayList;

    .line 1153
    .line 1154
    invoke-virtual {v0, v14}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 1155
    .line 1156
    .line 1157
    move-result-object v0

    .line 1158
    check-cast v0, Landroidx/fragment/app/Fragment;

    .line 1159
    .line 1160
    check-cast v0, Lua/x7;

    .line 1161
    .line 1162
    invoke-virtual {v0}, Lua/x7;->q()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_3

    .line 1163
    .line 1164
    .line 1165
    goto/16 :goto_a

    .line 1166
    .line 1167
    :cond_22
    const/16 v0, 0x7c

    .line 1168
    .line 1169
    if-ne v2, v0, :cond_23

    .line 1170
    .line 1171
    new-instance v0, Lha/z6;

    .line 1172
    .line 1173
    sget v2, Lcom/yunpan/appmanage/ui/ActivityHome;->O:I

    .line 1174
    .line 1175
    iget-object v7, v4, Lda/g;->A:Lda/g;

    .line 1176
    .line 1177
    new-instance v2, Ljava/lang/StringBuilder;

    .line 1178
    .line 1179
    const-string v3, "\u65e0\u6cd5\u83b7\u53d6\u5e94\u7528\u5217\u8868\uff0c\u8bf7\u624b\u52a8\u6388\u6743("

    .line 1180
    .line 1181
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1182
    .line 1183
    .line 1184
    iget-object v3, v4, Lda/g;->A:Lda/g;

    .line 1185
    .line 1186
    invoke-virtual {v3}, Lda/g;->getResources()Landroid/content/res/Resources;

    .line 1187
    .line 1188
    .line 1189
    move-result-object v3

    .line 1190
    const v4, 0x7f13002f

    .line 1191
    .line 1192
    .line 1193
    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    .line 1194
    .line 1195
    .line 1196
    move-result-object v3

    .line 1197
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1198
    .line 1199
    .line 1200
    const-string v3, ")\u83b7\u53d6\u5e94\u7528\u5217\u8868\u7684\u6743\u9650"

    .line 1201
    .line 1202
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1203
    .line 1204
    .line 1205
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1206
    .line 1207
    .line 1208
    move-result-object v8

    .line 1209
    new-instance v12, Lua/i1;

    .line 1210
    .line 1211
    invoke-direct {v12, v13, v1}, Lua/i1;-><init>(ILjava/lang/Object;)V

    .line 1212
    .line 1213
    .line 1214
    const-string v10, "\u786e\u5b9a"

    .line 1215
    .line 1216
    const-string v11, "\u53d6\u6d88"

    .line 1217
    .line 1218
    const-string v9, ""

    .line 1219
    .line 1220
    move-object v5, v0

    .line 1221
    move-object v6, v7

    .line 1222
    invoke-direct/range {v5 .. v12}, Lha/z6;-><init>(Landroid/app/Activity;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lha/wd;)V

    .line 1223
    .line 1224
    .line 1225
    invoke-virtual {v0}, Lha/a4;->show()V

    .line 1226
    .line 1227
    .line 1228
    goto/16 :goto_a

    .line 1229
    .line 1230
    :cond_23
    const/16 v0, 0x7d

    .line 1231
    .line 1232
    if-ne v2, v0, :cond_2a

    .line 1233
    .line 1234
    sget v0, Lcom/yunpan/appmanage/ui/ActivityHome;->O:I

    .line 1235
    .line 1236
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1237
    .line 1238
    .line 1239
    sget-object v0, Lcom/yunpan/appmanage/util/v;->a:Lcom/yunpan/appmanage/util/w;

    .line 1240
    .line 1241
    iget-boolean v2, v0, Lcom/yunpan/appmanage/util/w;->N:Z

    .line 1242
    .line 1243
    if-nez v2, :cond_24

    .line 1244
    .line 1245
    goto/16 :goto_a

    .line 1246
    .line 1247
    :cond_24
    iput-boolean v14, v0, Lcom/yunpan/appmanage/util/w;->N:Z

    .line 1248
    .line 1249
    :try_start_3
    iget-object v2, v0, Lcom/yunpan/appmanage/util/w;->i:Lz7/s;

    .line 1250
    .line 1251
    const-string v3, "IsOneRunning"

    .line 1252
    .line 1253
    sget-object v5, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 1254
    .line 1255
    invoke-virtual {v2, v3, v5}, Lz7/s;->k(Ljava/lang/String;Ljava/lang/Boolean;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    .line 1256
    .line 1257
    .line 1258
    :catch_2
    invoke-virtual {v0}, Lcom/yunpan/appmanage/util/w;->m()V

    .line 1259
    .line 1260
    .line 1261
    iget-object v0, v4, Lda/g;->A:Lda/g;

    .line 1262
    .line 1263
    invoke-static {}, Lcom/hjq/permissions/permission/PermissionLists;->getWriteSettingsPermission()Lcom/hjq/permissions/permission/base/IPermission;

    .line 1264
    .line 1265
    .line 1266
    move-result-object v2

    .line 1267
    new-array v3, v15, [Lcom/hjq/permissions/permission/base/IPermission;

    .line 1268
    .line 1269
    aput-object v2, v3, v14

    .line 1270
    .line 1271
    invoke-static {v0, v3}, Lcom/hjq/permissions/XXPermissions;->isGrantedPermissions(Landroid/content/Context;[Lcom/hjq/permissions/permission/base/IPermission;)Z

    .line 1272
    .line 1273
    .line 1274
    move-result v0

    .line 1275
    if-eqz v0, :cond_25

    .line 1276
    .line 1277
    goto :goto_a

    .line 1278
    :cond_25
    invoke-static {v4}, Lcom/hjq/permissions/XXPermissions;->with(Landroid/content/Context;)Lcom/hjq/permissions/XXPermissions;

    .line 1279
    .line 1280
    .line 1281
    move-result-object v0

    .line 1282
    invoke-static {}, Lcom/hjq/permissions/permission/PermissionLists;->getWriteSettingsPermission()Lcom/hjq/permissions/permission/base/IPermission;

    .line 1283
    .line 1284
    .line 1285
    move-result-object v2

    .line 1286
    invoke-virtual {v0, v2}, Lcom/hjq/permissions/XXPermissions;->permission(Lcom/hjq/permissions/permission/base/IPermission;)Lcom/hjq/permissions/XXPermissions;

    .line 1287
    .line 1288
    .line 1289
    move-result-object v0

    .line 1290
    new-instance v2, Lua/v0;

    .line 1291
    .line 1292
    const/4 v3, 0x6

    .line 1293
    invoke-direct {v2, v3}, Lua/v0;-><init>(I)V

    .line 1294
    .line 1295
    .line 1296
    invoke-virtual {v0, v2}, Lcom/hjq/permissions/XXPermissions;->request(Lcom/hjq/permissions/OnPermissionCallback;)V

    .line 1297
    .line 1298
    .line 1299
    goto :goto_a

    .line 1300
    :cond_26
    :goto_9
    iget-object v3, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 1301
    .line 1302
    check-cast v3, Ljava/lang/String;

    .line 1303
    .line 1304
    if-nez v2, :cond_27

    .line 1305
    .line 1306
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1307
    .line 1308
    .line 1309
    sget-object v5, Lcom/yunpan/appmanage/util/k;->u0:Ljava/text/DecimalFormat;

    .line 1310
    .line 1311
    sget-object v5, Lcom/yunpan/appmanage/util/j;->a:Lcom/yunpan/appmanage/util/k;

    .line 1312
    .line 1313
    iget-object v5, v5, Lcom/yunpan/appmanage/util/k;->g0:Ljava/util/concurrent/ExecutorService;

    .line 1314
    .line 1315
    new-instance v6, Lfa/v;

    .line 1316
    .line 1317
    invoke-direct {v6, v4, v3, v2, v13}, Lfa/v;-><init>(Ljava/lang/Object;Ljava/lang/Object;II)V

    .line 1318
    .line 1319
    .line 1320
    invoke-interface {v5, v6}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    .line 1321
    .line 1322
    .line 1323
    iget v0, v0, Landroid/os/Message;->what:I

    .line 1324
    .line 1325
    invoke-static {v4, v0, v3}, Lcom/yunpan/appmanage/ui/ActivityHome;->y(Lcom/yunpan/appmanage/ui/ActivityHome;ILjava/lang/String;)V

    .line 1326
    .line 1327
    .line 1328
    goto :goto_a

    .line 1329
    :cond_27
    if-ne v2, v15, :cond_28

    .line 1330
    .line 1331
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1332
    .line 1333
    .line 1334
    sget-object v0, Lcom/yunpan/appmanage/util/k;->u0:Ljava/text/DecimalFormat;

    .line 1335
    .line 1336
    sget-object v0, Lcom/yunpan/appmanage/util/j;->a:Lcom/yunpan/appmanage/util/k;

    .line 1337
    .line 1338
    iget-object v0, v0, Lcom/yunpan/appmanage/util/k;->g0:Ljava/util/concurrent/ExecutorService;

    .line 1339
    .line 1340
    new-instance v5, Lfa/v;

    .line 1341
    .line 1342
    invoke-direct {v5, v4, v3, v2, v13}, Lfa/v;-><init>(Ljava/lang/Object;Ljava/lang/Object;II)V

    .line 1343
    .line 1344
    .line 1345
    invoke-interface {v0, v5}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    .line 1346
    .line 1347
    .line 1348
    goto :goto_a

    .line 1349
    :cond_28
    if-ne v2, v12, :cond_29

    .line 1350
    .line 1351
    goto :goto_a

    .line 1352
    :cond_29
    if-ne v2, v13, :cond_2a

    .line 1353
    .line 1354
    invoke-static {v4, v13, v3}, Lcom/yunpan/appmanage/ui/ActivityHome;->y(Lcom/yunpan/appmanage/ui/ActivityHome;ILjava/lang/String;)V

    .line 1355
    .line 1356
    .line 1357
    sget-object v0, Lcom/yunpan/appmanage/util/k;->u0:Ljava/text/DecimalFormat;

    .line 1358
    .line 1359
    sget-object v0, Lcom/yunpan/appmanage/util/j;->a:Lcom/yunpan/appmanage/util/k;

    .line 1360
    .line 1361
    iget-object v0, v0, Lcom/yunpan/appmanage/util/k;->g0:Ljava/util/concurrent/ExecutorService;

    .line 1362
    .line 1363
    new-instance v2, Ls1/f;

    .line 1364
    .line 1365
    const/16 v4, 0xa

    .line 1366
    .line 1367
    invoke-direct {v2, v1, v4, v3}, Ls1/f;-><init>(Ljava/lang/Object;ILjava/lang/Object;)V

    .line 1368
    .line 1369
    .line 1370
    invoke-interface {v0, v2}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    .line 1371
    .line 1372
    .line 1373
    :catch_3
    :cond_2a
    :goto_a
    return-void

    .line 1374
    :pswitch_1a
    iget v2, v0, Landroid/os/Message;->what:I

    .line 1375
    .line 1376
    if-ne v2, v15, :cond_2b

    .line 1377
    .line 1378
    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 1379
    .line 1380
    check-cast v0, Lx9/u5;

    .line 1381
    .line 1382
    iget-object v2, v1, Lcom/yunpan/appmanage/carsdk/u;->b:Ljava/lang/Object;

    .line 1383
    .line 1384
    check-cast v2, Lcom/yunpan/appmanage/ui/ActivityDownload;

    .line 1385
    .line 1386
    iget-object v3, v2, Lcom/yunpan/appmanage/ui/ActivityDownload;->V:Lx9/t5;

    .line 1387
    .line 1388
    iget v4, v0, Lx9/u5;->a:I

    .line 1389
    .line 1390
    invoke-virtual {v3, v4, v0}, Lc6/g;->D(ILjava/lang/Object;)V

    .line 1391
    .line 1392
    .line 1393
    iget-object v3, v2, Lcom/yunpan/appmanage/ui/ActivityDownload;->F:Lcom/owen/tvrecyclerview/widget/TvRecyclerView;

    .line 1394
    .line 1395
    iget v4, v0, Lx9/u5;->a:I

    .line 1396
    .line 1397
    invoke-virtual {v3, v4}, Lcom/owen/tvrecyclerview/widget/TvRecyclerView;->smoothScrollToPosition(I)V

    .line 1398
    .line 1399
    .line 1400
    iget-object v0, v0, Lx9/u5;->c:Ljava/lang/String;

    .line 1401
    .line 1402
    const-string v3, "\u767b\u5f55\u540e\u4e0b\u8f7d"

    .line 1403
    .line 1404
    invoke-virtual {v0, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 1405
    .line 1406
    .line 1407
    move-result v0

    .line 1408
    if-eqz v0, :cond_2b

    .line 1409
    .line 1410
    iget-object v0, v2, Lcom/yunpan/appmanage/ui/ActivityDownload;->Y:Lx9/n5;

    .line 1411
    .line 1412
    if-eqz v0, :cond_2b

    .line 1413
    .line 1414
    const-string v2, ""

    .line 1415
    .line 1416
    iput-object v2, v0, Lx9/n5;->k:Ljava/lang/String;

    .line 1417
    .line 1418
    :cond_2b
    return-void

    .line 1419
    :pswitch_1b
    iget-object v2, v1, Lcom/yunpan/appmanage/carsdk/u;->b:Ljava/lang/Object;

    .line 1420
    .line 1421
    check-cast v2, Lcom/yunpan/appmanage/ui/ActivityAutomation;

    .line 1422
    .line 1423
    iget-object v3, v2, Lcom/yunpan/appmanage/ui/ActivityAutomation;->E:Landroid/widget/TextView;

    .line 1424
    .line 1425
    if-nez v3, :cond_2c

    .line 1426
    .line 1427
    goto/16 :goto_b

    .line 1428
    .line 1429
    :cond_2c
    invoke-virtual {v3}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    .line 1430
    .line 1431
    .line 1432
    move-result-object v3

    .line 1433
    invoke-interface {v3}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    .line 1434
    .line 1435
    .line 1436
    move-result-object v3

    .line 1437
    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    .line 1438
    .line 1439
    .line 1440
    move-result-object v3

    .line 1441
    const-string v4, "\u670d\u52a1\u8fd0\u884c\u4e2d"

    .line 1442
    .line 1443
    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 1444
    .line 1445
    .line 1446
    move-result v3

    .line 1447
    if-eqz v3, :cond_2d

    .line 1448
    .line 1449
    goto :goto_b

    .line 1450
    :cond_2d
    iget-object v3, v2, Lda/g;->A:Lda/g;

    .line 1451
    .line 1452
    const-class v5, Lcom/yunpan/appmanage/service/AccService;

    .line 1453
    .line 1454
    invoke-static {v3, v5}, Lif/a;->h0(Landroid/content/Context;Ljava/lang/Class;)Z

    .line 1455
    .line 1456
    .line 1457
    move-result v3

    .line 1458
    if-eqz v3, :cond_2e

    .line 1459
    .line 1460
    iget-object v0, v2, Lcom/yunpan/appmanage/ui/ActivityAutomation;->I:Lcom/yunpan/appmanage/carsdk/u;

    .line 1461
    .line 1462
    invoke-virtual {v0, v14}, Landroid/os/Handler;->removeMessages(I)V

    .line 1463
    .line 1464
    .line 1465
    iget-object v0, v2, Lcom/yunpan/appmanage/ui/ActivityAutomation;->I:Lcom/yunpan/appmanage/carsdk/u;

    .line 1466
    .line 1467
    invoke-virtual {v0, v15}, Landroid/os/Handler;->removeMessages(I)V

    .line 1468
    .line 1469
    .line 1470
    iget-object v0, v2, Lcom/yunpan/appmanage/ui/ActivityAutomation;->D:Landroid/widget/ImageView;

    .line 1471
    .line 1472
    const v3, 0x7f08021c

    .line 1473
    .line 1474
    .line 1475
    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 1476
    .line 1477
    .line 1478
    iget-object v0, v2, Lcom/yunpan/appmanage/ui/ActivityAutomation;->E:Landroid/widget/TextView;

    .line 1479
    .line 1480
    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1481
    .line 1482
    .line 1483
    goto :goto_b

    .line 1484
    :cond_2e
    iget v0, v0, Landroid/os/Message;->what:I

    .line 1485
    .line 1486
    if-nez v0, :cond_2f

    .line 1487
    .line 1488
    invoke-virtual {v2, v14}, Lcom/yunpan/appmanage/ui/ActivityAutomation;->x(Z)V

    .line 1489
    .line 1490
    .line 1491
    goto :goto_b

    .line 1492
    :cond_2f
    if-ne v0, v15, :cond_30

    .line 1493
    .line 1494
    iget-object v0, v2, Lcom/yunpan/appmanage/ui/ActivityAutomation;->D:Landroid/widget/ImageView;

    .line 1495
    .line 1496
    const v3, 0x7f080237

    .line 1497
    .line 1498
    .line 1499
    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 1500
    .line 1501
    .line 1502
    iget-object v0, v2, Lcom/yunpan/appmanage/ui/ActivityAutomation;->E:Landroid/widget/TextView;

    .line 1503
    .line 1504
    const-string v2, "\u5f00\u542f\u670d\u52a1(\u603b\u5f00\u5173)"

    .line 1505
    .line 1506
    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1507
    .line 1508
    .line 1509
    new-instance v0, Lha/z6;

    .line 1510
    .line 1511
    new-instance v2, Ljava/lang/StringBuilder;

    .line 1512
    .line 1513
    const-string v3, "\u65e0\u6cd5\u5f00\u542f\u65e0\u969c\u788d\u670d\u52a1\uff0c\u53ef\u80fd\u88ab\u7cfb\u7edf\u963b\u62e6\u4e86\uff0c\u8bf7\u5c1d\u8bd5\u5f3a\u5236\u505c\u6b62"

    .line 1514
    .line 1515
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1516
    .line 1517
    .line 1518
    sget-object v3, Lcom/yunpan/appmanage/util/k;->u0:Ljava/text/DecimalFormat;

    .line 1519
    .line 1520
    sget-object v3, Lcom/yunpan/appmanage/util/j;->a:Lcom/yunpan/appmanage/util/k;

    .line 1521
    .line 1522
    iget-object v3, v3, Lcom/yunpan/appmanage/util/k;->c:Ljava/lang/String;

    .line 1523
    .line 1524
    const-string v4, "\u540e\u518d\u6253\u5f00"

    .line 1525
    .line 1526
    invoke-static {v3, v4, v2}, Lg/b;->l(Ljava/lang/String;Ljava/lang/String;Ljava/lang/StringBuilder;)Ljava/lang/String;

    .line 1527
    .line 1528
    .line 1529
    move-result-object v6

    .line 1530
    new-instance v10, Ll5/y;

    .line 1531
    .line 1532
    const/16 v2, 0x1a

    .line 1533
    .line 1534
    invoke-direct {v10, v2, v1}, Ll5/y;-><init>(ILjava/lang/Object;)V

    .line 1535
    .line 1536
    .line 1537
    const-string v8, "\u5f3a\u5236\u505c\u6b62"

    .line 1538
    .line 1539
    const-string v9, ""

    .line 1540
    .line 1541
    iget-object v2, v1, Lcom/yunpan/appmanage/carsdk/u;->b:Ljava/lang/Object;

    .line 1542
    .line 1543
    move-object v5, v2

    .line 1544
    check-cast v5, Lcom/yunpan/appmanage/ui/ActivityAutomation;

    .line 1545
    .line 1546
    const-string v7, ""

    .line 1547
    .line 1548
    move-object v3, v0

    .line 1549
    move-object v4, v5

    .line 1550
    invoke-direct/range {v3 .. v10}, Lha/z6;-><init>(Landroid/app/Activity;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lha/wd;)V

    .line 1551
    .line 1552
    .line 1553
    invoke-virtual {v0}, Lha/a4;->show()V

    .line 1554
    .line 1555
    .line 1556
    :cond_30
    :goto_b
    return-void

    .line 1557
    :pswitch_1c
    invoke-super/range {p0 .. p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 1558
    .line 1559
    .line 1560
    iget v0, v0, Landroid/os/Message;->what:I

    .line 1561
    .line 1562
    if-nez v0, :cond_31

    .line 1563
    .line 1564
    iget-object v0, v1, Lcom/yunpan/appmanage/carsdk/u;->b:Ljava/lang/Object;

    .line 1565
    .line 1566
    check-cast v0, Lcom/yunpan/appmanage/service/StartService;

    .line 1567
    .line 1568
    iget-object v2, v0, Lcom/yunpan/appmanage/service/StartService;->e:Landroid/content/SharedPreferences;

    .line 1569
    .line 1570
    if-eqz v2, :cond_31

    .line 1571
    .line 1572
    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    .line 1573
    .line 1574
    .line 1575
    move-result-object v2

    .line 1576
    const-string v3, "StartServiceTime"

    .line 1577
    .line 1578
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 1579
    .line 1580
    .line 1581
    move-result-wide v4

    .line 1582
    invoke-interface {v2, v3, v4, v5}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 1583
    .line 1584
    .line 1585
    move-result-object v2

    .line 1586
    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 1587
    .line 1588
    .line 1589
    iget-object v0, v0, Lcom/yunpan/appmanage/service/StartService;->f:Lcom/yunpan/appmanage/carsdk/u;

    .line 1590
    .line 1591
    const-wide/16 v2, 0x1388

    .line 1592
    .line 1593
    invoke-virtual {v0, v14, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 1594
    .line 1595
    .line 1596
    :cond_31
    return-void

    .line 1597
    :pswitch_1d
    iget v2, v0, Landroid/os/Message;->what:I

    .line 1598
    .line 1599
    const/4 v3, -0x3

    .line 1600
    if-eq v2, v3, :cond_33

    .line 1601
    .line 1602
    const/4 v3, -0x2

    .line 1603
    if-eq v2, v3, :cond_33

    .line 1604
    .line 1605
    if-eq v2, v9, :cond_33

    .line 1606
    .line 1607
    if-eq v2, v15, :cond_32

    .line 1608
    .line 1609
    goto :goto_c

    .line 1610
    :cond_32
    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 1611
    .line 1612
    check-cast v0, Landroid/content/DialogInterface;

    .line 1613
    .line 1614
    invoke-interface {v0}, Landroid/content/DialogInterface;->dismiss()V

    .line 1615
    .line 1616
    .line 1617
    goto :goto_c

    .line 1618
    :cond_33
    iget-object v2, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 1619
    .line 1620
    check-cast v2, Landroid/content/DialogInterface$OnClickListener;

    .line 1621
    .line 1622
    iget-object v3, v1, Lcom/yunpan/appmanage/carsdk/u;->b:Ljava/lang/Object;

    .line 1623
    .line 1624
    check-cast v3, Ljava/lang/ref/WeakReference;

    .line 1625
    .line 1626
    invoke-virtual {v3}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    .line 1627
    .line 1628
    .line 1629
    move-result-object v3

    .line 1630
    check-cast v3, Landroid/content/DialogInterface;

    .line 1631
    .line 1632
    iget v0, v0, Landroid/os/Message;->what:I

    .line 1633
    .line 1634
    invoke-interface {v2, v3, v0}, Landroid/content/DialogInterface$OnClickListener;->onClick(Landroid/content/DialogInterface;I)V

    .line 1635
    .line 1636
    .line 1637
    :goto_c
    return-void

    .line 1638
    :pswitch_1e
    iget v2, v0, Landroid/os/Message;->what:I

    .line 1639
    .line 1640
    const-wide/16 v3, 0x0

    .line 1641
    .line 1642
    iget-object v5, v1, Lcom/yunpan/appmanage/carsdk/u;->b:Ljava/lang/Object;

    .line 1643
    .line 1644
    check-cast v5, Lpa/h;

    .line 1645
    .line 1646
    if-nez v2, :cond_34

    .line 1647
    .line 1648
    iget-object v2, v5, Lpa/h;->n:Lcom/yunpan/appmanage/carsdk/u;

    .line 1649
    .line 1650
    invoke-virtual {v2, v15}, Landroid/os/Handler;->removeMessages(I)V

    .line 1651
    .line 1652
    .line 1653
    :try_start_4
    iget-object v2, v5, Lpa/h;->b:Lcom/yunpan/appmanage/service/AccService;

    .line 1654
    .line 1655
    iget-object v6, v5, Lpa/h;->d:Lz7/o;

    .line 1656
    .line 1657
    iget v0, v0, Landroid/os/Message;->arg1:I

    .line 1658
    .line 1659
    invoke-virtual {v6, v0}, Lz7/o;->l(I)Lz7/p;

    .line 1660
    .line 1661
    .line 1662
    move-result-object v0

    .line 1663
    invoke-virtual {v0}, Lz7/p;->g()Lz7/s;

    .line 1664
    .line 1665
    .line 1666
    move-result-object v0

    .line 1667
    const-string v6, "click"

    .line 1668
    .line 1669
    invoke-virtual {v0, v6}, Lz7/s;->p(Ljava/lang/String;)Lz7/o;

    .line 1670
    .line 1671
    .line 1672
    move-result-object v0

    .line 1673
    invoke-virtual {v2, v0}, Lcom/yunpan/appmanage/service/AccService;->b(Lz7/o;)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_4

    .line 1674
    .line 1675
    .line 1676
    goto :goto_d

    .line 1677
    :catch_4
    move-exception v0

    .line 1678
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 1679
    .line 1680
    .line 1681
    :goto_d
    :try_start_5
    iput v9, v5, Lpa/h;->g:I

    .line 1682
    .line 1683
    iput-wide v3, v5, Lpa/h;->h:J

    .line 1684
    .line 1685
    iput v9, v5, Lpa/h;->i:I

    .line 1686
    .line 1687
    iput-wide v3, v5, Lpa/h;->j:J

    .line 1688
    .line 1689
    iput v9, v5, Lpa/h;->k:I

    .line 1690
    .line 1691
    iput-wide v3, v5, Lpa/h;->l:J
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_5

    .line 1692
    .line 1693
    goto :goto_f

    .line 1694
    :catch_5
    move-exception v0

    .line 1695
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 1696
    .line 1697
    .line 1698
    goto :goto_f

    .line 1699
    :cond_34
    if-ne v2, v15, :cond_35

    .line 1700
    .line 1701
    iget-object v2, v5, Lpa/h;->n:Lcom/yunpan/appmanage/carsdk/u;

    .line 1702
    .line 1703
    invoke-virtual {v2, v14}, Landroid/os/Handler;->removeMessages(I)V

    .line 1704
    .line 1705
    .line 1706
    :try_start_6
    iget-object v2, v5, Lpa/h;->m:Ljava/util/HashSet;

    .line 1707
    .line 1708
    iget-object v6, v5, Lpa/h;->e:Ljava/util/ArrayList;

    .line 1709
    .line 1710
    iget v7, v0, Landroid/os/Message;->arg1:I

    .line 1711
    .line 1712
    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 1713
    .line 1714
    .line 1715
    move-result-object v6

    .line 1716
    check-cast v6, Lcom/yunpan/appmanage/bean/KeyMapAccFindBean;

    .line 1717
    .line 1718
    iget v6, v6, Lcom/yunpan/appmanage/bean/KeyMapAccFindBean;->keyCode:I

    .line 1719
    .line 1720
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 1721
    .line 1722
    .line 1723
    move-result-object v6

    .line 1724
    invoke-virtual {v2, v6}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 1725
    .line 1726
    .line 1727
    iget-object v2, v5, Lpa/h;->b:Lcom/yunpan/appmanage/service/AccService;

    .line 1728
    .line 1729
    iget-object v6, v5, Lpa/h;->d:Lz7/o;

    .line 1730
    .line 1731
    iget v0, v0, Landroid/os/Message;->arg1:I

    .line 1732
    .line 1733
    invoke-virtual {v6, v0}, Lz7/o;->l(I)Lz7/p;

    .line 1734
    .line 1735
    .line 1736
    move-result-object v0

    .line 1737
    invoke-virtual {v0}, Lz7/p;->g()Lz7/s;

    .line 1738
    .line 1739
    .line 1740
    move-result-object v0

    .line 1741
    const-string v6, "longClick"

    .line 1742
    .line 1743
    invoke-virtual {v0, v6}, Lz7/s;->p(Ljava/lang/String;)Lz7/o;

    .line 1744
    .line 1745
    .line 1746
    move-result-object v0

    .line 1747
    invoke-virtual {v2, v0}, Lcom/yunpan/appmanage/service/AccService;->b(Lz7/o;)V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_6

    .line 1748
    .line 1749
    .line 1750
    goto :goto_e

    .line 1751
    :catch_6
    move-exception v0

    .line 1752
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 1753
    .line 1754
    .line 1755
    :goto_e
    :try_start_7
    iput v9, v5, Lpa/h;->g:I

    .line 1756
    .line 1757
    iput-wide v3, v5, Lpa/h;->h:J

    .line 1758
    .line 1759
    iput v9, v5, Lpa/h;->i:I

    .line 1760
    .line 1761
    iput-wide v3, v5, Lpa/h;->j:J

    .line 1762
    .line 1763
    iput v9, v5, Lpa/h;->k:I

    .line 1764
    .line 1765
    iput-wide v3, v5, Lpa/h;->l:J
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_7

    .line 1766
    .line 1767
    goto :goto_f

    .line 1768
    :catch_7
    move-exception v0

    .line 1769
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 1770
    .line 1771
    .line 1772
    :cond_35
    :goto_f
    return-void

    .line 1773
    :pswitch_1f
    invoke-direct/range {p0 .. p1}, Lcom/yunpan/appmanage/carsdk/u;->b(Landroid/os/Message;)V

    .line 1774
    .line 1775
    .line 1776
    return-void

    .line 1777
    :pswitch_20
    invoke-direct/range {p0 .. p1}, Lcom/yunpan/appmanage/carsdk/u;->a(Landroid/os/Message;)V

    .line 1778
    .line 1779
    .line 1780
    return-void

    .line 1781
    :pswitch_21
    iget v0, v0, Landroid/os/Message;->what:I

    .line 1782
    .line 1783
    if-nez v0, :cond_36

    .line 1784
    .line 1785
    iget-object v0, v1, Lcom/yunpan/appmanage/carsdk/u;->b:Ljava/lang/Object;

    .line 1786
    .line 1787
    check-cast v0, Lha/z6;

    .line 1788
    .line 1789
    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 1790
    .line 1791
    .line 1792
    :cond_36
    return-void

    .line 1793
    :pswitch_22
    iget v2, v0, Landroid/os/Message;->what:I

    .line 1794
    .line 1795
    iget-object v3, v1, Lcom/yunpan/appmanage/carsdk/u;->b:Ljava/lang/Object;

    .line 1796
    .line 1797
    check-cast v3, Lha/fb;

    .line 1798
    .line 1799
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1800
    .line 1801
    .line 1802
    if-nez v2, :cond_37

    .line 1803
    .line 1804
    iget-object v0, v3, Lha/fb;->k:Landroid/widget/TextView;

    .line 1805
    .line 1806
    const-string v2, "\u5df2\u5b8c\u6210"

    .line 1807
    .line 1808
    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1809
    .line 1810
    .line 1811
    goto :goto_10

    .line 1812
    :cond_37
    iget v2, v0, Landroid/os/Message;->what:I

    .line 1813
    .line 1814
    iget v4, v3, Lha/fb;->p:I

    .line 1815
    .line 1816
    if-ne v2, v4, :cond_38

    .line 1817
    .line 1818
    iget-object v2, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 1819
    .line 1820
    check-cast v2, Lha/eb;

    .line 1821
    .line 1822
    iget v2, v2, Lha/eb;->a:I

    .line 1823
    .line 1824
    iget-object v4, v3, Lha/fb;->j:Lx9/l4;

    .line 1825
    .line 1826
    invoke-virtual {v4, v2}, Lc6/g;->t(I)Ljava/lang/Object;

    .line 1827
    .line 1828
    .line 1829
    move-result-object v4

    .line 1830
    check-cast v4, Lx9/m4;

    .line 1831
    .line 1832
    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 1833
    .line 1834
    check-cast v0, Lha/eb;

    .line 1835
    .line 1836
    iget-object v0, v0, Lha/eb;->b:Ljava/lang/String;

    .line 1837
    .line 1838
    iput-object v0, v4, Lx9/m4;->b:Ljava/lang/String;

    .line 1839
    .line 1840
    iget-object v0, v3, Lha/fb;->j:Lx9/l4;

    .line 1841
    .line 1842
    invoke-virtual {v0, v2, v4}, Lc6/g;->D(ILjava/lang/Object;)V

    .line 1843
    .line 1844
    .line 1845
    :cond_38
    :goto_10
    return-void

    .line 1846
    :pswitch_23
    invoke-super/range {p0 .. p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 1847
    .line 1848
    .line 1849
    iget v0, v0, Landroid/os/Message;->what:I

    .line 1850
    .line 1851
    if-ne v0, v15, :cond_3a

    .line 1852
    .line 1853
    iget-object v0, v1, Lcom/yunpan/appmanage/carsdk/u;->b:Ljava/lang/Object;

    .line 1854
    .line 1855
    check-cast v0, Lha/ba;

    .line 1856
    .line 1857
    iget-object v0, v0, Lha/ba;->n:Ljava/util/ArrayList;

    .line 1858
    .line 1859
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    .line 1860
    .line 1861
    .line 1862
    move-result v0

    .line 1863
    if-eqz v0, :cond_39

    .line 1864
    .line 1865
    goto :goto_11

    .line 1866
    :cond_39
    new-instance v0, Ljava/util/ArrayList;

    .line 1867
    .line 1868
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 1869
    .line 1870
    .line 1871
    new-instance v2, Ld2/w;

    .line 1872
    .line 1873
    invoke-direct {v2, v1, v4, v0}, Ld2/w;-><init>(Ljava/lang/Object;ILjava/lang/Object;)V

    .line 1874
    .line 1875
    .line 1876
    new-instance v3, Lmc/c;

    .line 1877
    .line 1878
    invoke-direct {v3, v14, v2}, Lmc/c;-><init>(ILjava/lang/Object;)V

    .line 1879
    .line 1880
    .line 1881
    sget-object v2, Lrc/f;->b:Lec/j;

    .line 1882
    .line 1883
    invoke-virtual {v3, v2}, Lec/b;->d(Lec/j;)Lmc/p;

    .line 1884
    .line 1885
    .line 1886
    move-result-object v2

    .line 1887
    invoke-static {}, Lfc/b;->a()Lfc/e;

    .line 1888
    .line 1889
    .line 1890
    move-result-object v3

    .line 1891
    invoke-virtual {v2, v3}, Lec/b;->a(Lfc/e;)Lmc/g;

    .line 1892
    .line 1893
    .line 1894
    move-result-object v2

    .line 1895
    new-instance v3, Lha/h3;

    .line 1896
    .line 1897
    invoke-direct {v3, v1, v8, v0}, Lha/h3;-><init>(Ljava/lang/Object;ILjava/lang/Object;)V

    .line 1898
    .line 1899
    .line 1900
    invoke-virtual {v2, v3}, Lec/b;->b(Lec/e;)V

    .line 1901
    .line 1902
    .line 1903
    :cond_3a
    :goto_11
    return-void

    .line 1904
    :pswitch_24
    iget v0, v0, Landroid/os/Message;->what:I

    .line 1905
    .line 1906
    if-nez v0, :cond_3b

    .line 1907
    .line 1908
    iget-object v0, v1, Lcom/yunpan/appmanage/carsdk/u;->b:Ljava/lang/Object;

    .line 1909
    .line 1910
    check-cast v0, Lha/u9;

    .line 1911
    .line 1912
    iget-object v2, v0, Lha/u9;->i:Landroid/widget/TextView;

    .line 1913
    .line 1914
    invoke-virtual {v2, v14}, Landroid/view/View;->setVisibility(I)V

    .line 1915
    .line 1916
    .line 1917
    iget-object v0, v0, Lha/u9;->i:Landroid/widget/TextView;

    .line 1918
    .line 1919
    invoke-virtual {v0}, Landroid/view/View;->requestFocus()Z

    .line 1920
    .line 1921
    .line 1922
    :cond_3b
    return-void

    .line 1923
    :pswitch_25
    iget v2, v0, Landroid/os/Message;->what:I

    .line 1924
    .line 1925
    iget-object v3, v1, Lcom/yunpan/appmanage/carsdk/u;->b:Ljava/lang/Object;

    .line 1926
    .line 1927
    check-cast v3, Lha/y5;

    .line 1928
    .line 1929
    if-nez v2, :cond_3c

    .line 1930
    .line 1931
    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 1932
    .line 1933
    check-cast v0, Lha/x5;

    .line 1934
    .line 1935
    iget-object v2, v3, Lha/y5;->j:Lx9/u1;

    .line 1936
    .line 1937
    iget v3, v0, Lha/x5;->a:I

    .line 1938
    .line 1939
    iget-object v0, v0, Lha/x5;->b:Lx9/w3;

    .line 1940
    .line 1941
    invoke-virtual {v2, v3, v0}, Lc6/g;->D(ILjava/lang/Object;)V

    .line 1942
    .line 1943
    .line 1944
    goto :goto_12

    .line 1945
    :cond_3c
    if-ne v2, v10, :cond_3d

    .line 1946
    .line 1947
    iget-object v0, v3, Lha/y5;->m:Landroid/widget/TextView;

    .line 1948
    .line 1949
    invoke-virtual {v0, v14}, Landroid/view/View;->setVisibility(I)V

    .line 1950
    .line 1951
    .line 1952
    iget-object v0, v3, Lha/y5;->l:Landroid/widget/ProgressBar;

    .line 1953
    .line 1954
    invoke-virtual {v0, v7}, Landroid/view/View;->setVisibility(I)V

    .line 1955
    .line 1956
    .line 1957
    :cond_3d
    :goto_12
    return-void

    .line 1958
    :pswitch_26
    iget v2, v0, Landroid/os/Message;->what:I

    .line 1959
    .line 1960
    iget-object v3, v1, Lcom/yunpan/appmanage/carsdk/u;->b:Ljava/lang/Object;

    .line 1961
    .line 1962
    check-cast v3, La2/w0;

    .line 1963
    .line 1964
    if-ne v2, v6, :cond_3e

    .line 1965
    .line 1966
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1967
    .line 1968
    .line 1969
    goto :goto_13

    .line 1970
    :cond_3e
    if-ne v2, v5, :cond_3f

    .line 1971
    .line 1972
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1973
    .line 1974
    .line 1975
    goto :goto_13

    .line 1976
    :cond_3f
    if-ne v2, v10, :cond_40

    .line 1977
    .line 1978
    iget-object v2, v3, La2/w0;->c:Ljava/lang/Object;

    .line 1979
    .line 1980
    check-cast v2, Lfa/w;

    .line 1981
    .line 1982
    if-eqz v2, :cond_43

    .line 1983
    .line 1984
    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 1985
    .line 1986
    check-cast v0, Ljava/lang/String;

    .line 1987
    .line 1988
    invoke-interface {v2, v0, v15}, Lfa/w;->c(Ljava/lang/String;Z)V

    .line 1989
    .line 1990
    .line 1991
    iput-object v11, v3, La2/w0;->c:Ljava/lang/Object;

    .line 1992
    .line 1993
    goto :goto_13

    .line 1994
    :cond_40
    const/16 v4, 0x65

    .line 1995
    .line 1996
    if-ne v2, v4, :cond_41

    .line 1997
    .line 1998
    iget-object v2, v3, La2/w0;->c:Ljava/lang/Object;

    .line 1999
    .line 2000
    check-cast v2, Lfa/w;

    .line 2001
    .line 2002
    if-eqz v2, :cond_43

    .line 2003
    .line 2004
    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 2005
    .line 2006
    check-cast v0, Ljava/lang/String;

    .line 2007
    .line 2008
    invoke-interface {v2, v0, v14}, Lfa/w;->c(Ljava/lang/String;Z)V

    .line 2009
    .line 2010
    .line 2011
    iput-object v11, v3, La2/w0;->c:Ljava/lang/Object;

    .line 2012
    .line 2013
    goto :goto_13

    .line 2014
    :cond_41
    const/16 v4, 0x29a

    .line 2015
    .line 2016
    if-ne v2, v4, :cond_42

    .line 2017
    .line 2018
    iget-object v2, v3, La2/w0;->d:Ljava/lang/Object;

    .line 2019
    .line 2020
    check-cast v2, Lfa/y;

    .line 2021
    .line 2022
    if-eqz v2, :cond_43

    .line 2023
    .line 2024
    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 2025
    .line 2026
    check-cast v0, Lfa/x;

    .line 2027
    .line 2028
    invoke-interface {v2, v0}, Lfa/y;->a(Lfa/x;)V

    .line 2029
    .line 2030
    .line 2031
    iput-object v11, v3, La2/w0;->d:Ljava/lang/Object;

    .line 2032
    .line 2033
    goto :goto_13

    .line 2034
    :cond_42
    const/16 v4, 0x309

    .line 2035
    .line 2036
    if-ne v2, v4, :cond_43

    .line 2037
    .line 2038
    iget-object v2, v3, La2/w0;->e:Ljava/lang/Object;

    .line 2039
    .line 2040
    check-cast v2, Lfa/z;

    .line 2041
    .line 2042
    if-eqz v2, :cond_43

    .line 2043
    .line 2044
    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 2045
    .line 2046
    check-cast v0, Lfa/a0;

    .line 2047
    .line 2048
    invoke-interface {v2, v0}, Lfa/z;->e(Lfa/a0;)V

    .line 2049
    .line 2050
    .line 2051
    iput-object v11, v3, La2/w0;->e:Ljava/lang/Object;

    .line 2052
    .line 2053
    :cond_43
    :goto_13
    return-void

    .line 2054
    :pswitch_27
    iget v2, v0, Landroid/os/Message;->what:I

    .line 2055
    .line 2056
    if-ne v2, v10, :cond_44

    .line 2057
    .line 2058
    iget-object v2, v1, Lcom/yunpan/appmanage/carsdk/u;->b:Ljava/lang/Object;

    .line 2059
    .line 2060
    check-cast v2, Lfa/j;

    .line 2061
    .line 2062
    iget-object v2, v2, Lfa/j;->a:Lfa/g;

    .line 2063
    .line 2064
    if-eqz v2, :cond_44

    .line 2065
    .line 2066
    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 2067
    .line 2068
    check-cast v0, Lfa/i;

    .line 2069
    .line 2070
    invoke-interface {v2, v0}, Lfa/g;->a(Lfa/i;)V

    .line 2071
    .line 2072
    .line 2073
    :cond_44
    return-void

    .line 2074
    :pswitch_28
    iget-object v2, v1, Lcom/yunpan/appmanage/carsdk/u;->b:Ljava/lang/Object;

    .line 2075
    .line 2076
    check-cast v2, Ld2/h;

    .line 2077
    .line 2078
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2079
    .line 2080
    .line 2081
    iget v3, v0, Landroid/os/Message;->what:I

    .line 2082
    .line 2083
    if-eq v3, v15, :cond_4f

    .line 2084
    .line 2085
    if-eq v3, v12, :cond_4b

    .line 2086
    .line 2087
    if-eq v3, v13, :cond_4a

    .line 2088
    .line 2089
    if-eq v3, v8, :cond_47

    .line 2090
    .line 2091
    iget-object v3, v2, Ld2/h;->d:Ljava/util/concurrent/atomic/AtomicReference;

    .line 2092
    .line 2093
    new-instance v4, Ljava/lang/IllegalStateException;

    .line 2094
    .line 2095
    iget v0, v0, Landroid/os/Message;->what:I

    .line 2096
    .line 2097
    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 2098
    .line 2099
    .line 2100
    move-result-object v0

    .line 2101
    invoke-direct {v4, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 2102
    .line 2103
    .line 2104
    :cond_45
    invoke-virtual {v3, v11, v4}, Ljava/util/concurrent/atomic/AtomicReference;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 2105
    .line 2106
    .line 2107
    move-result v0

    .line 2108
    if-eqz v0, :cond_46

    .line 2109
    .line 2110
    goto/16 :goto_17

    .line 2111
    .line 2112
    :cond_46
    invoke-virtual {v3}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    .line 2113
    .line 2114
    .line 2115
    move-result-object v0

    .line 2116
    if-eqz v0, :cond_45

    .line 2117
    .line 2118
    goto/16 :goto_17

    .line 2119
    .line 2120
    :cond_47
    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 2121
    .line 2122
    check-cast v0, Landroid/os/Bundle;

    .line 2123
    .line 2124
    :try_start_8
    iget-object v3, v2, Ld2/h;->a:Landroid/media/MediaCodec;

    .line 2125
    .line 2126
    invoke-static {v3, v0}, Lcom/hierynomus/security/jce/a;->q(Landroid/media/MediaCodec;Landroid/os/Bundle;)V
    :try_end_8
    .catch Ljava/lang/RuntimeException; {:try_start_8 .. :try_end_8} :catch_8

    .line 2127
    .line 2128
    .line 2129
    goto/16 :goto_17

    .line 2130
    .line 2131
    :catch_8
    move-exception v0

    .line 2132
    iget-object v3, v2, Ld2/h;->d:Ljava/util/concurrent/atomic/AtomicReference;

    .line 2133
    .line 2134
    :cond_48
    invoke-virtual {v3, v11, v0}, Ljava/util/concurrent/atomic/AtomicReference;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 2135
    .line 2136
    .line 2137
    move-result v2

    .line 2138
    if-eqz v2, :cond_49

    .line 2139
    .line 2140
    goto/16 :goto_17

    .line 2141
    .line 2142
    :cond_49
    invoke-virtual {v3}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    .line 2143
    .line 2144
    .line 2145
    move-result-object v2

    .line 2146
    if-eqz v2, :cond_48

    .line 2147
    .line 2148
    goto/16 :goto_17

    .line 2149
    .line 2150
    :cond_4a
    iget-object v0, v2, Ld2/h;->e:Lu1/e;

    .line 2151
    .line 2152
    invoke-virtual {v0}, Lu1/e;->e()Z

    .line 2153
    .line 2154
    .line 2155
    goto :goto_17

    .line 2156
    :cond_4b
    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 2157
    .line 2158
    move-object v3, v0

    .line 2159
    check-cast v3, Ld2/g;

    .line 2160
    .line 2161
    iget v5, v3, Ld2/g;->a:I

    .line 2162
    .line 2163
    iget-object v7, v3, Ld2/g;->c:Landroid/media/MediaCodec$CryptoInfo;

    .line 2164
    .line 2165
    iget-wide v8, v3, Ld2/g;->d:J

    .line 2166
    .line 2167
    iget v10, v3, Ld2/g;->e:I

    .line 2168
    .line 2169
    :try_start_9
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 2170
    .line 2171
    const/16 v4, 0x1f

    .line 2172
    .line 2173
    const/4 v6, 0x0

    .line 2174
    if-lt v0, v4, :cond_4c

    .line 2175
    .line 2176
    iget-object v4, v2, Ld2/h;->a:Landroid/media/MediaCodec;

    .line 2177
    .line 2178
    invoke-virtual/range {v4 .. v10}, Landroid/media/MediaCodec;->queueSecureInputBuffer(IILandroid/media/MediaCodec$CryptoInfo;JI)V

    .line 2179
    .line 2180
    .line 2181
    goto :goto_15

    .line 2182
    :catch_9
    move-exception v0

    .line 2183
    move-object v4, v0

    .line 2184
    goto :goto_14

    .line 2185
    :cond_4c
    sget-object v12, Ld2/h;->h:Ljava/lang/Object;

    .line 2186
    .line 2187
    monitor-enter v12
    :try_end_9
    .catch Ljava/lang/RuntimeException; {:try_start_9 .. :try_end_9} :catch_9

    .line 2188
    :try_start_a
    iget-object v4, v2, Ld2/h;->a:Landroid/media/MediaCodec;

    .line 2189
    .line 2190
    invoke-virtual/range {v4 .. v10}, Landroid/media/MediaCodec;->queueSecureInputBuffer(IILandroid/media/MediaCodec$CryptoInfo;JI)V

    .line 2191
    .line 2192
    .line 2193
    monitor-exit v12

    .line 2194
    goto :goto_15

    .line 2195
    :catchall_0
    move-exception v0

    .line 2196
    monitor-exit v12
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_0

    .line 2197
    :try_start_b
    throw v0
    :try_end_b
    .catch Ljava/lang/RuntimeException; {:try_start_b .. :try_end_b} :catch_9

    .line 2198
    :goto_14
    iget-object v5, v2, Ld2/h;->d:Ljava/util/concurrent/atomic/AtomicReference;

    .line 2199
    .line 2200
    :cond_4d
    invoke-virtual {v5, v11, v4}, Ljava/util/concurrent/atomic/AtomicReference;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 2201
    .line 2202
    .line 2203
    move-result v0

    .line 2204
    if-eqz v0, :cond_4e

    .line 2205
    .line 2206
    goto :goto_15

    .line 2207
    :cond_4e
    invoke-virtual {v5}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    .line 2208
    .line 2209
    .line 2210
    move-result-object v0

    .line 2211
    if-eqz v0, :cond_4d

    .line 2212
    .line 2213
    :goto_15
    move-object v11, v3

    .line 2214
    goto :goto_17

    .line 2215
    :cond_4f
    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 2216
    .line 2217
    move-object v3, v0

    .line 2218
    check-cast v3, Ld2/g;

    .line 2219
    .line 2220
    iget v5, v3, Ld2/g;->a:I

    .line 2221
    .line 2222
    iget v7, v3, Ld2/g;->b:I

    .line 2223
    .line 2224
    iget-wide v8, v3, Ld2/g;->d:J

    .line 2225
    .line 2226
    iget v10, v3, Ld2/g;->e:I

    .line 2227
    .line 2228
    :try_start_c
    iget-object v4, v2, Ld2/h;->a:Landroid/media/MediaCodec;

    .line 2229
    .line 2230
    const/4 v6, 0x0

    .line 2231
    invoke-virtual/range {v4 .. v10}, Landroid/media/MediaCodec;->queueInputBuffer(IIIJI)V
    :try_end_c
    .catch Ljava/lang/RuntimeException; {:try_start_c .. :try_end_c} :catch_a

    .line 2232
    .line 2233
    .line 2234
    goto :goto_16

    .line 2235
    :catch_a
    move-exception v0

    .line 2236
    move-object v4, v0

    .line 2237
    iget-object v2, v2, Ld2/h;->d:Ljava/util/concurrent/atomic/AtomicReference;

    .line 2238
    .line 2239
    :cond_50
    invoke-virtual {v2, v11, v4}, Ljava/util/concurrent/atomic/AtomicReference;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 2240
    .line 2241
    .line 2242
    move-result v0

    .line 2243
    if-eqz v0, :cond_51

    .line 2244
    .line 2245
    goto :goto_16

    .line 2246
    :cond_51
    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    .line 2247
    .line 2248
    .line 2249
    move-result-object v0

    .line 2250
    if-eqz v0, :cond_50

    .line 2251
    .line 2252
    :goto_16
    goto :goto_15

    .line 2253
    :goto_17
    if-eqz v11, :cond_52

    .line 2254
    .line 2255
    invoke-static {v11}, Ld2/h;->b(Ld2/g;)V

    .line 2256
    .line 2257
    .line 2258
    :cond_52
    return-void

    .line 2259
    :pswitch_29
    iget v2, v0, Landroid/os/Message;->what:I

    .line 2260
    .line 2261
    iget-object v3, v1, Lcom/yunpan/appmanage/carsdk/u;->b:Ljava/lang/Object;

    .line 2262
    .line 2263
    check-cast v3, Lba/i;

    .line 2264
    .line 2265
    if-ne v2, v10, :cond_53

    .line 2266
    .line 2267
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2268
    .line 2269
    .line 2270
    goto/16 :goto_1a

    .line 2271
    .line 2272
    :cond_53
    const/16 v4, 0xc8

    .line 2273
    .line 2274
    if-ne v2, v4, :cond_54

    .line 2275
    .line 2276
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2277
    .line 2278
    .line 2279
    goto/16 :goto_1a

    .line 2280
    .line 2281
    :cond_54
    if-ne v2, v6, :cond_59

    .line 2282
    .line 2283
    iget-object v2, v3, Lba/i;->a:Ljava/lang/Object;

    .line 2284
    .line 2285
    check-cast v2, Lua/o8;

    .line 2286
    .line 2287
    if-eqz v2, :cond_58

    .line 2288
    .line 2289
    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 2290
    .line 2291
    check-cast v0, Lcom/yunpan/appmanage/util/r;

    .line 2292
    .line 2293
    iget-object v4, v3, Lba/i;->e:Ljava/lang/Object;

    .line 2294
    .line 2295
    check-cast v4, Lja/b;

    .line 2296
    .line 2297
    iget-object v5, v2, Lua/o8;->a:Lha/s5;

    .line 2298
    .line 2299
    invoke-virtual {v5}, Landroid/app/Dialog;->dismiss()V

    .line 2300
    .line 2301
    .line 2302
    iget-boolean v4, v4, Lja/b;->l:Z

    .line 2303
    .line 2304
    iget-object v5, v2, Lua/o8;->c:Lua/q8;

    .line 2305
    .line 2306
    if-eqz v4, :cond_55

    .line 2307
    .line 2308
    iget-object v0, v5, Lua/q8;->k:Lcom/owen/tvrecyclerview/widget/TvRecyclerView;

    .line 2309
    .line 2310
    invoke-virtual {v0}, Landroid/view/View;->requestFocus()Z

    .line 2311
    .line 2312
    .line 2313
    iget-object v0, v5, Lua/q8;->l:Lx9/g0;

    .line 2314
    .line 2315
    invoke-static {v0, v15}, Lg/b;->d(Lx9/g0;I)Ljava/lang/Object;

    .line 2316
    .line 2317
    .line 2318
    move-result-object v0

    .line 2319
    check-cast v0, Lx9/w3;

    .line 2320
    .line 2321
    invoke-virtual {v5, v0, v15}, Lua/q8;->v(Lx9/w3;Z)V

    .line 2322
    .line 2323
    .line 2324
    goto :goto_19

    .line 2325
    :cond_55
    iget-object v4, v0, Lcom/yunpan/appmanage/util/r;->a:Ljava/util/ArrayList;

    .line 2326
    .line 2327
    invoke-virtual {v4}, Ljava/util/ArrayList;->isEmpty()Z

    .line 2328
    .line 2329
    .line 2330
    move-result v4

    .line 2331
    if-nez v4, :cond_56

    .line 2332
    .line 2333
    new-instance v2, Lha/r5;

    .line 2334
    .line 2335
    iget-object v4, v5, Lda/h;->f:Landroid/app/Activity;

    .line 2336
    .line 2337
    iget-object v6, v5, Lda/h;->e:Landroid/content/Context;

    .line 2338
    .line 2339
    iget-object v0, v0, Lcom/yunpan/appmanage/util/r;->a:Ljava/util/ArrayList;

    .line 2340
    .line 2341
    invoke-direct {v2, v4, v6, v0}, Lha/r5;-><init>(Landroid/app/Activity;Landroid/content/Context;Ljava/util/ArrayList;)V

    .line 2342
    .line 2343
    .line 2344
    invoke-virtual {v2}, Lha/a4;->show()V

    .line 2345
    .line 2346
    .line 2347
    goto :goto_18

    .line 2348
    :cond_56
    iget-object v0, v2, Lua/o8;->b:Lcom/yunpan/appmanage/bean/FileCopyBean;

    .line 2349
    .line 2350
    iget-boolean v0, v0, Lcom/yunpan/appmanage/bean/FileCopyBean;->isDelete:Z

    .line 2351
    .line 2352
    if-eqz v0, :cond_57

    .line 2353
    .line 2354
    iget-object v0, v5, Lua/q8;->I:Landroid/widget/LinearLayout;

    .line 2355
    .line 2356
    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    .line 2357
    .line 2358
    .line 2359
    move-result v0

    .line 2360
    if-nez v0, :cond_57

    .line 2361
    .line 2362
    iget-object v0, v5, Lua/q8;->I:Landroid/widget/LinearLayout;

    .line 2363
    .line 2364
    invoke-virtual {v0, v7}, Landroid/view/View;->setVisibility(I)V

    .line 2365
    .line 2366
    .line 2367
    iget-object v0, v5, Lua/q8;->K:Landroid/widget/TextView;

    .line 2368
    .line 2369
    invoke-virtual {v0, v7}, Landroid/view/View;->setVisibility(I)V

    .line 2370
    .line 2371
    .line 2372
    :cond_57
    :goto_18
    iget-object v0, v5, Lua/q8;->k:Lcom/owen/tvrecyclerview/widget/TvRecyclerView;

    .line 2373
    .line 2374
    invoke-virtual {v0}, Landroid/view/View;->requestFocus()Z

    .line 2375
    .line 2376
    .line 2377
    iget-object v0, v5, Lua/q8;->l:Lx9/g0;

    .line 2378
    .line 2379
    invoke-static {v0, v15}, Lg/b;->d(Lx9/g0;I)Ljava/lang/Object;

    .line 2380
    .line 2381
    .line 2382
    move-result-object v0

    .line 2383
    check-cast v0, Lx9/w3;

    .line 2384
    .line 2385
    invoke-virtual {v5, v0, v15}, Lua/q8;->v(Lx9/w3;Z)V

    .line 2386
    .line 2387
    .line 2388
    :cond_58
    :goto_19
    iput-object v11, v3, Lba/i;->a:Ljava/lang/Object;

    .line 2389
    .line 2390
    goto :goto_1a

    .line 2391
    :cond_59
    if-ne v2, v5, :cond_5a

    .line 2392
    .line 2393
    iget-object v0, v3, Lba/i;->a:Ljava/lang/Object;

    .line 2394
    .line 2395
    check-cast v0, Lua/o8;

    .line 2396
    .line 2397
    if-eqz v0, :cond_5a

    .line 2398
    .line 2399
    iget-object v2, v3, Lba/i;->e:Ljava/lang/Object;

    .line 2400
    .line 2401
    check-cast v2, Lja/b;

    .line 2402
    .line 2403
    iget-object v0, v0, Lua/o8;->a:Lha/s5;

    .line 2404
    .line 2405
    invoke-virtual {v0, v2}, Lha/s5;->a(Lja/b;)V

    .line 2406
    .line 2407
    .line 2408
    :cond_5a
    :goto_1a
    return-void

    .line 2409
    :pswitch_2a
    iget v2, v0, Landroid/os/Message;->what:I

    .line 2410
    .line 2411
    iget-object v3, v1, Lcom/yunpan/appmanage/carsdk/u;->b:Ljava/lang/Object;

    .line 2412
    .line 2413
    check-cast v3, Lw/r3;

    .line 2414
    .line 2415
    if-ne v2, v10, :cond_5d

    .line 2416
    .line 2417
    iget-object v2, v3, Lw/r3;->a:Ljava/lang/Object;

    .line 2418
    .line 2419
    check-cast v2, Lua/g5;

    .line 2420
    .line 2421
    if-eqz v2, :cond_5c

    .line 2422
    .line 2423
    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 2424
    .line 2425
    check-cast v0, Lcom/yunpan/appmanage/util/q;

    .line 2426
    .line 2427
    iget-object v0, v2, Lua/g5;->b:Ljava/lang/Object;

    .line 2428
    .line 2429
    check-cast v0, Lua/h8;

    .line 2430
    .line 2431
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2432
    .line 2433
    .line 2434
    const-string v2, "(\u5185\u90e8\u5b58\u50a8)\u7a7a\u6587\u4ef6\u5939\u6e05\u7406\u5b8c\u6bd5\uff01\n\u5220\u9664\u4e3a\u5565\u8fd8\u6709?\u8bf4\u660e\u91cc\u9762\u6709\u9690\u85cf\u6587\u4ef6\uff01"

    .line 2435
    .line 2436
    invoke-static {v2}, Lcom/hjq/toast/Toaster;->showLong(Ljava/lang/CharSequence;)V

    .line 2437
    .line 2438
    .line 2439
    iget-object v0, v0, Lua/h8;->a:Lua/q8;

    .line 2440
    .line 2441
    iget-object v2, v0, Lua/q8;->l:Lx9/g0;

    .line 2442
    .line 2443
    invoke-virtual {v2, v14}, Lc6/g;->t(I)Ljava/lang/Object;

    .line 2444
    .line 2445
    .line 2446
    move-result-object v2

    .line 2447
    check-cast v2, Lx9/w3;

    .line 2448
    .line 2449
    iget-object v2, v2, Lx9/w3;->a:Ljava/lang/String;

    .line 2450
    .line 2451
    const-string v4, "\u5185\u90e8\u5b58\u50a8"

    .line 2452
    .line 2453
    invoke-virtual {v2, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 2454
    .line 2455
    .line 2456
    move-result v2

    .line 2457
    if-eqz v2, :cond_5b

    .line 2458
    .line 2459
    iget-object v2, v0, Lua/q8;->l:Lx9/g0;

    .line 2460
    .line 2461
    new-instance v5, Ljava/util/ArrayList;

    .line 2462
    .line 2463
    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 2464
    .line 2465
    .line 2466
    invoke-virtual {v2, v5}, Lc6/g;->E(Ljava/util/List;)V

    .line 2467
    .line 2468
    .line 2469
    iget-object v2, v0, Lua/q8;->l:Lx9/g0;

    .line 2470
    .line 2471
    new-instance v5, Lx9/w3;

    .line 2472
    .line 2473
    sget-object v6, Lfa/g0;->a:Lfa/h0;

    .line 2474
    .line 2475
    invoke-virtual {v6}, Lfa/h0;->d()Ljava/lang/String;

    .line 2476
    .line 2477
    .line 2478
    move-result-object v7

    .line 2479
    invoke-direct {v5, v4, v7, v15}, Lx9/w3;-><init>(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 2480
    .line 2481
    .line 2482
    invoke-virtual {v2, v5}, Lc6/g;->q(Ljava/lang/Object;)V

    .line 2483
    .line 2484
    .line 2485
    new-instance v2, Lx9/w3;

    .line 2486
    .line 2487
    new-instance v4, Ljava/io/File;

    .line 2488
    .line 2489
    invoke-virtual {v6}, Lfa/h0;->d()Ljava/lang/String;

    .line 2490
    .line 2491
    .line 2492
    move-result-object v5

    .line 2493
    invoke-direct {v4, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 2494
    .line 2495
    .line 2496
    invoke-direct {v2, v4}, Lx9/w3;-><init>(Ljava/io/File;)V

    .line 2497
    .line 2498
    .line 2499
    invoke-virtual {v0, v2, v14}, Lua/q8;->v(Lx9/w3;Z)V

    .line 2500
    .line 2501
    .line 2502
    :cond_5b
    iget-object v0, v0, Lua/q8;->g:Lha/u9;

    .line 2503
    .line 2504
    invoke-virtual {v0}, Lha/u9;->a()V

    .line 2505
    .line 2506
    .line 2507
    :cond_5c
    iput-object v11, v3, Lw/r3;->a:Ljava/lang/Object;

    .line 2508
    .line 2509
    goto :goto_1b

    .line 2510
    :cond_5d
    const/16 v4, 0xc8

    .line 2511
    .line 2512
    if-ne v2, v4, :cond_5e

    .line 2513
    .line 2514
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2515
    .line 2516
    .line 2517
    goto :goto_1b

    .line 2518
    :cond_5e
    if-ne v2, v6, :cond_60

    .line 2519
    .line 2520
    iget-object v2, v3, Lw/r3;->b:Ljava/lang/Object;

    .line 2521
    .line 2522
    check-cast v2, Lcom/yunpan/appmanage/util/o;

    .line 2523
    .line 2524
    if-eqz v2, :cond_5f

    .line 2525
    .line 2526
    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 2527
    .line 2528
    check-cast v0, Lcom/yunpan/appmanage/util/q;

    .line 2529
    .line 2530
    iget-object v4, v3, Lw/r3;->f:Ljava/lang/Object;

    .line 2531
    .line 2532
    check-cast v4, Lja/b;

    .line 2533
    .line 2534
    invoke-interface {v2, v0, v4}, Lcom/yunpan/appmanage/util/o;->j(Lcom/yunpan/appmanage/util/q;Lja/b;)V

    .line 2535
    .line 2536
    .line 2537
    :cond_5f
    iput-object v11, v3, Lw/r3;->b:Ljava/lang/Object;

    .line 2538
    .line 2539
    goto :goto_1b

    .line 2540
    :cond_60
    if-ne v2, v5, :cond_61

    .line 2541
    .line 2542
    iget-object v0, v3, Lw/r3;->b:Ljava/lang/Object;

    .line 2543
    .line 2544
    check-cast v0, Lcom/yunpan/appmanage/util/o;

    .line 2545
    .line 2546
    if-eqz v0, :cond_61

    .line 2547
    .line 2548
    iget-object v2, v3, Lw/r3;->f:Ljava/lang/Object;

    .line 2549
    .line 2550
    check-cast v2, Lja/b;

    .line 2551
    .line 2552
    invoke-interface {v0, v2}, Lcom/yunpan/appmanage/util/o;->f(Lja/b;)V

    .line 2553
    .line 2554
    .line 2555
    :cond_61
    :goto_1b
    return-void

    .line 2556
    :pswitch_2b
    iget v2, v0, Landroid/os/Message;->what:I

    .line 2557
    .line 2558
    iget-object v4, v1, Lcom/yunpan/appmanage/carsdk/u;->b:Ljava/lang/Object;

    .line 2559
    .line 2560
    check-cast v4, Lcom/yunpan/appmanage/carsdk/x;

    .line 2561
    .line 2562
    if-ne v2, v15, :cond_62

    .line 2563
    .line 2564
    invoke-static {}, Lwa/s;->c()Lwa/s;

    .line 2565
    .line 2566
    .line 2567
    move-result-object v2

    .line 2568
    iget-object v2, v2, Lwa/s;->e:Lcom/yunpan/appmanage/service/AccService;

    .line 2569
    .line 2570
    iget-object v3, v4, Lcom/yunpan/appmanage/carsdk/x;->l:Ljava/util/HashMap;

    .line 2571
    .line 2572
    iget v0, v0, Landroid/os/Message;->arg1:I

    .line 2573
    .line 2574
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 2575
    .line 2576
    .line 2577
    move-result-object v0

    .line 2578
    invoke-virtual {v3, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2579
    .line 2580
    .line 2581
    move-result-object v0

    .line 2582
    check-cast v0, Lz7/o;

    .line 2583
    .line 2584
    invoke-virtual {v2, v0}, Lcom/yunpan/appmanage/service/AccService;->b(Lz7/o;)V

    .line 2585
    .line 2586
    .line 2587
    iput v14, v4, Lcom/yunpan/appmanage/carsdk/x;->p:I

    .line 2588
    .line 2589
    goto :goto_1d

    .line 2590
    :cond_62
    if-ne v2, v12, :cond_64

    .line 2591
    .line 2592
    iget v0, v4, Lcom/yunpan/appmanage/carsdk/x;->p:I

    .line 2593
    .line 2594
    if-nez v0, :cond_63

    .line 2595
    .line 2596
    goto :goto_1d

    .line 2597
    :cond_63
    invoke-static {}, Lwa/s;->c()Lwa/s;

    .line 2598
    .line 2599
    .line 2600
    move-result-object v0

    .line 2601
    iget-object v0, v0, Lwa/s;->e:Lcom/yunpan/appmanage/service/AccService;

    .line 2602
    .line 2603
    iget-object v2, v4, Lcom/yunpan/appmanage/carsdk/x;->o:Ljava/util/HashMap;

    .line 2604
    .line 2605
    iget v5, v4, Lcom/yunpan/appmanage/carsdk/x;->p:I

    .line 2606
    .line 2607
    sparse-switch v5, :sswitch_data_0

    .line 2608
    .line 2609
    .line 2610
    const/4 v3, 0x0

    .line 2611
    goto :goto_1c

    .line 2612
    :sswitch_0
    const/16 v3, 0x2714

    .line 2613
    .line 2614
    goto :goto_1c

    .line 2615
    :sswitch_1
    const/16 v3, 0x2713

    .line 2616
    .line 2617
    goto :goto_1c

    .line 2618
    :sswitch_2
    const/16 v3, 0x2712

    .line 2619
    .line 2620
    goto :goto_1c

    .line 2621
    :sswitch_3
    const/16 v3, 0x2711

    .line 2622
    .line 2623
    :goto_1c
    :sswitch_4
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 2624
    .line 2625
    .line 2626
    move-result-object v3

    .line 2627
    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2628
    .line 2629
    .line 2630
    move-result-object v2

    .line 2631
    check-cast v2, Lz7/o;

    .line 2632
    .line 2633
    invoke-virtual {v0, v2}, Lcom/yunpan/appmanage/service/AccService;->b(Lz7/o;)V

    .line 2634
    .line 2635
    .line 2636
    iput v14, v4, Lcom/yunpan/appmanage/carsdk/x;->p:I

    .line 2637
    .line 2638
    :cond_64
    :goto_1d
    return-void

    .line 2639
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2b
        :pswitch_2a
        :pswitch_29
        :pswitch_28
        :pswitch_27
        :pswitch_26
        :pswitch_25
        :pswitch_24
        :pswitch_23
        :pswitch_22
        :pswitch_21
        :pswitch_20
        :pswitch_1f
        :pswitch_1e
        :pswitch_1d
        :pswitch_1c
        :pswitch_1b
        :pswitch_1a
        :pswitch_19
        :pswitch_18
        :pswitch_17
        :pswitch_16
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_12
    .end packed-switch

    .line 2640
    .line 2641
    .line 2642
    .line 2643
    .line 2644
    .line 2645
    .line 2646
    .line 2647
    .line 2648
    .line 2649
    .line 2650
    .line 2651
    .line 2652
    .line 2653
    .line 2654
    .line 2655
    .line 2656
    .line 2657
    .line 2658
    .line 2659
    .line 2660
    .line 2661
    .line 2662
    .line 2663
    .line 2664
    .line 2665
    .line 2666
    .line 2667
    .line 2668
    .line 2669
    .line 2670
    .line 2671
    .line 2672
    .line 2673
    .line 2674
    .line 2675
    .line 2676
    .line 2677
    .line 2678
    .line 2679
    .line 2680
    .line 2681
    .line 2682
    .line 2683
    .line 2684
    .line 2685
    .line 2686
    .line 2687
    .line 2688
    .line 2689
    .line 2690
    .line 2691
    .line 2692
    .line 2693
    .line 2694
    .line 2695
    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_11
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

    .line 2696
    .line 2697
    .line 2698
    .line 2699
    .line 2700
    .line 2701
    .line 2702
    .line 2703
    .line 2704
    .line 2705
    .line 2706
    .line 2707
    .line 2708
    .line 2709
    .line 2710
    .line 2711
    .line 2712
    .line 2713
    .line 2714
    .line 2715
    .line 2716
    .line 2717
    .line 2718
    .line 2719
    .line 2720
    .line 2721
    .line 2722
    .line 2723
    .line 2724
    .line 2725
    .line 2726
    .line 2727
    .line 2728
    .line 2729
    .line 2730
    .line 2731
    .line 2732
    .line 2733
    .line 2734
    .line 2735
    :sswitch_data_0
    .sparse-switch
        0x41020100 -> :sswitch_3
        0x41020200 -> :sswitch_2
        0x41020300 -> :sswitch_1
        0x41020400 -> :sswitch_4
        0x41020800 -> :sswitch_0
    .end sparse-switch
.end method
