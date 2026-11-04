.class public final Lwa/u;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public A:I

.field public B:Z

.field public C:Z

.field public D:Z

.field public E:Z

.field public F:Z

.field public G:Z

.field public H:Z

.field public I:Z

.field public J:Z

.field public K:Z

.field public L:I

.field public M:Lz7/o;

.field public N:Ljava/lang/String;

.field public O:Ljava/lang/String;

.field public P:Z

.field public Q:Z

.field public R:Z

.field public S:Z

.field public T:Z

.field public U:I

.field public V:Z

.field public W:Z

.field public X:Ljava/lang/String;

.field public Y:Z

.field public Z:Ljava/lang/String;

.field public a:Ljava/io/File;

.field public a0:Ljava/lang/String;

.field public b:Lz7/s;

.field public b0:Z

.field public final c:Ljava/text/SimpleDateFormat;

.field public c0:Z

.field public d:Lcom/yunpan/appmanage/base/AppStart;

.field public d0:Z

.field public e:Z

.field public e0:Z

.field public f:Z

.field public f0:Z

.field public g:J

.field public g0:J

.field public h:Z

.field public i:Z

.field public j:Z

.field public k:Z

.field public l:J

.field public m:I

.field public n:I

.field public o:I

.field public p:J

.field public q:I

.field public r:I

.field public s:Z

.field public t:Z

.field public u:Z

.field public v:Z

.field public final w:Ljava/util/HashSet;

.field public x:Ljava/util/Set;

.field public y:Ljava/util/Set;

.field public z:I


# direct methods
.method public constructor <init>()V
    .locals 5

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x0

    .line 5
    iput-object v0, p0, Lwa/u;->b:Lz7/s;

    .line 6
    .line 7
    new-instance v0, Ljava/text/SimpleDateFormat;

    .line 8
    .line 9
    const-string v1, "yyyy-MM-dd HH:mm:ss"

    .line 10
    .line 11
    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 12
    .line 13
    .line 14
    iput-object v0, p0, Lwa/u;->c:Ljava/text/SimpleDateFormat;

    .line 15
    .line 16
    const/4 v0, 0x0

    .line 17
    iput-boolean v0, p0, Lwa/u;->e:Z

    .line 18
    .line 19
    iput-boolean v0, p0, Lwa/u;->f:Z

    .line 20
    .line 21
    const-wide/16 v1, 0x0

    .line 22
    .line 23
    iput-wide v1, p0, Lwa/u;->g:J

    .line 24
    .line 25
    iput-boolean v0, p0, Lwa/u;->h:Z

    .line 26
    .line 27
    iput-boolean v0, p0, Lwa/u;->i:Z

    .line 28
    .line 29
    const/4 v3, 0x1

    .line 30
    iput-boolean v3, p0, Lwa/u;->j:Z

    .line 31
    .line 32
    iput-boolean v3, p0, Lwa/u;->k:Z

    .line 33
    .line 34
    iput-wide v1, p0, Lwa/u;->l:J

    .line 35
    .line 36
    const/16 v4, 0x32

    .line 37
    .line 38
    iput v4, p0, Lwa/u;->m:I

    .line 39
    .line 40
    const/4 v4, 0x2

    .line 41
    iput v4, p0, Lwa/u;->n:I

    .line 42
    .line 43
    iput v3, p0, Lwa/u;->o:I

    .line 44
    .line 45
    iput-wide v1, p0, Lwa/u;->p:J

    .line 46
    .line 47
    const/16 v4, 0x12c

    .line 48
    .line 49
    iput v4, p0, Lwa/u;->q:I

    .line 50
    .line 51
    iput v4, p0, Lwa/u;->r:I

    .line 52
    .line 53
    iput-boolean v0, p0, Lwa/u;->s:Z

    .line 54
    .line 55
    iput-boolean v0, p0, Lwa/u;->t:Z

    .line 56
    .line 57
    iput-boolean v0, p0, Lwa/u;->u:Z

    .line 58
    .line 59
    iput-boolean v0, p0, Lwa/u;->v:Z

    .line 60
    .line 61
    new-instance v4, Ljava/util/HashSet;

    .line 62
    .line 63
    invoke-direct {v4}, Ljava/util/HashSet;-><init>()V

    .line 64
    .line 65
    .line 66
    iput-object v4, p0, Lwa/u;->w:Ljava/util/HashSet;

    .line 67
    .line 68
    new-instance v4, Ljava/util/HashSet;

    .line 69
    .line 70
    invoke-direct {v4}, Ljava/util/HashSet;-><init>()V

    .line 71
    .line 72
    .line 73
    iput-object v4, p0, Lwa/u;->x:Ljava/util/Set;

    .line 74
    .line 75
    new-instance v4, Ljava/util/HashSet;

    .line 76
    .line 77
    invoke-direct {v4}, Ljava/util/HashSet;-><init>()V

    .line 78
    .line 79
    .line 80
    iput-object v4, p0, Lwa/u;->y:Ljava/util/Set;

    .line 81
    .line 82
    const/16 v4, 0x28

    .line 83
    .line 84
    iput v4, p0, Lwa/u;->z:I

    .line 85
    .line 86
    iput v4, p0, Lwa/u;->A:I

    .line 87
    .line 88
    iput-boolean v0, p0, Lwa/u;->B:Z

    .line 89
    .line 90
    iput-boolean v0, p0, Lwa/u;->C:Z

    .line 91
    .line 92
    iput-boolean v0, p0, Lwa/u;->D:Z

    .line 93
    .line 94
    iput-boolean v0, p0, Lwa/u;->E:Z

    .line 95
    .line 96
    iput-boolean v0, p0, Lwa/u;->F:Z

    .line 97
    .line 98
    iput-boolean v0, p0, Lwa/u;->G:Z

    .line 99
    .line 100
    iput-boolean v0, p0, Lwa/u;->H:Z

    .line 101
    .line 102
    iput-boolean v0, p0, Lwa/u;->I:Z

    .line 103
    .line 104
    iput-boolean v3, p0, Lwa/u;->J:Z

    .line 105
    .line 106
    iput-boolean v0, p0, Lwa/u;->K:Z

    .line 107
    .line 108
    const/4 v4, 0x4

    .line 109
    iput v4, p0, Lwa/u;->L:I

    .line 110
    .line 111
    new-instance v4, Lz7/o;

    .line 112
    .line 113
    invoke-direct {v4}, Lz7/o;-><init>()V

    .line 114
    .line 115
    .line 116
    iput-object v4, p0, Lwa/u;->M:Lz7/o;

    .line 117
    .line 118
    const-string v4, ""

    .line 119
    .line 120
    iput-object v4, p0, Lwa/u;->N:Ljava/lang/String;

    .line 121
    .line 122
    iput-object v4, p0, Lwa/u;->O:Ljava/lang/String;

    .line 123
    .line 124
    iput-boolean v3, p0, Lwa/u;->P:Z

    .line 125
    .line 126
    iput-boolean v3, p0, Lwa/u;->Q:Z

    .line 127
    .line 128
    iput-boolean v3, p0, Lwa/u;->R:Z

    .line 129
    .line 130
    iput-boolean v0, p0, Lwa/u;->S:Z

    .line 131
    .line 132
    iput-boolean v0, p0, Lwa/u;->T:Z

    .line 133
    .line 134
    iput v3, p0, Lwa/u;->U:I

    .line 135
    .line 136
    iput-boolean v0, p0, Lwa/u;->V:Z

    .line 137
    .line 138
    iput-boolean v3, p0, Lwa/u;->W:Z

    .line 139
    .line 140
    iput-object v4, p0, Lwa/u;->X:Ljava/lang/String;

    .line 141
    .line 142
    iput-boolean v0, p0, Lwa/u;->Y:Z

    .line 143
    .line 144
    iput-object v4, p0, Lwa/u;->Z:Ljava/lang/String;

    .line 145
    .line 146
    iput-object v4, p0, Lwa/u;->a0:Ljava/lang/String;

    .line 147
    .line 148
    iput-boolean v0, p0, Lwa/u;->b0:Z

    .line 149
    .line 150
    iput-boolean v0, p0, Lwa/u;->c0:Z

    .line 151
    .line 152
    iput-boolean v0, p0, Lwa/u;->d0:Z

    .line 153
    .line 154
    iput-boolean v3, p0, Lwa/u;->e0:Z

    .line 155
    .line 156
    iput-boolean v3, p0, Lwa/u;->f0:Z

    .line 157
    .line 158
    iput-wide v1, p0, Lwa/u;->g0:J

    .line 159
    .line 160
    return-void
.end method

.method public static a()Lwa/u;
    .locals 1

    .line 1
    sget-object v0, Lwa/t;->a:Lwa/u;

    .line 2
    .line 3
    return-object v0
.end method


# virtual methods
.method public final b(Lcom/yunpan/appmanage/base/AppStart;)V
    .locals 5

    .line 1
    const-string v0, ","

    .line 2
    .line 3
    iput-object p1, p0, Lwa/u;->d:Lcom/yunpan/appmanage/base/AppStart;

    .line 4
    .line 5
    new-instance p1, Ljava/io/File;

    .line 6
    .line 7
    iget-object v1, p0, Lwa/u;->d:Lcom/yunpan/appmanage/base/AppStart;

    .line 8
    .line 9
    invoke-virtual {v1}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    .line 10
    .line 11
    .line 12
    move-result-object v1

    .line 13
    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    .line 14
    .line 15
    .line 16
    move-result-object v1

    .line 17
    const-string v2, "AutoInit.json"

    .line 18
    .line 19
    invoke-direct {p1, v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 20
    .line 21
    .line 22
    iput-object p1, p0, Lwa/u;->a:Ljava/io/File;

    .line 23
    .line 24
    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    .line 25
    .line 26
    .line 27
    move-result p1

    .line 28
    if-nez p1, :cond_0

    .line 29
    .line 30
    :try_start_0
    iget-object p1, p0, Lwa/u;->a:Ljava/io/File;

    .line 31
    .line 32
    invoke-virtual {p1}, Ljava/io/File;->getParentFile()Ljava/io/File;

    .line 33
    .line 34
    .line 35
    move-result-object p1

    .line 36
    invoke-virtual {p1}, Ljava/io/File;->mkdirs()Z

    .line 37
    .line 38
    .line 39
    iget-object p1, p0, Lwa/u;->a:Ljava/io/File;

    .line 40
    .line 41
    invoke-virtual {p1}, Ljava/io/File;->createNewFile()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 42
    .line 43
    .line 44
    goto :goto_0

    .line 45
    :catch_0
    move-exception p1

    .line 46
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 47
    .line 48
    .line 49
    :cond_0
    :goto_0
    iget-object p1, p0, Lwa/u;->a:Ljava/io/File;

    .line 50
    .line 51
    invoke-virtual {p1}, Ljava/io/File;->lastModified()J

    .line 52
    .line 53
    .line 54
    move-result-wide v1

    .line 55
    iput-wide v1, p0, Lwa/u;->g0:J

    .line 56
    .line 57
    new-instance p1, Ljava/lang/StringBuilder;

    .line 58
    .line 59
    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    .line 60
    .line 61
    .line 62
    :try_start_1
    new-instance v1, Ljava/io/BufferedReader;

    .line 63
    .line 64
    new-instance v2, Ljava/io/FileReader;

    .line 65
    .line 66
    iget-object v3, p0, Lwa/u;->a:Ljava/io/File;

    .line 67
    .line 68
    invoke-direct {v2, v3}, Ljava/io/FileReader;-><init>(Ljava/io/File;)V

    .line 69
    .line 70
    .line 71
    invoke-direct {v1, v2}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 72
    .line 73
    .line 74
    :goto_1
    invoke-virtual {v1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    .line 75
    .line 76
    .line 77
    move-result-object v2

    .line 78
    if-eqz v2, :cond_1

    .line 79
    .line 80
    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 81
    .line 82
    .line 83
    const-string v2, "\n"

    .line 84
    .line 85
    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 86
    .line 87
    .line 88
    goto :goto_1

    .line 89
    :catch_1
    move-exception v1

    .line 90
    goto :goto_2

    .line 91
    :catch_2
    move-exception v1

    .line 92
    goto :goto_3

    .line 93
    :cond_1
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    .line 94
    .line 95
    .line 96
    goto :goto_4

    .line 97
    :goto_2
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 98
    .line 99
    .line 100
    goto :goto_4

    .line 101
    :goto_3
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 102
    .line 103
    .line 104
    :goto_4
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 105
    .line 106
    .line 107
    move-result-object p1

    .line 108
    :try_start_2
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    .line 109
    .line 110
    .line 111
    move-result v1

    .line 112
    if-eqz v1, :cond_2

    .line 113
    .line 114
    new-instance p1, Lz7/s;

    .line 115
    .line 116
    invoke-direct {p1}, Lz7/s;-><init>()V

    .line 117
    .line 118
    .line 119
    iput-object p1, p0, Lwa/u;->b:Lz7/s;

    .line 120
    .line 121
    goto :goto_5

    .line 122
    :cond_2
    invoke-static {p1}, Ld/b;->b0(Ljava/lang/String;)Lz7/p;

    .line 123
    .line 124
    .line 125
    move-result-object p1

    .line 126
    invoke-virtual {p1}, Lz7/p;->g()Lz7/s;

    .line 127
    .line 128
    .line 129
    move-result-object p1

    .line 130
    iput-object p1, p0, Lwa/u;->b:Lz7/s;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_3

    .line 131
    .line 132
    :catch_3
    :goto_5
    :try_start_3
    iget-object p1, p0, Lwa/u;->b:Lz7/s;

    .line 133
    .line 134
    const-string v1, "BootStartTaskRunTime"

    .line 135
    .line 136
    invoke-virtual {p1, v1}, Lz7/s;->o(Ljava/lang/String;)Lz7/p;

    .line 137
    .line 138
    .line 139
    move-result-object p1

    .line 140
    invoke-virtual {p1}, Lz7/p;->h()J

    .line 141
    .line 142
    .line 143
    move-result-wide v1

    .line 144
    iput-wide v1, p0, Lwa/u;->g:J
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_4

    .line 145
    .line 146
    :catch_4
    :try_start_4
    iget-object p1, p0, Lwa/u;->b:Lz7/s;

    .line 147
    .line 148
    const-string v1, "AppCloseTime"

    .line 149
    .line 150
    invoke-virtual {p1, v1}, Lz7/s;->o(Ljava/lang/String;)Lz7/p;

    .line 151
    .line 152
    .line 153
    move-result-object p1

    .line 154
    invoke-virtual {p1}, Lz7/p;->h()J

    .line 155
    .line 156
    .line 157
    move-result-wide v1

    .line 158
    iput-wide v1, p0, Lwa/u;->l:J
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_5

    .line 159
    .line 160
    :catch_5
    :try_start_5
    iget-object p1, p0, Lwa/u;->b:Lz7/s;

    .line 161
    .line 162
    const-string v1, "RebootAccessibility"

    .line 163
    .line 164
    invoke-virtual {p1, v1}, Lz7/s;->o(Ljava/lang/String;)Lz7/p;

    .line 165
    .line 166
    .line 167
    move-result-object p1

    .line 168
    invoke-virtual {p1}, Lz7/p;->b()Z

    .line 169
    .line 170
    .line 171
    move-result p1

    .line 172
    iput-boolean p1, p0, Lwa/u;->e:Z
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_6

    .line 173
    .line 174
    :catch_6
    :try_start_6
    iget-object p1, p0, Lwa/u;->b:Lz7/s;

    .line 175
    .line 176
    const-string v1, "CoverAccessibility"

    .line 177
    .line 178
    invoke-virtual {p1, v1}, Lz7/s;->o(Ljava/lang/String;)Lz7/p;

    .line 179
    .line 180
    .line 181
    move-result-object p1

    .line 182
    invoke-virtual {p1}, Lz7/p;->b()Z

    .line 183
    .line 184
    .line 185
    move-result p1

    .line 186
    iput-boolean p1, p0, Lwa/u;->f:Z
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_7

    .line 187
    .line 188
    :catch_7
    :try_start_7
    iget-object p1, p0, Lwa/u;->b:Lz7/s;

    .line 189
    .line 190
    const-string v1, "BootStartTaskSpecialDevice"

    .line 191
    .line 192
    invoke-virtual {p1, v1}, Lz7/s;->o(Ljava/lang/String;)Lz7/p;

    .line 193
    .line 194
    .line 195
    move-result-object p1

    .line 196
    invoke-virtual {p1}, Lz7/p;->b()Z

    .line 197
    .line 198
    .line 199
    move-result p1

    .line 200
    iput-boolean p1, p0, Lwa/u;->h:Z
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_8

    .line 201
    .line 202
    :catch_8
    :try_start_8
    iget-object p1, p0, Lwa/u;->b:Lz7/s;

    .line 203
    .line 204
    const-string v1, "BootStartTaskScreenOn"

    .line 205
    .line 206
    invoke-virtual {p1, v1}, Lz7/s;->o(Ljava/lang/String;)Lz7/p;

    .line 207
    .line 208
    .line 209
    move-result-object p1

    .line 210
    invoke-virtual {p1}, Lz7/p;->b()Z

    .line 211
    .line 212
    .line 213
    move-result p1

    .line 214
    iput-boolean p1, p0, Lwa/u;->i:Z
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_9

    .line 215
    .line 216
    :catch_9
    :try_start_9
    iget-object p1, p0, Lwa/u;->b:Lz7/s;

    .line 217
    .line 218
    const-string v1, "BootStartTaskUserPresent"

    .line 219
    .line 220
    invoke-virtual {p1, v1}, Lz7/s;->o(Ljava/lang/String;)Lz7/p;

    .line 221
    .line 222
    .line 223
    move-result-object p1

    .line 224
    invoke-virtual {p1}, Lz7/p;->b()Z

    .line 225
    .line 226
    .line 227
    move-result p1

    .line 228
    iput-boolean p1, p0, Lwa/u;->j:Z
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_a

    .line 229
    .line 230
    :catch_a
    :try_start_a
    iget-object p1, p0, Lwa/u;->b:Lz7/s;

    .line 231
    .line 232
    const-string v1, "BootStartTaskBroadcast"

    .line 233
    .line 234
    invoke-virtual {p1, v1}, Lz7/s;->o(Ljava/lang/String;)Lz7/p;

    .line 235
    .line 236
    .line 237
    move-result-object p1

    .line 238
    invoke-virtual {p1}, Lz7/p;->b()Z

    .line 239
    .line 240
    .line 241
    move-result p1

    .line 242
    iput-boolean p1, p0, Lwa/u;->k:Z
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_b

    .line 243
    .line 244
    :catch_b
    :try_start_b
    iget-object p1, p0, Lwa/u;->b:Lz7/s;

    .line 245
    .line 246
    const-string v1, "BootStartTask_boot_delay"

    .line 247
    .line 248
    invoke-virtual {p1, v1}, Lz7/s;->o(Ljava/lang/String;)Lz7/p;

    .line 249
    .line 250
    .line 251
    move-result-object p1

    .line 252
    invoke-virtual {p1}, Lz7/p;->e()I

    .line 253
    .line 254
    .line 255
    move-result p1

    .line 256
    iput p1, p0, Lwa/u;->m:I
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_c

    .line 257
    .line 258
    :catch_c
    :try_start_c
    iget-object p1, p0, Lwa/u;->b:Lz7/s;

    .line 259
    .line 260
    const-string v1, "BootStartTask_load_delay"

    .line 261
    .line 262
    invoke-virtual {p1, v1}, Lz7/s;->o(Ljava/lang/String;)Lz7/p;

    .line 263
    .line 264
    .line 265
    move-result-object p1

    .line 266
    invoke-virtual {p1}, Lz7/p;->e()I

    .line 267
    .line 268
    .line 269
    move-result p1

    .line 270
    iput p1, p0, Lwa/u;->n:I
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_c} :catch_d

    .line 271
    .line 272
    :catch_d
    :try_start_d
    iget-object p1, p0, Lwa/u;->b:Lz7/s;

    .line 273
    .line 274
    const-string v1, "BootStartTask_ScreenOffToOnNot_Time"

    .line 275
    .line 276
    invoke-virtual {p1, v1}, Lz7/s;->o(Ljava/lang/String;)Lz7/p;

    .line 277
    .line 278
    .line 279
    move-result-object p1

    .line 280
    invoke-virtual {p1}, Lz7/p;->e()I

    .line 281
    .line 282
    .line 283
    move-result p1

    .line 284
    iput p1, p0, Lwa/u;->o:I
    :try_end_d
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_d} :catch_e

    .line 285
    .line 286
    :catch_e
    :try_start_e
    iget-object p1, p0, Lwa/u;->b:Lz7/s;

    .line 287
    .line 288
    const-string v1, "ScreenOff_Time"

    .line 289
    .line 290
    invoke-virtual {p1, v1}, Lz7/s;->o(Ljava/lang/String;)Lz7/p;

    .line 291
    .line 292
    .line 293
    move-result-object p1

    .line 294
    invoke-virtual {p1}, Lz7/p;->h()J

    .line 295
    .line 296
    .line 297
    move-result-wide v1

    .line 298
    iput-wide v1, p0, Lwa/u;->p:J
    :try_end_e
    .catch Ljava/lang/Exception; {:try_start_e .. :try_end_e} :catch_f

    .line 299
    .line 300
    :catch_f
    :try_start_f
    iget-object p1, p0, Lwa/u;->b:Lz7/s;

    .line 301
    .line 302
    const-string v1, "KeyMapAccInterval"

    .line 303
    .line 304
    invoke-virtual {p1, v1}, Lz7/s;->o(Ljava/lang/String;)Lz7/p;

    .line 305
    .line 306
    .line 307
    move-result-object p1

    .line 308
    invoke-virtual {p1}, Lz7/p;->e()I

    .line 309
    .line 310
    .line 311
    move-result p1

    .line 312
    iput p1, p0, Lwa/u;->q:I
    :try_end_f
    .catch Ljava/lang/Exception; {:try_start_f .. :try_end_f} :catch_10

    .line 313
    .line 314
    :catch_10
    :try_start_10
    iget-object p1, p0, Lwa/u;->b:Lz7/s;

    .line 315
    .line 316
    const-string v1, "KeyMapLogcatInterval"

    .line 317
    .line 318
    invoke-virtual {p1, v1}, Lz7/s;->o(Ljava/lang/String;)Lz7/p;

    .line 319
    .line 320
    .line 321
    move-result-object p1

    .line 322
    invoke-virtual {p1}, Lz7/p;->e()I

    .line 323
    .line 324
    .line 325
    move-result p1

    .line 326
    iput p1, p0, Lwa/u;->r:I
    :try_end_10
    .catch Ljava/lang/Exception; {:try_start_10 .. :try_end_10} :catch_11

    .line 327
    .line 328
    :catch_11
    :try_start_11
    iget-object p1, p0, Lwa/u;->b:Lz7/s;

    .line 329
    .line 330
    const-string v1, "DebugBootStart"

    .line 331
    .line 332
    invoke-virtual {p1, v1}, Lz7/s;->o(Ljava/lang/String;)Lz7/p;

    .line 333
    .line 334
    .line 335
    move-result-object p1

    .line 336
    invoke-virtual {p1}, Lz7/p;->b()Z

    .line 337
    .line 338
    .line 339
    move-result p1

    .line 340
    iput-boolean p1, p0, Lwa/u;->t:Z
    :try_end_11
    .catch Ljava/lang/Exception; {:try_start_11 .. :try_end_11} :catch_12

    .line 341
    .line 342
    :catch_12
    :try_start_12
    iget-object p1, p0, Lwa/u;->b:Lz7/s;

    .line 343
    .line 344
    const-string v1, "DebugLogcatKeymap"

    .line 345
    .line 346
    invoke-virtual {p1, v1}, Lz7/s;->o(Ljava/lang/String;)Lz7/p;

    .line 347
    .line 348
    .line 349
    move-result-object p1

    .line 350
    invoke-virtual {p1}, Lz7/p;->b()Z

    .line 351
    .line 352
    .line 353
    move-result p1

    .line 354
    iput-boolean p1, p0, Lwa/u;->u:Z
    :try_end_12
    .catch Ljava/lang/Exception; {:try_start_12 .. :try_end_12} :catch_13

    .line 355
    .line 356
    :catch_13
    :try_start_13
    iget-object p1, p0, Lwa/u;->b:Lz7/s;

    .line 357
    .line 358
    const-string v1, "DebugLogcatAdb"

    .line 359
    .line 360
    invoke-virtual {p1, v1}, Lz7/s;->o(Ljava/lang/String;)Lz7/p;

    .line 361
    .line 362
    .line 363
    move-result-object p1

    .line 364
    invoke-virtual {p1}, Lz7/p;->b()Z

    .line 365
    .line 366
    .line 367
    move-result p1

    .line 368
    iput-boolean p1, p0, Lwa/u;->v:Z
    :try_end_13
    .catch Ljava/lang/Exception; {:try_start_13 .. :try_end_13} :catch_14

    .line 369
    .line 370
    :catch_14
    :try_start_14
    iget-object p1, p0, Lwa/u;->b:Lz7/s;

    .line 371
    .line 372
    const-string v1, "KeepAlive_FrontDeskNotice"

    .line 373
    .line 374
    invoke-virtual {p1, v1}, Lz7/s;->o(Ljava/lang/String;)Lz7/p;

    .line 375
    .line 376
    .line 377
    move-result-object p1

    .line 378
    invoke-virtual {p1}, Lz7/p;->b()Z

    .line 379
    .line 380
    .line 381
    move-result p1

    .line 382
    iput-boolean p1, p0, Lwa/u;->C:Z
    :try_end_14
    .catch Ljava/lang/Exception; {:try_start_14 .. :try_end_14} :catch_15

    .line 383
    .line 384
    :catch_15
    :try_start_15
    iget-object p1, p0, Lwa/u;->b:Lz7/s;

    .line 385
    .line 386
    const-string v1, "AutoTaskSafetyProtectionTwoCount"

    .line 387
    .line 388
    invoke-virtual {p1, v1}, Lz7/s;->o(Ljava/lang/String;)Lz7/p;

    .line 389
    .line 390
    .line 391
    move-result-object p1

    .line 392
    invoke-virtual {p1}, Lz7/p;->e()I

    .line 393
    .line 394
    .line 395
    move-result p1

    .line 396
    iput p1, p0, Lwa/u;->z:I
    :try_end_15
    .catch Ljava/lang/Exception; {:try_start_15 .. :try_end_15} :catch_16

    .line 397
    .line 398
    :catch_16
    :try_start_16
    iget-object p1, p0, Lwa/u;->b:Lz7/s;

    .line 399
    .line 400
    const-string v1, "FuseProtectionLogcatCount"

    .line 401
    .line 402
    invoke-virtual {p1, v1}, Lz7/s;->o(Ljava/lang/String;)Lz7/p;

    .line 403
    .line 404
    .line 405
    move-result-object p1

    .line 406
    invoke-virtual {p1}, Lz7/p;->e()I

    .line 407
    .line 408
    .line 409
    move-result p1

    .line 410
    iput p1, p0, Lwa/u;->A:I
    :try_end_16
    .catch Ljava/lang/Exception; {:try_start_16 .. :try_end_16} :catch_17

    .line 411
    .line 412
    :catch_17
    :try_start_17
    iget-object p1, p0, Lwa/u;->b:Lz7/s;

    .line 413
    .line 414
    const-string v1, "KeepAlive_HiddenFront"

    .line 415
    .line 416
    invoke-virtual {p1, v1}, Lz7/s;->o(Ljava/lang/String;)Lz7/p;

    .line 417
    .line 418
    .line 419
    move-result-object p1

    .line 420
    invoke-virtual {p1}, Lz7/p;->b()Z

    .line 421
    .line 422
    .line 423
    move-result p1

    .line 424
    iput-boolean p1, p0, Lwa/u;->B:Z
    :try_end_17
    .catch Ljava/lang/Exception; {:try_start_17 .. :try_end_17} :catch_18

    .line 425
    .line 426
    :catch_18
    :try_start_18
    iget-object p1, p0, Lwa/u;->b:Lz7/s;

    .line 427
    .line 428
    const-string v1, "AutoTaskCloseShowToast"

    .line 429
    .line 430
    invoke-virtual {p1, v1}, Lz7/s;->o(Ljava/lang/String;)Lz7/p;

    .line 431
    .line 432
    .line 433
    move-result-object p1

    .line 434
    invoke-virtual {p1}, Lz7/p;->b()Z

    .line 435
    .line 436
    .line 437
    move-result p1

    .line 438
    iput-boolean p1, p0, Lwa/u;->D:Z
    :try_end_18
    .catch Ljava/lang/Exception; {:try_start_18 .. :try_end_18} :catch_19

    .line 439
    .line 440
    :catch_19
    :try_start_19
    iget-object p1, p0, Lwa/u;->b:Lz7/s;

    .line 441
    .line 442
    const-string v1, "AutoTaskStartAutoStartTask"

    .line 443
    .line 444
    invoke-virtual {p1, v1}, Lz7/s;->o(Ljava/lang/String;)Lz7/p;

    .line 445
    .line 446
    .line 447
    move-result-object p1

    .line 448
    invoke-virtual {p1}, Lz7/p;->b()Z

    .line 449
    .line 450
    .line 451
    move-result p1

    .line 452
    iput-boolean p1, p0, Lwa/u;->E:Z
    :try_end_19
    .catch Ljava/lang/Exception; {:try_start_19 .. :try_end_19} :catch_1a

    .line 453
    .line 454
    :catch_1a
    :try_start_1a
    iget-object p1, p0, Lwa/u;->b:Lz7/s;

    .line 455
    .line 456
    const-string v1, "AutoTask_ScreenOnOff_AccService"

    .line 457
    .line 458
    invoke-virtual {p1, v1}, Lz7/s;->o(Ljava/lang/String;)Lz7/p;

    .line 459
    .line 460
    .line 461
    move-result-object p1

    .line 462
    invoke-virtual {p1}, Lz7/p;->b()Z

    .line 463
    .line 464
    .line 465
    move-result p1

    .line 466
    iput-boolean p1, p0, Lwa/u;->F:Z
    :try_end_1a
    .catch Ljava/lang/Exception; {:try_start_1a .. :try_end_1a} :catch_1b

    .line 467
    .line 468
    :catch_1b
    :try_start_1b
    iget-object p1, p0, Lwa/u;->b:Lz7/s;

    .line 469
    .line 470
    const-string v1, "AutoHideFloatingWindow"

    .line 471
    .line 472
    invoke-virtual {p1, v1}, Lz7/s;->o(Ljava/lang/String;)Lz7/p;

    .line 473
    .line 474
    .line 475
    move-result-object p1

    .line 476
    invoke-virtual {p1}, Lz7/p;->b()Z

    .line 477
    .line 478
    .line 479
    move-result p1

    .line 480
    iput-boolean p1, p0, Lwa/u;->G:Z
    :try_end_1b
    .catch Ljava/lang/Exception; {:try_start_1b .. :try_end_1b} :catch_1c

    .line 481
    .line 482
    :catch_1c
    :try_start_1c
    iget-object p1, p0, Lwa/u;->b:Lz7/s;

    .line 483
    .line 484
    const-string v1, "AutoTask_error_close_restart"

    .line 485
    .line 486
    invoke-virtual {p1, v1}, Lz7/s;->o(Ljava/lang/String;)Lz7/p;

    .line 487
    .line 488
    .line 489
    move-result-object p1

    .line 490
    invoke-virtual {p1}, Lz7/p;->b()Z

    .line 491
    .line 492
    .line 493
    move-result p1

    .line 494
    iput-boolean p1, p0, Lwa/u;->H:Z
    :try_end_1c
    .catch Ljava/lang/Exception; {:try_start_1c .. :try_end_1c} :catch_1d

    .line 495
    .line 496
    :catch_1d
    :try_start_1d
    iget-object p1, p0, Lwa/u;->b:Lz7/s;

    .line 497
    .line 498
    const-string v1, "AutoTask_error_close_execAutoStartTask"

    .line 499
    .line 500
    invoke-virtual {p1, v1}, Lz7/s;->o(Ljava/lang/String;)Lz7/p;

    .line 501
    .line 502
    .line 503
    move-result-object p1

    .line 504
    invoke-virtual {p1}, Lz7/p;->b()Z

    .line 505
    .line 506
    .line 507
    move-result p1

    .line 508
    iput-boolean p1, p0, Lwa/u;->I:Z
    :try_end_1d
    .catch Ljava/lang/Exception; {:try_start_1d .. :try_end_1d} :catch_1e

    .line 509
    .line 510
    :catch_1e
    :try_start_1e
    iget-object p1, p0, Lwa/u;->b:Lz7/s;

    .line 511
    .line 512
    const-string v1, "LogcatKeymap_BootStartTaskRunDelay"

    .line 513
    .line 514
    invoke-virtual {p1, v1}, Lz7/s;->o(Ljava/lang/String;)Lz7/p;

    .line 515
    .line 516
    .line 517
    move-result-object p1

    .line 518
    invoke-virtual {p1}, Lz7/p;->b()Z

    .line 519
    .line 520
    .line 521
    move-result p1

    .line 522
    iput-boolean p1, p0, Lwa/u;->J:Z
    :try_end_1e
    .catch Ljava/lang/Exception; {:try_start_1e .. :try_end_1e} :catch_1f

    .line 523
    .line 524
    :catch_1f
    :try_start_1f
    iget-object p1, p0, Lwa/u;->b:Lz7/s;

    .line 525
    .line 526
    const-string v1, "LogcatKeymap_ScreenOnOff"

    .line 527
    .line 528
    invoke-virtual {p1, v1}, Lz7/s;->o(Ljava/lang/String;)Lz7/p;

    .line 529
    .line 530
    .line 531
    move-result-object p1

    .line 532
    invoke-virtual {p1}, Lz7/p;->b()Z

    .line 533
    .line 534
    .line 535
    move-result p1

    .line 536
    iput-boolean p1, p0, Lwa/u;->K:Z
    :try_end_1f
    .catch Ljava/lang/Exception; {:try_start_1f .. :try_end_1f} :catch_20

    .line 537
    .line 538
    :catch_20
    :try_start_20
    iget-object p1, p0, Lwa/u;->b:Lz7/s;

    .line 539
    .line 540
    const-string v1, "LogcatKeymap_LogLevel"

    .line 541
    .line 542
    invoke-virtual {p1, v1}, Lz7/s;->o(Ljava/lang/String;)Lz7/p;

    .line 543
    .line 544
    .line 545
    move-result-object p1

    .line 546
    invoke-virtual {p1}, Lz7/p;->e()I

    .line 547
    .line 548
    .line 549
    move-result p1

    .line 550
    iput p1, p0, Lwa/u;->L:I
    :try_end_20
    .catch Ljava/lang/Exception; {:try_start_20 .. :try_end_20} :catch_21

    .line 551
    .line 552
    :catch_21
    :try_start_21
    iget-object p1, p0, Lwa/u;->b:Lz7/s;

    .line 553
    .line 554
    const-string v1, "AutoTask_app_show_app_close"

    .line 555
    .line 556
    invoke-virtual {p1, v1}, Lz7/s;->o(Ljava/lang/String;)Lz7/p;

    .line 557
    .line 558
    .line 559
    move-result-object p1

    .line 560
    invoke-virtual {p1}, Lz7/p;->f()Lz7/o;

    .line 561
    .line 562
    .line 563
    move-result-object p1

    .line 564
    iput-object p1, p0, Lwa/u;->M:Lz7/o;
    :try_end_21
    .catch Ljava/lang/Exception; {:try_start_21 .. :try_end_21} :catch_22

    .line 565
    .line 566
    :catch_22
    :try_start_22
    iget-object p1, p0, Lwa/u;->b:Lz7/s;

    .line 567
    .line 568
    const-string v1, "IsCannotStartApp"

    .line 569
    .line 570
    invoke-virtual {p1, v1}, Lz7/s;->o(Ljava/lang/String;)Lz7/p;

    .line 571
    .line 572
    .line 573
    move-result-object p1

    .line 574
    invoke-virtual {p1}, Lz7/p;->b()Z

    .line 575
    .line 576
    .line 577
    move-result p1

    .line 578
    iput-boolean p1, p0, Lwa/u;->s:Z
    :try_end_22
    .catch Ljava/lang/Exception; {:try_start_22 .. :try_end_22} :catch_23

    .line 579
    .line 580
    :catch_23
    :try_start_23
    iget-object p1, p0, Lwa/u;->b:Lz7/s;

    .line 581
    .line 582
    const-string v1, "AutoRotationHorizontal"

    .line 583
    .line 584
    invoke-virtual {p1, v1}, Lz7/s;->o(Ljava/lang/String;)Lz7/p;

    .line 585
    .line 586
    .line 587
    move-result-object p1

    .line 588
    invoke-virtual {p1}, Lz7/p;->i()Ljava/lang/String;

    .line 589
    .line 590
    .line 591
    move-result-object p1

    .line 592
    iput-object p1, p0, Lwa/u;->N:Ljava/lang/String;
    :try_end_23
    .catch Ljava/lang/Exception; {:try_start_23 .. :try_end_23} :catch_24

    .line 593
    .line 594
    :catch_24
    :try_start_24
    iget-object p1, p0, Lwa/u;->b:Lz7/s;

    .line 595
    .line 596
    const-string v1, "AutoRotationVertical"

    .line 597
    .line 598
    invoke-virtual {p1, v1}, Lz7/s;->o(Ljava/lang/String;)Lz7/p;

    .line 599
    .line 600
    .line 601
    move-result-object p1

    .line 602
    invoke-virtual {p1}, Lz7/p;->i()Ljava/lang/String;

    .line 603
    .line 604
    .line 605
    move-result-object p1

    .line 606
    iput-object p1, p0, Lwa/u;->O:Ljava/lang/String;
    :try_end_24
    .catch Ljava/lang/Exception; {:try_start_24 .. :try_end_24} :catch_25

    .line 607
    .line 608
    :catch_25
    :try_start_25
    iget-object p1, p0, Lwa/u;->b:Lz7/s;

    .line 609
    .line 610
    const-string v1, "AutoRotationEmergencyOne"

    .line 611
    .line 612
    invoke-virtual {p1, v1}, Lz7/s;->o(Ljava/lang/String;)Lz7/p;

    .line 613
    .line 614
    .line 615
    move-result-object p1

    .line 616
    invoke-virtual {p1}, Lz7/p;->b()Z

    .line 617
    .line 618
    .line 619
    move-result p1

    .line 620
    iput-boolean p1, p0, Lwa/u;->P:Z
    :try_end_25
    .catch Ljava/lang/Exception; {:try_start_25 .. :try_end_25} :catch_26

    .line 621
    .line 622
    :catch_26
    :try_start_26
    iget-object p1, p0, Lwa/u;->b:Lz7/s;

    .line 623
    .line 624
    const-string v1, "AutoRotationEmergencyTwo"

    .line 625
    .line 626
    invoke-virtual {p1, v1}, Lz7/s;->o(Ljava/lang/String;)Lz7/p;

    .line 627
    .line 628
    .line 629
    move-result-object p1

    .line 630
    invoke-virtual {p1}, Lz7/p;->b()Z

    .line 631
    .line 632
    .line 633
    move-result p1

    .line 634
    iput-boolean p1, p0, Lwa/u;->Q:Z
    :try_end_26
    .catch Ljava/lang/Exception; {:try_start_26 .. :try_end_26} :catch_27

    .line 635
    .line 636
    :catch_27
    :try_start_27
    iget-object p1, p0, Lwa/u;->b:Lz7/s;

    .line 637
    .line 638
    const-string v1, "AutoRotationEmergencyThree"

    .line 639
    .line 640
    invoke-virtual {p1, v1}, Lz7/s;->o(Ljava/lang/String;)Lz7/p;

    .line 641
    .line 642
    .line 643
    move-result-object p1

    .line 644
    invoke-virtual {p1}, Lz7/p;->b()Z

    .line 645
    .line 646
    .line 647
    move-result p1

    .line 648
    iput-boolean p1, p0, Lwa/u;->R:Z
    :try_end_27
    .catch Ljava/lang/Exception; {:try_start_27 .. :try_end_27} :catch_28

    .line 649
    .line 650
    :catch_28
    :try_start_28
    iget-object p1, p0, Lwa/u;->b:Lz7/s;

    .line 651
    .line 652
    const-string v1, "AutoRotationGlobalHorizontal"

    .line 653
    .line 654
    invoke-virtual {p1, v1}, Lz7/s;->o(Ljava/lang/String;)Lz7/p;

    .line 655
    .line 656
    .line 657
    move-result-object p1

    .line 658
    invoke-virtual {p1}, Lz7/p;->b()Z

    .line 659
    .line 660
    .line 661
    move-result p1

    .line 662
    iput-boolean p1, p0, Lwa/u;->S:Z
    :try_end_28
    .catch Ljava/lang/Exception; {:try_start_28 .. :try_end_28} :catch_29

    .line 663
    .line 664
    :catch_29
    :try_start_29
    iget-object p1, p0, Lwa/u;->b:Lz7/s;

    .line 665
    .line 666
    const-string v1, "AutoRotationGlobalVertical"

    .line 667
    .line 668
    invoke-virtual {p1, v1}, Lz7/s;->o(Ljava/lang/String;)Lz7/p;

    .line 669
    .line 670
    .line 671
    move-result-object p1

    .line 672
    invoke-virtual {p1}, Lz7/p;->b()Z

    .line 673
    .line 674
    .line 675
    move-result p1

    .line 676
    iput-boolean p1, p0, Lwa/u;->T:Z
    :try_end_29
    .catch Ljava/lang/Exception; {:try_start_29 .. :try_end_29} :catch_2a

    .line 677
    .line 678
    :catch_2a
    :try_start_2a
    iget-object p1, p0, Lwa/u;->b:Lz7/s;

    .line 679
    .line 680
    const-string v1, "AutoRotationDefault"

    .line 681
    .line 682
    invoke-virtual {p1, v1}, Lz7/s;->o(Ljava/lang/String;)Lz7/p;

    .line 683
    .line 684
    .line 685
    move-result-object p1

    .line 686
    invoke-virtual {p1}, Lz7/p;->e()I

    .line 687
    .line 688
    .line 689
    move-result p1

    .line 690
    iput p1, p0, Lwa/u;->U:I
    :try_end_2a
    .catch Ljava/lang/Exception; {:try_start_2a .. :try_end_2a} :catch_2b

    .line 691
    .line 692
    :catch_2b
    :try_start_2b
    iget-object p1, p0, Lwa/u;->b:Lz7/s;

    .line 693
    .line 694
    const-string v1, "AutoClick_DESKTOP_SELECT"

    .line 695
    .line 696
    invoke-virtual {p1, v1}, Lz7/s;->o(Ljava/lang/String;)Lz7/p;

    .line 697
    .line 698
    .line 699
    move-result-object p1

    .line 700
    invoke-virtual {p1}, Lz7/p;->b()Z

    .line 701
    .line 702
    .line 703
    move-result p1

    .line 704
    iput-boolean p1, p0, Lwa/u;->Y:Z
    :try_end_2b
    .catch Ljava/lang/Exception; {:try_start_2b .. :try_end_2b} :catch_2c

    .line 705
    .line 706
    :catch_2c
    :try_start_2c
    iget-object p1, p0, Lwa/u;->b:Lz7/s;

    .line 707
    .line 708
    const-string v1, "AutoClick_DESKTOP_SELECT_NAME"

    .line 709
    .line 710
    invoke-virtual {p1, v1}, Lz7/s;->o(Ljava/lang/String;)Lz7/p;

    .line 711
    .line 712
    .line 713
    move-result-object p1

    .line 714
    invoke-virtual {p1}, Lz7/p;->i()Ljava/lang/String;

    .line 715
    .line 716
    .line 717
    move-result-object p1

    .line 718
    iput-object p1, p0, Lwa/u;->Z:Ljava/lang/String;
    :try_end_2c
    .catch Ljava/lang/Exception; {:try_start_2c .. :try_end_2c} :catch_2d

    .line 719
    .line 720
    :catch_2d
    :try_start_2d
    iget-object p1, p0, Lwa/u;->b:Lz7/s;

    .line 721
    .line 722
    const-string v1, "AutoClick_DESKTOP_SELECT_NAME2"

    .line 723
    .line 724
    invoke-virtual {p1, v1}, Lz7/s;->o(Ljava/lang/String;)Lz7/p;

    .line 725
    .line 726
    .line 727
    move-result-object p1

    .line 728
    invoke-virtual {p1}, Lz7/p;->i()Ljava/lang/String;

    .line 729
    .line 730
    .line 731
    move-result-object p1

    .line 732
    iput-object p1, p0, Lwa/u;->a0:Ljava/lang/String;
    :try_end_2d
    .catch Ljava/lang/Exception; {:try_start_2d .. :try_end_2d} :catch_2e

    .line 733
    .line 734
    :catch_2e
    :try_start_2e
    iget-object p1, p0, Lwa/u;->b:Lz7/s;

    .line 735
    .line 736
    const-string v1, "AutoClick_USB_OTG_AUTHORIZED"

    .line 737
    .line 738
    invoke-virtual {p1, v1}, Lz7/s;->o(Ljava/lang/String;)Lz7/p;

    .line 739
    .line 740
    .line 741
    move-result-object p1

    .line 742
    invoke-virtual {p1}, Lz7/p;->b()Z

    .line 743
    .line 744
    .line 745
    move-result p1

    .line 746
    iput-boolean p1, p0, Lwa/u;->V:Z
    :try_end_2e
    .catch Ljava/lang/Exception; {:try_start_2e .. :try_end_2e} :catch_2f

    .line 747
    .line 748
    :catch_2f
    :try_start_2f
    iget-object p1, p0, Lwa/u;->b:Lz7/s;

    .line 749
    .line 750
    const-string v1, "AutoClick_USB_OTG_AUTHORIZED_BOOTSTART"

    .line 751
    .line 752
    invoke-virtual {p1, v1}, Lz7/s;->o(Ljava/lang/String;)Lz7/p;

    .line 753
    .line 754
    .line 755
    move-result-object p1

    .line 756
    invoke-virtual {p1}, Lz7/p;->b()Z

    .line 757
    .line 758
    .line 759
    move-result p1

    .line 760
    iput-boolean p1, p0, Lwa/u;->W:Z
    :try_end_2f
    .catch Ljava/lang/Exception; {:try_start_2f .. :try_end_2f} :catch_30

    .line 761
    .line 762
    :catch_30
    :try_start_30
    iget-object p1, p0, Lwa/u;->b:Lz7/s;

    .line 763
    .line 764
    const-string v1, "AutoClick_USB_OTG_AUTHORIZED_CANCEL"

    .line 765
    .line 766
    invoke-virtual {p1, v1}, Lz7/s;->o(Ljava/lang/String;)Lz7/p;

    .line 767
    .line 768
    .line 769
    move-result-object p1

    .line 770
    invoke-virtual {p1}, Lz7/p;->i()Ljava/lang/String;

    .line 771
    .line 772
    .line 773
    move-result-object p1

    .line 774
    iput-object p1, p0, Lwa/u;->X:Ljava/lang/String;
    :try_end_30
    .catch Ljava/lang/Exception; {:try_start_30 .. :try_end_30} :catch_31

    .line 775
    .line 776
    :catch_31
    :try_start_31
    iget-object p1, p0, Lwa/u;->b:Lz7/s;

    .line 777
    .line 778
    const-string v1, "AutoClick_AllowReadLogcat"

    .line 779
    .line 780
    invoke-virtual {p1, v1}, Lz7/s;->o(Ljava/lang/String;)Lz7/p;

    .line 781
    .line 782
    .line 783
    move-result-object p1

    .line 784
    invoke-virtual {p1}, Lz7/p;->b()Z

    .line 785
    .line 786
    .line 787
    move-result p1

    .line 788
    iput-boolean p1, p0, Lwa/u;->b0:Z
    :try_end_31
    .catch Ljava/lang/Exception; {:try_start_31 .. :try_end_31} :catch_32

    .line 789
    .line 790
    goto :goto_6

    .line 791
    :catch_32
    nop

    .line 792
    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 793
    .line 794
    const/16 v1, 0x21

    .line 795
    .line 796
    if-lt p1, v1, :cond_3

    .line 797
    .line 798
    const/4 p1, 0x1

    .line 799
    iput-boolean p1, p0, Lwa/u;->b0:Z

    .line 800
    .line 801
    :cond_3
    :goto_6
    :try_start_32
    iget-object p1, p0, Lwa/u;->b:Lz7/s;

    .line 802
    .line 803
    const-string v1, "BootTaskDetectionBootTime"

    .line 804
    .line 805
    invoke-virtual {p1, v1}, Lz7/s;->o(Ljava/lang/String;)Lz7/p;

    .line 806
    .line 807
    .line 808
    move-result-object p1

    .line 809
    invoke-virtual {p1}, Lz7/p;->b()Z

    .line 810
    .line 811
    .line 812
    move-result p1

    .line 813
    iput-boolean p1, p0, Lwa/u;->c0:Z
    :try_end_32
    .catch Ljava/lang/Exception; {:try_start_32 .. :try_end_32} :catch_33

    .line 814
    .line 815
    :catch_33
    :try_start_33
    iget-object p1, p0, Lwa/u;->b:Lz7/s;

    .line 816
    .line 817
    const-string v1, "BootTaskPreventRepeatedLaunches"

    .line 818
    .line 819
    invoke-virtual {p1, v1}, Lz7/s;->o(Ljava/lang/String;)Lz7/p;

    .line 820
    .line 821
    .line 822
    move-result-object p1

    .line 823
    invoke-virtual {p1}, Lz7/p;->b()Z

    .line 824
    .line 825
    .line 826
    move-result p1

    .line 827
    iput-boolean p1, p0, Lwa/u;->d0:Z
    :try_end_33
    .catch Ljava/lang/Exception; {:try_start_33 .. :try_end_33} :catch_34

    .line 828
    .line 829
    :catch_34
    :try_start_34
    iget-object p1, p0, Lwa/u;->b:Lz7/s;

    .line 830
    .line 831
    const-string v1, "DetectionBootUnableToEnterDesktop"

    .line 832
    .line 833
    invoke-virtual {p1, v1}, Lz7/s;->o(Ljava/lang/String;)Lz7/p;

    .line 834
    .line 835
    .line 836
    move-result-object p1

    .line 837
    invoke-virtual {p1}, Lz7/p;->b()Z

    .line 838
    .line 839
    .line 840
    move-result p1

    .line 841
    iput-boolean p1, p0, Lwa/u;->e0:Z
    :try_end_34
    .catch Ljava/lang/Exception; {:try_start_34 .. :try_end_34} :catch_35

    .line 842
    .line 843
    :catch_35
    :try_start_35
    iget-object p1, p0, Lwa/u;->b:Lz7/s;

    .line 844
    .line 845
    const-string v1, "BootTaskWaitingSystemLoading"

    .line 846
    .line 847
    invoke-virtual {p1, v1}, Lz7/s;->o(Ljava/lang/String;)Lz7/p;

    .line 848
    .line 849
    .line 850
    move-result-object p1

    .line 851
    invoke-virtual {p1}, Lz7/p;->b()Z

    .line 852
    .line 853
    .line 854
    move-result p1

    .line 855
    iput-boolean p1, p0, Lwa/u;->f0:Z
    :try_end_35
    .catch Ljava/lang/Exception; {:try_start_35 .. :try_end_35} :catch_36

    .line 856
    .line 857
    :catch_36
    iget-object p1, p0, Lwa/u;->w:Ljava/util/HashSet;

    .line 858
    .line 859
    invoke-virtual {p1}, Ljava/util/HashSet;->clear()V

    .line 860
    .line 861
    .line 862
    const/4 v1, 0x0

    .line 863
    :try_start_36
    iget-object v2, p0, Lwa/u;->b:Lz7/s;

    .line 864
    .line 865
    const-string v3, "MemoryCleanKillFree"

    .line 866
    .line 867
    invoke-virtual {v2, v3}, Lz7/s;->o(Ljava/lang/String;)Lz7/p;

    .line 868
    .line 869
    .line 870
    move-result-object v2

    .line 871
    invoke-virtual {v2}, Lz7/p;->i()Ljava/lang/String;

    .line 872
    .line 873
    .line 874
    move-result-object v2

    .line 875
    invoke-virtual {v2, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    .line 876
    .line 877
    .line 878
    move-result-object v2

    .line 879
    const/4 v3, 0x0

    .line 880
    :goto_7
    array-length v4, v2

    .line 881
    if-ge v3, v4, :cond_5

    .line 882
    .line 883
    aget-object v4, v2, v3

    .line 884
    .line 885
    invoke-virtual {v4}, Ljava/lang/String;->isEmpty()Z

    .line 886
    .line 887
    .line 888
    move-result v4

    .line 889
    if-eqz v4, :cond_4

    .line 890
    .line 891
    goto :goto_8

    .line 892
    :cond_4
    aget-object v4, v2, v3

    .line 893
    .line 894
    invoke-virtual {p1, v4}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z
    :try_end_36
    .catch Ljava/lang/Exception; {:try_start_36 .. :try_end_36} :catch_37

    .line 895
    .line 896
    .line 897
    :goto_8
    add-int/lit8 v3, v3, 0x1

    .line 898
    .line 899
    goto :goto_7

    .line 900
    :catch_37
    :cond_5
    iget-object p1, p0, Lwa/u;->x:Ljava/util/Set;

    .line 901
    .line 902
    invoke-interface {p1}, Ljava/util/Set;->clear()V

    .line 903
    .line 904
    .line 905
    :try_start_37
    iget-object p1, p0, Lwa/u;->b:Lz7/s;

    .line 906
    .line 907
    const-string v2, "GN_AUDIO_NOTICE_EXCLUDED_APPS"

    .line 908
    .line 909
    invoke-virtual {p1, v2}, Lz7/s;->o(Ljava/lang/String;)Lz7/p;

    .line 910
    .line 911
    .line 912
    move-result-object p1

    .line 913
    invoke-virtual {p1}, Lz7/p;->i()Ljava/lang/String;

    .line 914
    .line 915
    .line 916
    move-result-object p1

    .line 917
    invoke-virtual {p1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    .line 918
    .line 919
    .line 920
    move-result-object p1

    .line 921
    const/4 v2, 0x0

    .line 922
    :goto_9
    array-length v3, p1

    .line 923
    if-ge v2, v3, :cond_7

    .line 924
    .line 925
    aget-object v3, p1, v2

    .line 926
    .line 927
    invoke-virtual {v3}, Ljava/lang/String;->isEmpty()Z

    .line 928
    .line 929
    .line 930
    move-result v3

    .line 931
    if-eqz v3, :cond_6

    .line 932
    .line 933
    goto :goto_a

    .line 934
    :cond_6
    iget-object v3, p0, Lwa/u;->x:Ljava/util/Set;

    .line 935
    .line 936
    aget-object v4, p1, v2

    .line 937
    .line 938
    invoke-interface {v3, v4}, Ljava/util/Set;->add(Ljava/lang/Object;)Z
    :try_end_37
    .catch Ljava/lang/Exception; {:try_start_37 .. :try_end_37} :catch_38

    .line 939
    .line 940
    .line 941
    :goto_a
    add-int/lit8 v2, v2, 0x1

    .line 942
    .line 943
    goto :goto_9

    .line 944
    :catch_38
    :cond_7
    iget-object p1, p0, Lwa/u;->y:Ljava/util/Set;

    .line 945
    .line 946
    invoke-interface {p1}, Ljava/util/Set;->clear()V

    .line 947
    .line 948
    .line 949
    :try_start_38
    iget-object p1, p0, Lwa/u;->b:Lz7/s;

    .line 950
    .line 951
    const-string v2, "GN_AUDIO_SIGNA_EXCLUDED_APPS"

    .line 952
    .line 953
    invoke-virtual {p1, v2}, Lz7/s;->o(Ljava/lang/String;)Lz7/p;

    .line 954
    .line 955
    .line 956
    move-result-object p1

    .line 957
    invoke-virtual {p1}, Lz7/p;->i()Ljava/lang/String;

    .line 958
    .line 959
    .line 960
    move-result-object p1

    .line 961
    invoke-virtual {p1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    .line 962
    .line 963
    .line 964
    move-result-object p1

    .line 965
    :goto_b
    array-length v0, p1

    .line 966
    if-ge v1, v0, :cond_9

    .line 967
    .line 968
    aget-object v0, p1, v1

    .line 969
    .line 970
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    .line 971
    .line 972
    .line 973
    move-result v0

    .line 974
    if-eqz v0, :cond_8

    .line 975
    .line 976
    goto :goto_c

    .line 977
    :cond_8
    iget-object v0, p0, Lwa/u;->y:Ljava/util/Set;

    .line 978
    .line 979
    aget-object v2, p1, v1

    .line 980
    .line 981
    invoke-interface {v0, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z
    :try_end_38
    .catch Ljava/lang/Exception; {:try_start_38 .. :try_end_38} :catch_39

    .line 982
    .line 983
    .line 984
    :goto_c
    add-int/lit8 v1, v1, 0x1

    .line 985
    .line 986
    goto :goto_b

    .line 987
    :catch_39
    :cond_9
    return-void
.end method

.method public final c()V
    .locals 5

    .line 1
    :try_start_0
    iget-wide v0, p0, Lwa/u;->g0:J

    .line 2
    .line 3
    iget-object v2, p0, Lwa/u;->a:Ljava/io/File;

    .line 4
    .line 5
    invoke-virtual {v2}, Ljava/io/File;->lastModified()J

    .line 6
    .line 7
    .line 8
    move-result-wide v2

    .line 9
    cmp-long v4, v0, v2

    .line 10
    .line 11
    if-eqz v4, :cond_0

    .line 12
    .line 13
    sget-object v0, Lwa/t;->a:Lwa/u;

    .line 14
    .line 15
    iget-object v1, p0, Lwa/u;->d:Lcom/yunpan/appmanage/base/AppStart;

    .line 16
    .line 17
    invoke-virtual {v0, v1}, Lwa/u;->b(Lcom/yunpan/appmanage/base/AppStart;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 18
    .line 19
    .line 20
    :catch_0
    :cond_0
    return-void
.end method

.method public final d(J)V
    .locals 2

    .line 1
    :try_start_0
    iput-wide p1, p0, Lwa/u;->l:J

    .line 2
    .line 3
    iget-object v0, p0, Lwa/u;->b:Lz7/s;

    .line 4
    .line 5
    const-string v1, "AppCloseTime"

    .line 6
    .line 7
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 8
    .line 9
    .line 10
    move-result-object p1

    .line 11
    invoke-virtual {v0, v1, p1}, Lz7/s;->l(Ljava/lang/String;Ljava/lang/Number;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 12
    .line 13
    .line 14
    :catch_0
    invoke-virtual {p0}, Lwa/u;->i()V

    .line 15
    .line 16
    .line 17
    return-void
.end method

.method public final e(Ljava/lang/String;)V
    .locals 2

    .line 1
    :try_start_0
    iput-object p1, p0, Lwa/u;->N:Ljava/lang/String;

    .line 2
    .line 3
    iget-object v0, p0, Lwa/u;->b:Lz7/s;

    .line 4
    .line 5
    const-string v1, "AutoRotationHorizontal"

    .line 6
    .line 7
    invoke-virtual {v0, v1, p1}, Lz7/s;->m(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 8
    .line 9
    .line 10
    :catch_0
    invoke-virtual {p0}, Lwa/u;->i()V

    .line 11
    .line 12
    .line 13
    return-void
.end method

.method public final f(Ljava/lang/String;)V
    .locals 2

    .line 1
    :try_start_0
    iput-object p1, p0, Lwa/u;->O:Ljava/lang/String;

    .line 2
    .line 3
    iget-object v0, p0, Lwa/u;->b:Lz7/s;

    .line 4
    .line 5
    const-string v1, "AutoRotationVertical"

    .line 6
    .line 7
    invoke-virtual {v0, v1, p1}, Lz7/s;->m(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 8
    .line 9
    .line 10
    :catch_0
    invoke-virtual {p0}, Lwa/u;->i()V

    .line 11
    .line 12
    .line 13
    return-void
.end method

.method public final g(J)V
    .locals 2

    .line 1
    iget-boolean v0, p0, Lwa/u;->t:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    const-string v0, "\u4fdd\u5b58\u6267\u884c\u4efb\u52a1\u65f6\u95f4"

    .line 6
    .line 7
    invoke-static {v0}, Lwa/w;->c(Ljava/lang/String;)V

    .line 8
    .line 9
    .line 10
    :cond_0
    :try_start_0
    iput-wide p1, p0, Lwa/u;->g:J

    .line 11
    .line 12
    iget-object v0, p0, Lwa/u;->b:Lz7/s;

    .line 13
    .line 14
    const-string v1, "BootStartTaskRunTime"

    .line 15
    .line 16
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 17
    .line 18
    .line 19
    move-result-object p1

    .line 20
    invoke-virtual {v0, v1, p1}, Lz7/s;->l(Ljava/lang/String;Ljava/lang/Number;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 21
    .line 22
    .line 23
    :catch_0
    invoke-virtual {p0}, Lwa/u;->i()V

    .line 24
    .line 25
    .line 26
    return-void
.end method

.method public final h(Z)V
    .locals 2

    .line 1
    :try_start_0
    iput-boolean p1, p0, Lwa/u;->h:Z

    .line 2
    .line 3
    iget-object v0, p0, Lwa/u;->b:Lz7/s;

    .line 4
    .line 5
    const-string v1, "BootStartTaskSpecialDevice"

    .line 6
    .line 7
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 8
    .line 9
    .line 10
    move-result-object p1

    .line 11
    invoke-virtual {v0, v1, p1}, Lz7/s;->k(Ljava/lang/String;Ljava/lang/Boolean;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 12
    .line 13
    .line 14
    :catch_0
    invoke-virtual {p0}, Lwa/u;->i()V

    .line 15
    .line 16
    .line 17
    return-void
.end method

.method public final i()V
    .locals 2

    .line 1
    :try_start_0
    new-instance v0, Ljava/io/FileWriter;

    .line 2
    .line 3
    iget-object v1, p0, Lwa/u;->a:Ljava/io/File;

    .line 4
    .line 5
    invoke-direct {v0, v1}, Ljava/io/FileWriter;-><init>(Ljava/io/File;)V

    .line 6
    .line 7
    .line 8
    new-instance v1, Ljava/io/BufferedWriter;

    .line 9
    .line 10
    invoke-direct {v1, v0}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;)V

    .line 11
    .line 12
    .line 13
    iget-object v0, p0, Lwa/u;->b:Lz7/s;

    .line 14
    .line 15
    invoke-virtual {v0}, Lz7/p;->toString()Ljava/lang/String;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    invoke-virtual {v1, v0}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 20
    .line 21
    .line 22
    invoke-virtual {v1}, Ljava/io/BufferedWriter;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 23
    .line 24
    .line 25
    goto :goto_0

    .line 26
    :catch_0
    move-exception v0

    .line 27
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 28
    .line 29
    .line 30
    :goto_0
    return-void
.end method

.method public final j()V
    .locals 4

    .line 1
    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 4
    .line 5
    .line 6
    iget-object v1, p0, Lwa/u;->w:Ljava/util/HashSet;

    .line 7
    .line 8
    invoke-virtual {v1}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    .line 9
    .line 10
    .line 11
    move-result-object v1

    .line 12
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 13
    .line 14
    .line 15
    move-result v2

    .line 16
    if-eqz v2, :cond_1

    .line 17
    .line 18
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 19
    .line 20
    .line 21
    move-result-object v2

    .line 22
    check-cast v2, Ljava/lang/String;

    .line 23
    .line 24
    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    .line 25
    .line 26
    .line 27
    move-result v3

    .line 28
    if-eqz v3, :cond_0

    .line 29
    .line 30
    goto :goto_0

    .line 31
    :cond_0
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 32
    .line 33
    .line 34
    const-string v2, ","

    .line 35
    .line 36
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 37
    .line 38
    .line 39
    goto :goto_0

    .line 40
    :cond_1
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    .line 41
    .line 42
    .line 43
    move-result v1

    .line 44
    if-lez v1, :cond_2

    .line 45
    .line 46
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    .line 47
    .line 48
    .line 49
    move-result v1

    .line 50
    add-int/lit8 v1, v1, -0x1

    .line 51
    .line 52
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->deleteCharAt(I)Ljava/lang/StringBuilder;

    .line 53
    .line 54
    .line 55
    :cond_2
    iget-object v1, p0, Lwa/u;->b:Lz7/s;

    .line 56
    .line 57
    const-string v2, "MemoryCleanKillFree"

    .line 58
    .line 59
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 60
    .line 61
    .line 62
    move-result-object v0

    .line 63
    invoke-virtual {v1, v2, v0}, Lz7/s;->m(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 64
    .line 65
    .line 66
    :catch_0
    invoke-virtual {p0}, Lwa/u;->i()V

    .line 67
    .line 68
    .line 69
    iget-object v0, p0, Lwa/u;->d:Lcom/yunpan/appmanage/base/AppStart;

    .line 70
    .line 71
    invoke-static {v0}, Lta/m;->e(Landroid/content/Context;)V

    .line 72
    .line 73
    .line 74
    return-void
.end method
