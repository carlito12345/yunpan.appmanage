.class public final Lcom/yunpan/appmanage/util/w;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public A:Z

.field public A0:Ljava/lang/String;

.field public B:Z

.field public B0:Ljava/lang/String;

.field public C:Z

.field public C0:Ljava/lang/String;

.field public D:Z

.field public D0:Ljava/lang/String;

.field public E:Z

.field public E0:Ljava/lang/String;

.field public F:Z

.field public final F0:Ljava/util/HashSet;

.field public G:Z

.field public G0:Z

.field public H:Z

.field public H0:I

.field public I:Z

.field public I0:I

.field public J:Z

.field public J0:I

.field public K:Z

.field public K0:Lz7/o;

.field public L:Z

.field public L0:Ljava/lang/String;

.field public M:Z

.field public N:Z

.field public O:I

.field public P:I

.field public Q:I

.field public R:Z

.field public S:Z

.field public T:I

.field public U:Ljava/lang/String;

.field public V:I

.field public W:Z

.field public X:Ljava/lang/String;

.field public Y:Ljava/lang/String;

.field public Z:I

.field public a:Ljava/lang/String;

.field public a0:Z

.field public b:Landroid/content/ContextWrapper;

.field public b0:Ljava/lang/String;

.field public c:Ljava/lang/String;

.field public c0:I

.field public d:I

.field public d0:Ljava/lang/String;

.field public e:Ljava/util/UUID;

.field public e0:Z

.field public f:F

.field public f0:I

.field public final g:Ljava/util/ArrayList;

.field public g0:I

.field public h:Ljava/io/File;

.field public h0:J

.field public i:Lz7/s;

.field public i0:I

.field public j:Ljava/lang/String;

.field public j0:I

.field public k:I

.field public k0:Z

.field public l:Ljava/lang/String;

.field public l0:Z

.field public m:Z

.field public m0:Z

.field public n:Z

.field public n0:Z

.field public o:Z

.field public o0:Z

.field public p:Z

.field public p0:I

.field public q:Z

.field public q0:Z

.field public r:I

.field public r0:Z

.field public s:Ljava/lang/String;

.field public s0:Z

.field public t:Z

.field public t0:Z

.field public u:I

.field public u0:Z

.field public v:Z

.field public v0:Z

.field public w:Z

.field public w0:Z

.field public x:Z

.field public x0:Z

.field public y:Z

.field public y0:Ljava/lang/String;

.field public z:Z

.field public z0:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 6

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const-string v0, ""

    .line 5
    .line 6
    iput-object v0, p0, Lcom/yunpan/appmanage/util/w;->a:Ljava/lang/String;

    .line 7
    .line 8
    new-instance v1, Ljava/util/ArrayList;

    .line 9
    .line 10
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 11
    .line 12
    .line 13
    iput-object v1, p0, Lcom/yunpan/appmanage/util/w;->g:Ljava/util/ArrayList;

    .line 14
    .line 15
    const/4 v1, 0x0

    .line 16
    iput-object v1, p0, Lcom/yunpan/appmanage/util/w;->i:Lz7/s;

    .line 17
    .line 18
    const-string v1, "adb36987"

    .line 19
    .line 20
    iput-object v1, p0, Lcom/yunpan/appmanage/util/w;->l:Ljava/lang/String;

    .line 21
    .line 22
    const/4 v1, 0x0

    .line 23
    iput-boolean v1, p0, Lcom/yunpan/appmanage/util/w;->m:Z

    .line 24
    .line 25
    iput-boolean v1, p0, Lcom/yunpan/appmanage/util/w;->n:Z

    .line 26
    .line 27
    iput-boolean v1, p0, Lcom/yunpan/appmanage/util/w;->o:Z

    .line 28
    .line 29
    const/4 v2, 0x1

    .line 30
    iput-boolean v2, p0, Lcom/yunpan/appmanage/util/w;->p:Z

    .line 31
    .line 32
    iput-boolean v2, p0, Lcom/yunpan/appmanage/util/w;->q:Z

    .line 33
    .line 34
    const/16 v3, 0x3c0

    .line 35
    .line 36
    iput v3, p0, Lcom/yunpan/appmanage/util/w;->r:I

    .line 37
    .line 38
    iput-object v0, p0, Lcom/yunpan/appmanage/util/w;->s:Ljava/lang/String;

    .line 39
    .line 40
    iput-boolean v2, p0, Lcom/yunpan/appmanage/util/w;->t:Z

    .line 41
    .line 42
    const/4 v3, -0x1

    .line 43
    iput v3, p0, Lcom/yunpan/appmanage/util/w;->u:I

    .line 44
    .line 45
    iput-boolean v2, p0, Lcom/yunpan/appmanage/util/w;->v:Z

    .line 46
    .line 47
    iput-boolean v1, p0, Lcom/yunpan/appmanage/util/w;->w:Z

    .line 48
    .line 49
    sget v4, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 50
    .line 51
    const/16 v5, 0x17

    .line 52
    .line 53
    if-lt v4, v5, :cond_0

    .line 54
    .line 55
    const/4 v5, 0x1

    .line 56
    goto :goto_0

    .line 57
    :cond_0
    const/4 v5, 0x0

    .line 58
    :goto_0
    iput-boolean v5, p0, Lcom/yunpan/appmanage/util/w;->x:Z

    .line 59
    .line 60
    iput-boolean v1, p0, Lcom/yunpan/appmanage/util/w;->y:Z

    .line 61
    .line 62
    iput-boolean v1, p0, Lcom/yunpan/appmanage/util/w;->z:Z

    .line 63
    .line 64
    iput-boolean v1, p0, Lcom/yunpan/appmanage/util/w;->A:Z

    .line 65
    .line 66
    iput-boolean v1, p0, Lcom/yunpan/appmanage/util/w;->B:Z

    .line 67
    .line 68
    iput-boolean v1, p0, Lcom/yunpan/appmanage/util/w;->C:Z

    .line 69
    .line 70
    iput-boolean v1, p0, Lcom/yunpan/appmanage/util/w;->D:Z

    .line 71
    .line 72
    iput-boolean v1, p0, Lcom/yunpan/appmanage/util/w;->E:Z

    .line 73
    .line 74
    iput-boolean v2, p0, Lcom/yunpan/appmanage/util/w;->F:Z

    .line 75
    .line 76
    iput-boolean v2, p0, Lcom/yunpan/appmanage/util/w;->G:Z

    .line 77
    .line 78
    iput-boolean v1, p0, Lcom/yunpan/appmanage/util/w;->H:Z

    .line 79
    .line 80
    iput-boolean v1, p0, Lcom/yunpan/appmanage/util/w;->I:Z

    .line 81
    .line 82
    iput-boolean v1, p0, Lcom/yunpan/appmanage/util/w;->J:Z

    .line 83
    .line 84
    iput-boolean v1, p0, Lcom/yunpan/appmanage/util/w;->K:Z

    .line 85
    .line 86
    iput-boolean v1, p0, Lcom/yunpan/appmanage/util/w;->L:Z

    .line 87
    .line 88
    iput-boolean v2, p0, Lcom/yunpan/appmanage/util/w;->M:Z

    .line 89
    .line 90
    iput-boolean v2, p0, Lcom/yunpan/appmanage/util/w;->N:Z

    .line 91
    .line 92
    iput v1, p0, Lcom/yunpan/appmanage/util/w;->O:I

    .line 93
    .line 94
    iput v1, p0, Lcom/yunpan/appmanage/util/w;->P:I

    .line 95
    .line 96
    iput v1, p0, Lcom/yunpan/appmanage/util/w;->Q:I

    .line 97
    .line 98
    iput-boolean v1, p0, Lcom/yunpan/appmanage/util/w;->R:Z

    .line 99
    .line 100
    iput-boolean v1, p0, Lcom/yunpan/appmanage/util/w;->S:Z

    .line 101
    .line 102
    iput v1, p0, Lcom/yunpan/appmanage/util/w;->T:I

    .line 103
    .line 104
    iput-object v0, p0, Lcom/yunpan/appmanage/util/w;->U:Ljava/lang/String;

    .line 105
    .line 106
    iput v3, p0, Lcom/yunpan/appmanage/util/w;->V:I

    .line 107
    .line 108
    iput-boolean v1, p0, Lcom/yunpan/appmanage/util/w;->W:Z

    .line 109
    .line 110
    iput-object v0, p0, Lcom/yunpan/appmanage/util/w;->X:Ljava/lang/String;

    .line 111
    .line 112
    iput-object v0, p0, Lcom/yunpan/appmanage/util/w;->Y:Ljava/lang/String;

    .line 113
    .line 114
    iput v2, p0, Lcom/yunpan/appmanage/util/w;->Z:I

    .line 115
    .line 116
    iput-boolean v1, p0, Lcom/yunpan/appmanage/util/w;->a0:Z

    .line 117
    .line 118
    const-string v3, "su"

    .line 119
    .line 120
    iput-object v3, p0, Lcom/yunpan/appmanage/util/w;->b0:Ljava/lang/String;

    .line 121
    .line 122
    iput-object v0, p0, Lcom/yunpan/appmanage/util/w;->d0:Ljava/lang/String;

    .line 123
    .line 124
    iput-boolean v1, p0, Lcom/yunpan/appmanage/util/w;->e0:Z

    .line 125
    .line 126
    iput v2, p0, Lcom/yunpan/appmanage/util/w;->f0:I

    .line 127
    .line 128
    const/16 v3, 0x15

    .line 129
    .line 130
    if-lt v4, v3, :cond_1

    .line 131
    .line 132
    const/4 v3, 0x0

    .line 133
    goto :goto_1

    .line 134
    :cond_1
    const/4 v3, 0x1

    .line 135
    :goto_1
    iput v3, p0, Lcom/yunpan/appmanage/util/w;->g0:I

    .line 136
    .line 137
    const-wide/16 v3, 0x0

    .line 138
    .line 139
    iput-wide v3, p0, Lcom/yunpan/appmanage/util/w;->h0:J

    .line 140
    .line 141
    iput v1, p0, Lcom/yunpan/appmanage/util/w;->i0:I

    .line 142
    .line 143
    iput v1, p0, Lcom/yunpan/appmanage/util/w;->j0:I

    .line 144
    .line 145
    iput-boolean v1, p0, Lcom/yunpan/appmanage/util/w;->k0:Z

    .line 146
    .line 147
    iput-boolean v1, p0, Lcom/yunpan/appmanage/util/w;->l0:Z

    .line 148
    .line 149
    iput-boolean v2, p0, Lcom/yunpan/appmanage/util/w;->m0:Z

    .line 150
    .line 151
    iput-boolean v1, p0, Lcom/yunpan/appmanage/util/w;->n0:Z

    .line 152
    .line 153
    iput-boolean v1, p0, Lcom/yunpan/appmanage/util/w;->o0:Z

    .line 154
    .line 155
    iput v1, p0, Lcom/yunpan/appmanage/util/w;->p0:I

    .line 156
    .line 157
    iput-boolean v2, p0, Lcom/yunpan/appmanage/util/w;->q0:Z

    .line 158
    .line 159
    iput-boolean v1, p0, Lcom/yunpan/appmanage/util/w;->r0:Z

    .line 160
    .line 161
    iput-boolean v1, p0, Lcom/yunpan/appmanage/util/w;->s0:Z

    .line 162
    .line 163
    iput-boolean v1, p0, Lcom/yunpan/appmanage/util/w;->t0:Z

    .line 164
    .line 165
    iput-boolean v1, p0, Lcom/yunpan/appmanage/util/w;->u0:Z

    .line 166
    .line 167
    iput-boolean v1, p0, Lcom/yunpan/appmanage/util/w;->v0:Z

    .line 168
    .line 169
    iput-boolean v2, p0, Lcom/yunpan/appmanage/util/w;->w0:Z

    .line 170
    .line 171
    iput-boolean v2, p0, Lcom/yunpan/appmanage/util/w;->x0:Z

    .line 172
    .line 173
    const-string v2, "apk|apkm|apks|gj|xapk|apk.1"

    .line 174
    .line 175
    iput-object v2, p0, Lcom/yunpan/appmanage/util/w;->y0:Ljava/lang/String;

    .line 176
    .line 177
    const-string v2, "png|jpg|jpeg|gif|bmp|webp|ico|kpg"

    .line 178
    .line 179
    iput-object v2, p0, Lcom/yunpan/appmanage/util/w;->z0:Ljava/lang/String;

    .line 180
    .line 181
    const-string v2, "mp4|mkv|avi|flv|wmv|mov|rmvb|3gp|mpg|mpeg|rm|vob|m4v|webm|asf|vhs|xvid|divx|dv|ra|ts"

    .line 182
    .line 183
    iput-object v2, p0, Lcom/yunpan/appmanage/util/w;->A0:Ljava/lang/String;

    .line 184
    .line 185
    const-string v2, "mp3|wav|ogg|flac|ape|wma|aac|amr|m4a|midi|cda|mid|kgg"

    .line 186
    .line 187
    iput-object v2, p0, Lcom/yunpan/appmanage/util/w;->B0:Ljava/lang/String;

    .line 188
    .line 189
    const-string v2, "txt|pdf|ppt|pptx|xml|html|htm|log|ini|css|js|json|doc|docx|xls|xlsx"

    .line 190
    .line 191
    iput-object v2, p0, Lcom/yunpan/appmanage/util/w;->C0:Ljava/lang/String;

    .line 192
    .line 193
    const-string v2, "zip|rar|7z|bz|tar|gz|bz2|tbz2|tgz|txz|xz"

    .line 194
    .line 195
    iput-object v2, p0, Lcom/yunpan/appmanage/util/w;->D0:Ljava/lang/String;

    .line 196
    .line 197
    const-string v2, "ggg|kkk"

    .line 198
    .line 199
    iput-object v2, p0, Lcom/yunpan/appmanage/util/w;->E0:Ljava/lang/String;

    .line 200
    .line 201
    new-instance v2, Ljava/util/HashSet;

    .line 202
    .line 203
    invoke-direct {v2}, Ljava/util/HashSet;-><init>()V

    .line 204
    .line 205
    .line 206
    iput-object v2, p0, Lcom/yunpan/appmanage/util/w;->F0:Ljava/util/HashSet;

    .line 207
    .line 208
    iput-boolean v1, p0, Lcom/yunpan/appmanage/util/w;->G0:Z

    .line 209
    .line 210
    const/4 v2, 0x5

    .line 211
    iput v2, p0, Lcom/yunpan/appmanage/util/w;->H0:I

    .line 212
    .line 213
    iput v1, p0, Lcom/yunpan/appmanage/util/w;->I0:I

    .line 214
    .line 215
    iput v1, p0, Lcom/yunpan/appmanage/util/w;->J0:I

    .line 216
    .line 217
    new-instance v1, Lz7/o;

    .line 218
    .line 219
    invoke-direct {v1}, Lz7/o;-><init>()V

    .line 220
    .line 221
    .line 222
    iput-object v1, p0, Lcom/yunpan/appmanage/util/w;->K0:Lz7/o;

    .line 223
    .line 224
    iput-object v0, p0, Lcom/yunpan/appmanage/util/w;->L0:Ljava/lang/String;

    .line 225
    .line 226
    return-void
.end method

.method public static b()Lcom/yunpan/appmanage/util/w;
    .locals 1

    .line 1
    sget-object v0, Lcom/yunpan/appmanage/util/v;->a:Lcom/yunpan/appmanage/util/w;

    .line 2
    .line 3
    return-object v0
.end method


# virtual methods
.method public final A()V
    .locals 3

    .line 1
    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Lcom/yunpan/appmanage/util/w;->t:Z

    .line 3
    .line 4
    const-string v0, "mIsTheFirst"

    .line 5
    .line 6
    :try_start_0
    iget-object v1, p0, Lcom/yunpan/appmanage/util/w;->i:Lz7/s;

    .line 7
    .line 8
    sget-object v2, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 9
    .line 10
    invoke-virtual {v1, v0, v2}, Lz7/s;->k(Ljava/lang/String;Ljava/lang/Boolean;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 11
    .line 12
    .line 13
    :catch_0
    invoke-virtual {p0}, Lcom/yunpan/appmanage/util/w;->m()V

    .line 14
    .line 15
    .line 16
    return-void
.end method

.method public final B(Ljava/lang/String;)V
    .locals 2

    .line 1
    iput-object p1, p0, Lcom/yunpan/appmanage/util/w;->j:Ljava/lang/String;

    .line 2
    .line 3
    :try_start_0
    iget-object v0, p0, Lcom/yunpan/appmanage/util/w;->i:Lz7/s;

    .line 4
    .line 5
    const-string v1, "mStartPassword"

    .line 6
    .line 7
    invoke-virtual {v0, v1, p1}, Lz7/s;->m(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 8
    .line 9
    .line 10
    :catch_0
    invoke-virtual {p0}, Lcom/yunpan/appmanage/util/w;->m()V

    .line 11
    .line 12
    .line 13
    return-void
.end method

.method public final a(Ljava/lang/String;)V
    .locals 1

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/yunpan/appmanage/util/w;->i:Lz7/s;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Lz7/s;->r(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 4
    .line 5
    .line 6
    :catch_0
    invoke-virtual {p0}, Lcom/yunpan/appmanage/util/w;->m()V

    .line 7
    .line 8
    .line 9
    return-void
.end method

.method public final c()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/yunpan/appmanage/util/w;->F:Z

    .line 2
    .line 3
    return v0
.end method

.method public final d()Ljava/util/ArrayList;
    .locals 11

    .line 1
    const-string v0, "CollDirs"

    .line 2
    .line 3
    const-string v1, "isDir"

    .line 4
    .line 5
    const-string v2, "file_path"

    .line 6
    .line 7
    const-string v3, "file_name"

    .line 8
    .line 9
    const-string v4, "CollDir"

    .line 10
    .line 11
    new-instance v5, Ljava/util/ArrayList;

    .line 12
    .line 13
    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 14
    .line 15
    .line 16
    const/4 v6, 0x0

    .line 17
    :try_start_0
    iget-object v7, p0, Lcom/yunpan/appmanage/util/w;->i:Lz7/s;

    .line 18
    .line 19
    invoke-virtual {v7, v4}, Lz7/s;->o(Ljava/lang/String;)Lz7/p;

    .line 20
    .line 21
    .line 22
    move-result-object v7

    .line 23
    invoke-virtual {v7}, Lz7/p;->f()Lz7/o;

    .line 24
    .line 25
    .line 26
    move-result-object v7

    .line 27
    const/4 v8, 0x0

    .line 28
    :goto_0
    iget-object v9, v7, Lz7/o;->a:Ljava/util/ArrayList;

    .line 29
    .line 30
    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    .line 31
    .line 32
    .line 33
    move-result v9

    .line 34
    if-ge v8, v9, :cond_0

    .line 35
    .line 36
    new-instance v9, Ljava/io/File;

    .line 37
    .line 38
    invoke-virtual {v7, v8}, Lz7/o;->l(I)Lz7/p;

    .line 39
    .line 40
    .line 41
    move-result-object v10

    .line 42
    invoke-virtual {v10}, Lz7/p;->i()Ljava/lang/String;

    .line 43
    .line 44
    .line 45
    move-result-object v10

    .line 46
    invoke-direct {v9, v10}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 47
    .line 48
    .line 49
    new-instance v10, Lx9/w3;

    .line 50
    .line 51
    invoke-direct {v10, v9}, Lx9/w3;-><init>(Ljava/io/File;)V

    .line 52
    .line 53
    .line 54
    invoke-virtual {v5, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 55
    .line 56
    .line 57
    add-int/lit8 v8, v8, 0x1

    .line 58
    .line 59
    goto :goto_0

    .line 60
    :cond_0
    invoke-virtual {v5}, Ljava/util/ArrayList;->isEmpty()Z

    .line 61
    .line 62
    .line 63
    move-result v7

    .line 64
    if-nez v7, :cond_2

    .line 65
    .line 66
    iget-object v7, p0, Lcom/yunpan/appmanage/util/w;->i:Lz7/s;

    .line 67
    .line 68
    invoke-virtual {v7, v4}, Lz7/s;->r(Ljava/lang/String;)V

    .line 69
    .line 70
    .line 71
    new-instance v4, Lz7/o;

    .line 72
    .line 73
    invoke-direct {v4}, Lz7/o;-><init>()V

    .line 74
    .line 75
    .line 76
    const/4 v7, 0x0

    .line 77
    :goto_1
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    .line 78
    .line 79
    .line 80
    move-result v8

    .line 81
    if-ge v7, v8, :cond_1

    .line 82
    .line 83
    new-instance v8, Lz7/s;

    .line 84
    .line 85
    invoke-direct {v8}, Lz7/s;-><init>()V

    .line 86
    .line 87
    .line 88
    invoke-virtual {v5, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 89
    .line 90
    .line 91
    move-result-object v9

    .line 92
    check-cast v9, Lx9/w3;

    .line 93
    .line 94
    iget-object v9, v9, Lx9/w3;->a:Ljava/lang/String;

    .line 95
    .line 96
    invoke-virtual {v8, v3, v9}, Lz7/s;->m(Ljava/lang/String;Ljava/lang/String;)V

    .line 97
    .line 98
    .line 99
    invoke-virtual {v5, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 100
    .line 101
    .line 102
    move-result-object v9

    .line 103
    check-cast v9, Lx9/w3;

    .line 104
    .line 105
    iget-object v9, v9, Lx9/w3;->b:Ljava/lang/String;

    .line 106
    .line 107
    invoke-virtual {v8, v2, v9}, Lz7/s;->m(Ljava/lang/String;Ljava/lang/String;)V

    .line 108
    .line 109
    .line 110
    invoke-virtual {v5, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 111
    .line 112
    .line 113
    move-result-object v9

    .line 114
    check-cast v9, Lx9/w3;

    .line 115
    .line 116
    iget-boolean v9, v9, Lx9/w3;->c:Z

    .line 117
    .line 118
    invoke-static {v9}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 119
    .line 120
    .line 121
    move-result-object v9

    .line 122
    invoke-virtual {v8, v1, v9}, Lz7/s;->k(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 123
    .line 124
    .line 125
    invoke-virtual {v4, v8}, Lz7/o;->k(Lz7/p;)V

    .line 126
    .line 127
    .line 128
    add-int/lit8 v7, v7, 0x1

    .line 129
    .line 130
    goto :goto_1

    .line 131
    :cond_1
    iget-object v7, p0, Lcom/yunpan/appmanage/util/w;->i:Lz7/s;

    .line 132
    .line 133
    invoke-virtual {v7, v0, v4}, Lz7/s;->j(Ljava/lang/String;Lz7/p;)V

    .line 134
    .line 135
    .line 136
    invoke-virtual {p0}, Lcom/yunpan/appmanage/util/w;->m()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 137
    .line 138
    .line 139
    :catch_0
    :cond_2
    invoke-virtual {v5}, Ljava/util/ArrayList;->clear()V

    .line 140
    .line 141
    .line 142
    :try_start_1
    iget-object v4, p0, Lcom/yunpan/appmanage/util/w;->i:Lz7/s;

    .line 143
    .line 144
    invoke-virtual {v4, v0}, Lz7/s;->o(Ljava/lang/String;)Lz7/p;

    .line 145
    .line 146
    .line 147
    move-result-object v0

    .line 148
    invoke-virtual {v0}, Lz7/p;->f()Lz7/o;

    .line 149
    .line 150
    .line 151
    move-result-object v0

    .line 152
    :goto_2
    iget-object v4, v0, Lz7/o;->a:Ljava/util/ArrayList;

    .line 153
    .line 154
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    .line 155
    .line 156
    .line 157
    move-result v4

    .line 158
    if-ge v6, v4, :cond_3

    .line 159
    .line 160
    invoke-virtual {v0, v6}, Lz7/o;->l(I)Lz7/p;

    .line 161
    .line 162
    .line 163
    move-result-object v4

    .line 164
    invoke-virtual {v4}, Lz7/p;->g()Lz7/s;

    .line 165
    .line 166
    .line 167
    move-result-object v4

    .line 168
    new-instance v7, Lx9/w3;

    .line 169
    .line 170
    invoke-direct {v7}, Lx9/w3;-><init>()V

    .line 171
    .line 172
    .line 173
    invoke-virtual {v4, v3}, Lz7/s;->o(Ljava/lang/String;)Lz7/p;

    .line 174
    .line 175
    .line 176
    move-result-object v8

    .line 177
    invoke-virtual {v8}, Lz7/p;->i()Ljava/lang/String;

    .line 178
    .line 179
    .line 180
    move-result-object v8

    .line 181
    iput-object v8, v7, Lx9/w3;->a:Ljava/lang/String;

    .line 182
    .line 183
    invoke-virtual {v4, v2}, Lz7/s;->o(Ljava/lang/String;)Lz7/p;

    .line 184
    .line 185
    .line 186
    move-result-object v8

    .line 187
    invoke-virtual {v8}, Lz7/p;->i()Ljava/lang/String;

    .line 188
    .line 189
    .line 190
    move-result-object v8

    .line 191
    iput-object v8, v7, Lx9/w3;->b:Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2

    .line 192
    .line 193
    :try_start_2
    new-instance v8, Ljava/io/File;

    .line 194
    .line 195
    iget-object v9, v7, Lx9/w3;->b:Ljava/lang/String;

    .line 196
    .line 197
    invoke-direct {v8, v9}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 198
    .line 199
    .line 200
    invoke-virtual {v8}, Ljava/io/File;->getParentFile()Ljava/io/File;

    .line 201
    .line 202
    .line 203
    move-result-object v8

    .line 204
    invoke-virtual {v8}, Ljava/io/File;->getPath()Ljava/lang/String;

    .line 205
    .line 206
    .line 207
    move-result-object v8

    .line 208
    iput-object v8, v7, Lx9/w3;->e:Ljava/lang/String;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    .line 209
    .line 210
    :catch_1
    :try_start_3
    invoke-virtual {v4, v1}, Lz7/s;->o(Ljava/lang/String;)Lz7/p;

    .line 211
    .line 212
    .line 213
    move-result-object v4

    .line 214
    invoke-virtual {v4}, Lz7/p;->b()Z

    .line 215
    .line 216
    .line 217
    move-result v4

    .line 218
    iput-boolean v4, v7, Lx9/w3;->c:Z

    .line 219
    .line 220
    invoke-virtual {v5, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    .line 221
    .line 222
    .line 223
    add-int/lit8 v6, v6, 0x1

    .line 224
    .line 225
    goto :goto_2

    .line 226
    :catch_2
    :cond_3
    return-object v5
.end method

.method public final e()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/yunpan/appmanage/util/w;->r0:Z

    .line 2
    .line 3
    return v0
.end method

.method public final f()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/yunpan/appmanage/util/w;->t:Z

    .line 2
    .line 3
    return v0
.end method

.method public final g()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/yunpan/appmanage/util/w;->E:Z

    .line 2
    .line 3
    return v0
.end method

.method public final h(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/yunpan/appmanage/util/w;->i:Lz7/s;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Lz7/s;->o(Ljava/lang/String;)Lz7/p;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    invoke-virtual {p1}, Lz7/p;->i()Ljava/lang/String;

    .line 8
    .line 9
    .line 10
    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 11
    goto :goto_0

    .line 12
    :catch_0
    const-string p1, ""

    .line 13
    .line 14
    :goto_0
    return-object p1
.end method

.method public final i()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/yunpan/appmanage/util/w;->o:Z

    .line 2
    .line 3
    return v0
.end method

.method public final j(Lcom/yunpan/appmanage/base/AppStart;)V
    .locals 11

    .line 1
    const-string v0, ""

    .line 2
    .line 3
    const-string v1, "jacinto6evm"

    .line 4
    .line 5
    const-string v2, "struments"

    .line 6
    .line 7
    const-string v3, " "

    .line 8
    .line 9
    const-string v4, "\u81ea\u52a8\u52fe\u9009\u65e0\u7ebf\u8c03\u8bd5\uff1a"

    .line 10
    .line 11
    iput-object p1, p0, Lcom/yunpan/appmanage/util/w;->b:Landroid/content/ContextWrapper;

    .line 12
    .line 13
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 14
    .line 15
    .line 16
    move-result-object v5

    .line 17
    invoke-virtual {v5}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    .line 18
    .line 19
    .line 20
    move-result-object v5

    .line 21
    iget v5, v5, Landroid/util/DisplayMetrics;->density:F

    .line 22
    .line 23
    iput v5, p0, Lcom/yunpan/appmanage/util/w;->f:F

    .line 24
    .line 25
    iget-object v5, p0, Lcom/yunpan/appmanage/util/w;->b:Landroid/content/ContextWrapper;

    .line 26
    .line 27
    invoke-static {v5}, Ld/b;->J(Landroid/content/ContextWrapper;)Ljava/util/UUID;

    .line 28
    .line 29
    .line 30
    move-result-object v5

    .line 31
    iput-object v5, p0, Lcom/yunpan/appmanage/util/w;->e:Ljava/util/UUID;

    .line 32
    .line 33
    new-instance v5, Ljava/lang/StringBuilder;

    .line 34
    .line 35
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 36
    .line 37
    .line 38
    invoke-virtual {p1}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    .line 39
    .line 40
    .line 41
    move-result-object v6

    .line 42
    invoke-virtual {v6}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    .line 43
    .line 44
    .line 45
    move-result-object v6

    .line 46
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 47
    .line 48
    .line 49
    const-string v6, "/ico/"

    .line 50
    .line 51
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 52
    .line 53
    .line 54
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 55
    .line 56
    .line 57
    move-result-object v5

    .line 58
    iput-object v5, p0, Lcom/yunpan/appmanage/util/w;->a:Ljava/lang/String;

    .line 59
    .line 60
    :try_start_0
    new-instance v5, Ljava/io/File;

    .line 61
    .line 62
    iget-object v6, p0, Lcom/yunpan/appmanage/util/w;->a:Ljava/lang/String;

    .line 63
    .line 64
    invoke-direct {v5, v6}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 65
    .line 66
    .line 67
    invoke-virtual {v5}, Ljava/io/File;->mkdirs()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 68
    .line 69
    .line 70
    :catch_0
    const/4 v5, 0x0

    .line 71
    :try_start_1
    iget-object v6, p0, Lcom/yunpan/appmanage/util/w;->b:Landroid/content/ContextWrapper;

    .line 72
    .line 73
    invoke-virtual {v6}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 74
    .line 75
    .line 76
    move-result-object v6

    .line 77
    iget-object v7, p0, Lcom/yunpan/appmanage/util/w;->b:Landroid/content/ContextWrapper;

    .line 78
    .line 79
    invoke-virtual {v7}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    .line 80
    .line 81
    .line 82
    move-result-object v7

    .line 83
    invoke-virtual {v6, v7, v5}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    .line 84
    .line 85
    .line 86
    move-result-object v6

    .line 87
    iget-object v7, v6, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    .line 88
    .line 89
    iput-object v7, p0, Lcom/yunpan/appmanage/util/w;->c:Ljava/lang/String;

    .line 90
    .line 91
    iget v6, v6, Landroid/content/pm/PackageInfo;->versionCode:I

    .line 92
    .line 93
    iput v6, p0, Lcom/yunpan/appmanage/util/w;->d:I
    :try_end_1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 94
    .line 95
    :catch_1
    invoke-virtual {p0}, Lcom/yunpan/appmanage/util/w;->l()V

    .line 96
    .line 97
    .line 98
    const-string v6, "mReadDirMode"

    .line 99
    .line 100
    const/4 v7, -0x1

    .line 101
    :try_start_2
    iget-object v8, p0, Lcom/yunpan/appmanage/util/w;->i:Lz7/s;

    .line 102
    .line 103
    invoke-virtual {v8, v6}, Lz7/s;->o(Ljava/lang/String;)Lz7/p;

    .line 104
    .line 105
    .line 106
    move-result-object v8

    .line 107
    if-nez v8, :cond_0

    .line 108
    .line 109
    iget-object v8, p0, Lcom/yunpan/appmanage/util/w;->i:Lz7/s;

    .line 110
    .line 111
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 112
    .line 113
    .line 114
    move-result-object v9

    .line 115
    invoke-virtual {v8, v6, v9}, Lz7/s;->l(Ljava/lang/String;Ljava/lang/Number;)V

    .line 116
    .line 117
    .line 118
    :cond_0
    iget-object v8, p0, Lcom/yunpan/appmanage/util/w;->i:Lz7/s;

    .line 119
    .line 120
    invoke-virtual {v8, v6}, Lz7/s;->o(Ljava/lang/String;)Lz7/p;

    .line 121
    .line 122
    .line 123
    move-result-object v6

    .line 124
    invoke-virtual {v6}, Lz7/p;->e()I

    .line 125
    .line 126
    .line 127
    move-result v6

    .line 128
    iput v6, p0, Lcom/yunpan/appmanage/util/w;->u:I
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    .line 129
    .line 130
    goto :goto_0

    .line 131
    :catch_2
    iput v7, p0, Lcom/yunpan/appmanage/util/w;->u:I

    .line 132
    .line 133
    :goto_0
    const-string v6, "installTime"

    .line 134
    .line 135
    :try_start_3
    iget-object v7, p0, Lcom/yunpan/appmanage/util/w;->i:Lz7/s;

    .line 136
    .line 137
    invoke-virtual {v7, v6}, Lz7/s;->o(Ljava/lang/String;)Lz7/p;

    .line 138
    .line 139
    .line 140
    move-result-object v7

    .line 141
    if-nez v7, :cond_1

    .line 142
    .line 143
    iget-object v7, p0, Lcom/yunpan/appmanage/util/w;->i:Lz7/s;

    .line 144
    .line 145
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 146
    .line 147
    .line 148
    move-result-wide v8

    .line 149
    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 150
    .line 151
    .line 152
    move-result-object v8

    .line 153
    invoke-virtual {v7, v6, v8}, Lz7/s;->l(Ljava/lang/String;Ljava/lang/Number;)V

    .line 154
    .line 155
    .line 156
    :cond_1
    iget-object v7, p0, Lcom/yunpan/appmanage/util/w;->i:Lz7/s;

    .line 157
    .line 158
    invoke-virtual {v7, v6}, Lz7/s;->o(Ljava/lang/String;)Lz7/p;

    .line 159
    .line 160
    .line 161
    move-result-object v6

    .line 162
    invoke-virtual {v6}, Lz7/p;->e()I
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3

    .line 163
    .line 164
    .line 165
    goto :goto_1

    .line 166
    :catch_3
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 167
    .line 168
    .line 169
    :goto_1
    const-string v6, "mIsTheFirst"

    .line 170
    .line 171
    const/4 v7, 0x1

    .line 172
    :try_start_4
    iget-object v8, p0, Lcom/yunpan/appmanage/util/w;->i:Lz7/s;

    .line 173
    .line 174
    invoke-virtual {v8, v6}, Lz7/s;->o(Ljava/lang/String;)Lz7/p;

    .line 175
    .line 176
    .line 177
    move-result-object v8

    .line 178
    if-nez v8, :cond_2

    .line 179
    .line 180
    iget-object v8, p0, Lcom/yunpan/appmanage/util/w;->i:Lz7/s;

    .line 181
    .line 182
    sget-object v9, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 183
    .line 184
    invoke-virtual {v8, v6, v9}, Lz7/s;->k(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 185
    .line 186
    .line 187
    :cond_2
    iget-object v8, p0, Lcom/yunpan/appmanage/util/w;->i:Lz7/s;

    .line 188
    .line 189
    invoke-virtual {v8, v6}, Lz7/s;->o(Ljava/lang/String;)Lz7/p;

    .line 190
    .line 191
    .line 192
    move-result-object v6

    .line 193
    invoke-virtual {v6}, Lz7/p;->b()Z

    .line 194
    .line 195
    .line 196
    move-result v6

    .line 197
    iput-boolean v6, p0, Lcom/yunpan/appmanage/util/w;->t:Z
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_4

    .line 198
    .line 199
    goto :goto_2

    .line 200
    :catch_4
    iput-boolean v7, p0, Lcom/yunpan/appmanage/util/w;->t:Z

    .line 201
    .line 202
    :goto_2
    const-string v6, "mReturnKeyNoClose"

    .line 203
    .line 204
    :try_start_5
    iget-object v8, p0, Lcom/yunpan/appmanage/util/w;->i:Lz7/s;

    .line 205
    .line 206
    invoke-virtual {v8, v6}, Lz7/s;->o(Ljava/lang/String;)Lz7/p;

    .line 207
    .line 208
    .line 209
    move-result-object v8

    .line 210
    if-nez v8, :cond_3

    .line 211
    .line 212
    iget-object v8, p0, Lcom/yunpan/appmanage/util/w;->i:Lz7/s;

    .line 213
    .line 214
    sget-object v9, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 215
    .line 216
    invoke-virtual {v8, v6, v9}, Lz7/s;->k(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 217
    .line 218
    .line 219
    :cond_3
    iget-object v8, p0, Lcom/yunpan/appmanage/util/w;->i:Lz7/s;

    .line 220
    .line 221
    invoke-virtual {v8, v6}, Lz7/s;->o(Ljava/lang/String;)Lz7/p;

    .line 222
    .line 223
    .line 224
    move-result-object v6

    .line 225
    invoke-virtual {v6}, Lz7/p;->b()Z

    .line 226
    .line 227
    .line 228
    move-result v6

    .line 229
    iput-boolean v6, p0, Lcom/yunpan/appmanage/util/w;->v:Z
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_5

    .line 230
    .line 231
    goto :goto_3

    .line 232
    :catch_5
    iput-boolean v5, p0, Lcom/yunpan/appmanage/util/w;->v:Z

    .line 233
    .line 234
    :goto_3
    const-string v6, "mNoAdbInstall"

    .line 235
    .line 236
    :try_start_6
    iget-object v8, p0, Lcom/yunpan/appmanage/util/w;->i:Lz7/s;

    .line 237
    .line 238
    invoke-virtual {v8, v6}, Lz7/s;->o(Ljava/lang/String;)Lz7/p;

    .line 239
    .line 240
    .line 241
    move-result-object v8

    .line 242
    if-nez v8, :cond_4

    .line 243
    .line 244
    iget-object v8, p0, Lcom/yunpan/appmanage/util/w;->i:Lz7/s;

    .line 245
    .line 246
    sget-object v9, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 247
    .line 248
    invoke-virtual {v8, v6, v9}, Lz7/s;->k(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 249
    .line 250
    .line 251
    :cond_4
    iget-object v8, p0, Lcom/yunpan/appmanage/util/w;->i:Lz7/s;

    .line 252
    .line 253
    invoke-virtual {v8, v6}, Lz7/s;->o(Ljava/lang/String;)Lz7/p;

    .line 254
    .line 255
    .line 256
    move-result-object v6

    .line 257
    invoke-virtual {v6}, Lz7/p;->b()Z

    .line 258
    .line 259
    .line 260
    move-result v6

    .line 261
    iput-boolean v6, p0, Lcom/yunpan/appmanage/util/w;->y:Z
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_6

    .line 262
    .line 263
    goto :goto_4

    .line 264
    :catch_6
    iput-boolean v5, p0, Lcom/yunpan/appmanage/util/w;->y:Z

    .line 265
    .line 266
    :goto_4
    const-string v6, "InstallSource"

    .line 267
    .line 268
    :try_start_7
    iget-object v8, p0, Lcom/yunpan/appmanage/util/w;->i:Lz7/s;

    .line 269
    .line 270
    invoke-virtual {v8, v6}, Lz7/s;->o(Ljava/lang/String;)Lz7/p;

    .line 271
    .line 272
    .line 273
    move-result-object v8

    .line 274
    if-eqz v8, :cond_5

    .line 275
    .line 276
    iget-object v8, p0, Lcom/yunpan/appmanage/util/w;->i:Lz7/s;

    .line 277
    .line 278
    invoke-virtual {v8, v6}, Lz7/s;->o(Ljava/lang/String;)Lz7/p;

    .line 279
    .line 280
    .line 281
    move-result-object v6

    .line 282
    invoke-virtual {v6}, Lz7/p;->i()Ljava/lang/String;

    .line 283
    .line 284
    .line 285
    move-result-object v6

    .line 286
    iput-object v6, p0, Lcom/yunpan/appmanage/util/w;->X:Ljava/lang/String;
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_7

    .line 287
    .line 288
    :catch_7
    :cond_5
    :try_start_8
    iget-object v6, p0, Lcom/yunpan/appmanage/util/w;->i:Lz7/s;

    .line 289
    .line 290
    const-string v8, "OtgAdbShellPassword"

    .line 291
    .line 292
    invoke-virtual {v6, v8}, Lz7/s;->o(Ljava/lang/String;)Lz7/p;

    .line 293
    .line 294
    .line 295
    move-result-object v6

    .line 296
    invoke-virtual {v6}, Lz7/p;->i()Ljava/lang/String;

    .line 297
    .line 298
    .line 299
    move-result-object v6

    .line 300
    iput-object v6, p0, Lcom/yunpan/appmanage/util/w;->Y:Ljava/lang/String;
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_8

    .line 301
    .line 302
    :catch_8
    :try_start_9
    iget-object v6, p0, Lcom/yunpan/appmanage/util/w;->i:Lz7/s;

    .line 303
    .line 304
    const-string v8, "AdbConnectSuccessToast"

    .line 305
    .line 306
    invoke-virtual {v6, v8}, Lz7/s;->o(Ljava/lang/String;)Lz7/p;

    .line 307
    .line 308
    .line 309
    move-result-object v6

    .line 310
    invoke-virtual {v6}, Lz7/p;->b()Z

    .line 311
    .line 312
    .line 313
    move-result v6

    .line 314
    iput-boolean v6, p0, Lcom/yunpan/appmanage/util/w;->F:Z
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_9

    .line 315
    .line 316
    :catch_9
    :try_start_a
    iget-object v6, p0, Lcom/yunpan/appmanage/util/w;->i:Lz7/s;

    .line 317
    .line 318
    const-string v8, "ShellPasswordErrorToast"

    .line 319
    .line 320
    invoke-virtual {v6, v8}, Lz7/s;->o(Ljava/lang/String;)Lz7/p;

    .line 321
    .line 322
    .line 323
    move-result-object v6

    .line 324
    invoke-virtual {v6}, Lz7/p;->b()Z

    .line 325
    .line 326
    .line 327
    move-result v6

    .line 328
    iput-boolean v6, p0, Lcom/yunpan/appmanage/util/w;->G:Z
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_a

    .line 329
    .line 330
    :catch_a
    :try_start_b
    iget-object v6, p0, Lcom/yunpan/appmanage/util/w;->i:Lz7/s;

    .line 331
    .line 332
    const-string v8, "DialogShowNoComplete"

    .line 333
    .line 334
    invoke-virtual {v6, v8}, Lz7/s;->o(Ljava/lang/String;)Lz7/p;

    .line 335
    .line 336
    .line 337
    move-result-object v6

    .line 338
    invoke-virtual {v6}, Lz7/p;->b()Z

    .line 339
    .line 340
    .line 341
    move-result v6

    .line 342
    iput-boolean v6, p0, Lcom/yunpan/appmanage/util/w;->H:Z
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_b

    .line 343
    .line 344
    :catch_b
    :try_start_c
    iget-object v6, p0, Lcom/yunpan/appmanage/util/w;->i:Lz7/s;

    .line 345
    .line 346
    const-string v8, "FixedMutualPreachIP"

    .line 347
    .line 348
    invoke-virtual {v6, v8}, Lz7/s;->o(Ljava/lang/String;)Lz7/p;

    .line 349
    .line 350
    .line 351
    move-result-object v6

    .line 352
    invoke-virtual {v6}, Lz7/p;->b()Z

    .line 353
    .line 354
    .line 355
    move-result v6

    .line 356
    iput-boolean v6, p0, Lcom/yunpan/appmanage/util/w;->I:Z
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_c} :catch_c

    .line 357
    .line 358
    :catch_c
    :try_start_d
    iget-object v6, p0, Lcom/yunpan/appmanage/util/w;->i:Lz7/s;

    .line 359
    .line 360
    const-string v8, "IsOneRunning"

    .line 361
    .line 362
    invoke-virtual {v6, v8}, Lz7/s;->o(Ljava/lang/String;)Lz7/p;

    .line 363
    .line 364
    .line 365
    move-result-object v6

    .line 366
    invoke-virtual {v6}, Lz7/p;->b()Z

    .line 367
    .line 368
    .line 369
    move-result v6

    .line 370
    iput-boolean v6, p0, Lcom/yunpan/appmanage/util/w;->N:Z
    :try_end_d
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_d} :catch_d

    .line 371
    .line 372
    :catch_d
    :try_start_e
    iget-object v6, p0, Lcom/yunpan/appmanage/util/w;->i:Lz7/s;

    .line 373
    .line 374
    const-string v8, "Share_file_success_prompt"

    .line 375
    .line 376
    invoke-virtual {v6, v8}, Lz7/s;->o(Ljava/lang/String;)Lz7/p;

    .line 377
    .line 378
    .line 379
    move-result-object v6

    .line 380
    invoke-virtual {v6}, Lz7/p;->b()Z

    .line 381
    .line 382
    .line 383
    move-result v6

    .line 384
    iput-boolean v6, p0, Lcom/yunpan/appmanage/util/w;->M:Z
    :try_end_e
    .catch Ljava/lang/Exception; {:try_start_e .. :try_end_e} :catch_e

    .line 385
    .line 386
    :catch_e
    :try_start_f
    iget-object v6, p0, Lcom/yunpan/appmanage/util/w;->i:Lz7/s;

    .line 387
    .line 388
    const-string v8, "Auto_xingrui_adb_root"

    .line 389
    .line 390
    invoke-virtual {v6, v8}, Lz7/s;->o(Ljava/lang/String;)Lz7/p;

    .line 391
    .line 392
    .line 393
    move-result-object v6

    .line 394
    invoke-virtual {v6}, Lz7/p;->b()Z

    .line 395
    .line 396
    .line 397
    move-result v6

    .line 398
    iput-boolean v6, p0, Lcom/yunpan/appmanage/util/w;->J:Z
    :try_end_f
    .catch Ljava/lang/Exception; {:try_start_f .. :try_end_f} :catch_f

    .line 399
    .line 400
    :catch_f
    :try_start_10
    iget-object v6, p0, Lcom/yunpan/appmanage/util/w;->i:Lz7/s;

    .line 401
    .line 402
    const-string v8, "Jili_open_lifted_install"

    .line 403
    .line 404
    invoke-virtual {v6, v8}, Lz7/s;->o(Ljava/lang/String;)Lz7/p;

    .line 405
    .line 406
    .line 407
    move-result-object v6

    .line 408
    invoke-virtual {v6}, Lz7/p;->b()Z

    .line 409
    .line 410
    .line 411
    move-result v6

    .line 412
    iput-boolean v6, p0, Lcom/yunpan/appmanage/util/w;->K:Z
    :try_end_10
    .catch Ljava/lang/Exception; {:try_start_10 .. :try_end_10} :catch_10

    .line 413
    .line 414
    :catch_10
    :try_start_11
    iget-object v6, p0, Lcom/yunpan/appmanage/util/w;->i:Lz7/s;

    .line 415
    .line 416
    const-string v8, "Jili_close_recovery_install"

    .line 417
    .line 418
    invoke-virtual {v6, v8}, Lz7/s;->o(Ljava/lang/String;)Lz7/p;

    .line 419
    .line 420
    .line 421
    move-result-object v6

    .line 422
    invoke-virtual {v6}, Lz7/p;->b()Z

    .line 423
    .line 424
    .line 425
    move-result v6

    .line 426
    iput-boolean v6, p0, Lcom/yunpan/appmanage/util/w;->L:Z
    :try_end_11
    .catch Ljava/lang/Exception; {:try_start_11 .. :try_end_11} :catch_11

    .line 427
    .line 428
    :catch_11
    :try_start_12
    iget-object v6, p0, Lcom/yunpan/appmanage/util/w;->i:Lz7/s;

    .line 429
    .line 430
    const-string v8, "Auto_Open_Adb"

    .line 431
    .line 432
    invoke-virtual {v6, v8}, Lz7/s;->o(Ljava/lang/String;)Lz7/p;

    .line 433
    .line 434
    .line 435
    move-result-object v6

    .line 436
    invoke-virtual {v6}, Lz7/p;->b()Z

    .line 437
    .line 438
    .line 439
    move-result v6

    .line 440
    iput-boolean v6, p0, Lcom/yunpan/appmanage/util/w;->z:Z
    :try_end_12
    .catch Ljava/lang/Exception; {:try_start_12 .. :try_end_12} :catch_12

    .line 441
    .line 442
    :catch_12
    :try_start_13
    iget-object v6, p0, Lcom/yunpan/appmanage/util/w;->i:Lz7/s;

    .line 443
    .line 444
    const-string v8, "Auto_Open_Adb2"

    .line 445
    .line 446
    invoke-virtual {v6, v8}, Lz7/s;->o(Ljava/lang/String;)Lz7/p;

    .line 447
    .line 448
    .line 449
    move-result-object v6

    .line 450
    invoke-virtual {v6}, Lz7/p;->b()Z

    .line 451
    .line 452
    .line 453
    move-result v6

    .line 454
    iput-boolean v6, p0, Lcom/yunpan/appmanage/util/w;->A:Z
    :try_end_13
    .catch Ljava/lang/Exception; {:try_start_13 .. :try_end_13} :catch_13

    .line 455
    .line 456
    :catch_13
    :try_start_14
    iget-object v6, p0, Lcom/yunpan/appmanage/util/w;->i:Lz7/s;

    .line 457
    .line 458
    const-string v8, "DefaultInstallToSystem"

    .line 459
    .line 460
    invoke-virtual {v6, v8}, Lz7/s;->o(Ljava/lang/String;)Lz7/p;

    .line 461
    .line 462
    .line 463
    move-result-object v6

    .line 464
    invoke-virtual {v6}, Lz7/p;->b()Z
    :try_end_14
    .catch Ljava/lang/Exception; {:try_start_14 .. :try_end_14} :catch_14

    .line 465
    .line 466
    .line 467
    :catch_14
    :try_start_15
    iget-object v6, p0, Lcom/yunpan/appmanage/util/w;->i:Lz7/s;

    .line 468
    .line 469
    const-string v8, "Auto_Open_Wifi_Adb"

    .line 470
    .line 471
    invoke-virtual {v6, v8}, Lz7/s;->o(Ljava/lang/String;)Lz7/p;

    .line 472
    .line 473
    .line 474
    move-result-object v6

    .line 475
    invoke-virtual {v6}, Lz7/p;->b()Z

    .line 476
    .line 477
    .line 478
    move-result v6

    .line 479
    iput-boolean v6, p0, Lcom/yunpan/appmanage/util/w;->B:Z

    .line 480
    .line 481
    invoke-static {}, Lwa/u;->a()Lwa/u;

    .line 482
    .line 483
    .line 484
    move-result-object v6

    .line 485
    iget-boolean v6, v6, Lwa/u;->v:Z

    .line 486
    .line 487
    if-eqz v6, :cond_6

    .line 488
    .line 489
    new-instance v6, Ljava/lang/StringBuilder;

    .line 490
    .line 491
    invoke-direct {v6, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 492
    .line 493
    .line 494
    iget-boolean v4, p0, Lcom/yunpan/appmanage/util/w;->B:Z

    .line 495
    .line 496
    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 497
    .line 498
    .line 499
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 500
    .line 501
    .line 502
    move-result-object v4

    .line 503
    invoke-static {v4}, Lwa/w;->b(Ljava/lang/String;)V
    :try_end_15
    .catch Ljava/lang/Exception; {:try_start_15 .. :try_end_15} :catch_15

    .line 504
    .line 505
    .line 506
    goto :goto_5

    .line 507
    :catch_15
    nop

    .line 508
    invoke-static {}, Lwa/u;->a()Lwa/u;

    .line 509
    .line 510
    .line 511
    move-result-object v4

    .line 512
    iget-boolean v4, v4, Lwa/u;->v:Z

    .line 513
    .line 514
    if-eqz v4, :cond_6

    .line 515
    .line 516
    const-string v4, "\u8bfb\u53d6\u914d\u7f6e\u51fa\u9519"

    .line 517
    .line 518
    invoke-static {v4}, Lwa/w;->b(Ljava/lang/String;)V

    .line 519
    .line 520
    .line 521
    :cond_6
    :goto_5
    :try_start_16
    iget-object v4, p0, Lcom/yunpan/appmanage/util/w;->i:Lz7/s;

    .line 522
    .line 523
    const-string v6, "Auto_set_adb_port_5555"

    .line 524
    .line 525
    invoke-virtual {v4, v6}, Lz7/s;->o(Ljava/lang/String;)Lz7/p;

    .line 526
    .line 527
    .line 528
    move-result-object v4

    .line 529
    invoke-virtual {v4}, Lz7/p;->b()Z

    .line 530
    .line 531
    .line 532
    move-result v4

    .line 533
    iput-boolean v4, p0, Lcom/yunpan/appmanage/util/w;->C:Z
    :try_end_16
    .catch Ljava/lang/Exception; {:try_start_16 .. :try_end_16} :catch_16

    .line 534
    .line 535
    :catch_16
    :try_start_17
    iget-object v4, p0, Lcom/yunpan/appmanage/util/w;->i:Lz7/s;

    .line 536
    .line 537
    const-string v6, "BoYueLAutoAdb"

    .line 538
    .line 539
    invoke-virtual {v4, v6}, Lz7/s;->o(Ljava/lang/String;)Lz7/p;

    .line 540
    .line 541
    .line 542
    move-result-object v4

    .line 543
    invoke-virtual {v4}, Lz7/p;->b()Z

    .line 544
    .line 545
    .line 546
    move-result v4

    .line 547
    iput-boolean v4, p0, Lcom/yunpan/appmanage/util/w;->D:Z
    :try_end_17
    .catch Ljava/lang/Exception; {:try_start_17 .. :try_end_17} :catch_17

    .line 548
    .line 549
    :catch_17
    :try_start_18
    iget-object v4, p0, Lcom/yunpan/appmanage/util/w;->i:Lz7/s;

    .line 550
    .line 551
    const-string v6, "OuShangAutoAddWhitelist"

    .line 552
    .line 553
    invoke-virtual {v4, v6}, Lz7/s;->o(Ljava/lang/String;)Lz7/p;

    .line 554
    .line 555
    .line 556
    move-result-object v4

    .line 557
    invoke-virtual {v4}, Lz7/p;->b()Z

    .line 558
    .line 559
    .line 560
    move-result v4

    .line 561
    iput-boolean v4, p0, Lcom/yunpan/appmanage/util/w;->E:Z
    :try_end_18
    .catch Ljava/lang/Exception; {:try_start_18 .. :try_end_18} :catch_18

    .line 562
    .line 563
    goto :goto_6

    .line 564
    :catch_18
    :try_start_19
    invoke-static {}, Lcom/yunpan/appmanage/util/k;->f()Lcom/yunpan/appmanage/util/k;

    .line 565
    .line 566
    .line 567
    move-result-object v4

    .line 568
    iget-object v4, v4, Lcom/yunpan/appmanage/util/k;->a:Landroid/content/ContextWrapper;

    .line 569
    .line 570
    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 571
    .line 572
    .line 573
    move-result-object v4

    .line 574
    const-string v6, "OUSHANG_WHILTE_APP_LIST"

    .line 575
    .line 576
    invoke-static {v4, v6}, Landroid/provider/Settings$Global;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    .line 577
    .line 578
    .line 579
    move-result-object v4

    .line 580
    const-string v6, "."

    .line 581
    .line 582
    invoke-virtual {v4, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 583
    .line 584
    .line 585
    move-result v6

    .line 586
    if-nez v6, :cond_7

    .line 587
    .line 588
    const-string v6, ","

    .line 589
    .line 590
    invoke-virtual {v4, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 591
    .line 592
    .line 593
    move-result v4

    .line 594
    if-eqz v4, :cond_8

    .line 595
    .line 596
    :cond_7
    iput-boolean v7, p0, Lcom/yunpan/appmanage/util/w;->E:Z
    :try_end_19
    .catch Ljava/lang/Exception; {:try_start_19 .. :try_end_19} :catch_19

    .line 597
    .line 598
    :catch_19
    :cond_8
    :goto_6
    const-string v4, "Adb_root_mode"

    .line 599
    .line 600
    const/16 v6, 0x16

    .line 601
    .line 602
    const/4 v8, 0x2

    .line 603
    :try_start_1a
    iget-object v9, p0, Lcom/yunpan/appmanage/util/w;->i:Lz7/s;

    .line 604
    .line 605
    invoke-virtual {v9, v4}, Lz7/s;->o(Ljava/lang/String;)Lz7/p;

    .line 606
    .line 607
    .line 608
    move-result-object v9

    .line 609
    if-nez v9, :cond_a

    .line 610
    .line 611
    new-instance v9, Ljava/lang/StringBuilder;

    .line 612
    .line 613
    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    .line 614
    .line 615
    .line 616
    sget-object v10, Landroid/os/Build;->BRAND:Ljava/lang/String;

    .line 617
    .line 618
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 619
    .line 620
    .line 621
    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 622
    .line 623
    .line 624
    sget-object v10, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    .line 625
    .line 626
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 627
    .line 628
    .line 629
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 630
    .line 631
    .line 632
    move-result-object v9

    .line 633
    sget v10, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 634
    .line 635
    if-ne v10, v6, :cond_9

    .line 636
    .line 637
    invoke-virtual {v9}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    .line 638
    .line 639
    .line 640
    move-result-object v9

    .line 641
    invoke-virtual {v9, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 642
    .line 643
    .line 644
    move-result v9

    .line 645
    if-eqz v9, :cond_9

    .line 646
    .line 647
    new-instance v9, Ljava/lang/StringBuilder;

    .line 648
    .line 649
    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    .line 650
    .line 651
    .line 652
    sget-object v10, Landroid/os/Build;->PRODUCT:Ljava/lang/String;

    .line 653
    .line 654
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 655
    .line 656
    .line 657
    sget-object v10, Landroid/os/Build;->BOARD:Ljava/lang/String;

    .line 658
    .line 659
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 660
    .line 661
    .line 662
    sget-object v10, Landroid/os/Build;->MODEL:Ljava/lang/String;

    .line 663
    .line 664
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 665
    .line 666
    .line 667
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 668
    .line 669
    .line 670
    move-result-object v9

    .line 671
    invoke-virtual {v9, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 672
    .line 673
    .line 674
    move-result v9

    .line 675
    if-eqz v9, :cond_9

    .line 676
    .line 677
    iput v8, p0, Lcom/yunpan/appmanage/util/w;->O:I

    .line 678
    .line 679
    :cond_9
    iget-object v9, p0, Lcom/yunpan/appmanage/util/w;->i:Lz7/s;

    .line 680
    .line 681
    iget v10, p0, Lcom/yunpan/appmanage/util/w;->O:I

    .line 682
    .line 683
    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 684
    .line 685
    .line 686
    move-result-object v10

    .line 687
    invoke-virtual {v9, v4, v10}, Lz7/s;->l(Ljava/lang/String;Ljava/lang/Number;)V

    .line 688
    .line 689
    .line 690
    :cond_a
    iget-object v9, p0, Lcom/yunpan/appmanage/util/w;->i:Lz7/s;

    .line 691
    .line 692
    invoke-virtual {v9, v4}, Lz7/s;->o(Ljava/lang/String;)Lz7/p;

    .line 693
    .line 694
    .line 695
    move-result-object v4

    .line 696
    invoke-virtual {v4}, Lz7/p;->e()I

    .line 697
    .line 698
    .line 699
    move-result v4

    .line 700
    iput v4, p0, Lcom/yunpan/appmanage/util/w;->O:I
    :try_end_1a
    .catch Ljava/lang/Exception; {:try_start_1a .. :try_end_1a} :catch_1a

    .line 701
    .line 702
    :catch_1a
    const-string v4, "Adb_remount_mode"

    .line 703
    .line 704
    :try_start_1b
    iget-object v9, p0, Lcom/yunpan/appmanage/util/w;->i:Lz7/s;

    .line 705
    .line 706
    invoke-virtual {v9, v4}, Lz7/s;->o(Ljava/lang/String;)Lz7/p;

    .line 707
    .line 708
    .line 709
    move-result-object v9

    .line 710
    if-nez v9, :cond_c

    .line 711
    .line 712
    new-instance v9, Ljava/lang/StringBuilder;

    .line 713
    .line 714
    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    .line 715
    .line 716
    .line 717
    sget-object v10, Landroid/os/Build;->BRAND:Ljava/lang/String;

    .line 718
    .line 719
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 720
    .line 721
    .line 722
    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 723
    .line 724
    .line 725
    sget-object v3, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    .line 726
    .line 727
    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 728
    .line 729
    .line 730
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 731
    .line 732
    .line 733
    move-result-object v3

    .line 734
    sget v9, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 735
    .line 736
    if-ne v9, v6, :cond_b

    .line 737
    .line 738
    invoke-virtual {v3}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    .line 739
    .line 740
    .line 741
    move-result-object v3

    .line 742
    invoke-virtual {v3, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 743
    .line 744
    .line 745
    move-result v2

    .line 746
    if-eqz v2, :cond_b

    .line 747
    .line 748
    new-instance v2, Ljava/lang/StringBuilder;

    .line 749
    .line 750
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 751
    .line 752
    .line 753
    sget-object v3, Landroid/os/Build;->PRODUCT:Ljava/lang/String;

    .line 754
    .line 755
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 756
    .line 757
    .line 758
    sget-object v3, Landroid/os/Build;->BOARD:Ljava/lang/String;

    .line 759
    .line 760
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 761
    .line 762
    .line 763
    sget-object v3, Landroid/os/Build;->MODEL:Ljava/lang/String;

    .line 764
    .line 765
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 766
    .line 767
    .line 768
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 769
    .line 770
    .line 771
    move-result-object v2

    .line 772
    invoke-virtual {v2, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 773
    .line 774
    .line 775
    move-result v1

    .line 776
    if-eqz v1, :cond_b

    .line 777
    .line 778
    iput v8, p0, Lcom/yunpan/appmanage/util/w;->P:I

    .line 779
    .line 780
    :cond_b
    iget-object v1, p0, Lcom/yunpan/appmanage/util/w;->i:Lz7/s;

    .line 781
    .line 782
    iget v2, p0, Lcom/yunpan/appmanage/util/w;->P:I

    .line 783
    .line 784
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 785
    .line 786
    .line 787
    move-result-object v2

    .line 788
    invoke-virtual {v1, v4, v2}, Lz7/s;->l(Ljava/lang/String;Ljava/lang/Number;)V

    .line 789
    .line 790
    .line 791
    :cond_c
    iget-object v1, p0, Lcom/yunpan/appmanage/util/w;->i:Lz7/s;

    .line 792
    .line 793
    invoke-virtual {v1, v4}, Lz7/s;->o(Ljava/lang/String;)Lz7/p;

    .line 794
    .line 795
    .line 796
    move-result-object v1

    .line 797
    invoke-virtual {v1}, Lz7/p;->e()I

    .line 798
    .line 799
    .line 800
    move-result v1

    .line 801
    iput v1, p0, Lcom/yunpan/appmanage/util/w;->P:I
    :try_end_1b
    .catch Ljava/lang/Exception; {:try_start_1b .. :try_end_1b} :catch_1b

    .line 802
    .line 803
    :catch_1b
    :try_start_1c
    iget-object v1, p0, Lcom/yunpan/appmanage/util/w;->i:Lz7/s;

    .line 804
    .line 805
    const-string v2, "Pss_mode"

    .line 806
    .line 807
    invoke-virtual {v1, v2}, Lz7/s;->o(Ljava/lang/String;)Lz7/p;

    .line 808
    .line 809
    .line 810
    move-result-object v1

    .line 811
    invoke-virtual {v1}, Lz7/p;->e()I

    .line 812
    .line 813
    .line 814
    move-result v1

    .line 815
    iput v1, p0, Lcom/yunpan/appmanage/util/w;->Q:I
    :try_end_1c
    .catch Ljava/lang/Exception; {:try_start_1c .. :try_end_1c} :catch_1c

    .line 816
    .line 817
    :catch_1c
    :try_start_1d
    iget-object v1, p0, Lcom/yunpan/appmanage/util/w;->i:Lz7/s;

    .line 818
    .line 819
    const-string v2, "Accessibility_boot_task"

    .line 820
    .line 821
    invoke-virtual {v1, v2}, Lz7/s;->o(Ljava/lang/String;)Lz7/p;

    .line 822
    .line 823
    .line 824
    move-result-object v1

    .line 825
    invoke-virtual {v1}, Lz7/p;->b()Z

    .line 826
    .line 827
    .line 828
    move-result v1

    .line 829
    iput-boolean v1, p0, Lcom/yunpan/appmanage/util/w;->R:Z
    :try_end_1d
    .catch Ljava/lang/Exception; {:try_start_1d .. :try_end_1d} :catch_1d

    .line 830
    .line 831
    :catch_1d
    :try_start_1e
    iget-object v1, p0, Lcom/yunpan/appmanage/util/w;->i:Lz7/s;

    .line 832
    .line 833
    const-string v2, "Accessibility_root_mode"

    .line 834
    .line 835
    invoke-virtual {v1, v2}, Lz7/s;->o(Ljava/lang/String;)Lz7/p;

    .line 836
    .line 837
    .line 838
    move-result-object v1

    .line 839
    invoke-virtual {v1}, Lz7/p;->b()Z

    .line 840
    .line 841
    .line 842
    move-result v1

    .line 843
    iput-boolean v1, p0, Lcom/yunpan/appmanage/util/w;->S:Z
    :try_end_1e
    .catch Ljava/lang/Exception; {:try_start_1e .. :try_end_1e} :catch_1e

    .line 844
    .line 845
    :catch_1e
    :try_start_1f
    iget-object v1, p0, Lcom/yunpan/appmanage/util/w;->i:Lz7/s;

    .line 846
    .line 847
    const-string v2, "LogcatListeningNoTag"

    .line 848
    .line 849
    invoke-virtual {v1, v2}, Lz7/s;->o(Ljava/lang/String;)Lz7/p;

    .line 850
    .line 851
    .line 852
    move-result-object v1

    .line 853
    invoke-virtual {v1}, Lz7/p;->b()Z

    .line 854
    .line 855
    .line 856
    move-result v1

    .line 857
    iput-boolean v1, p0, Lcom/yunpan/appmanage/util/w;->W:Z
    :try_end_1f
    .catch Ljava/lang/Exception; {:try_start_1f .. :try_end_1f} :catch_1f

    .line 858
    .line 859
    :catch_1f
    :try_start_20
    iget-object v1, p0, Lcom/yunpan/appmanage/util/w;->i:Lz7/s;

    .line 860
    .line 861
    const-string v2, "CleanMemoryMode"

    .line 862
    .line 863
    invoke-virtual {v1, v2}, Lz7/s;->o(Ljava/lang/String;)Lz7/p;

    .line 864
    .line 865
    .line 866
    move-result-object v1

    .line 867
    invoke-virtual {v1}, Lz7/p;->e()I

    .line 868
    .line 869
    .line 870
    move-result v1

    .line 871
    iput v1, p0, Lcom/yunpan/appmanage/util/w;->Z:I
    :try_end_20
    .catch Ljava/lang/Exception; {:try_start_20 .. :try_end_20} :catch_20

    .line 872
    .line 873
    :catch_20
    const-string v1, "mDoNotUseRoot"

    .line 874
    .line 875
    :try_start_21
    iget-object v2, p0, Lcom/yunpan/appmanage/util/w;->i:Lz7/s;

    .line 876
    .line 877
    invoke-virtual {v2, v1}, Lz7/s;->o(Ljava/lang/String;)Lz7/p;

    .line 878
    .line 879
    .line 880
    move-result-object v2

    .line 881
    if-nez v2, :cond_d

    .line 882
    .line 883
    iget-object v2, p0, Lcom/yunpan/appmanage/util/w;->i:Lz7/s;

    .line 884
    .line 885
    sget-object v3, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 886
    .line 887
    invoke-virtual {v2, v1, v3}, Lz7/s;->k(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 888
    .line 889
    .line 890
    :cond_d
    iget-object v2, p0, Lcom/yunpan/appmanage/util/w;->i:Lz7/s;

    .line 891
    .line 892
    invoke-virtual {v2, v1}, Lz7/s;->o(Ljava/lang/String;)Lz7/p;

    .line 893
    .line 894
    .line 895
    move-result-object v1

    .line 896
    invoke-virtual {v1}, Lz7/p;->b()Z

    .line 897
    .line 898
    .line 899
    move-result v1

    .line 900
    iput-boolean v1, p0, Lcom/yunpan/appmanage/util/w;->a0:Z
    :try_end_21
    .catch Ljava/lang/Exception; {:try_start_21 .. :try_end_21} :catch_21

    .line 901
    .line 902
    goto :goto_7

    .line 903
    :catch_21
    iput-boolean v5, p0, Lcom/yunpan/appmanage/util/w;->a0:Z

    .line 904
    .line 905
    :goto_7
    :try_start_22
    iget-object v1, p0, Lcom/yunpan/appmanage/util/w;->i:Lz7/s;

    .line 906
    .line 907
    const-string v2, "SuCommand"

    .line 908
    .line 909
    invoke-virtual {v1, v2}, Lz7/s;->o(Ljava/lang/String;)Lz7/p;

    .line 910
    .line 911
    .line 912
    move-result-object v1

    .line 913
    invoke-virtual {v1}, Lz7/p;->i()Ljava/lang/String;

    .line 914
    .line 915
    .line 916
    move-result-object v1

    .line 917
    iput-object v1, p0, Lcom/yunpan/appmanage/util/w;->b0:Ljava/lang/String;
    :try_end_22
    .catch Ljava/lang/Exception; {:try_start_22 .. :try_end_22} :catch_22

    .line 918
    .line 919
    :catch_22
    const-string v1, "mFileListStyle"

    .line 920
    .line 921
    :try_start_23
    iget-object v2, p0, Lcom/yunpan/appmanage/util/w;->i:Lz7/s;

    .line 922
    .line 923
    invoke-virtual {v2, v1}, Lz7/s;->o(Ljava/lang/String;)Lz7/p;

    .line 924
    .line 925
    .line 926
    move-result-object v2

    .line 927
    if-nez v2, :cond_e

    .line 928
    .line 929
    iget-object v2, p0, Lcom/yunpan/appmanage/util/w;->i:Lz7/s;

    .line 930
    .line 931
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 932
    .line 933
    .line 934
    move-result-object v3

    .line 935
    invoke-virtual {v2, v1, v3}, Lz7/s;->l(Ljava/lang/String;Ljava/lang/Number;)V

    .line 936
    .line 937
    .line 938
    :cond_e
    iget-object v2, p0, Lcom/yunpan/appmanage/util/w;->i:Lz7/s;

    .line 939
    .line 940
    invoke-virtual {v2, v1}, Lz7/s;->o(Ljava/lang/String;)Lz7/p;

    .line 941
    .line 942
    .line 943
    move-result-object v1

    .line 944
    invoke-virtual {v1}, Lz7/p;->e()I

    .line 945
    .line 946
    .line 947
    move-result v1

    .line 948
    iput v1, p0, Lcom/yunpan/appmanage/util/w;->f0:I
    :try_end_23
    .catch Ljava/lang/Exception; {:try_start_23 .. :try_end_23} :catch_23

    .line 949
    .line 950
    goto :goto_8

    .line 951
    :catch_23
    iput v7, p0, Lcom/yunpan/appmanage/util/w;->f0:I

    .line 952
    .line 953
    :goto_8
    const-string v1, "mAdbPort"

    .line 954
    .line 955
    :try_start_24
    iget-object v2, p0, Lcom/yunpan/appmanage/util/w;->i:Lz7/s;

    .line 956
    .line 957
    invoke-virtual {v2, v1}, Lz7/s;->o(Ljava/lang/String;)Lz7/p;

    .line 958
    .line 959
    .line 960
    move-result-object v2

    .line 961
    if-nez v2, :cond_f

    .line 962
    .line 963
    iget-object v2, p0, Lcom/yunpan/appmanage/util/w;->i:Lz7/s;

    .line 964
    .line 965
    const/16 v3, 0x15b3

    .line 966
    .line 967
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 968
    .line 969
    .line 970
    move-result-object v3

    .line 971
    invoke-virtual {v2, v1, v3}, Lz7/s;->l(Ljava/lang/String;Ljava/lang/Number;)V

    .line 972
    .line 973
    .line 974
    :cond_f
    iget-object v2, p0, Lcom/yunpan/appmanage/util/w;->i:Lz7/s;

    .line 975
    .line 976
    invoke-virtual {v2, v1}, Lz7/s;->o(Ljava/lang/String;)Lz7/p;

    .line 977
    .line 978
    .line 979
    move-result-object v1

    .line 980
    invoke-virtual {v1}, Lz7/p;->e()I

    .line 981
    .line 982
    .line 983
    move-result v1

    .line 984
    iput v1, p0, Lcom/yunpan/appmanage/util/w;->k:I
    :try_end_24
    .catch Ljava/lang/Exception; {:try_start_24 .. :try_end_24} :catch_24

    .line 985
    .line 986
    goto :goto_9

    .line 987
    :catch_24
    iput v8, p0, Lcom/yunpan/appmanage/util/w;->k:I

    .line 988
    .line 989
    :goto_9
    :try_start_25
    iget-object v1, p0, Lcom/yunpan/appmanage/util/w;->i:Lz7/s;

    .line 990
    .line 991
    const-string v2, "NezhaAutoOpenAdb"

    .line 992
    .line 993
    invoke-virtual {v1, v2}, Lz7/s;->o(Ljava/lang/String;)Lz7/p;

    .line 994
    .line 995
    .line 996
    move-result-object v1

    .line 997
    invoke-virtual {v1}, Lz7/p;->b()Z

    .line 998
    .line 999
    .line 1000
    move-result v1

    .line 1001
    iput-boolean v1, p0, Lcom/yunpan/appmanage/util/w;->m:Z
    :try_end_25
    .catch Ljava/lang/Exception; {:try_start_25 .. :try_end_25} :catch_25

    .line 1002
    .line 1003
    :catch_25
    :try_start_26
    iget-object v1, p0, Lcom/yunpan/appmanage/util/w;->i:Lz7/s;

    .line 1004
    .line 1005
    const-string v2, "AutoOpenAdb_lynkco"

    .line 1006
    .line 1007
    invoke-virtual {v1, v2}, Lz7/s;->o(Ljava/lang/String;)Lz7/p;

    .line 1008
    .line 1009
    .line 1010
    move-result-object v1

    .line 1011
    invoke-virtual {v1}, Lz7/p;->b()Z

    .line 1012
    .line 1013
    .line 1014
    move-result v1

    .line 1015
    iput-boolean v1, p0, Lcom/yunpan/appmanage/util/w;->n:Z
    :try_end_26
    .catch Ljava/lang/Exception; {:try_start_26 .. :try_end_26} :catch_26

    .line 1016
    .line 1017
    :catch_26
    :try_start_27
    iget-object v1, p0, Lcom/yunpan/appmanage/util/w;->i:Lz7/s;

    .line 1018
    .line 1019
    const-string v2, "UseAdbPair"

    .line 1020
    .line 1021
    invoke-virtual {v1, v2}, Lz7/s;->o(Ljava/lang/String;)Lz7/p;

    .line 1022
    .line 1023
    .line 1024
    move-result-object v1

    .line 1025
    invoke-virtual {v1}, Lz7/p;->b()Z

    .line 1026
    .line 1027
    .line 1028
    move-result v1

    .line 1029
    iput-boolean v1, p0, Lcom/yunpan/appmanage/util/w;->o:Z
    :try_end_27
    .catch Ljava/lang/Exception; {:try_start_27 .. :try_end_27} :catch_27

    .line 1030
    .line 1031
    :catch_27
    :try_start_28
    iget-object v1, p0, Lcom/yunpan/appmanage/util/w;->i:Lz7/s;

    .line 1032
    .line 1033
    const-string v2, "NotUseShizuku"

    .line 1034
    .line 1035
    invoke-virtual {v1, v2}, Lz7/s;->o(Ljava/lang/String;)Lz7/p;

    .line 1036
    .line 1037
    .line 1038
    move-result-object v1

    .line 1039
    invoke-virtual {v1}, Lz7/p;->b()Z

    .line 1040
    .line 1041
    .line 1042
    move-result v1

    .line 1043
    iput-boolean v1, p0, Lcom/yunpan/appmanage/util/w;->p:Z
    :try_end_28
    .catch Ljava/lang/Exception; {:try_start_28 .. :try_end_28} :catch_28

    .line 1044
    .line 1045
    :catch_28
    :try_start_29
    iget-object v1, p0, Lcom/yunpan/appmanage/util/w;->i:Lz7/s;

    .line 1046
    .line 1047
    const-string v2, "IsHideGn"

    .line 1048
    .line 1049
    invoke-virtual {v1, v2}, Lz7/s;->o(Ljava/lang/String;)Lz7/p;

    .line 1050
    .line 1051
    .line 1052
    move-result-object v1

    .line 1053
    invoke-virtual {v1}, Lz7/p;->b()Z

    .line 1054
    .line 1055
    .line 1056
    move-result v1

    .line 1057
    iput-boolean v1, p0, Lcom/yunpan/appmanage/util/w;->q:Z
    :try_end_29
    .catch Ljava/lang/Exception; {:try_start_29 .. :try_end_29} :catch_29

    .line 1058
    .line 1059
    :catch_29
    :try_start_2a
    iget-object v1, p0, Lcom/yunpan/appmanage/util/w;->i:Lz7/s;

    .line 1060
    .line 1061
    const-string v2, "Nezha_VIN"

    .line 1062
    .line 1063
    invoke-virtual {v1, v2}, Lz7/s;->o(Ljava/lang/String;)Lz7/p;

    .line 1064
    .line 1065
    .line 1066
    move-result-object v1

    .line 1067
    invoke-virtual {v1}, Lz7/p;->i()Ljava/lang/String;

    .line 1068
    .line 1069
    .line 1070
    move-result-object v1

    .line 1071
    iput-object v1, p0, Lcom/yunpan/appmanage/util/w;->U:Ljava/lang/String;
    :try_end_2a
    .catch Ljava/lang/Exception; {:try_start_2a .. :try_end_2a} :catch_2a

    .line 1072
    .line 1073
    :catch_2a
    :try_start_2b
    iget-object v1, p0, Lcom/yunpan/appmanage/util/w;->i:Lz7/s;

    .line 1074
    .line 1075
    const-string v2, "IsJiliE02"

    .line 1076
    .line 1077
    invoke-virtual {v1, v2}, Lz7/s;->o(Ljava/lang/String;)Lz7/p;

    .line 1078
    .line 1079
    .line 1080
    move-result-object v1

    .line 1081
    invoke-virtual {v1}, Lz7/p;->e()I

    .line 1082
    .line 1083
    .line 1084
    move-result v1

    .line 1085
    iput v1, p0, Lcom/yunpan/appmanage/util/w;->V:I
    :try_end_2b
    .catch Ljava/lang/Exception; {:try_start_2b .. :try_end_2b} :catch_2b

    .line 1086
    .line 1087
    :catch_2b
    :try_start_2c
    iget-object v1, p0, Lcom/yunpan/appmanage/util/w;->i:Lz7/s;

    .line 1088
    .line 1089
    const-string v2, "Tcl_install_mode"

    .line 1090
    .line 1091
    invoke-virtual {v1, v2}, Lz7/s;->o(Ljava/lang/String;)Lz7/p;

    .line 1092
    .line 1093
    .line 1094
    move-result-object v1

    .line 1095
    invoke-virtual {v1}, Lz7/p;->e()I

    .line 1096
    .line 1097
    .line 1098
    move-result v1

    .line 1099
    iput v1, p0, Lcom/yunpan/appmanage/util/w;->T:I
    :try_end_2c
    .catch Ljava/lang/Exception; {:try_start_2c .. :try_end_2c} :catch_2c

    .line 1100
    .line 1101
    :catch_2c
    :try_start_2d
    iget-object v1, p0, Lcom/yunpan/appmanage/util/w;->i:Lz7/s;

    .line 1102
    .line 1103
    const-string v2, "AutoSizeWidthDp"

    .line 1104
    .line 1105
    invoke-virtual {v1, v2}, Lz7/s;->o(Ljava/lang/String;)Lz7/p;

    .line 1106
    .line 1107
    .line 1108
    move-result-object v1

    .line 1109
    invoke-virtual {v1}, Lz7/p;->e()I

    .line 1110
    .line 1111
    .line 1112
    move-result v1

    .line 1113
    iput v1, p0, Lcom/yunpan/appmanage/util/w;->r:I
    :try_end_2d
    .catch Ljava/lang/Exception; {:try_start_2d .. :try_end_2d} :catch_2d

    .line 1114
    .line 1115
    :catch_2d
    :try_start_2e
    iget-object v1, p0, Lcom/yunpan/appmanage/util/w;->i:Lz7/s;

    .line 1116
    .line 1117
    const-string v2, "AdbShellPassword"

    .line 1118
    .line 1119
    invoke-virtual {v1, v2}, Lz7/s;->o(Ljava/lang/String;)Lz7/p;

    .line 1120
    .line 1121
    .line 1122
    move-result-object v1

    .line 1123
    invoke-virtual {v1}, Lz7/p;->i()Ljava/lang/String;

    .line 1124
    .line 1125
    .line 1126
    move-result-object v1

    .line 1127
    iput-object v1, p0, Lcom/yunpan/appmanage/util/w;->l:Ljava/lang/String;
    :try_end_2e
    .catch Ljava/lang/Exception; {:try_start_2e .. :try_end_2e} :catch_2e

    .line 1128
    .line 1129
    :catch_2e
    :try_start_2f
    iget-object v1, p0, Lcom/yunpan/appmanage/util/w;->i:Lz7/s;

    .line 1130
    .line 1131
    const-string v2, "policy_control"

    .line 1132
    .line 1133
    invoke-virtual {v1, v2}, Lz7/s;->o(Ljava/lang/String;)Lz7/p;

    .line 1134
    .line 1135
    .line 1136
    move-result-object v1

    .line 1137
    invoke-virtual {v1}, Lz7/p;->i()Ljava/lang/String;

    .line 1138
    .line 1139
    .line 1140
    move-result-object v1

    .line 1141
    iput-object v1, p0, Lcom/yunpan/appmanage/util/w;->s:Ljava/lang/String;
    :try_end_2f
    .catch Ljava/lang/Exception; {:try_start_2f .. :try_end_2f} :catch_2f

    .line 1142
    .line 1143
    :catch_2f
    :try_start_30
    iget-object v1, p0, Lcom/yunpan/appmanage/util/w;->i:Lz7/s;

    .line 1144
    .line 1145
    const-string v2, "InstallSuccessShowDialog"

    .line 1146
    .line 1147
    invoke-virtual {v1, v2}, Lz7/s;->o(Ljava/lang/String;)Lz7/p;

    .line 1148
    .line 1149
    .line 1150
    move-result-object v1

    .line 1151
    invoke-virtual {v1}, Lz7/p;->b()Z

    .line 1152
    .line 1153
    .line 1154
    move-result v1

    .line 1155
    iput-boolean v1, p0, Lcom/yunpan/appmanage/util/w;->w:Z
    :try_end_30
    .catch Ljava/lang/Exception; {:try_start_30 .. :try_end_30} :catch_30

    .line 1156
    .line 1157
    :catch_30
    const-string v1, "InstallAuthorized"

    .line 1158
    .line 1159
    :try_start_31
    iget-object v2, p0, Lcom/yunpan/appmanage/util/w;->i:Lz7/s;

    .line 1160
    .line 1161
    invoke-virtual {v2, v1}, Lz7/s;->o(Ljava/lang/String;)Lz7/p;

    .line 1162
    .line 1163
    .line 1164
    move-result-object v2

    .line 1165
    if-eqz v2, :cond_10

    .line 1166
    .line 1167
    iget-object v2, p0, Lcom/yunpan/appmanage/util/w;->i:Lz7/s;

    .line 1168
    .line 1169
    invoke-virtual {v2, v1}, Lz7/s;->o(Ljava/lang/String;)Lz7/p;

    .line 1170
    .line 1171
    .line 1172
    move-result-object v1

    .line 1173
    invoke-virtual {v1}, Lz7/p;->b()Z

    .line 1174
    .line 1175
    .line 1176
    move-result v1

    .line 1177
    iput-boolean v1, p0, Lcom/yunpan/appmanage/util/w;->x:Z
    :try_end_31
    .catch Ljava/lang/Exception; {:try_start_31 .. :try_end_31} :catch_31

    .line 1178
    .line 1179
    :catch_31
    :cond_10
    const/16 v1, 0x15

    .line 1180
    .line 1181
    :try_start_32
    iget-object v2, p0, Lcom/yunpan/appmanage/util/w;->i:Lz7/s;

    .line 1182
    .line 1183
    const-string v3, "InstallerMode"

    .line 1184
    .line 1185
    invoke-virtual {v2, v3}, Lz7/s;->o(Ljava/lang/String;)Lz7/p;

    .line 1186
    .line 1187
    .line 1188
    move-result-object v2

    .line 1189
    invoke-virtual {v2}, Lz7/p;->e()I

    .line 1190
    .line 1191
    .line 1192
    move-result v2

    .line 1193
    iput v2, p0, Lcom/yunpan/appmanage/util/w;->c0:I
    :try_end_32
    .catch Ljava/lang/Exception; {:try_start_32 .. :try_end_32} :catch_32

    .line 1194
    .line 1195
    goto :goto_a

    .line 1196
    :catch_32
    nop

    .line 1197
    iput v7, p0, Lcom/yunpan/appmanage/util/w;->c0:I

    .line 1198
    .line 1199
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 1200
    .line 1201
    if-lt v2, v1, :cond_11

    .line 1202
    .line 1203
    iget-object v2, p0, Lcom/yunpan/appmanage/util/w;->b:Landroid/content/ContextWrapper;

    .line 1204
    .line 1205
    invoke-virtual {v2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 1206
    .line 1207
    .line 1208
    move-result-object v2

    .line 1209
    iget-object v3, p0, Lcom/yunpan/appmanage/util/w;->b:Landroid/content/ContextWrapper;

    .line 1210
    .line 1211
    invoke-virtual {v3}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    .line 1212
    .line 1213
    .line 1214
    move-result-object v3

    .line 1215
    const-string v4, "android.permission.DEVICE_POWER"

    .line 1216
    .line 1217
    invoke-virtual {v2, v4, v3}, Landroid/content/pm/PackageManager;->checkPermission(Ljava/lang/String;Ljava/lang/String;)I

    .line 1218
    .line 1219
    .line 1220
    move-result v2

    .line 1221
    if-nez v2, :cond_11

    .line 1222
    .line 1223
    iput v5, p0, Lcom/yunpan/appmanage/util/w;->c0:I

    .line 1224
    .line 1225
    :cond_11
    :goto_a
    :try_start_33
    iget-object v2, p0, Lcom/yunpan/appmanage/util/w;->i:Lz7/s;

    .line 1226
    .line 1227
    const-string v3, "InstallerClass"

    .line 1228
    .line 1229
    invoke-virtual {v2, v3}, Lz7/s;->o(Ljava/lang/String;)Lz7/p;

    .line 1230
    .line 1231
    .line 1232
    move-result-object v2

    .line 1233
    invoke-virtual {v2}, Lz7/p;->i()Ljava/lang/String;

    .line 1234
    .line 1235
    .line 1236
    move-result-object v2

    .line 1237
    iput-object v2, p0, Lcom/yunpan/appmanage/util/w;->d0:Ljava/lang/String;
    :try_end_33
    .catch Ljava/lang/Exception; {:try_start_33 .. :try_end_33} :catch_33

    .line 1238
    .line 1239
    :catch_33
    :try_start_34
    iget-object v2, p0, Lcom/yunpan/appmanage/util/w;->i:Lz7/s;

    .line 1240
    .line 1241
    const-string v3, "InstallerFrontDeskService"

    .line 1242
    .line 1243
    invoke-virtual {v2, v3}, Lz7/s;->o(Ljava/lang/String;)Lz7/p;

    .line 1244
    .line 1245
    .line 1246
    move-result-object v2

    .line 1247
    invoke-virtual {v2}, Lz7/p;->b()Z
    :try_end_34
    .catch Ljava/lang/Exception; {:try_start_34 .. :try_end_34} :catch_34

    .line 1248
    .line 1249
    .line 1250
    :catch_34
    :try_start_35
    iget-object v2, p0, Lcom/yunpan/appmanage/util/w;->i:Lz7/s;

    .line 1251
    .line 1252
    const-string v3, "NonShowDeviceDiscovery"

    .line 1253
    .line 1254
    invoke-virtual {v2, v3}, Lz7/s;->o(Ljava/lang/String;)Lz7/p;

    .line 1255
    .line 1256
    .line 1257
    move-result-object v2

    .line 1258
    invoke-virtual {v2}, Lz7/p;->b()Z

    .line 1259
    .line 1260
    .line 1261
    move-result v2

    .line 1262
    iput-boolean v2, p0, Lcom/yunpan/appmanage/util/w;->e0:Z
    :try_end_35
    .catch Ljava/lang/Exception; {:try_start_35 .. :try_end_35} :catch_35

    .line 1263
    .line 1264
    :catch_35
    :try_start_36
    iget-object v2, p0, Lcom/yunpan/appmanage/util/w;->i:Lz7/s;

    .line 1265
    .line 1266
    const-string v3, "mBarMode"

    .line 1267
    .line 1268
    invoke-virtual {v2, v3}, Lz7/s;->o(Ljava/lang/String;)Lz7/p;

    .line 1269
    .line 1270
    .line 1271
    move-result-object v2

    .line 1272
    invoke-virtual {v2}, Lz7/p;->e()I

    .line 1273
    .line 1274
    .line 1275
    move-result v2

    .line 1276
    iput v2, p0, Lcom/yunpan/appmanage/util/w;->g0:I
    :try_end_36
    .catch Ljava/lang/Exception; {:try_start_36 .. :try_end_36} :catch_36

    .line 1277
    .line 1278
    goto :goto_b

    .line 1279
    :catch_36
    nop

    .line 1280
    :goto_b
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 1281
    .line 1282
    .line 1283
    move-result-object p1

    .line 1284
    const v2, 0x7f050002

    .line 1285
    .line 1286
    .line 1287
    invoke-virtual {p1, v2}, Landroid/content/res/Resources;->getBoolean(I)Z

    .line 1288
    .line 1289
    .line 1290
    move-result p1

    .line 1291
    if-eqz p1, :cond_12

    .line 1292
    .line 1293
    const/4 p1, 0x6

    .line 1294
    iput p1, p0, Lcom/yunpan/appmanage/util/w;->g0:I

    .line 1295
    .line 1296
    :cond_12
    :try_start_37
    iget-object p1, p0, Lcom/yunpan/appmanage/util/w;->i:Lz7/s;

    .line 1297
    .line 1298
    const-string v2, "IcoUpdateTime"

    .line 1299
    .line 1300
    invoke-virtual {p1, v2}, Lz7/s;->o(Ljava/lang/String;)Lz7/p;

    .line 1301
    .line 1302
    .line 1303
    move-result-object p1

    .line 1304
    invoke-virtual {p1}, Lz7/p;->h()J

    .line 1305
    .line 1306
    .line 1307
    move-result-wide v2

    .line 1308
    iput-wide v2, p0, Lcom/yunpan/appmanage/util/w;->h0:J
    :try_end_37
    .catch Ljava/lang/Exception; {:try_start_37 .. :try_end_37} :catch_37

    .line 1309
    .line 1310
    :catch_37
    :try_start_38
    iget-object p1, p0, Lcom/yunpan/appmanage/util/w;->i:Lz7/s;

    .line 1311
    .line 1312
    const-string v2, "AppsSortMode"

    .line 1313
    .line 1314
    invoke-virtual {p1, v2}, Lz7/s;->o(Ljava/lang/String;)Lz7/p;

    .line 1315
    .line 1316
    .line 1317
    move-result-object p1

    .line 1318
    invoke-virtual {p1}, Lz7/p;->e()I

    .line 1319
    .line 1320
    .line 1321
    move-result p1

    .line 1322
    iput p1, p0, Lcom/yunpan/appmanage/util/w;->i0:I
    :try_end_38
    .catch Ljava/lang/Exception; {:try_start_38 .. :try_end_38} :catch_38

    .line 1323
    .line 1324
    :catch_38
    const-string p1, "mStartPassword"

    .line 1325
    .line 1326
    :try_start_39
    iget-object v2, p0, Lcom/yunpan/appmanage/util/w;->i:Lz7/s;

    .line 1327
    .line 1328
    invoke-virtual {v2, p1}, Lz7/s;->o(Ljava/lang/String;)Lz7/p;

    .line 1329
    .line 1330
    .line 1331
    move-result-object v2

    .line 1332
    if-nez v2, :cond_13

    .line 1333
    .line 1334
    iget-object v2, p0, Lcom/yunpan/appmanage/util/w;->i:Lz7/s;

    .line 1335
    .line 1336
    invoke-virtual {v2, p1, v0}, Lz7/s;->m(Ljava/lang/String;Ljava/lang/String;)V

    .line 1337
    .line 1338
    .line 1339
    :cond_13
    iget-object v2, p0, Lcom/yunpan/appmanage/util/w;->i:Lz7/s;

    .line 1340
    .line 1341
    invoke-virtual {v2, p1}, Lz7/s;->o(Ljava/lang/String;)Lz7/p;

    .line 1342
    .line 1343
    .line 1344
    move-result-object p1

    .line 1345
    invoke-virtual {p1}, Lz7/p;->i()Ljava/lang/String;

    .line 1346
    .line 1347
    .line 1348
    move-result-object p1

    .line 1349
    iput-object p1, p0, Lcom/yunpan/appmanage/util/w;->j:Ljava/lang/String;
    :try_end_39
    .catch Ljava/lang/Exception; {:try_start_39 .. :try_end_39} :catch_39

    .line 1350
    .line 1351
    goto :goto_c

    .line 1352
    :catch_39
    iput-object v0, p0, Lcom/yunpan/appmanage/util/w;->j:Ljava/lang/String;

    .line 1353
    .line 1354
    :goto_c
    const-string p1, "CollDirs"

    .line 1355
    .line 1356
    :try_start_3a
    iget-object v0, p0, Lcom/yunpan/appmanage/util/w;->i:Lz7/s;

    .line 1357
    .line 1358
    invoke-virtual {v0, p1}, Lz7/s;->o(Ljava/lang/String;)Lz7/p;

    .line 1359
    .line 1360
    .line 1361
    move-result-object v0

    .line 1362
    if-nez v0, :cond_14

    .line 1363
    .line 1364
    new-instance v0, Lz7/o;

    .line 1365
    .line 1366
    invoke-direct {v0}, Lz7/o;-><init>()V

    .line 1367
    .line 1368
    .line 1369
    iget-object v2, p0, Lcom/yunpan/appmanage/util/w;->i:Lz7/s;

    .line 1370
    .line 1371
    invoke-virtual {v2, p1, v0}, Lz7/s;->j(Ljava/lang/String;Lz7/p;)V
    :try_end_3a
    .catch Ljava/lang/Exception; {:try_start_3a .. :try_end_3a} :catch_3a

    .line 1372
    .line 1373
    .line 1374
    :catch_3a
    :cond_14
    invoke-virtual {p0}, Lcom/yunpan/appmanage/util/w;->k()V

    .line 1375
    .line 1376
    .line 1377
    const-string p1, "Auto_task_switch_app"

    .line 1378
    .line 1379
    :try_start_3b
    iget-object v0, p0, Lcom/yunpan/appmanage/util/w;->i:Lz7/s;

    .line 1380
    .line 1381
    invoke-virtual {v0, p1}, Lz7/s;->o(Ljava/lang/String;)Lz7/p;

    .line 1382
    .line 1383
    .line 1384
    move-result-object v0

    .line 1385
    if-eqz v0, :cond_15

    .line 1386
    .line 1387
    iget-object v0, p0, Lcom/yunpan/appmanage/util/w;->i:Lz7/s;

    .line 1388
    .line 1389
    invoke-virtual {v0, p1}, Lz7/s;->o(Ljava/lang/String;)Lz7/p;

    .line 1390
    .line 1391
    .line 1392
    move-result-object p1

    .line 1393
    invoke-virtual {p1}, Lz7/p;->f()Lz7/o;

    .line 1394
    .line 1395
    .line 1396
    move-result-object p1

    .line 1397
    iput-object p1, p0, Lcom/yunpan/appmanage/util/w;->K0:Lz7/o;
    :try_end_3b
    .catch Ljava/lang/Exception; {:try_start_3b .. :try_end_3b} :catch_3b

    .line 1398
    .line 1399
    :catch_3b
    :cond_15
    const-string p1, "Auto_task_desktop_selected_appName"

    .line 1400
    .line 1401
    :try_start_3c
    iget-object v0, p0, Lcom/yunpan/appmanage/util/w;->i:Lz7/s;

    .line 1402
    .line 1403
    invoke-virtual {v0, p1}, Lz7/s;->o(Ljava/lang/String;)Lz7/p;

    .line 1404
    .line 1405
    .line 1406
    move-result-object v0

    .line 1407
    if-eqz v0, :cond_16

    .line 1408
    .line 1409
    iget-object v0, p0, Lcom/yunpan/appmanage/util/w;->i:Lz7/s;

    .line 1410
    .line 1411
    invoke-virtual {v0, p1}, Lz7/s;->o(Ljava/lang/String;)Lz7/p;

    .line 1412
    .line 1413
    .line 1414
    move-result-object p1

    .line 1415
    invoke-virtual {p1}, Lz7/p;->i()Ljava/lang/String;

    .line 1416
    .line 1417
    .line 1418
    move-result-object p1

    .line 1419
    iput-object p1, p0, Lcom/yunpan/appmanage/util/w;->L0:Ljava/lang/String;
    :try_end_3c
    .catch Ljava/lang/Exception; {:try_start_3c .. :try_end_3c} :catch_3c

    .line 1420
    .line 1421
    goto :goto_d

    .line 1422
    :catch_3c
    nop

    .line 1423
    :cond_16
    :goto_d
    iget p1, p0, Lcom/yunpan/appmanage/util/w;->c0:I

    .line 1424
    .line 1425
    if-eqz p1, :cond_17

    .line 1426
    .line 1427
    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 1428
    .line 1429
    if-lt p1, v1, :cond_17

    .line 1430
    .line 1431
    invoke-static {}, Landroid/os/Process;->myUid()I

    .line 1432
    .line 1433
    .line 1434
    move-result p1

    .line 1435
    const/16 v0, 0x3e8

    .line 1436
    .line 1437
    if-ne p1, v0, :cond_17

    .line 1438
    .line 1439
    iput v5, p0, Lcom/yunpan/appmanage/util/w;->c0:I

    .line 1440
    .line 1441
    :cond_17
    return-void
.end method

.method public final k()V
    .locals 5

    .line 1
    const-string v0, "wpFileListMode"

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    :try_start_0
    iget-object v2, p0, Lcom/yunpan/appmanage/util/w;->i:Lz7/s;

    .line 5
    .line 6
    invoke-virtual {v2, v0}, Lz7/s;->o(Ljava/lang/String;)Lz7/p;

    .line 7
    .line 8
    .line 9
    move-result-object v2

    .line 10
    if-nez v2, :cond_0

    .line 11
    .line 12
    iget-object v2, p0, Lcom/yunpan/appmanage/util/w;->i:Lz7/s;

    .line 13
    .line 14
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 15
    .line 16
    .line 17
    move-result-object v3

    .line 18
    invoke-virtual {v2, v0, v3}, Lz7/s;->l(Ljava/lang/String;Ljava/lang/Number;)V

    .line 19
    .line 20
    .line 21
    :cond_0
    iget-object v2, p0, Lcom/yunpan/appmanage/util/w;->i:Lz7/s;

    .line 22
    .line 23
    invoke-virtual {v2, v0}, Lz7/s;->o(Ljava/lang/String;)Lz7/p;

    .line 24
    .line 25
    .line 26
    move-result-object v0

    .line 27
    invoke-virtual {v0}, Lz7/p;->e()I

    .line 28
    .line 29
    .line 30
    move-result v0

    .line 31
    iput v0, p0, Lcom/yunpan/appmanage/util/w;->I0:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 32
    .line 33
    goto :goto_0

    .line 34
    :catch_0
    iput v1, p0, Lcom/yunpan/appmanage/util/w;->I0:I

    .line 35
    .line 36
    :goto_0
    const-string v0, "bdFileListMode"

    .line 37
    .line 38
    :try_start_1
    iget-object v2, p0, Lcom/yunpan/appmanage/util/w;->i:Lz7/s;

    .line 39
    .line 40
    invoke-virtual {v2, v0}, Lz7/s;->o(Ljava/lang/String;)Lz7/p;

    .line 41
    .line 42
    .line 43
    move-result-object v2

    .line 44
    if-nez v2, :cond_1

    .line 45
    .line 46
    iget-object v2, p0, Lcom/yunpan/appmanage/util/w;->i:Lz7/s;

    .line 47
    .line 48
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 49
    .line 50
    .line 51
    move-result-object v3

    .line 52
    invoke-virtual {v2, v0, v3}, Lz7/s;->l(Ljava/lang/String;Ljava/lang/Number;)V

    .line 53
    .line 54
    .line 55
    :cond_1
    iget-object v2, p0, Lcom/yunpan/appmanage/util/w;->i:Lz7/s;

    .line 56
    .line 57
    invoke-virtual {v2, v0}, Lz7/s;->o(Ljava/lang/String;)Lz7/p;

    .line 58
    .line 59
    .line 60
    move-result-object v0

    .line 61
    invoke-virtual {v0}, Lz7/p;->e()I

    .line 62
    .line 63
    .line 64
    move-result v0

    .line 65
    iput v0, p0, Lcom/yunpan/appmanage/util/w;->J0:I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 66
    .line 67
    goto :goto_1

    .line 68
    :catch_1
    iput v1, p0, Lcom/yunpan/appmanage/util/w;->J0:I

    .line 69
    .line 70
    :goto_1
    const-string v0, "image_auto"

    .line 71
    .line 72
    :try_start_2
    iget-object v2, p0, Lcom/yunpan/appmanage/util/w;->i:Lz7/s;

    .line 73
    .line 74
    invoke-virtual {v2, v0}, Lz7/s;->o(Ljava/lang/String;)Lz7/p;

    .line 75
    .line 76
    .line 77
    move-result-object v2

    .line 78
    if-nez v2, :cond_2

    .line 79
    .line 80
    iget-object v2, p0, Lcom/yunpan/appmanage/util/w;->i:Lz7/s;

    .line 81
    .line 82
    iget-boolean v3, p0, Lcom/yunpan/appmanage/util/w;->G0:Z

    .line 83
    .line 84
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 85
    .line 86
    .line 87
    move-result-object v3

    .line 88
    invoke-virtual {v2, v0, v3}, Lz7/s;->k(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 89
    .line 90
    .line 91
    :cond_2
    iget-object v2, p0, Lcom/yunpan/appmanage/util/w;->i:Lz7/s;

    .line 92
    .line 93
    invoke-virtual {v2, v0}, Lz7/s;->o(Ljava/lang/String;)Lz7/p;

    .line 94
    .line 95
    .line 96
    move-result-object v0

    .line 97
    invoke-virtual {v0}, Lz7/p;->b()Z

    .line 98
    .line 99
    .line 100
    move-result v0

    .line 101
    iput-boolean v0, p0, Lcom/yunpan/appmanage/util/w;->G0:Z
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    .line 102
    .line 103
    :catch_2
    const-string v0, "image_time"

    .line 104
    .line 105
    :try_start_3
    iget-object v2, p0, Lcom/yunpan/appmanage/util/w;->i:Lz7/s;

    .line 106
    .line 107
    invoke-virtual {v2, v0}, Lz7/s;->o(Ljava/lang/String;)Lz7/p;

    .line 108
    .line 109
    .line 110
    move-result-object v2

    .line 111
    if-nez v2, :cond_3

    .line 112
    .line 113
    iget-object v2, p0, Lcom/yunpan/appmanage/util/w;->i:Lz7/s;

    .line 114
    .line 115
    iget v3, p0, Lcom/yunpan/appmanage/util/w;->H0:I

    .line 116
    .line 117
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 118
    .line 119
    .line 120
    move-result-object v3

    .line 121
    invoke-virtual {v2, v0, v3}, Lz7/s;->l(Ljava/lang/String;Ljava/lang/Number;)V

    .line 122
    .line 123
    .line 124
    :cond_3
    iget-object v2, p0, Lcom/yunpan/appmanage/util/w;->i:Lz7/s;

    .line 125
    .line 126
    invoke-virtual {v2, v0}, Lz7/s;->o(Ljava/lang/String;)Lz7/p;

    .line 127
    .line 128
    .line 129
    move-result-object v0

    .line 130
    invoke-virtual {v0}, Lz7/p;->e()I

    .line 131
    .line 132
    .line 133
    move-result v0

    .line 134
    iput v0, p0, Lcom/yunpan/appmanage/util/w;->H0:I
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3

    .line 135
    .line 136
    :catch_3
    :try_start_4
    iget-object v0, p0, Lcom/yunpan/appmanage/util/w;->i:Lz7/s;

    .line 137
    .line 138
    const-string v2, "mFile_hideImage"

    .line 139
    .line 140
    invoke-virtual {v0, v2}, Lz7/s;->o(Ljava/lang/String;)Lz7/p;

    .line 141
    .line 142
    .line 143
    move-result-object v0

    .line 144
    invoke-virtual {v0}, Lz7/p;->b()Z

    .line 145
    .line 146
    .line 147
    move-result v0

    .line 148
    iput-boolean v0, p0, Lcom/yunpan/appmanage/util/w;->k0:Z
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_4

    .line 149
    .line 150
    :catch_4
    :try_start_5
    iget-object v0, p0, Lcom/yunpan/appmanage/util/w;->i:Lz7/s;

    .line 151
    .line 152
    const-string v2, "mFile_menu_gravity"

    .line 153
    .line 154
    invoke-virtual {v0, v2}, Lz7/s;->o(Ljava/lang/String;)Lz7/p;

    .line 155
    .line 156
    .line 157
    move-result-object v0

    .line 158
    invoke-virtual {v0}, Lz7/p;->e()I

    .line 159
    .line 160
    .line 161
    move-result v0

    .line 162
    iput v0, p0, Lcom/yunpan/appmanage/util/w;->j0:I
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_5

    .line 163
    .line 164
    goto :goto_2

    .line 165
    :catch_5
    nop

    .line 166
    :goto_2
    iget v0, p0, Lcom/yunpan/appmanage/util/w;->j0:I

    .line 167
    .line 168
    if-ltz v0, :cond_4

    .line 169
    .line 170
    const/4 v2, 0x2

    .line 171
    if-le v0, v2, :cond_5

    .line 172
    .line 173
    :cond_4
    iput v1, p0, Lcom/yunpan/appmanage/util/w;->j0:I

    .line 174
    .line 175
    :cond_5
    :try_start_6
    iget-object v0, p0, Lcom/yunpan/appmanage/util/w;->i:Lz7/s;

    .line 176
    .line 177
    const-string v2, "ImageThumbnailMode"

    .line 178
    .line 179
    invoke-virtual {v0, v2}, Lz7/s;->o(Ljava/lang/String;)Lz7/p;

    .line 180
    .line 181
    .line 182
    move-result-object v0

    .line 183
    invoke-virtual {v0}, Lz7/p;->e()I

    .line 184
    .line 185
    .line 186
    move-result v0

    .line 187
    iput v0, p0, Lcom/yunpan/appmanage/util/w;->p0:I
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_6

    .line 188
    .line 189
    :catch_6
    const-string v0, "mFile_hide"

    .line 190
    .line 191
    :try_start_7
    iget-object v2, p0, Lcom/yunpan/appmanage/util/w;->i:Lz7/s;

    .line 192
    .line 193
    invoke-virtual {v2, v0}, Lz7/s;->o(Ljava/lang/String;)Lz7/p;

    .line 194
    .line 195
    .line 196
    move-result-object v2

    .line 197
    if-nez v2, :cond_6

    .line 198
    .line 199
    iget-object v2, p0, Lcom/yunpan/appmanage/util/w;->i:Lz7/s;

    .line 200
    .line 201
    sget-object v3, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 202
    .line 203
    invoke-virtual {v2, v0, v3}, Lz7/s;->k(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 204
    .line 205
    .line 206
    :cond_6
    iget-object v2, p0, Lcom/yunpan/appmanage/util/w;->i:Lz7/s;

    .line 207
    .line 208
    invoke-virtual {v2, v0}, Lz7/s;->o(Ljava/lang/String;)Lz7/p;

    .line 209
    .line 210
    .line 211
    move-result-object v0

    .line 212
    invoke-virtual {v0}, Lz7/p;->b()Z

    .line 213
    .line 214
    .line 215
    move-result v0

    .line 216
    iput-boolean v0, p0, Lcom/yunpan/appmanage/util/w;->l0:Z
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_7

    .line 217
    .line 218
    goto :goto_3

    .line 219
    :catch_7
    iput-boolean v1, p0, Lcom/yunpan/appmanage/util/w;->l0:Z

    .line 220
    .line 221
    :goto_3
    const-string v0, "mFile_ico"

    .line 222
    .line 223
    const/4 v2, 0x1

    .line 224
    :try_start_8
    iget-object v3, p0, Lcom/yunpan/appmanage/util/w;->i:Lz7/s;

    .line 225
    .line 226
    invoke-virtual {v3, v0}, Lz7/s;->o(Ljava/lang/String;)Lz7/p;

    .line 227
    .line 228
    .line 229
    move-result-object v3

    .line 230
    if-nez v3, :cond_7

    .line 231
    .line 232
    iget-object v3, p0, Lcom/yunpan/appmanage/util/w;->i:Lz7/s;

    .line 233
    .line 234
    sget-object v4, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 235
    .line 236
    invoke-virtual {v3, v0, v4}, Lz7/s;->k(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 237
    .line 238
    .line 239
    :cond_7
    iget-object v3, p0, Lcom/yunpan/appmanage/util/w;->i:Lz7/s;

    .line 240
    .line 241
    invoke-virtual {v3, v0}, Lz7/s;->o(Ljava/lang/String;)Lz7/p;

    .line 242
    .line 243
    .line 244
    move-result-object v0

    .line 245
    invoke-virtual {v0}, Lz7/p;->b()Z

    .line 246
    .line 247
    .line 248
    move-result v0

    .line 249
    iput-boolean v0, p0, Lcom/yunpan/appmanage/util/w;->m0:Z
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_8

    .line 250
    .line 251
    goto :goto_4

    .line 252
    :catch_8
    iput-boolean v2, p0, Lcom/yunpan/appmanage/util/w;->m0:Z

    .line 253
    .line 254
    :goto_4
    const-string v0, "mFile_sort"

    .line 255
    .line 256
    :try_start_9
    iget-object v3, p0, Lcom/yunpan/appmanage/util/w;->i:Lz7/s;

    .line 257
    .line 258
    invoke-virtual {v3, v0}, Lz7/s;->o(Ljava/lang/String;)Lz7/p;

    .line 259
    .line 260
    .line 261
    move-result-object v3

    .line 262
    if-nez v3, :cond_8

    .line 263
    .line 264
    iget-object v3, p0, Lcom/yunpan/appmanage/util/w;->i:Lz7/s;

    .line 265
    .line 266
    sget-object v4, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 267
    .line 268
    invoke-virtual {v3, v0, v4}, Lz7/s;->k(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 269
    .line 270
    .line 271
    :cond_8
    iget-object v3, p0, Lcom/yunpan/appmanage/util/w;->i:Lz7/s;

    .line 272
    .line 273
    invoke-virtual {v3, v0}, Lz7/s;->o(Ljava/lang/String;)Lz7/p;

    .line 274
    .line 275
    .line 276
    move-result-object v0

    .line 277
    invoke-virtual {v0}, Lz7/p;->b()Z

    .line 278
    .line 279
    .line 280
    move-result v0

    .line 281
    iput-boolean v0, p0, Lcom/yunpan/appmanage/util/w;->n0:Z
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_9

    .line 282
    .line 283
    goto :goto_5

    .line 284
    :catch_9
    iput-boolean v2, p0, Lcom/yunpan/appmanage/util/w;->n0:Z

    .line 285
    .line 286
    :goto_5
    const-string v0, "mFile_copyMulti"

    .line 287
    .line 288
    :try_start_a
    iget-object v3, p0, Lcom/yunpan/appmanage/util/w;->i:Lz7/s;

    .line 289
    .line 290
    invoke-virtual {v3, v0}, Lz7/s;->o(Ljava/lang/String;)Lz7/p;

    .line 291
    .line 292
    .line 293
    move-result-object v3

    .line 294
    if-nez v3, :cond_9

    .line 295
    .line 296
    iget-object v3, p0, Lcom/yunpan/appmanage/util/w;->i:Lz7/s;

    .line 297
    .line 298
    sget-object v4, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 299
    .line 300
    invoke-virtual {v3, v0, v4}, Lz7/s;->k(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 301
    .line 302
    .line 303
    :cond_9
    iget-object v3, p0, Lcom/yunpan/appmanage/util/w;->i:Lz7/s;

    .line 304
    .line 305
    invoke-virtual {v3, v0}, Lz7/s;->o(Ljava/lang/String;)Lz7/p;

    .line 306
    .line 307
    .line 308
    move-result-object v0

    .line 309
    invoke-virtual {v0}, Lz7/p;->b()Z

    .line 310
    .line 311
    .line 312
    move-result v0

    .line 313
    iput-boolean v0, p0, Lcom/yunpan/appmanage/util/w;->o0:Z
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_a

    .line 314
    .line 315
    goto :goto_6

    .line 316
    :catch_a
    iput-boolean v1, p0, Lcom/yunpan/appmanage/util/w;->o0:Z

    .line 317
    .line 318
    :goto_6
    :try_start_b
    iget-object v0, p0, Lcom/yunpan/appmanage/util/w;->i:Lz7/s;

    .line 319
    .line 320
    const-string v1, "File_new_extract"

    .line 321
    .line 322
    invoke-virtual {v0, v1}, Lz7/s;->o(Ljava/lang/String;)Lz7/p;

    .line 323
    .line 324
    .line 325
    move-result-object v0

    .line 326
    invoke-virtual {v0}, Lz7/p;->b()Z

    .line 327
    .line 328
    .line 329
    move-result v0

    .line 330
    iput-boolean v0, p0, Lcom/yunpan/appmanage/util/w;->r0:Z
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_b

    .line 331
    .line 332
    :catch_b
    :try_start_c
    iget-object v0, p0, Lcom/yunpan/appmanage/util/w;->i:Lz7/s;

    .line 333
    .line 334
    const-string v1, "File_new_compression"

    .line 335
    .line 336
    invoke-virtual {v0, v1}, Lz7/s;->o(Ljava/lang/String;)Lz7/p;

    .line 337
    .line 338
    .line 339
    move-result-object v0

    .line 340
    invoke-virtual {v0}, Lz7/p;->b()Z

    .line 341
    .line 342
    .line 343
    move-result v0

    .line 344
    iput-boolean v0, p0, Lcom/yunpan/appmanage/util/w;->s0:Z
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_c} :catch_c

    .line 345
    .line 346
    :catch_c
    :try_start_d
    iget-object v0, p0, Lcom/yunpan/appmanage/util/w;->i:Lz7/s;

    .line 347
    .line 348
    const-string v1, "File_jni_mode"

    .line 349
    .line 350
    invoke-virtual {v0, v1}, Lz7/s;->o(Ljava/lang/String;)Lz7/p;

    .line 351
    .line 352
    .line 353
    move-result-object v0

    .line 354
    invoke-virtual {v0}, Lz7/p;->b()Z
    :try_end_d
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_d} :catch_d

    .line 355
    .line 356
    .line 357
    :catch_d
    :try_start_e
    iget-object v0, p0, Lcom/yunpan/appmanage/util/w;->i:Lz7/s;

    .line 358
    .line 359
    const-string v1, "File_not_scanning_usb"

    .line 360
    .line 361
    invoke-virtual {v0, v1}, Lz7/s;->o(Ljava/lang/String;)Lz7/p;

    .line 362
    .line 363
    .line 364
    move-result-object v0

    .line 365
    invoke-virtual {v0}, Lz7/p;->b()Z

    .line 366
    .line 367
    .line 368
    move-result v0

    .line 369
    iput-boolean v0, p0, Lcom/yunpan/appmanage/util/w;->q0:Z
    :try_end_e
    .catch Ljava/lang/Exception; {:try_start_e .. :try_end_e} :catch_e

    .line 370
    .line 371
    :catch_e
    :try_start_f
    iget-object v0, p0, Lcom/yunpan/appmanage/util/w;->i:Lz7/s;

    .line 372
    .line 373
    const-string v1, "mFile_search_sort"

    .line 374
    .line 375
    invoke-virtual {v0, v1}, Lz7/s;->o(Ljava/lang/String;)Lz7/p;

    .line 376
    .line 377
    .line 378
    move-result-object v0

    .line 379
    invoke-virtual {v0}, Lz7/p;->b()Z

    .line 380
    .line 381
    .line 382
    move-result v0

    .line 383
    iput-boolean v0, p0, Lcom/yunpan/appmanage/util/w;->t0:Z
    :try_end_f
    .catch Ljava/lang/Exception; {:try_start_f .. :try_end_f} :catch_f

    .line 384
    .line 385
    :catch_f
    :try_start_10
    iget-object v0, p0, Lcom/yunpan/appmanage/util/w;->i:Lz7/s;

    .line 386
    .line 387
    const-string v1, "File_search_including_hide_file"

    .line 388
    .line 389
    invoke-virtual {v0, v1}, Lz7/s;->o(Ljava/lang/String;)Lz7/p;

    .line 390
    .line 391
    .line 392
    move-result-object v0

    .line 393
    invoke-virtual {v0}, Lz7/p;->b()Z

    .line 394
    .line 395
    .line 396
    move-result v0

    .line 397
    iput-boolean v0, p0, Lcom/yunpan/appmanage/util/w;->u0:Z
    :try_end_10
    .catch Ljava/lang/Exception; {:try_start_10 .. :try_end_10} :catch_10

    .line 398
    .line 399
    :catch_10
    :try_start_11
    iget-object v0, p0, Lcom/yunpan/appmanage/util/w;->i:Lz7/s;

    .line 400
    .line 401
    const-string v1, "File_search_including_android_data"

    .line 402
    .line 403
    invoke-virtual {v0, v1}, Lz7/s;->o(Ljava/lang/String;)Lz7/p;

    .line 404
    .line 405
    .line 406
    move-result-object v0

    .line 407
    invoke-virtual {v0}, Lz7/p;->b()Z

    .line 408
    .line 409
    .line 410
    move-result v0

    .line 411
    iput-boolean v0, p0, Lcom/yunpan/appmanage/util/w;->v0:Z
    :try_end_11
    .catch Ljava/lang/Exception; {:try_start_11 .. :try_end_11} :catch_11

    .line 412
    .line 413
    :catch_11
    :try_start_12
    iget-object v0, p0, Lcom/yunpan/appmanage/util/w;->i:Lz7/s;

    .line 414
    .line 415
    const-string v1, "File_search_image_filtration"

    .line 416
    .line 417
    invoke-virtual {v0, v1}, Lz7/s;->o(Ljava/lang/String;)Lz7/p;

    .line 418
    .line 419
    .line 420
    move-result-object v0

    .line 421
    invoke-virtual {v0}, Lz7/p;->b()Z

    .line 422
    .line 423
    .line 424
    move-result v0

    .line 425
    iput-boolean v0, p0, Lcom/yunpan/appmanage/util/w;->w0:Z
    :try_end_12
    .catch Ljava/lang/Exception; {:try_start_12 .. :try_end_12} :catch_12

    .line 426
    .line 427
    :catch_12
    const-string v0, "mFile_search_usb"

    .line 428
    .line 429
    :try_start_13
    iget-object v1, p0, Lcom/yunpan/appmanage/util/w;->i:Lz7/s;

    .line 430
    .line 431
    invoke-virtual {v1, v0}, Lz7/s;->o(Ljava/lang/String;)Lz7/p;

    .line 432
    .line 433
    .line 434
    move-result-object v1

    .line 435
    if-nez v1, :cond_a

    .line 436
    .line 437
    iget-object v1, p0, Lcom/yunpan/appmanage/util/w;->i:Lz7/s;

    .line 438
    .line 439
    sget-object v3, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 440
    .line 441
    invoke-virtual {v1, v0, v3}, Lz7/s;->k(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 442
    .line 443
    .line 444
    :cond_a
    iget-object v1, p0, Lcom/yunpan/appmanage/util/w;->i:Lz7/s;

    .line 445
    .line 446
    invoke-virtual {v1, v0}, Lz7/s;->o(Ljava/lang/String;)Lz7/p;

    .line 447
    .line 448
    .line 449
    move-result-object v0

    .line 450
    invoke-virtual {v0}, Lz7/p;->b()Z

    .line 451
    .line 452
    .line 453
    move-result v0

    .line 454
    iput-boolean v0, p0, Lcom/yunpan/appmanage/util/w;->x0:Z
    :try_end_13
    .catch Ljava/lang/Exception; {:try_start_13 .. :try_end_13} :catch_13

    .line 455
    .line 456
    goto :goto_7

    .line 457
    :catch_13
    iput-boolean v2, p0, Lcom/yunpan/appmanage/util/w;->x0:Z

    .line 458
    .line 459
    :goto_7
    const-string v0, "mFileType_apk"

    .line 460
    .line 461
    :try_start_14
    iget-object v1, p0, Lcom/yunpan/appmanage/util/w;->i:Lz7/s;

    .line 462
    .line 463
    invoke-virtual {v1, v0}, Lz7/s;->o(Ljava/lang/String;)Lz7/p;

    .line 464
    .line 465
    .line 466
    move-result-object v1

    .line 467
    if-nez v1, :cond_b

    .line 468
    .line 469
    iget-object v1, p0, Lcom/yunpan/appmanage/util/w;->i:Lz7/s;

    .line 470
    .line 471
    iget-object v2, p0, Lcom/yunpan/appmanage/util/w;->y0:Ljava/lang/String;

    .line 472
    .line 473
    invoke-virtual {v1, v0, v2}, Lz7/s;->m(Ljava/lang/String;Ljava/lang/String;)V

    .line 474
    .line 475
    .line 476
    :cond_b
    iget-object v1, p0, Lcom/yunpan/appmanage/util/w;->i:Lz7/s;

    .line 477
    .line 478
    invoke-virtual {v1, v0}, Lz7/s;->o(Ljava/lang/String;)Lz7/p;

    .line 479
    .line 480
    .line 481
    move-result-object v0

    .line 482
    invoke-virtual {v0}, Lz7/p;->i()Ljava/lang/String;

    .line 483
    .line 484
    .line 485
    move-result-object v0

    .line 486
    iput-object v0, p0, Lcom/yunpan/appmanage/util/w;->y0:Ljava/lang/String;
    :try_end_14
    .catch Ljava/lang/Exception; {:try_start_14 .. :try_end_14} :catch_14

    .line 487
    .line 488
    :catch_14
    const-string v0, "mFileType_image"

    .line 489
    .line 490
    :try_start_15
    iget-object v1, p0, Lcom/yunpan/appmanage/util/w;->i:Lz7/s;

    .line 491
    .line 492
    invoke-virtual {v1, v0}, Lz7/s;->o(Ljava/lang/String;)Lz7/p;

    .line 493
    .line 494
    .line 495
    move-result-object v1

    .line 496
    if-nez v1, :cond_c

    .line 497
    .line 498
    iget-object v1, p0, Lcom/yunpan/appmanage/util/w;->i:Lz7/s;

    .line 499
    .line 500
    iget-object v2, p0, Lcom/yunpan/appmanage/util/w;->z0:Ljava/lang/String;

    .line 501
    .line 502
    invoke-virtual {v1, v0, v2}, Lz7/s;->m(Ljava/lang/String;Ljava/lang/String;)V

    .line 503
    .line 504
    .line 505
    :cond_c
    iget-object v1, p0, Lcom/yunpan/appmanage/util/w;->i:Lz7/s;

    .line 506
    .line 507
    invoke-virtual {v1, v0}, Lz7/s;->o(Ljava/lang/String;)Lz7/p;

    .line 508
    .line 509
    .line 510
    move-result-object v0

    .line 511
    invoke-virtual {v0}, Lz7/p;->i()Ljava/lang/String;

    .line 512
    .line 513
    .line 514
    move-result-object v0

    .line 515
    iput-object v0, p0, Lcom/yunpan/appmanage/util/w;->z0:Ljava/lang/String;
    :try_end_15
    .catch Ljava/lang/Exception; {:try_start_15 .. :try_end_15} :catch_15

    .line 516
    .line 517
    :catch_15
    const-string v0, "mFileType_txt"

    .line 518
    .line 519
    :try_start_16
    iget-object v1, p0, Lcom/yunpan/appmanage/util/w;->i:Lz7/s;

    .line 520
    .line 521
    invoke-virtual {v1, v0}, Lz7/s;->o(Ljava/lang/String;)Lz7/p;

    .line 522
    .line 523
    .line 524
    move-result-object v1

    .line 525
    if-nez v1, :cond_d

    .line 526
    .line 527
    iget-object v1, p0, Lcom/yunpan/appmanage/util/w;->i:Lz7/s;

    .line 528
    .line 529
    iget-object v2, p0, Lcom/yunpan/appmanage/util/w;->C0:Ljava/lang/String;

    .line 530
    .line 531
    invoke-virtual {v1, v0, v2}, Lz7/s;->m(Ljava/lang/String;Ljava/lang/String;)V

    .line 532
    .line 533
    .line 534
    :cond_d
    iget-object v1, p0, Lcom/yunpan/appmanage/util/w;->i:Lz7/s;

    .line 535
    .line 536
    invoke-virtual {v1, v0}, Lz7/s;->o(Ljava/lang/String;)Lz7/p;

    .line 537
    .line 538
    .line 539
    move-result-object v0

    .line 540
    invoke-virtual {v0}, Lz7/p;->i()Ljava/lang/String;

    .line 541
    .line 542
    .line 543
    move-result-object v0

    .line 544
    iput-object v0, p0, Lcom/yunpan/appmanage/util/w;->C0:Ljava/lang/String;
    :try_end_16
    .catch Ljava/lang/Exception; {:try_start_16 .. :try_end_16} :catch_16

    .line 545
    .line 546
    :catch_16
    const-string v0, "mFileType_music"

    .line 547
    .line 548
    :try_start_17
    iget-object v1, p0, Lcom/yunpan/appmanage/util/w;->i:Lz7/s;

    .line 549
    .line 550
    invoke-virtual {v1, v0}, Lz7/s;->o(Ljava/lang/String;)Lz7/p;

    .line 551
    .line 552
    .line 553
    move-result-object v1

    .line 554
    if-nez v1, :cond_e

    .line 555
    .line 556
    iget-object v1, p0, Lcom/yunpan/appmanage/util/w;->i:Lz7/s;

    .line 557
    .line 558
    iget-object v2, p0, Lcom/yunpan/appmanage/util/w;->B0:Ljava/lang/String;

    .line 559
    .line 560
    invoke-virtual {v1, v0, v2}, Lz7/s;->m(Ljava/lang/String;Ljava/lang/String;)V

    .line 561
    .line 562
    .line 563
    :cond_e
    iget-object v1, p0, Lcom/yunpan/appmanage/util/w;->i:Lz7/s;

    .line 564
    .line 565
    invoke-virtual {v1, v0}, Lz7/s;->o(Ljava/lang/String;)Lz7/p;

    .line 566
    .line 567
    .line 568
    move-result-object v0

    .line 569
    invoke-virtual {v0}, Lz7/p;->i()Ljava/lang/String;

    .line 570
    .line 571
    .line 572
    move-result-object v0

    .line 573
    iput-object v0, p0, Lcom/yunpan/appmanage/util/w;->B0:Ljava/lang/String;
    :try_end_17
    .catch Ljava/lang/Exception; {:try_start_17 .. :try_end_17} :catch_17

    .line 574
    .line 575
    :catch_17
    const-string v0, "mFileType_video"

    .line 576
    .line 577
    :try_start_18
    iget-object v1, p0, Lcom/yunpan/appmanage/util/w;->i:Lz7/s;

    .line 578
    .line 579
    invoke-virtual {v1, v0}, Lz7/s;->o(Ljava/lang/String;)Lz7/p;

    .line 580
    .line 581
    .line 582
    move-result-object v1

    .line 583
    if-nez v1, :cond_f

    .line 584
    .line 585
    iget-object v1, p0, Lcom/yunpan/appmanage/util/w;->i:Lz7/s;

    .line 586
    .line 587
    iget-object v2, p0, Lcom/yunpan/appmanage/util/w;->A0:Ljava/lang/String;

    .line 588
    .line 589
    invoke-virtual {v1, v0, v2}, Lz7/s;->m(Ljava/lang/String;Ljava/lang/String;)V

    .line 590
    .line 591
    .line 592
    :cond_f
    iget-object v1, p0, Lcom/yunpan/appmanage/util/w;->i:Lz7/s;

    .line 593
    .line 594
    invoke-virtual {v1, v0}, Lz7/s;->o(Ljava/lang/String;)Lz7/p;

    .line 595
    .line 596
    .line 597
    move-result-object v0

    .line 598
    invoke-virtual {v0}, Lz7/p;->i()Ljava/lang/String;

    .line 599
    .line 600
    .line 601
    move-result-object v0

    .line 602
    iput-object v0, p0, Lcom/yunpan/appmanage/util/w;->A0:Ljava/lang/String;
    :try_end_18
    .catch Ljava/lang/Exception; {:try_start_18 .. :try_end_18} :catch_18

    .line 603
    .line 604
    :catch_18
    const-string v0, "mFileType_zip"

    .line 605
    .line 606
    :try_start_19
    iget-object v1, p0, Lcom/yunpan/appmanage/util/w;->i:Lz7/s;

    .line 607
    .line 608
    invoke-virtual {v1, v0}, Lz7/s;->o(Ljava/lang/String;)Lz7/p;

    .line 609
    .line 610
    .line 611
    move-result-object v1

    .line 612
    if-nez v1, :cond_10

    .line 613
    .line 614
    iget-object v1, p0, Lcom/yunpan/appmanage/util/w;->i:Lz7/s;

    .line 615
    .line 616
    iget-object v2, p0, Lcom/yunpan/appmanage/util/w;->D0:Ljava/lang/String;

    .line 617
    .line 618
    invoke-virtual {v1, v0, v2}, Lz7/s;->m(Ljava/lang/String;Ljava/lang/String;)V

    .line 619
    .line 620
    .line 621
    :cond_10
    iget-object v1, p0, Lcom/yunpan/appmanage/util/w;->i:Lz7/s;

    .line 622
    .line 623
    invoke-virtual {v1, v0}, Lz7/s;->o(Ljava/lang/String;)Lz7/p;

    .line 624
    .line 625
    .line 626
    move-result-object v0

    .line 627
    invoke-virtual {v0}, Lz7/p;->i()Ljava/lang/String;

    .line 628
    .line 629
    .line 630
    move-result-object v0

    .line 631
    iput-object v0, p0, Lcom/yunpan/appmanage/util/w;->D0:Ljava/lang/String;
    :try_end_19
    .catch Ljava/lang/Exception; {:try_start_19 .. :try_end_19} :catch_19

    .line 632
    .line 633
    :catch_19
    :try_start_1a
    iget-object v0, p0, Lcom/yunpan/appmanage/util/w;->i:Lz7/s;

    .line 634
    .line 635
    const-string v1, "mFileType_wp_apk"

    .line 636
    .line 637
    invoke-virtual {v0, v1}, Lz7/s;->o(Ljava/lang/String;)Lz7/p;

    .line 638
    .line 639
    .line 640
    move-result-object v0

    .line 641
    invoke-virtual {v0}, Lz7/p;->i()Ljava/lang/String;

    .line 642
    .line 643
    .line 644
    move-result-object v0

    .line 645
    iput-object v0, p0, Lcom/yunpan/appmanage/util/w;->E0:Ljava/lang/String;
    :try_end_1a
    .catch Ljava/lang/Exception; {:try_start_1a .. :try_end_1a} :catch_1a

    .line 646
    .line 647
    :catch_1a
    iget-object v0, p0, Lcom/yunpan/appmanage/util/w;->F0:Ljava/util/HashSet;

    .line 648
    .line 649
    iget-object v1, p0, Lcom/yunpan/appmanage/util/w;->E0:Ljava/lang/String;

    .line 650
    .line 651
    const-string v2, "\\|"

    .line 652
    .line 653
    invoke-virtual {v1, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    .line 654
    .line 655
    .line 656
    move-result-object v1

    .line 657
    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    .line 658
    .line 659
    .line 660
    move-result-object v1

    .line 661
    invoke-interface {v0, v1}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 662
    .line 663
    .line 664
    return-void
.end method

.method public final l()V
    .locals 4

    .line 1
    new-instance v0, Ljava/io/File;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/yunpan/appmanage/util/w;->b:Landroid/content/ContextWrapper;

    .line 4
    .line 5
    invoke-virtual {v1}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    .line 6
    .line 7
    .line 8
    move-result-object v1

    .line 9
    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    .line 10
    .line 11
    .line 12
    move-result-object v1

    .line 13
    const-string v2, "config.json"

    .line 14
    .line 15
    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 16
    .line 17
    .line 18
    iput-object v0, p0, Lcom/yunpan/appmanage/util/w;->h:Ljava/io/File;

    .line 19
    .line 20
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    .line 21
    .line 22
    .line 23
    move-result v0

    .line 24
    if-nez v0, :cond_0

    .line 25
    .line 26
    :try_start_0
    iget-object v0, p0, Lcom/yunpan/appmanage/util/w;->h:Ljava/io/File;

    .line 27
    .line 28
    invoke-virtual {v0}, Ljava/io/File;->getParentFile()Ljava/io/File;

    .line 29
    .line 30
    .line 31
    move-result-object v0

    .line 32
    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    .line 33
    .line 34
    .line 35
    iget-object v0, p0, Lcom/yunpan/appmanage/util/w;->h:Ljava/io/File;

    .line 36
    .line 37
    invoke-virtual {v0}, Ljava/io/File;->createNewFile()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 38
    .line 39
    .line 40
    goto :goto_0

    .line 41
    :catch_0
    move-exception v0

    .line 42
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 43
    .line 44
    .line 45
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/yunpan/appmanage/util/w;->h:Ljava/io/File;

    .line 46
    .line 47
    invoke-virtual {v0}, Ljava/io/File;->lastModified()J

    .line 48
    .line 49
    .line 50
    new-instance v0, Ljava/lang/StringBuilder;

    .line 51
    .line 52
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 53
    .line 54
    .line 55
    :try_start_1
    new-instance v1, Ljava/io/BufferedReader;

    .line 56
    .line 57
    new-instance v2, Ljava/io/FileReader;

    .line 58
    .line 59
    iget-object v3, p0, Lcom/yunpan/appmanage/util/w;->h:Ljava/io/File;

    .line 60
    .line 61
    invoke-direct {v2, v3}, Ljava/io/FileReader;-><init>(Ljava/io/File;)V

    .line 62
    .line 63
    .line 64
    invoke-direct {v1, v2}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 65
    .line 66
    .line 67
    :goto_1
    invoke-virtual {v1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    .line 68
    .line 69
    .line 70
    move-result-object v2

    .line 71
    if-eqz v2, :cond_1

    .line 72
    .line 73
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 74
    .line 75
    .line 76
    const-string v2, "\n"

    .line 77
    .line 78
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 79
    .line 80
    .line 81
    goto :goto_1

    .line 82
    :catch_1
    move-exception v1

    .line 83
    goto :goto_2

    .line 84
    :catch_2
    move-exception v1

    .line 85
    goto :goto_3

    .line 86
    :cond_1
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    .line 87
    .line 88
    .line 89
    goto :goto_4

    .line 90
    :goto_2
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 91
    .line 92
    .line 93
    goto :goto_4

    .line 94
    :goto_3
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 95
    .line 96
    .line 97
    :goto_4
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 98
    .line 99
    .line 100
    move-result-object v0

    .line 101
    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    .line 102
    .line 103
    .line 104
    move-result-object v0

    .line 105
    :try_start_2
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    .line 106
    .line 107
    .line 108
    move-result v1

    .line 109
    if-eqz v1, :cond_2

    .line 110
    .line 111
    new-instance v0, Lz7/s;

    .line 112
    .line 113
    invoke-direct {v0}, Lz7/s;-><init>()V

    .line 114
    .line 115
    .line 116
    iput-object v0, p0, Lcom/yunpan/appmanage/util/w;->i:Lz7/s;

    .line 117
    .line 118
    goto :goto_5

    .line 119
    :cond_2
    invoke-static {v0}, Ld/b;->b0(Ljava/lang/String;)Lz7/p;

    .line 120
    .line 121
    .line 122
    move-result-object v0

    .line 123
    invoke-virtual {v0}, Lz7/p;->g()Lz7/s;

    .line 124
    .line 125
    .line 126
    move-result-object v0

    .line 127
    iput-object v0, p0, Lcom/yunpan/appmanage/util/w;->i:Lz7/s;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_3

    .line 128
    .line 129
    :catch_3
    :goto_5
    return-void
.end method

.method public final m()V
    .locals 2

    .line 1
    :try_start_0
    new-instance v0, Ljava/io/FileWriter;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/yunpan/appmanage/util/w;->h:Ljava/io/File;

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
    iget-object v0, p0, Lcom/yunpan/appmanage/util/w;->i:Lz7/s;

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

.method public final n(I)V
    .locals 2

    .line 1
    iput p1, p0, Lcom/yunpan/appmanage/util/w;->k:I

    .line 2
    .line 3
    const-string v0, "mAdbPort"

    .line 4
    .line 5
    :try_start_0
    iget-object v1, p0, Lcom/yunpan/appmanage/util/w;->i:Lz7/s;

    .line 6
    .line 7
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 8
    .line 9
    .line 10
    move-result-object p1

    .line 11
    invoke-virtual {v1, v0, p1}, Lz7/s;->l(Ljava/lang/String;Ljava/lang/Number;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 12
    .line 13
    .line 14
    :catch_0
    invoke-virtual {p0}, Lcom/yunpan/appmanage/util/w;->m()V

    .line 15
    .line 16
    .line 17
    return-void
.end method

.method public final o(I)V
    .locals 2

    .line 1
    iput p1, p0, Lcom/yunpan/appmanage/util/w;->P:I

    .line 2
    .line 3
    :try_start_0
    iget-object v0, p0, Lcom/yunpan/appmanage/util/w;->i:Lz7/s;

    .line 4
    .line 5
    const-string v1, "Adb_remount_mode"

    .line 6
    .line 7
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

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
    invoke-virtual {p0}, Lcom/yunpan/appmanage/util/w;->m()V

    .line 15
    .line 16
    .line 17
    return-void
.end method

.method public final p(I)V
    .locals 2

    .line 1
    iput p1, p0, Lcom/yunpan/appmanage/util/w;->O:I

    .line 2
    .line 3
    :try_start_0
    iget-object v0, p0, Lcom/yunpan/appmanage/util/w;->i:Lz7/s;

    .line 4
    .line 5
    const-string v1, "Adb_root_mode"

    .line 6
    .line 7
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

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
    invoke-virtual {p0}, Lcom/yunpan/appmanage/util/w;->m()V

    .line 15
    .line 16
    .line 17
    return-void
.end method

.method public final q(I)V
    .locals 2

    .line 1
    iput p1, p0, Lcom/yunpan/appmanage/util/w;->i0:I

    .line 2
    .line 3
    :try_start_0
    iget-object v0, p0, Lcom/yunpan/appmanage/util/w;->i:Lz7/s;

    .line 4
    .line 5
    const-string v1, "AppsSortMode"

    .line 6
    .line 7
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

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
    invoke-virtual {p0}, Lcom/yunpan/appmanage/util/w;->m()V

    .line 15
    .line 16
    .line 17
    return-void
.end method

.method public final r(Z)V
    .locals 2

    .line 1
    iput-boolean p1, p0, Lcom/yunpan/appmanage/util/w;->B:Z

    .line 2
    .line 3
    :try_start_0
    iget-object v0, p0, Lcom/yunpan/appmanage/util/w;->i:Lz7/s;

    .line 4
    .line 5
    const-string v1, "Auto_Open_Wifi_Adb"

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
    invoke-virtual {p0}, Lcom/yunpan/appmanage/util/w;->m()V

    .line 15
    .line 16
    .line 17
    return-void
.end method

.method public final s(Z)V
    .locals 2

    .line 1
    iput-boolean p1, p0, Lcom/yunpan/appmanage/util/w;->y:Z

    .line 2
    .line 3
    const-string v0, "mNoAdbInstall"

    .line 4
    .line 5
    :try_start_0
    iget-object v1, p0, Lcom/yunpan/appmanage/util/w;->i:Lz7/s;

    .line 6
    .line 7
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 8
    .line 9
    .line 10
    move-result-object p1

    .line 11
    invoke-virtual {v1, v0, p1}, Lz7/s;->k(Ljava/lang/String;Ljava/lang/Boolean;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 12
    .line 13
    .line 14
    :catch_0
    invoke-virtual {p0}, Lcom/yunpan/appmanage/util/w;->m()V

    .line 15
    .line 16
    .line 17
    return-void
.end method

.method public final t(I)V
    .locals 2

    .line 1
    iput p1, p0, Lcom/yunpan/appmanage/util/w;->j0:I

    .line 2
    .line 3
    :try_start_0
    iget-object v0, p0, Lcom/yunpan/appmanage/util/w;->i:Lz7/s;

    .line 4
    .line 5
    const-string v1, "mFile_menu_gravity"

    .line 6
    .line 7
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

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
    invoke-virtual {p0}, Lcom/yunpan/appmanage/util/w;->m()V

    .line 15
    .line 16
    .line 17
    return-void
.end method

.method public final u(Z)V
    .locals 2

    .line 1
    iput-boolean p1, p0, Lcom/yunpan/appmanage/util/w;->s0:Z

    .line 2
    .line 3
    :try_start_0
    iget-object v0, p0, Lcom/yunpan/appmanage/util/w;->i:Lz7/s;

    .line 4
    .line 5
    const-string v1, "File_new_compression"

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
    invoke-virtual {p0}, Lcom/yunpan/appmanage/util/w;->m()V

    .line 15
    .line 16
    .line 17
    return-void
.end method

.method public final v(Z)V
    .locals 2

    .line 1
    iput-boolean p1, p0, Lcom/yunpan/appmanage/util/w;->r0:Z

    .line 2
    .line 3
    :try_start_0
    iget-object v0, p0, Lcom/yunpan/appmanage/util/w;->i:Lz7/s;

    .line 4
    .line 5
    const-string v1, "File_new_extract"

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
    invoke-virtual {p0}, Lcom/yunpan/appmanage/util/w;->m()V

    .line 15
    .line 16
    .line 17
    return-void
.end method

.method public final w(Z)V
    .locals 2

    .line 1
    iput-boolean p1, p0, Lcom/yunpan/appmanage/util/w;->G0:Z

    .line 2
    .line 3
    const-string v0, "image_auto"

    .line 4
    .line 5
    :try_start_0
    iget-object v1, p0, Lcom/yunpan/appmanage/util/w;->i:Lz7/s;

    .line 6
    .line 7
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 8
    .line 9
    .line 10
    move-result-object p1

    .line 11
    invoke-virtual {v1, v0, p1}, Lz7/s;->k(Ljava/lang/String;Ljava/lang/Boolean;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 12
    .line 13
    .line 14
    :catch_0
    invoke-virtual {p0}, Lcom/yunpan/appmanage/util/w;->m()V

    .line 15
    .line 16
    .line 17
    return-void
.end method

.method public final x(I)V
    .locals 2

    .line 1
    iput p1, p0, Lcom/yunpan/appmanage/util/w;->H0:I

    .line 2
    .line 3
    const-string v0, "image_time"

    .line 4
    .line 5
    :try_start_0
    iget-object v1, p0, Lcom/yunpan/appmanage/util/w;->i:Lz7/s;

    .line 6
    .line 7
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 8
    .line 9
    .line 10
    move-result-object p1

    .line 11
    invoke-virtual {v1, v0, p1}, Lz7/s;->l(Ljava/lang/String;Ljava/lang/Number;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 12
    .line 13
    .line 14
    :catch_0
    invoke-virtual {p0}, Lcom/yunpan/appmanage/util/w;->m()V

    .line 15
    .line 16
    .line 17
    return-void
.end method

.method public final y(I)V
    .locals 2

    .line 1
    iput p1, p0, Lcom/yunpan/appmanage/util/w;->c0:I

    .line 2
    .line 3
    const-string v0, "InstallerMode"

    .line 4
    .line 5
    :try_start_0
    iget-object v1, p0, Lcom/yunpan/appmanage/util/w;->i:Lz7/s;

    .line 6
    .line 7
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 8
    .line 9
    .line 10
    move-result-object p1

    .line 11
    invoke-virtual {v1, v0, p1}, Lz7/s;->l(Ljava/lang/String;Ljava/lang/Number;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 12
    .line 13
    .line 14
    :catch_0
    invoke-virtual {p0}, Lcom/yunpan/appmanage/util/w;->m()V

    .line 15
    .line 16
    .line 17
    return-void
.end method

.method public final z(I)V
    .locals 2

    .line 1
    iput p1, p0, Lcom/yunpan/appmanage/util/w;->V:I

    .line 2
    .line 3
    :try_start_0
    iget-object v0, p0, Lcom/yunpan/appmanage/util/w;->i:Lz7/s;

    .line 4
    .line 5
    const-string v1, "IsJiliE02"

    .line 6
    .line 7
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

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
    invoke-virtual {p0}, Lcom/yunpan/appmanage/util/w;->m()V

    .line 15
    .line 16
    .line 17
    return-void
.end method
