.class public final Lcom/yunpan/appmanage/util/k;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final u0:Ljava/text/DecimalFormat;


# instance fields
.field public A:Lx9/n5;

.field public B:Z

.field public C:Z

.field public D:Z

.field public E:Lcom/yunpan/appmanage/httpserver/RemoteServer;

.field public F:Z

.field public G:J

.field public H:Ljava/lang/String;

.field public I:Lcom/yunpan/appmanage/bean/WpVideoStreamBean;

.field public J:Ljava/lang/String;

.field public K:Z

.field public L:Z

.field public M:Ljava/lang/String;

.field public N:Ljava/lang/String;

.field public O:Ljava/lang/String;

.field public P:Ljava/lang/String;

.field public Q:Ljava/lang/String;

.field public R:I

.field public S:I

.field public T:I

.field public U:Z

.field public V:Z

.field public W:Ljava/lang/String;

.field public X:Ljava/lang/String;

.field public Y:Ljava/lang/String;

.field public Z:Ljava/lang/String;

.field public a:Landroid/content/ContextWrapper;

.field public a0:Ljava/lang/String;

.field public b:Landroid/content/pm/PackageManager;

.field public final b0:Ljava/text/SimpleDateFormat;

.field public c:Ljava/lang/String;

.field public c0:Z

.field public d:Ljava/lang/String;

.field public d0:Z

.field public e:Ljava/lang/String;

.field public e0:Z

.field public f:Z

.field public final f0:Ljava/util/concurrent/ExecutorService;

.field public g:Z

.field public final g0:Ljava/util/concurrent/ExecutorService;

.field public h:Z

.field public final h0:Ljava/util/concurrent/ExecutorService;

.field public i:Lw5/e;

.field public i0:Ljava/lang/String;

.field public j:Z

.field public j0:I

.field public final k:Z

.field public k0:J

.field public l:Z

.field public l0:Ljava/util/ArrayList;

.field public m:Z

.field public m0:Ljava/util/ArrayList;

.field public n:I

.field public n0:Ljava/util/ArrayList;

.field public o:Ljava/lang/String;

.field public o0:Ljava/util/ArrayList;

.field public p:Ljava/lang/String;

.field public p0:Ljava/util/ArrayList;

.field public q:Lcom/yunpan/appmanage/bean/SignatureBean;

.field public q0:Ljava/util/ArrayList;

.field public r:Ljava/lang/String;

.field public r0:Lcom/yunpan/appmanage/httpserver/HttpMdns;

.field public s:Ljava/lang/String;

.field public s0:Lcom/yunpan/appmanage/httpserver/NsdHelper;

.field public t:Ljava/lang/String;

.field public t0:Landroid/app/AppOpsManager;

.field public u:Ljava/util/HashMap;

.field public v:Ljava/util/HashSet;

.field public w:Z

.field public x:Ljava/lang/String;

.field public y:Lcom/yunpan/appmanage/bean/ImageData;

.field public z:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Ljava/text/DecimalFormat;

    .line 2
    .line 3
    const-string v1, "0.00"

    .line 4
    .line 5
    invoke-direct {v0, v1}, Ljava/text/DecimalFormat;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    sput-object v0, Lcom/yunpan/appmanage/util/k;->u0:Ljava/text/DecimalFormat;

    .line 9
    .line 10
    return-void
.end method

.method public constructor <init>()V
    .locals 8

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x0

    .line 5
    iput-boolean v0, p0, Lcom/yunpan/appmanage/util/k;->f:Z

    .line 6
    .line 7
    const/4 v1, 0x1

    .line 8
    iput-boolean v1, p0, Lcom/yunpan/appmanage/util/k;->g:Z

    .line 9
    .line 10
    iput-boolean v0, p0, Lcom/yunpan/appmanage/util/k;->h:Z

    .line 11
    .line 12
    iput-boolean v0, p0, Lcom/yunpan/appmanage/util/k;->j:Z

    .line 13
    .line 14
    invoke-static {}, Landroid/os/Process;->myUid()I

    .line 15
    .line 16
    .line 17
    move-result v2

    .line 18
    const v3, 0x186a0

    .line 19
    .line 20
    .line 21
    rem-int/2addr v2, v3

    .line 22
    const/16 v3, 0x3e8

    .line 23
    .line 24
    if-ne v2, v3, :cond_0

    .line 25
    .line 26
    const/4 v2, 0x1

    .line 27
    goto :goto_0

    .line 28
    :cond_0
    const/4 v2, 0x0

    .line 29
    :goto_0
    iput-boolean v2, p0, Lcom/yunpan/appmanage/util/k;->k:Z

    .line 30
    .line 31
    iput-boolean v0, p0, Lcom/yunpan/appmanage/util/k;->l:Z

    .line 32
    .line 33
    iput-boolean v0, p0, Lcom/yunpan/appmanage/util/k;->m:Z

    .line 34
    .line 35
    iput v0, p0, Lcom/yunpan/appmanage/util/k;->n:I

    .line 36
    .line 37
    const-string v2, ""

    .line 38
    .line 39
    iput-object v2, p0, Lcom/yunpan/appmanage/util/k;->o:Ljava/lang/String;

    .line 40
    .line 41
    iput-object v2, p0, Lcom/yunpan/appmanage/util/k;->p:Ljava/lang/String;

    .line 42
    .line 43
    const/4 v3, 0x0

    .line 44
    iput-object v3, p0, Lcom/yunpan/appmanage/util/k;->q:Lcom/yunpan/appmanage/bean/SignatureBean;

    .line 45
    .line 46
    iput-object v2, p0, Lcom/yunpan/appmanage/util/k;->r:Ljava/lang/String;

    .line 47
    .line 48
    iput-object v2, p0, Lcom/yunpan/appmanage/util/k;->s:Ljava/lang/String;

    .line 49
    .line 50
    iput-object v2, p0, Lcom/yunpan/appmanage/util/k;->t:Ljava/lang/String;

    .line 51
    .line 52
    new-instance v4, Ljava/util/HashMap;

    .line 53
    .line 54
    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    .line 55
    .line 56
    .line 57
    iput-object v4, p0, Lcom/yunpan/appmanage/util/k;->u:Ljava/util/HashMap;

    .line 58
    .line 59
    new-instance v4, Ljava/util/HashSet;

    .line 60
    .line 61
    invoke-direct {v4}, Ljava/util/HashSet;-><init>()V

    .line 62
    .line 63
    .line 64
    iput-object v4, p0, Lcom/yunpan/appmanage/util/k;->v:Ljava/util/HashSet;

    .line 65
    .line 66
    iput-boolean v0, p0, Lcom/yunpan/appmanage/util/k;->w:Z

    .line 67
    .line 68
    iput-object v3, p0, Lcom/yunpan/appmanage/util/k;->y:Lcom/yunpan/appmanage/bean/ImageData;

    .line 69
    .line 70
    iput-object v2, p0, Lcom/yunpan/appmanage/util/k;->z:Ljava/lang/String;

    .line 71
    .line 72
    iput-boolean v0, p0, Lcom/yunpan/appmanage/util/k;->B:Z

    .line 73
    .line 74
    sget v4, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 75
    .line 76
    const/16 v5, 0x17

    .line 77
    .line 78
    if-ge v4, v5, :cond_1

    .line 79
    .line 80
    const/4 v4, 0x1

    .line 81
    goto :goto_1

    .line 82
    :cond_1
    const/4 v4, 0x0

    .line 83
    :goto_1
    iput-boolean v4, p0, Lcom/yunpan/appmanage/util/k;->C:Z

    .line 84
    .line 85
    iput-boolean v0, p0, Lcom/yunpan/appmanage/util/k;->D:Z

    .line 86
    .line 87
    iput-object v3, p0, Lcom/yunpan/appmanage/util/k;->E:Lcom/yunpan/appmanage/httpserver/RemoteServer;

    .line 88
    .line 89
    iput-boolean v0, p0, Lcom/yunpan/appmanage/util/k;->F:Z

    .line 90
    .line 91
    const-wide/16 v4, 0x0

    .line 92
    .line 93
    iput-wide v4, p0, Lcom/yunpan/appmanage/util/k;->G:J

    .line 94
    .line 95
    iput-object v2, p0, Lcom/yunpan/appmanage/util/k;->H:Ljava/lang/String;

    .line 96
    .line 97
    iput-object v2, p0, Lcom/yunpan/appmanage/util/k;->J:Ljava/lang/String;

    .line 98
    .line 99
    iput-boolean v0, p0, Lcom/yunpan/appmanage/util/k;->K:Z

    .line 100
    .line 101
    iput-boolean v1, p0, Lcom/yunpan/appmanage/util/k;->L:Z

    .line 102
    .line 103
    iput-object v2, p0, Lcom/yunpan/appmanage/util/k;->M:Ljava/lang/String;

    .line 104
    .line 105
    iput-object v2, p0, Lcom/yunpan/appmanage/util/k;->N:Ljava/lang/String;

    .line 106
    .line 107
    iput-object v2, p0, Lcom/yunpan/appmanage/util/k;->O:Ljava/lang/String;

    .line 108
    .line 109
    iput-object v2, p0, Lcom/yunpan/appmanage/util/k;->P:Ljava/lang/String;

    .line 110
    .line 111
    iput-object v2, p0, Lcom/yunpan/appmanage/util/k;->Q:Ljava/lang/String;

    .line 112
    .line 113
    const/16 v6, 0x50

    .line 114
    .line 115
    iput v6, p0, Lcom/yunpan/appmanage/util/k;->R:I

    .line 116
    .line 117
    const/16 v6, 0xf0

    .line 118
    .line 119
    iput v6, p0, Lcom/yunpan/appmanage/util/k;->S:I

    .line 120
    .line 121
    const/16 v6, 0x87

    .line 122
    .line 123
    iput v6, p0, Lcom/yunpan/appmanage/util/k;->T:I

    .line 124
    .line 125
    iput-boolean v1, p0, Lcom/yunpan/appmanage/util/k;->U:Z

    .line 126
    .line 127
    iput-boolean v0, p0, Lcom/yunpan/appmanage/util/k;->V:Z

    .line 128
    .line 129
    const-string v6, "https://yun.123pan.cn"

    .line 130
    .line 131
    iput-object v6, p0, Lcom/yunpan/appmanage/util/k;->W:Ljava/lang/String;

    .line 132
    .line 133
    const-string v6, "https://api.123pan.cn"

    .line 134
    .line 135
    iput-object v6, p0, Lcom/yunpan/appmanage/util/k;->X:Ljava/lang/String;

    .line 136
    .line 137
    iput-object v2, p0, Lcom/yunpan/appmanage/util/k;->Y:Ljava/lang/String;

    .line 138
    .line 139
    iput-object v2, p0, Lcom/yunpan/appmanage/util/k;->Z:Ljava/lang/String;

    .line 140
    .line 141
    iput-object v2, p0, Lcom/yunpan/appmanage/util/k;->a0:Ljava/lang/String;

    .line 142
    .line 143
    new-instance v6, Ljava/text/SimpleDateFormat;

    .line 144
    .line 145
    const-string v7, "yyyy/MM/dd HH:mm"

    .line 146
    .line 147
    invoke-direct {v6, v7}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 148
    .line 149
    .line 150
    iput-object v6, p0, Lcom/yunpan/appmanage/util/k;->b0:Ljava/text/SimpleDateFormat;

    .line 151
    .line 152
    iput-boolean v0, p0, Lcom/yunpan/appmanage/util/k;->c0:Z

    .line 153
    .line 154
    iput-boolean v0, p0, Lcom/yunpan/appmanage/util/k;->d0:Z

    .line 155
    .line 156
    iput-boolean v0, p0, Lcom/yunpan/appmanage/util/k;->e0:Z

    .line 157
    .line 158
    invoke-static {v1}, Ljava/util/concurrent/Executors;->newFixedThreadPool(I)Ljava/util/concurrent/ExecutorService;

    .line 159
    .line 160
    .line 161
    move-result-object v0

    .line 162
    iput-object v0, p0, Lcom/yunpan/appmanage/util/k;->f0:Ljava/util/concurrent/ExecutorService;

    .line 163
    .line 164
    const/4 v0, 0x5

    .line 165
    invoke-static {v0}, Ljava/util/concurrent/Executors;->newFixedThreadPool(I)Ljava/util/concurrent/ExecutorService;

    .line 166
    .line 167
    .line 168
    move-result-object v0

    .line 169
    iput-object v0, p0, Lcom/yunpan/appmanage/util/k;->g0:Ljava/util/concurrent/ExecutorService;

    .line 170
    .line 171
    invoke-static {v1}, Ljava/util/concurrent/Executors;->newFixedThreadPool(I)Ljava/util/concurrent/ExecutorService;

    .line 172
    .line 173
    .line 174
    move-result-object v0

    .line 175
    iput-object v0, p0, Lcom/yunpan/appmanage/util/k;->h0:Ljava/util/concurrent/ExecutorService;

    .line 176
    .line 177
    iput-object v2, p0, Lcom/yunpan/appmanage/util/k;->i0:Ljava/lang/String;

    .line 178
    .line 179
    const/16 v0, 0x26aa

    .line 180
    .line 181
    iput v0, p0, Lcom/yunpan/appmanage/util/k;->j0:I

    .line 182
    .line 183
    iput-wide v4, p0, Lcom/yunpan/appmanage/util/k;->k0:J

    .line 184
    .line 185
    new-instance v0, Ljava/util/ArrayList;

    .line 186
    .line 187
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 188
    .line 189
    .line 190
    iput-object v0, p0, Lcom/yunpan/appmanage/util/k;->l0:Ljava/util/ArrayList;

    .line 191
    .line 192
    new-instance v0, Ljava/util/ArrayList;

    .line 193
    .line 194
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 195
    .line 196
    .line 197
    iput-object v0, p0, Lcom/yunpan/appmanage/util/k;->m0:Ljava/util/ArrayList;

    .line 198
    .line 199
    new-instance v0, Ljava/util/ArrayList;

    .line 200
    .line 201
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 202
    .line 203
    .line 204
    iput-object v0, p0, Lcom/yunpan/appmanage/util/k;->n0:Ljava/util/ArrayList;

    .line 205
    .line 206
    new-instance v0, Ljava/util/ArrayList;

    .line 207
    .line 208
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 209
    .line 210
    .line 211
    iput-object v0, p0, Lcom/yunpan/appmanage/util/k;->o0:Ljava/util/ArrayList;

    .line 212
    .line 213
    new-instance v0, Ljava/util/ArrayList;

    .line 214
    .line 215
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 216
    .line 217
    .line 218
    iput-object v0, p0, Lcom/yunpan/appmanage/util/k;->p0:Ljava/util/ArrayList;

    .line 219
    .line 220
    new-instance v0, Ljava/util/ArrayList;

    .line 221
    .line 222
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 223
    .line 224
    .line 225
    iput-object v0, p0, Lcom/yunpan/appmanage/util/k;->q0:Ljava/util/ArrayList;

    .line 226
    .line 227
    iput-object v3, p0, Lcom/yunpan/appmanage/util/k;->t0:Landroid/app/AppOpsManager;

    .line 228
    .line 229
    return-void
.end method

.method public static d(Landroid/content/Context;I)I
    .locals 0

    .line 1
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    invoke-virtual {p0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    .line 6
    .line 7
    .line 8
    move-result-object p0

    .line 9
    iget p0, p0, Landroid/util/DisplayMetrics;->density:F

    .line 10
    .line 11
    int-to-float p1, p1

    .line 12
    mul-float p1, p1, p0

    .line 13
    .line 14
    invoke-static {p1}, Ljava/lang/Math;->round(F)I

    .line 15
    .line 16
    .line 17
    move-result p0

    .line 18
    return p0
.end method

.method public static e(Ljava/io/File;)V
    .locals 3

    .line 1
    const/4 v0, 0x0

    .line 2
    :goto_0
    const/4 v1, 0x5

    .line 3
    if-ge v0, v1, :cond_0

    .line 4
    .line 5
    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    .line 6
    .line 7
    .line 8
    move-result v1

    .line 9
    if-eqz v1, :cond_0

    .line 10
    .line 11
    invoke-virtual {p0}, Ljava/io/File;->delete()Z

    .line 12
    .line 13
    .line 14
    const-wide/16 v1, 0x14d

    .line 15
    .line 16
    :try_start_0
    invoke-static {v1, v2}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 17
    .line 18
    .line 19
    :catch_0
    add-int/lit8 v0, v0, 0x1

    .line 20
    .line 21
    goto :goto_0

    .line 22
    :cond_0
    return-void
.end method

.method public static f()Lcom/yunpan/appmanage/util/k;
    .locals 1

    .line 1
    sget-object v0, Lcom/yunpan/appmanage/util/j;->a:Lcom/yunpan/appmanage/util/k;

    .line 2
    .line 3
    return-object v0
.end method

.method public static i(Ljava/lang/String;)Z
    .locals 3

    .line 1
    sget-object v0, Lfa/g0;->a:Lfa/h0;

    .line 2
    .line 3
    invoke-virtual {v0}, Lfa/h0;->d()Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    .line 8
    .line 9
    .line 10
    move-result v1

    .line 11
    const/4 v2, 0x1

    .line 12
    if-nez v1, :cond_0

    .line 13
    .line 14
    invoke-virtual {v0}, Lfa/h0;->d()Ljava/lang/String;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 19
    .line 20
    .line 21
    move-result v0

    .line 22
    if-eqz v0, :cond_0

    .line 23
    .line 24
    return v2

    .line 25
    :cond_0
    sget-object v0, Lcom/yunpan/appmanage/util/j;->a:Lcom/yunpan/appmanage/util/k;

    .line 26
    .line 27
    iget-object v1, v0, Lcom/yunpan/appmanage/util/k;->v:Ljava/util/HashSet;

    .line 28
    .line 29
    invoke-virtual {v1}, Ljava/util/HashSet;->isEmpty()Z

    .line 30
    .line 31
    .line 32
    move-result v1

    .line 33
    if-nez v1, :cond_2

    .line 34
    .line 35
    iget-object v0, v0, Lcom/yunpan/appmanage/util/k;->v:Ljava/util/HashSet;

    .line 36
    .line 37
    invoke-virtual {v0}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    .line 38
    .line 39
    .line 40
    move-result-object v0

    .line 41
    :cond_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 42
    .line 43
    .line 44
    move-result v1

    .line 45
    if-eqz v1, :cond_2

    .line 46
    .line 47
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 48
    .line 49
    .line 50
    move-result-object v1

    .line 51
    check-cast v1, Ljava/lang/String;

    .line 52
    .line 53
    invoke-virtual {p0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 54
    .line 55
    .line 56
    move-result v1

    .line 57
    if-eqz v1, :cond_1

    .line 58
    .line 59
    return v2

    .line 60
    :cond_2
    const/4 p0, 0x0

    .line 61
    return p0
.end method

.method public static j(Ljava/util/ArrayList;)V
    .locals 4

    .line 1
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x1

    .line 6
    sub-int/2addr v0, v1

    .line 7
    :goto_0
    if-ltz v0, :cond_2

    .line 8
    .line 9
    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 10
    .line 11
    .line 12
    move-result-object v2

    .line 13
    check-cast v2, Ljava/lang/String;

    .line 14
    .line 15
    const-string v3, "."

    .line 16
    .line 17
    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 18
    .line 19
    .line 20
    move-result v3

    .line 21
    if-eqz v3, :cond_0

    .line 22
    .line 23
    invoke-virtual {v2, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    .line 24
    .line 25
    .line 26
    move-result-object v3

    .line 27
    invoke-virtual {p0, v0, v3}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 28
    .line 29
    .line 30
    :cond_0
    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    .line 31
    .line 32
    .line 33
    move-result v2

    .line 34
    if-eqz v2, :cond_1

    .line 35
    .line 36
    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 37
    .line 38
    .line 39
    :cond_1
    add-int/lit8 v0, v0, -0x1

    .line 40
    .line 41
    goto :goto_0

    .line 42
    :cond_2
    return-void
.end method

.method public static m(Landroid/content/Context;Ljava/lang/String;)V
    .locals 4

    .line 1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 2
    .line 3
    const/16 v1, 0x12

    .line 4
    .line 5
    if-lt v0, v1, :cond_2

    .line 6
    .line 7
    const-class v1, Lcom/yunpan/appmanage/service/StartService;

    .line 8
    .line 9
    invoke-static {v1}, Lcom/hjq/permissions/permission/PermissionLists;->getBindNotificationListenerServicePermission(Ljava/lang/Class;)Lcom/hjq/permissions/permission/base/IPermission;

    .line 10
    .line 11
    .line 12
    move-result-object v1

    .line 13
    invoke-static {p0, v1}, Lcom/hjq/permissions/XXPermissions;->isGrantedPermission(Landroid/content/Context;Lcom/hjq/permissions/permission/base/IPermission;)Z

    .line 14
    .line 15
    .line 16
    move-result v1

    .line 17
    if-nez v1, :cond_2

    .line 18
    .line 19
    sget-object v1, Lwa/t;->a:Lwa/u;

    .line 20
    .line 21
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 22
    .line 23
    .line 24
    move-result-wide v2

    .line 25
    invoke-virtual {v1, v2, v3}, Lwa/u;->g(J)V

    .line 26
    .line 27
    .line 28
    sget-object v1, Lfa/b0;->a:La2/w0;

    .line 29
    .line 30
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 31
    .line 32
    .line 33
    invoke-static {}, La2/w0;->M()Z

    .line 34
    .line 35
    .line 36
    move-result v1

    .line 37
    if-nez v1, :cond_1

    .line 38
    .line 39
    const/16 v1, 0x1c

    .line 40
    .line 41
    if-ge v0, v1, :cond_0

    .line 42
    .line 43
    goto :goto_0

    .line 44
    :cond_0
    const-string v0, "\u8bf7\u6388\u4e88\u7ba1\u5bb6\u3010\u901a\u77e5\u4f7f\u7528\u6743\u3011"

    .line 45
    .line 46
    const/4 v1, 0x0

    .line 47
    invoke-static {v0, v1}, Lcom/yunpan/appmanage/util/a0;->v(Ljava/lang/CharSequence;Z)V

    .line 48
    .line 49
    .line 50
    invoke-static {p0}, Lcom/hjq/permissions/XXPermissions;->with(Landroid/content/Context;)Lcom/hjq/permissions/XXPermissions;

    .line 51
    .line 52
    .line 53
    move-result-object p0

    .line 54
    const-class v0, Lcom/yunpan/appmanage/service/StartService;

    .line 55
    .line 56
    invoke-static {v0}, Lcom/hjq/permissions/permission/PermissionLists;->getBindNotificationListenerServicePermission(Ljava/lang/Class;)Lcom/hjq/permissions/permission/base/IPermission;

    .line 57
    .line 58
    .line 59
    move-result-object v0

    .line 60
    invoke-virtual {p0, v0}, Lcom/hjq/permissions/XXPermissions;->permission(Lcom/hjq/permissions/permission/base/IPermission;)Lcom/hjq/permissions/XXPermissions;

    .line 61
    .line 62
    .line 63
    move-result-object p0

    .line 64
    new-instance v0, Lb8/a;

    .line 65
    .line 66
    const/4 v1, 0x4

    .line 67
    invoke-direct {v0, p1, v1}, Lb8/a;-><init>(Ljava/lang/String;I)V

    .line 68
    .line 69
    .line 70
    invoke-virtual {p0, v0}, Lcom/hjq/permissions/XXPermissions;->request(Lcom/hjq/permissions/OnPermissionCallback;)V

    .line 71
    .line 72
    .line 73
    goto :goto_1

    .line 74
    :cond_1
    :goto_0
    sget-object p1, Lcom/yunpan/appmanage/util/j;->a:Lcom/yunpan/appmanage/util/k;

    .line 75
    .line 76
    iget-object p1, p1, Lcom/yunpan/appmanage/util/k;->g0:Ljava/util/concurrent/ExecutorService;

    .line 77
    .line 78
    new-instance v0, Lcom/yunpan/appmanage/util/i;

    .line 79
    .line 80
    const/4 v1, 0x0

    .line 81
    invoke-direct {v0, p0, v1}, Lcom/yunpan/appmanage/util/i;-><init>(Landroid/content/Context;I)V

    .line 82
    .line 83
    .line 84
    invoke-interface {p1, v0}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    .line 85
    .line 86
    .line 87
    :cond_2
    :goto_1
    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/String;
    .locals 10

    .line 1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 2
    .line 3
    const/16 v1, 0x13

    .line 4
    .line 5
    const-string v2, "\u5df2\u5141\u8bb8"

    .line 6
    .line 7
    if-ge v0, v1, :cond_0

    .line 8
    .line 9
    return-object v2

    .line 10
    :cond_0
    iget-object v1, p0, Lcom/yunpan/appmanage/util/k;->t0:Landroid/app/AppOpsManager;

    .line 11
    .line 12
    if-nez v1, :cond_1

    .line 13
    .line 14
    iget-object v1, p0, Lcom/yunpan/appmanage/util/k;->a:Landroid/content/ContextWrapper;

    .line 15
    .line 16
    const-string v3, "appops"

    .line 17
    .line 18
    invoke-virtual {v1, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 19
    .line 20
    .line 21
    move-result-object v1

    .line 22
    invoke-static {v1}, Lm0/h;->g(Ljava/lang/Object;)Landroid/app/AppOpsManager;

    .line 23
    .line 24
    .line 25
    move-result-object v1

    .line 26
    iput-object v1, p0, Lcom/yunpan/appmanage/util/k;->t0:Landroid/app/AppOpsManager;

    .line 27
    .line 28
    :cond_1
    invoke-virtual {p3}, Ljava/lang/String;->trim()Ljava/lang/String;

    .line 29
    .line 30
    .line 31
    move-result-object v1

    .line 32
    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    .line 33
    .line 34
    .line 35
    move-result-object v1

    .line 36
    const-string v3, "android.permission."

    .line 37
    .line 38
    const-string v4, ""

    .line 39
    .line 40
    invoke-virtual {v1, v3, v4}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    .line 41
    .line 42
    .line 43
    move-result-object v1

    .line 44
    const-string v3, "android:"

    .line 45
    .line 46
    invoke-static {v3, v1}, Lda/b;->c(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 47
    .line 48
    .line 49
    move-result-object v1

    .line 50
    const/16 v3, 0x1d

    .line 51
    .line 52
    const/4 v5, 0x4

    .line 53
    const/4 v6, 0x3

    .line 54
    const/4 v7, 0x2

    .line 55
    const/4 v8, 0x1

    .line 56
    if-lt v0, v3, :cond_2

    .line 57
    .line 58
    :try_start_0
    iget-object v0, p0, Lcom/yunpan/appmanage/util/k;->t0:Landroid/app/AppOpsManager;

    .line 59
    .line 60
    invoke-static {v0, v1, p2, p1}, Lh4/e0;->b(Landroid/app/AppOpsManager;Ljava/lang/String;ILjava/lang/String;)I

    .line 61
    .line 62
    .line 63
    move-result p1

    .line 64
    goto/16 :goto_2

    .line 65
    .line 66
    :catch_0
    move-exception p2

    .line 67
    goto :goto_0

    .line 68
    :cond_2
    iget-object v0, p0, Lcom/yunpan/appmanage/util/k;->t0:Landroid/app/AppOpsManager;

    .line 69
    .line 70
    invoke-static {v0, v1, p2, p1}, Lm0/h;->b(Landroid/app/AppOpsManager;Ljava/lang/String;ILjava/lang/String;)I

    .line 71
    .line 72
    .line 73
    move-result p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 74
    goto/16 :goto_2

    .line 75
    .line 76
    :catchall_0
    return-object v4

    .line 77
    :goto_0
    new-instance v0, Ljava/lang/StringBuilder;

    .line 78
    .line 79
    invoke-direct {v0, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 80
    .line 81
    .line 82
    invoke-virtual {p2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 83
    .line 84
    .line 85
    move-result-object p2

    .line 86
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 87
    .line 88
    .line 89
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 90
    .line 91
    .line 92
    move-result-object p2

    .line 93
    const-string v0, "does not have"

    .line 94
    .line 95
    invoke-virtual {p2, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 96
    .line 97
    .line 98
    move-result p2

    .line 99
    if-eqz p2, :cond_f

    .line 100
    .line 101
    sget-object p2, Lfa/b0;->a:La2/w0;

    .line 102
    .line 103
    new-instance v0, Ljava/lang/StringBuilder;

    .line 104
    .line 105
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 106
    .line 107
    .line 108
    iget-boolean v1, p0, Lcom/yunpan/appmanage/util/k;->g:Z

    .line 109
    .line 110
    if-eqz v1, :cond_3

    .line 111
    .line 112
    const-string v1, "cmd "

    .line 113
    .line 114
    goto :goto_1

    .line 115
    :cond_3
    move-object v1, v4

    .line 116
    :goto_1
    const-string v3, "appops get "

    .line 117
    .line 118
    const-string v9, " "

    .line 119
    .line 120
    invoke-static {v0, v1, v3, p1, v9}, Landroid/support/v4/media/session/a;->C(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 121
    .line 122
    .line 123
    const-string p1, "."

    .line 124
    .line 125
    invoke-virtual {p3, p1}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    .line 126
    .line 127
    .line 128
    move-result p1

    .line 129
    add-int/2addr p1, v8

    .line 130
    invoke-virtual {p3, p1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    .line 131
    .line 132
    .line 133
    move-result-object p1

    .line 134
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 135
    .line 136
    .line 137
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 138
    .line 139
    .line 140
    move-result-object p1

    .line 141
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 142
    .line 143
    .line 144
    const-wide/16 p2, 0x7d0

    .line 145
    .line 146
    invoke-static {p2, p3, p1}, La2/w0;->q(JLjava/lang/String;)Lfa/a0;

    .line 147
    .line 148
    .line 149
    move-result-object p1

    .line 150
    invoke-virtual {p1}, Lfa/a0;->a()Ljava/lang/String;

    .line 151
    .line 152
    .line 153
    move-result-object p2

    .line 154
    invoke-virtual {p1}, Lfa/a0;->a()Ljava/lang/String;

    .line 155
    .line 156
    .line 157
    const-string p1, ": allow"

    .line 158
    .line 159
    invoke-virtual {p2, p1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 160
    .line 161
    .line 162
    move-result p1

    .line 163
    if-eqz p1, :cond_4

    .line 164
    .line 165
    const/4 p1, 0x0

    .line 166
    goto :goto_2

    .line 167
    :cond_4
    const-string p1, ": deny"

    .line 168
    .line 169
    invoke-virtual {p2, p1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 170
    .line 171
    .line 172
    move-result p1

    .line 173
    if-eqz p1, :cond_5

    .line 174
    .line 175
    const/4 p1, 0x5

    .line 176
    goto :goto_2

    .line 177
    :cond_5
    const-string p1, ": ignore"

    .line 178
    .line 179
    invoke-virtual {p2, p1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 180
    .line 181
    .line 182
    move-result p1

    .line 183
    if-eqz p1, :cond_6

    .line 184
    .line 185
    const/4 p1, 0x1

    .line 186
    goto :goto_2

    .line 187
    :cond_6
    const-string p1, ": errored"

    .line 188
    .line 189
    invoke-virtual {p2, p1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 190
    .line 191
    .line 192
    move-result p1

    .line 193
    if-eqz p1, :cond_7

    .line 194
    .line 195
    const/4 p1, 0x2

    .line 196
    goto :goto_2

    .line 197
    :cond_7
    const-string p1, ": default"

    .line 198
    .line 199
    invoke-virtual {p2, p1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 200
    .line 201
    .line 202
    move-result p1

    .line 203
    if-eqz p1, :cond_8

    .line 204
    .line 205
    const/4 p1, 0x3

    .line 206
    goto :goto_2

    .line 207
    :cond_8
    const-string p1, ": foreground"

    .line 208
    .line 209
    invoke-virtual {p2, p1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 210
    .line 211
    .line 212
    move-result p1

    .line 213
    if-eqz p1, :cond_9

    .line 214
    .line 215
    const/4 p1, 0x4

    .line 216
    goto :goto_2

    .line 217
    :cond_9
    const/4 p1, 0x6

    .line 218
    :goto_2
    if-eqz p1, :cond_e

    .line 219
    .line 220
    if-ne p1, v5, :cond_a

    .line 221
    .line 222
    goto :goto_3

    .line 223
    :cond_a
    if-ne p1, v8, :cond_b

    .line 224
    .line 225
    return-object v4

    .line 226
    :cond_b
    if-ne p1, v7, :cond_c

    .line 227
    .line 228
    return-object v4

    .line 229
    :cond_c
    if-ne p1, v6, :cond_d

    .line 230
    .line 231
    const-string p1, "\u9ed8\u8ba4"

    .line 232
    .line 233
    return-object p1

    .line 234
    :cond_d
    return-object v4

    .line 235
    :cond_e
    :goto_3
    return-object v2

    .line 236
    :cond_f
    return-object v4
.end method

.method public final b(Ljava/lang/String;ILcom/yunpan/appmanage/bean/PermissionBean;)V
    .locals 16

    .line 1
    move-object/from16 v1, p0

    .line 2
    .line 3
    move-object/from16 v2, p1

    .line 4
    .line 5
    move/from16 v3, p2

    .line 6
    .line 7
    move-object/from16 v4, p3

    .line 8
    .line 9
    const-string v5, "op_read_phone_state"

    .line 10
    .line 11
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 12
    .line 13
    const/16 v6, 0x13

    .line 14
    .line 15
    if-ge v0, v6, :cond_0

    .line 16
    .line 17
    const-string v0, "\u4e0d\u77e5\u9053"

    .line 18
    .line 19
    iput-object v0, v4, Lcom/yunpan/appmanage/bean/PermissionBean;->str_status:Ljava/lang/String;

    .line 20
    .line 21
    return-void

    .line 22
    :cond_0
    iget-object v7, v1, Lcom/yunpan/appmanage/util/k;->t0:Landroid/app/AppOpsManager;

    .line 23
    .line 24
    if-nez v7, :cond_1

    .line 25
    .line 26
    iget-object v7, v1, Lcom/yunpan/appmanage/util/k;->a:Landroid/content/ContextWrapper;

    .line 27
    .line 28
    const-string v8, "appops"

    .line 29
    .line 30
    invoke-virtual {v7, v8}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 31
    .line 32
    .line 33
    move-result-object v7

    .line 34
    invoke-static {v7}, Lm0/h;->g(Ljava/lang/Object;)Landroid/app/AppOpsManager;

    .line 35
    .line 36
    .line 37
    move-result-object v7

    .line 38
    iput-object v7, v1, Lcom/yunpan/appmanage/util/k;->t0:Landroid/app/AppOpsManager;

    .line 39
    .line 40
    :cond_1
    iget-object v7, v4, Lcom/yunpan/appmanage/bean/PermissionBean;->permissionName_ops:Ljava/lang/String;

    .line 41
    .line 42
    invoke-virtual {v7}, Ljava/lang/String;->isEmpty()Z

    .line 43
    .line 44
    .line 45
    move-result v7

    .line 46
    if-eqz v7, :cond_2

    .line 47
    .line 48
    iget-object v7, v4, Lcom/yunpan/appmanage/bean/PermissionBean;->permissionName:Ljava/lang/String;

    .line 49
    .line 50
    invoke-virtual {v7}, Ljava/lang/String;->trim()Ljava/lang/String;

    .line 51
    .line 52
    .line 53
    move-result-object v7

    .line 54
    const-string v8, "android.permission."

    .line 55
    .line 56
    invoke-virtual {v7, v8}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 57
    .line 58
    .line 59
    move-result v8

    .line 60
    if-eqz v8, :cond_3

    .line 61
    .line 62
    invoke-virtual {v7, v6}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    .line 63
    .line 64
    .line 65
    move-result-object v7

    .line 66
    goto :goto_0

    .line 67
    :cond_2
    iget-object v7, v4, Lcom/yunpan/appmanage/bean/PermissionBean;->permissionName_ops:Ljava/lang/String;

    .line 68
    .line 69
    :cond_3
    :goto_0
    invoke-virtual {v7}, Ljava/lang/String;->trim()Ljava/lang/String;

    .line 70
    .line 71
    .line 72
    move-result-object v6

    .line 73
    invoke-virtual {v6}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    .line 74
    .line 75
    .line 76
    move-result-object v6

    .line 77
    const/4 v7, 0x4

    .line 78
    const/4 v8, 0x3

    .line 79
    const/4 v9, 0x2

    .line 80
    const/4 v11, 0x0

    .line 81
    const/16 v12, 0x1d

    .line 82
    .line 83
    const-string v13, "\u672a\u8bbe\u7f6e"

    .line 84
    .line 85
    const/4 v14, 0x1

    .line 86
    const-string v15, "android:"

    .line 87
    .line 88
    if-lt v0, v12, :cond_4

    .line 89
    .line 90
    :try_start_0
    iget-object v0, v1, Lcom/yunpan/appmanage/util/k;->t0:Landroid/app/AppOpsManager;

    .line 91
    .line 92
    new-instance v10, Ljava/lang/StringBuilder;

    .line 93
    .line 94
    invoke-direct {v10, v15}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 95
    .line 96
    .line 97
    invoke-virtual {v10, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 98
    .line 99
    .line 100
    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 101
    .line 102
    .line 103
    move-result-object v10

    .line 104
    invoke-static {v0, v10, v3, v2}, Lh4/e0;->b(Landroid/app/AppOpsManager;Ljava/lang/String;ILjava/lang/String;)I

    .line 105
    .line 106
    .line 107
    move-result v0

    .line 108
    goto :goto_1

    .line 109
    :catch_0
    move-exception v0

    .line 110
    goto :goto_2

    .line 111
    :cond_4
    iget-object v0, v1, Lcom/yunpan/appmanage/util/k;->t0:Landroid/app/AppOpsManager;

    .line 112
    .line 113
    new-instance v10, Ljava/lang/StringBuilder;

    .line 114
    .line 115
    invoke-direct {v10, v15}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 116
    .line 117
    .line 118
    invoke-virtual {v10, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 119
    .line 120
    .line 121
    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 122
    .line 123
    .line 124
    move-result-object v10

    .line 125
    invoke-static {v0, v10, v3, v2}, Lm0/h;->b(Landroid/app/AppOpsManager;Ljava/lang/String;ILjava/lang/String;)I

    .line 126
    .line 127
    .line 128
    move-result v0

    .line 129
    :goto_1
    iget-object v10, v4, Lcom/yunpan/appmanage/bean/PermissionBean;->permissionName_ops:Ljava/lang/String;

    .line 130
    .line 131
    invoke-virtual {v10}, Ljava/lang/String;->isEmpty()Z

    .line 132
    .line 133
    .line 134
    move-result v10

    .line 135
    if-eqz v10, :cond_11

    .line 136
    .line 137
    invoke-virtual {v6}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    .line 138
    .line 139
    .line 140
    move-result-object v10

    .line 141
    iput-object v10, v4, Lcom/yunpan/appmanage/bean/PermissionBean;->permissionName_ops:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 142
    .line 143
    goto/16 :goto_5

    .line 144
    .line 145
    :goto_2
    :try_start_1
    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 146
    .line 147
    .line 148
    move-result v10

    .line 149
    if-eqz v10, :cond_6

    .line 150
    .line 151
    const-string v6, "read_phone_state"

    .line 152
    .line 153
    const-string v0, "READ_PHONE_STATE"

    .line 154
    .line 155
    iput-object v0, v4, Lcom/yunpan/appmanage/bean/PermissionBean;->permissionName_ops:Ljava/lang/String;

    .line 156
    .line 157
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 158
    .line 159
    if-lt v0, v12, :cond_5

    .line 160
    .line 161
    iget-object v0, v1, Lcom/yunpan/appmanage/util/k;->t0:Landroid/app/AppOpsManager;

    .line 162
    .line 163
    invoke-static {v0, v3, v2}, La2/c;->b(Landroid/app/AppOpsManager;ILjava/lang/String;)I

    .line 164
    .line 165
    .line 166
    move-result v0

    .line 167
    goto :goto_3

    .line 168
    :catch_1
    move-exception v0

    .line 169
    goto :goto_4

    .line 170
    :cond_5
    iget-object v0, v1, Lcom/yunpan/appmanage/util/k;->t0:Landroid/app/AppOpsManager;

    .line 171
    .line 172
    invoke-static {v0, v3, v2}, Lcom/hierynomus/security/jce/a;->a(Landroid/app/AppOpsManager;ILjava/lang/String;)I

    .line 173
    .line 174
    .line 175
    move-result v0

    .line 176
    :goto_3
    iget-object v3, v4, Lcom/yunpan/appmanage/bean/PermissionBean;->permissionName_ops:Ljava/lang/String;

    .line 177
    .line 178
    invoke-virtual {v3}, Ljava/lang/String;->isEmpty()Z

    .line 179
    .line 180
    .line 181
    move-result v3

    .line 182
    if-eqz v3, :cond_11

    .line 183
    .line 184
    invoke-virtual {v6}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    .line 185
    .line 186
    .line 187
    move-result-object v3

    .line 188
    iput-object v3, v4, Lcom/yunpan/appmanage/bean/PermissionBean;->permissionName_ops:Ljava/lang/String;

    .line 189
    .line 190
    goto/16 :goto_5

    .line 191
    .line 192
    :cond_6
    throw v0
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 193
    :goto_4
    new-instance v3, Ljava/lang/StringBuilder;

    .line 194
    .line 195
    const-string v10, ""

    .line 196
    .line 197
    invoke-direct {v3, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 198
    .line 199
    .line 200
    invoke-static {v0, v3}, Lg/b;->z(Ljava/lang/Exception;Ljava/lang/StringBuilder;)Ljava/lang/String;

    .line 201
    .line 202
    .line 203
    move-result-object v0

    .line 204
    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 205
    .line 206
    .line 207
    move-result v3

    .line 208
    const-string v5, "does not have"

    .line 209
    .line 210
    if-eqz v3, :cond_7

    .line 211
    .line 212
    move-object v0, v5

    .line 213
    :cond_7
    const-string v3, "request_install_packages"

    .line 214
    .line 215
    invoke-virtual {v6, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 216
    .line 217
    .line 218
    move-result v3

    .line 219
    if-eqz v3, :cond_8

    .line 220
    .line 221
    move-object v0, v5

    .line 222
    :cond_8
    invoke-virtual {v0, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 223
    .line 224
    .line 225
    move-result v0

    .line 226
    if-eqz v0, :cond_1a

    .line 227
    .line 228
    iget-object v0, v4, Lcom/yunpan/appmanage/bean/PermissionBean;->permissionName_ops:Ljava/lang/String;

    .line 229
    .line 230
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    .line 231
    .line 232
    .line 233
    move-result v0

    .line 234
    if-eqz v0, :cond_9

    .line 235
    .line 236
    invoke-virtual {v6}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    .line 237
    .line 238
    .line 239
    move-result-object v0

    .line 240
    iput-object v0, v4, Lcom/yunpan/appmanage/bean/PermissionBean;->permissionName_ops:Ljava/lang/String;

    .line 241
    .line 242
    :cond_9
    sget-object v0, Lfa/b0;->a:La2/w0;

    .line 243
    .line 244
    new-instance v3, Ljava/lang/StringBuilder;

    .line 245
    .line 246
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 247
    .line 248
    .line 249
    iget-boolean v5, v1, Lcom/yunpan/appmanage/util/k;->g:Z

    .line 250
    .line 251
    if-eqz v5, :cond_a

    .line 252
    .line 253
    const-string v10, "cmd "

    .line 254
    .line 255
    :cond_a
    const-string v5, "appops get "

    .line 256
    .line 257
    const-string v6, " "

    .line 258
    .line 259
    invoke-static {v3, v10, v5, v2, v6}, Landroid/support/v4/media/session/a;->C(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 260
    .line 261
    .line 262
    iget-object v2, v4, Lcom/yunpan/appmanage/bean/PermissionBean;->permissionName_ops:Ljava/lang/String;

    .line 263
    .line 264
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 265
    .line 266
    .line 267
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 268
    .line 269
    .line 270
    move-result-object v2

    .line 271
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 272
    .line 273
    .line 274
    const-wide/16 v5, 0x7d0

    .line 275
    .line 276
    invoke-static {v5, v6, v2}, La2/w0;->q(JLjava/lang/String;)Lfa/a0;

    .line 277
    .line 278
    .line 279
    move-result-object v0

    .line 280
    invoke-virtual {v0}, Lfa/a0;->a()Ljava/lang/String;

    .line 281
    .line 282
    .line 283
    move-result-object v0

    .line 284
    const-string v2, ": allow"

    .line 285
    .line 286
    invoke-virtual {v0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 287
    .line 288
    .line 289
    move-result v2

    .line 290
    if-eqz v2, :cond_b

    .line 291
    .line 292
    const/4 v0, 0x0

    .line 293
    goto :goto_5

    .line 294
    :cond_b
    const-string v2, ": deny"

    .line 295
    .line 296
    invoke-virtual {v0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 297
    .line 298
    .line 299
    move-result v2

    .line 300
    if-eqz v2, :cond_c

    .line 301
    .line 302
    const/4 v0, 0x5

    .line 303
    goto :goto_5

    .line 304
    :cond_c
    const-string v2, ": ignore"

    .line 305
    .line 306
    invoke-virtual {v0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 307
    .line 308
    .line 309
    move-result v2

    .line 310
    if-eqz v2, :cond_d

    .line 311
    .line 312
    const/4 v0, 0x1

    .line 313
    goto :goto_5

    .line 314
    :cond_d
    const-string v2, ": errored"

    .line 315
    .line 316
    invoke-virtual {v0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 317
    .line 318
    .line 319
    move-result v2

    .line 320
    if-eqz v2, :cond_e

    .line 321
    .line 322
    const/4 v0, 0x2

    .line 323
    goto :goto_5

    .line 324
    :cond_e
    const-string v2, ": default"

    .line 325
    .line 326
    invoke-virtual {v0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 327
    .line 328
    .line 329
    move-result v2

    .line 330
    if-eqz v2, :cond_f

    .line 331
    .line 332
    const/4 v0, 0x3

    .line 333
    goto :goto_5

    .line 334
    :cond_f
    const-string v2, ": foreground"

    .line 335
    .line 336
    invoke-virtual {v0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 337
    .line 338
    .line 339
    move-result v0

    .line 340
    if-eqz v0, :cond_10

    .line 341
    .line 342
    const/4 v0, 0x4

    .line 343
    goto :goto_5

    .line 344
    :cond_10
    const/4 v0, 0x6

    .line 345
    :cond_11
    :goto_5
    iput-boolean v11, v4, Lcom/yunpan/appmanage/bean/PermissionBean;->ops_is_open:Z

    .line 346
    .line 347
    const/4 v2, -0x1

    .line 348
    const-string v3, "\u5df2\u5141\u8bb8"

    .line 349
    .line 350
    if-ne v0, v2, :cond_13

    .line 351
    .line 352
    iget-boolean v0, v4, Lcom/yunpan/appmanage/bean/PermissionBean;->pms_is_open:Z

    .line 353
    .line 354
    if-eqz v0, :cond_12

    .line 355
    .line 356
    iput-boolean v14, v4, Lcom/yunpan/appmanage/bean/PermissionBean;->ops_is_open:Z

    .line 357
    .line 358
    iput-object v3, v4, Lcom/yunpan/appmanage/bean/PermissionBean;->str_status:Ljava/lang/String;

    .line 359
    .line 360
    goto :goto_7

    .line 361
    :cond_12
    iput-object v13, v4, Lcom/yunpan/appmanage/bean/PermissionBean;->str_status:Ljava/lang/String;

    .line 362
    .line 363
    goto :goto_7

    .line 364
    :cond_13
    if-eqz v0, :cond_19

    .line 365
    .line 366
    if-ne v0, v7, :cond_14

    .line 367
    .line 368
    goto :goto_6

    .line 369
    :cond_14
    if-ne v0, v14, :cond_15

    .line 370
    .line 371
    const-string v0, "\u5ffd\u7565"

    .line 372
    .line 373
    iput-object v0, v4, Lcom/yunpan/appmanage/bean/PermissionBean;->str_status:Ljava/lang/String;

    .line 374
    .line 375
    goto :goto_7

    .line 376
    :cond_15
    if-ne v0, v9, :cond_16

    .line 377
    .line 378
    const-string v0, "\u9519\u8bef"

    .line 379
    .line 380
    iput-object v0, v4, Lcom/yunpan/appmanage/bean/PermissionBean;->str_status:Ljava/lang/String;

    .line 381
    .line 382
    goto :goto_7

    .line 383
    :cond_16
    if-ne v0, v8, :cond_17

    .line 384
    .line 385
    const-string v0, "\u9ed8\u8ba4"

    .line 386
    .line 387
    iput-object v0, v4, Lcom/yunpan/appmanage/bean/PermissionBean;->str_status:Ljava/lang/String;

    .line 388
    .line 389
    goto :goto_7

    .line 390
    :cond_17
    const/4 v2, 0x5

    .line 391
    if-ne v0, v2, :cond_18

    .line 392
    .line 393
    const-string v0, "\u5df2\u62d2\u7edd"

    .line 394
    .line 395
    iput-object v0, v4, Lcom/yunpan/appmanage/bean/PermissionBean;->str_status:Ljava/lang/String;

    .line 396
    .line 397
    goto :goto_7

    .line 398
    :cond_18
    iput-object v13, v4, Lcom/yunpan/appmanage/bean/PermissionBean;->str_status:Ljava/lang/String;

    .line 399
    .line 400
    goto :goto_7

    .line 401
    :cond_19
    :goto_6
    iput-boolean v14, v4, Lcom/yunpan/appmanage/bean/PermissionBean;->ops_is_open:Z

    .line 402
    .line 403
    iput-object v3, v4, Lcom/yunpan/appmanage/bean/PermissionBean;->str_status:Ljava/lang/String;

    .line 404
    .line 405
    :goto_7
    return-void

    .line 406
    :cond_1a
    iget-object v0, v4, Lcom/yunpan/appmanage/bean/PermissionBean;->permissionName_ops:Ljava/lang/String;

    .line 407
    .line 408
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    .line 409
    .line 410
    .line 411
    move-result v0

    .line 412
    if-nez v0, :cond_1b

    .line 413
    .line 414
    iput-object v13, v4, Lcom/yunpan/appmanage/bean/PermissionBean;->str_status:Ljava/lang/String;

    .line 415
    .line 416
    :cond_1b
    return-void
.end method

.method public final c(Ljava/lang/String;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/yunpan/appmanage/util/k;->a:Landroid/content/ContextWrapper;

    .line 2
    .line 3
    const-string v1, "clipboard"

    .line 4
    .line 5
    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    check-cast v0, Landroid/content/ClipboardManager;

    .line 10
    .line 11
    const-string v1, "label"

    .line 12
    .line 13
    invoke-static {v1, p1}, Landroid/content/ClipData;->newPlainText(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Landroid/content/ClipData;

    .line 14
    .line 15
    .line 16
    move-result-object p1

    .line 17
    invoke-virtual {v0, p1}, Landroid/content/ClipboardManager;->setPrimaryClip(Landroid/content/ClipData;)V

    .line 18
    .line 19
    .line 20
    return-void
.end method

.method public final g()Ljava/lang/String;
    .locals 7

    .line 1
    new-instance v0, Ljava/util/LinkedHashSet;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/util/LinkedHashSet;-><init>()V

    .line 4
    .line 5
    .line 6
    iget-object v1, p0, Lcom/yunpan/appmanage/util/k;->a:Landroid/content/ContextWrapper;

    .line 7
    .line 8
    invoke-virtual {v1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    .line 9
    .line 10
    .line 11
    move-result-object v1

    .line 12
    const-string v2, "wifi"

    .line 13
    .line 14
    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 15
    .line 16
    .line 17
    move-result-object v1

    .line 18
    check-cast v1, Landroid/net/wifi/WifiManager;

    .line 19
    .line 20
    invoke-virtual {v1}, Landroid/net/wifi/WifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    .line 21
    .line 22
    .line 23
    move-result-object v1

    .line 24
    invoke-virtual {v1}, Landroid/net/wifi/WifiInfo;->getIpAddress()I

    .line 25
    .line 26
    .line 27
    move-result v1

    .line 28
    if-eqz v1, :cond_0

    .line 29
    .line 30
    and-int/lit16 v2, v1, 0xff

    .line 31
    .line 32
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 33
    .line 34
    .line 35
    move-result-object v2

    .line 36
    shr-int/lit8 v3, v1, 0x8

    .line 37
    .line 38
    and-int/lit16 v3, v3, 0xff

    .line 39
    .line 40
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 41
    .line 42
    .line 43
    move-result-object v3

    .line 44
    shr-int/lit8 v4, v1, 0x10

    .line 45
    .line 46
    and-int/lit16 v4, v4, 0xff

    .line 47
    .line 48
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 49
    .line 50
    .line 51
    move-result-object v4

    .line 52
    shr-int/lit8 v1, v1, 0x18

    .line 53
    .line 54
    and-int/lit16 v1, v1, 0xff

    .line 55
    .line 56
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 57
    .line 58
    .line 59
    move-result-object v1

    .line 60
    const/4 v5, 0x4

    .line 61
    new-array v5, v5, [Ljava/lang/Object;

    .line 62
    .line 63
    const/4 v6, 0x0

    .line 64
    aput-object v2, v5, v6

    .line 65
    .line 66
    const/4 v2, 0x1

    .line 67
    aput-object v3, v5, v2

    .line 68
    .line 69
    const/4 v2, 0x2

    .line 70
    aput-object v4, v5, v2

    .line 71
    .line 72
    const/4 v2, 0x3

    .line 73
    aput-object v1, v5, v2

    .line 74
    .line 75
    const-string v1, "%d.%d.%d.%d"

    .line 76
    .line 77
    invoke-static {v1, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 78
    .line 79
    .line 80
    move-result-object v1

    .line 81
    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 82
    .line 83
    .line 84
    :cond_0
    :try_start_0
    invoke-static {}, Ljava/net/NetworkInterface;->getNetworkInterfaces()Ljava/util/Enumeration;

    .line 85
    .line 86
    .line 87
    move-result-object v1

    .line 88
    :cond_1
    invoke-interface {v1}, Ljava/util/Enumeration;->hasMoreElements()Z

    .line 89
    .line 90
    .line 91
    move-result v2

    .line 92
    if-eqz v2, :cond_4

    .line 93
    .line 94
    invoke-interface {v1}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    .line 95
    .line 96
    .line 97
    move-result-object v2

    .line 98
    check-cast v2, Ljava/net/NetworkInterface;

    .line 99
    .line 100
    invoke-virtual {v2}, Ljava/net/NetworkInterface;->getDisplayName()Ljava/lang/String;

    .line 101
    .line 102
    .line 103
    move-result-object v3

    .line 104
    const-string v4, "eth0"

    .line 105
    .line 106
    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 107
    .line 108
    .line 109
    move-result v4

    .line 110
    if-nez v4, :cond_2

    .line 111
    .line 112
    const-string v4, "wlan0"

    .line 113
    .line 114
    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 115
    .line 116
    .line 117
    move-result v3

    .line 118
    if-eqz v3, :cond_1

    .line 119
    .line 120
    goto :goto_0

    .line 121
    :catch_0
    nop

    .line 122
    goto :goto_2

    .line 123
    :cond_2
    :goto_0
    invoke-virtual {v2}, Ljava/net/NetworkInterface;->getInetAddresses()Ljava/util/Enumeration;

    .line 124
    .line 125
    .line 126
    move-result-object v2

    .line 127
    :cond_3
    :goto_1
    invoke-interface {v2}, Ljava/util/Enumeration;->hasMoreElements()Z

    .line 128
    .line 129
    .line 130
    move-result v3

    .line 131
    if-eqz v3, :cond_1

    .line 132
    .line 133
    invoke-interface {v2}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    .line 134
    .line 135
    .line 136
    move-result-object v3

    .line 137
    check-cast v3, Ljava/net/InetAddress;

    .line 138
    .line 139
    invoke-virtual {v3}, Ljava/net/InetAddress;->isLoopbackAddress()Z

    .line 140
    .line 141
    .line 142
    move-result v4

    .line 143
    if-nez v4, :cond_3

    .line 144
    .line 145
    instance-of v4, v3, Ljava/net/Inet4Address;

    .line 146
    .line 147
    if-eqz v4, :cond_3

    .line 148
    .line 149
    invoke-virtual {v3}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    .line 150
    .line 151
    .line 152
    move-result-object v3

    .line 153
    invoke-interface {v0, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 154
    .line 155
    .line 156
    goto :goto_1

    .line 157
    :cond_4
    :goto_2
    invoke-interface {v0}, Ljava/util/Set;->isEmpty()Z

    .line 158
    .line 159
    .line 160
    move-result v1

    .line 161
    if-eqz v1, :cond_7

    .line 162
    .line 163
    :try_start_1
    invoke-static {}, Ljava/net/NetworkInterface;->getNetworkInterfaces()Ljava/util/Enumeration;

    .line 164
    .line 165
    .line 166
    move-result-object v1

    .line 167
    :cond_5
    invoke-interface {v1}, Ljava/util/Enumeration;->hasMoreElements()Z

    .line 168
    .line 169
    .line 170
    move-result v2

    .line 171
    if-eqz v2, :cond_7

    .line 172
    .line 173
    invoke-interface {v1}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    .line 174
    .line 175
    .line 176
    move-result-object v2

    .line 177
    check-cast v2, Ljava/net/NetworkInterface;

    .line 178
    .line 179
    invoke-virtual {v2}, Ljava/net/NetworkInterface;->getInetAddresses()Ljava/util/Enumeration;

    .line 180
    .line 181
    .line 182
    move-result-object v2

    .line 183
    :cond_6
    :goto_3
    invoke-interface {v2}, Ljava/util/Enumeration;->hasMoreElements()Z

    .line 184
    .line 185
    .line 186
    move-result v3

    .line 187
    if-eqz v3, :cond_5

    .line 188
    .line 189
    invoke-interface {v2}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    .line 190
    .line 191
    .line 192
    move-result-object v3

    .line 193
    check-cast v3, Ljava/net/InetAddress;

    .line 194
    .line 195
    invoke-virtual {v3}, Ljava/net/InetAddress;->isLoopbackAddress()Z

    .line 196
    .line 197
    .line 198
    move-result v4

    .line 199
    if-nez v4, :cond_6

    .line 200
    .line 201
    instance-of v4, v3, Ljava/net/Inet4Address;

    .line 202
    .line 203
    if-eqz v4, :cond_6

    .line 204
    .line 205
    invoke-virtual {v3}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    .line 206
    .line 207
    .line 208
    move-result-object v3

    .line 209
    invoke-interface {v0, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 210
    .line 211
    .line 212
    goto :goto_3

    .line 213
    :catch_1
    nop

    .line 214
    :cond_7
    invoke-interface {v0}, Ljava/util/Set;->isEmpty()Z

    .line 215
    .line 216
    .line 217
    move-result v1

    .line 218
    if-eqz v1, :cond_8

    .line 219
    .line 220
    const-string v0, "0.0.0.0"

    .line 221
    .line 222
    goto :goto_4

    .line 223
    :cond_8
    const-string v1, "198.18.34.15"

    .line 224
    .line 225
    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    .line 226
    .line 227
    .line 228
    move-result v2

    .line 229
    if-eqz v2, :cond_9

    .line 230
    .line 231
    sget-object v2, Lcom/yunpan/appmanage/util/v;->a:Lcom/yunpan/appmanage/util/w;

    .line 232
    .line 233
    iget-boolean v2, v2, Lcom/yunpan/appmanage/util/w;->I:Z

    .line 234
    .line 235
    if-eqz v2, :cond_9

    .line 236
    .line 237
    move-object v0, v1

    .line 238
    goto :goto_4

    .line 239
    :cond_9
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 240
    .line 241
    .line 242
    move-result-object v0

    .line 243
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 244
    .line 245
    .line 246
    move-result-object v0

    .line 247
    check-cast v0, Ljava/lang/String;

    .line 248
    .line 249
    :goto_4
    iget-object v1, p0, Lcom/yunpan/appmanage/util/k;->i0:Ljava/lang/String;

    .line 250
    .line 251
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 252
    .line 253
    .line 254
    move-result v1

    .line 255
    if-nez v1, :cond_a

    .line 256
    .line 257
    iput-object v0, p0, Lcom/yunpan/appmanage/util/k;->i0:Ljava/lang/String;

    .line 258
    .line 259
    invoke-virtual {p0}, Lcom/yunpan/appmanage/util/k;->o()V

    .line 260
    .line 261
    .line 262
    :cond_a
    iget-object v0, p0, Lcom/yunpan/appmanage/util/k;->i0:Ljava/lang/String;

    .line 263
    .line 264
    return-object v0
.end method

.method public final h(Lcom/yunpan/appmanage/base/AppStart;)V
    .locals 5

    .line 1
    iput-object p1, p0, Lcom/yunpan/appmanage/util/k;->a:Landroid/content/ContextWrapper;

    .line 2
    .line 3
    sget-object v0, Lcom/yunpan/appmanage/base/AppStart;->h:Lcom/yunpan/appmanage/base/AppStart;

    .line 4
    .line 5
    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    iput-object v0, p0, Lcom/yunpan/appmanage/util/k;->b:Landroid/content/pm/PackageManager;

    .line 10
    .line 11
    iget-object v0, p0, Lcom/yunpan/appmanage/util/k;->a:Landroid/content/ContextWrapper;

    .line 12
    .line 13
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    const v1, 0x7f13002f

    .line 18
    .line 19
    .line 20
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    .line 21
    .line 22
    .line 23
    move-result-object v0

    .line 24
    iput-object v0, p0, Lcom/yunpan/appmanage/util/k;->c:Ljava/lang/String;

    .line 25
    .line 26
    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    .line 27
    .line 28
    .line 29
    move-result-object v0

    .line 30
    iput-object v0, p0, Lcom/yunpan/appmanage/util/k;->d:Ljava/lang/String;

    .line 31
    .line 32
    invoke-virtual {p1}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    .line 33
    .line 34
    .line 35
    move-result-object p1

    .line 36
    invoke-virtual {p1}, Ljava/io/File;->getPath()Ljava/lang/String;

    .line 37
    .line 38
    .line 39
    move-result-object p1

    .line 40
    iput-object p1, p0, Lcom/yunpan/appmanage/util/k;->Q:Ljava/lang/String;

    .line 41
    .line 42
    const-string p1, "/system/bin/cmd"

    .line 43
    .line 44
    invoke-static {p1}, Lcom/yunpan/appmanage/util/a0;->g(Ljava/lang/String;)Z

    .line 45
    .line 46
    .line 47
    move-result p1

    .line 48
    iput-boolean p1, p0, Lcom/yunpan/appmanage/util/k;->g:Z

    .line 49
    .line 50
    if-nez p1, :cond_0

    .line 51
    .line 52
    const-string p1, "/system/xbin/cmd"

    .line 53
    .line 54
    invoke-static {p1}, Lcom/yunpan/appmanage/util/a0;->g(Ljava/lang/String;)Z

    .line 55
    .line 56
    .line 57
    move-result p1

    .line 58
    iput-boolean p1, p0, Lcom/yunpan/appmanage/util/k;->g:Z

    .line 59
    .line 60
    :cond_0
    invoke-virtual {p0}, Lcom/yunpan/appmanage/util/k;->p()V

    .line 61
    .line 62
    .line 63
    new-instance p1, Ljava/io/File;

    .line 64
    .line 65
    new-instance v0, Ljava/lang/StringBuilder;

    .line 66
    .line 67
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 68
    .line 69
    .line 70
    iget-object v1, p0, Lcom/yunpan/appmanage/util/k;->a:Landroid/content/ContextWrapper;

    .line 71
    .line 72
    invoke-virtual {v1}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    .line 73
    .line 74
    .line 75
    move-result-object v1

    .line 76
    invoke-virtual {v1}, Ljava/io/File;->getPath()Ljava/lang/String;

    .line 77
    .line 78
    .line 79
    move-result-object v1

    .line 80
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 81
    .line 82
    .line 83
    const-string v1, "/share_id"

    .line 84
    .line 85
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 86
    .line 87
    .line 88
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 89
    .line 90
    .line 91
    move-result-object v0

    .line 92
    invoke-direct {p1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 93
    .line 94
    .line 95
    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    .line 96
    .line 97
    .line 98
    move-result v0

    .line 99
    if-nez v0, :cond_1

    .line 100
    .line 101
    :try_start_0
    invoke-virtual {p1}, Ljava/io/File;->createNewFile()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 102
    .line 103
    .line 104
    :catch_0
    :cond_1
    sget-object v0, Lcom/yunpan/appmanage/util/j;->a:Lcom/yunpan/appmanage/util/k;

    .line 105
    .line 106
    invoke-virtual {p1}, Ljava/io/File;->lastModified()J

    .line 107
    .line 108
    .line 109
    move-result-wide v1

    .line 110
    iput-wide v1, v0, Lcom/yunpan/appmanage/util/k;->k0:J

    .line 111
    .line 112
    :try_start_1
    iget-object p1, p0, Lcom/yunpan/appmanage/util/k;->a:Landroid/content/ContextWrapper;

    .line 113
    .line 114
    invoke-virtual {p1}, Landroid/content/Context;->getExternalCacheDir()Ljava/io/File;

    .line 115
    .line 116
    .line 117
    move-result-object p1

    .line 118
    invoke-virtual {p1}, Ljava/io/File;->getParentFile()Ljava/io/File;

    .line 119
    .line 120
    .line 121
    move-result-object p1

    .line 122
    invoke-virtual {p1}, Ljava/io/File;->getParentFile()Ljava/io/File;

    .line 123
    .line 124
    .line 125
    move-result-object p1

    .line 126
    invoke-virtual {p1}, Ljava/io/File;->getParentFile()Ljava/io/File;

    .line 127
    .line 128
    .line 129
    move-result-object p1

    .line 130
    invoke-virtual {p1}, Ljava/io/File;->getParentFile()Ljava/io/File;

    .line 131
    .line 132
    .line 133
    move-result-object p1

    .line 134
    invoke-virtual {p1}, Ljava/io/File;->getPath()Ljava/lang/String;

    .line 135
    .line 136
    .line 137
    move-result-object p1

    .line 138
    iput-object p1, p0, Lcom/yunpan/appmanage/util/k;->M:Ljava/lang/String;

    .line 139
    .line 140
    const-string v0, "/data/"

    .line 141
    .line 142
    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 143
    .line 144
    .line 145
    move-result p1

    .line 146
    if-eqz p1, :cond_2

    .line 147
    .line 148
    const-string p1, ""

    .line 149
    .line 150
    iput-object p1, p0, Lcom/yunpan/appmanage/util/k;->M:Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 151
    .line 152
    :catch_1
    :cond_2
    const/4 p1, 0x1

    .line 153
    const/4 v0, 0x0

    .line 154
    :try_start_2
    iget-object v1, p0, Lcom/yunpan/appmanage/util/k;->b:Landroid/content/pm/PackageManager;

    .line 155
    .line 156
    const-string v2, "android.permission.DEVICE_POWER"

    .line 157
    .line 158
    iget-object v3, p0, Lcom/yunpan/appmanage/util/k;->d:Ljava/lang/String;

    .line 159
    .line 160
    invoke-virtual {v1, v2, v3}, Landroid/content/pm/PackageManager;->checkPermission(Ljava/lang/String;Ljava/lang/String;)I

    .line 161
    .line 162
    .line 163
    move-result v1

    .line 164
    if-nez v1, :cond_3

    .line 165
    .line 166
    const/4 v1, 0x1

    .line 167
    goto :goto_0

    .line 168
    :cond_3
    const/4 v1, 0x0

    .line 169
    :goto_0
    iput-boolean v1, p0, Lcom/yunpan/appmanage/util/k;->j:Z
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    .line 170
    .line 171
    goto :goto_1

    .line 172
    :catch_2
    nop

    .line 173
    :goto_1
    new-instance v1, Landroid/content/Intent;

    .line 174
    .line 175
    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 176
    .line 177
    .line 178
    const-string v2, "android.settings.APPLICATION_DETAILS_SETTINGS"

    .line 179
    .line 180
    invoke-virtual {v1, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 181
    .line 182
    .line 183
    move-result-object v1

    .line 184
    iget-object v2, p0, Lcom/yunpan/appmanage/util/k;->d:Ljava/lang/String;

    .line 185
    .line 186
    const/4 v3, 0x0

    .line 187
    const-string v4, "package"

    .line 188
    .line 189
    invoke-static {v4, v2, v3}, Landroid/net/Uri;->fromParts(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    .line 190
    .line 191
    .line 192
    move-result-object v2

    .line 193
    invoke-virtual {v1, v2}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 194
    .line 195
    .line 196
    move-result-object v1

    .line 197
    iget-object v2, p0, Lcom/yunpan/appmanage/util/k;->b:Landroid/content/pm/PackageManager;

    .line 198
    .line 199
    invoke-virtual {v1, v2}, Landroid/content/Intent;->resolveActivity(Landroid/content/pm/PackageManager;)Landroid/content/ComponentName;

    .line 200
    .line 201
    .line 202
    move-result-object v1

    .line 203
    if-eqz v1, :cond_4

    .line 204
    .line 205
    iput-boolean p1, p0, Lcom/yunpan/appmanage/util/k;->D:Z

    .line 206
    .line 207
    goto :goto_2

    .line 208
    :cond_4
    iput-boolean v0, p0, Lcom/yunpan/appmanage/util/k;->D:Z

    .line 209
    .line 210
    :goto_2
    sget-object p1, Landroid/os/Build;->DISPLAY:Ljava/lang/String;

    .line 211
    .line 212
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    .line 213
    .line 214
    .line 215
    move-result-object p1

    .line 216
    const-string v1, " "

    .line 217
    .line 218
    invoke-virtual {p1, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    .line 219
    .line 220
    .line 221
    move-result v1

    .line 222
    if-lez v1, :cond_5

    .line 223
    .line 224
    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 225
    .line 226
    .line 227
    move-result-object p1

    .line 228
    :cond_5
    new-instance v0, Ljava/lang/StringBuilder;

    .line 229
    .line 230
    const-string v1, "Mozilla/5.0 (Linux; Android "

    .line 231
    .line 232
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 233
    .line 234
    .line 235
    sget-object v1, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    .line 236
    .line 237
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 238
    .line 239
    .line 240
    const-string v1, "; "

    .line 241
    .line 242
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 243
    .line 244
    .line 245
    sget-object v1, Landroid/os/Build;->MODEL:Ljava/lang/String;

    .line 246
    .line 247
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 248
    .line 249
    .line 250
    const-string v1, " Build/"

    .line 251
    .line 252
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 253
    .line 254
    .line 255
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 256
    .line 257
    .line 258
    const-string p1, ") AppleWebKit/537.36 (KHTML, like Gecko) Chrome/91.0.4472.114 Safari/537.36"

    .line 259
    .line 260
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 261
    .line 262
    .line 263
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 264
    .line 265
    .line 266
    move-result-object p1

    .line 267
    iput-object p1, p0, Lcom/yunpan/appmanage/util/k;->J:Ljava/lang/String;

    .line 268
    .line 269
    invoke-virtual {p0}, Lcom/yunpan/appmanage/util/k;->l()V

    .line 270
    .line 271
    .line 272
    return-void
.end method

.method public final k()V
    .locals 4

    .line 1
    new-instance v0, Lw5/e;

    .line 2
    .line 3
    invoke-direct {v0}, Lw5/e;-><init>()V

    .line 4
    .line 5
    .line 6
    new-instance v1, Lo5/x;

    .line 7
    .line 8
    const/16 v2, 0x8

    .line 9
    .line 10
    invoke-direct {v1, v2}, Lo5/x;-><init>(I)V

    .line 11
    .line 12
    .line 13
    const/4 v2, 0x1

    .line 14
    invoke-virtual {v0, v1, v2}, Lw5/a;->w(Lf5/m;Z)Lw5/a;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    check-cast v0, Lw5/e;

    .line 19
    .line 20
    iget v1, p0, Lcom/yunpan/appmanage/util/k;->R:I

    .line 21
    .line 22
    invoke-virtual {v0, v1, v1}, Lw5/a;->o(II)Lw5/a;

    .line 23
    .line 24
    .line 25
    move-result-object v0

    .line 26
    check-cast v0, Lw5/e;

    .line 27
    .line 28
    new-instance v1, Lz5/d;

    .line 29
    .line 30
    sget-object v2, Lcom/yunpan/appmanage/util/v;->a:Lcom/yunpan/appmanage/util/w;

    .line 31
    .line 32
    iget-wide v2, v2, Lcom/yunpan/appmanage/util/w;->h0:J

    .line 33
    .line 34
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 35
    .line 36
    .line 37
    move-result-object v2

    .line 38
    invoke-direct {v1, v2}, Lz5/d;-><init>(Ljava/lang/Object;)V

    .line 39
    .line 40
    .line 41
    invoke-virtual {v0, v1}, Lw5/a;->t(Lf5/f;)Lw5/a;

    .line 42
    .line 43
    .line 44
    move-result-object v0

    .line 45
    check-cast v0, Lw5/e;

    .line 46
    .line 47
    const v1, 0x7f080239

    .line 48
    .line 49
    .line 50
    invoke-virtual {v0, v1}, Lw5/a;->g(I)Lw5/a;

    .line 51
    .line 52
    .line 53
    move-result-object v0

    .line 54
    check-cast v0, Lw5/e;

    .line 55
    .line 56
    iput-object v0, p0, Lcom/yunpan/appmanage/util/k;->i:Lw5/e;

    .line 57
    .line 58
    return-void
.end method

.method public final l()V
    .locals 4

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    .line 2
    .line 3
    sget-object v1, Lcom/yunpan/appmanage/util/v;->a:Lcom/yunpan/appmanage/util/w;

    .line 4
    .line 5
    iget-object v2, v1, Lcom/yunpan/appmanage/util/w;->y0:Ljava/lang/String;

    .line 6
    .line 7
    const-string v3, "\\|"

    .line 8
    .line 9
    invoke-virtual {v2, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    .line 10
    .line 11
    .line 12
    move-result-object v2

    .line 13
    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    .line 14
    .line 15
    .line 16
    move-result-object v2

    .line 17
    invoke-direct {v0, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 18
    .line 19
    .line 20
    iput-object v0, p0, Lcom/yunpan/appmanage/util/k;->l0:Ljava/util/ArrayList;

    .line 21
    .line 22
    invoke-static {v0}, Lcom/yunpan/appmanage/util/k;->j(Ljava/util/ArrayList;)V

    .line 23
    .line 24
    .line 25
    new-instance v0, Ljava/util/ArrayList;

    .line 26
    .line 27
    iget-object v2, v1, Lcom/yunpan/appmanage/util/w;->D0:Ljava/lang/String;

    .line 28
    .line 29
    invoke-virtual {v2, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    .line 30
    .line 31
    .line 32
    move-result-object v2

    .line 33
    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    .line 34
    .line 35
    .line 36
    move-result-object v2

    .line 37
    invoke-direct {v0, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 38
    .line 39
    .line 40
    iput-object v0, p0, Lcom/yunpan/appmanage/util/k;->m0:Ljava/util/ArrayList;

    .line 41
    .line 42
    invoke-static {v0}, Lcom/yunpan/appmanage/util/k;->j(Ljava/util/ArrayList;)V

    .line 43
    .line 44
    .line 45
    new-instance v0, Ljava/util/ArrayList;

    .line 46
    .line 47
    iget-object v2, v1, Lcom/yunpan/appmanage/util/w;->z0:Ljava/lang/String;

    .line 48
    .line 49
    invoke-virtual {v2, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    .line 50
    .line 51
    .line 52
    move-result-object v2

    .line 53
    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    .line 54
    .line 55
    .line 56
    move-result-object v2

    .line 57
    invoke-direct {v0, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 58
    .line 59
    .line 60
    iput-object v0, p0, Lcom/yunpan/appmanage/util/k;->n0:Ljava/util/ArrayList;

    .line 61
    .line 62
    invoke-static {v0}, Lcom/yunpan/appmanage/util/k;->j(Ljava/util/ArrayList;)V

    .line 63
    .line 64
    .line 65
    new-instance v0, Ljava/util/ArrayList;

    .line 66
    .line 67
    iget-object v2, v1, Lcom/yunpan/appmanage/util/w;->A0:Ljava/lang/String;

    .line 68
    .line 69
    invoke-virtual {v2, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    .line 70
    .line 71
    .line 72
    move-result-object v2

    .line 73
    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    .line 74
    .line 75
    .line 76
    move-result-object v2

    .line 77
    invoke-direct {v0, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 78
    .line 79
    .line 80
    iput-object v0, p0, Lcom/yunpan/appmanage/util/k;->p0:Ljava/util/ArrayList;

    .line 81
    .line 82
    invoke-static {v0}, Lcom/yunpan/appmanage/util/k;->j(Ljava/util/ArrayList;)V

    .line 83
    .line 84
    .line 85
    new-instance v0, Ljava/util/ArrayList;

    .line 86
    .line 87
    iget-object v2, v1, Lcom/yunpan/appmanage/util/w;->B0:Ljava/lang/String;

    .line 88
    .line 89
    invoke-virtual {v2, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    .line 90
    .line 91
    .line 92
    move-result-object v2

    .line 93
    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    .line 94
    .line 95
    .line 96
    move-result-object v2

    .line 97
    invoke-direct {v0, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 98
    .line 99
    .line 100
    iput-object v0, p0, Lcom/yunpan/appmanage/util/k;->q0:Ljava/util/ArrayList;

    .line 101
    .line 102
    invoke-static {v0}, Lcom/yunpan/appmanage/util/k;->j(Ljava/util/ArrayList;)V

    .line 103
    .line 104
    .line 105
    new-instance v0, Ljava/util/ArrayList;

    .line 106
    .line 107
    iget-object v1, v1, Lcom/yunpan/appmanage/util/w;->C0:Ljava/lang/String;

    .line 108
    .line 109
    invoke-virtual {v1, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    .line 110
    .line 111
    .line 112
    move-result-object v1

    .line 113
    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    .line 114
    .line 115
    .line 116
    move-result-object v1

    .line 117
    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 118
    .line 119
    .line 120
    iput-object v0, p0, Lcom/yunpan/appmanage/util/k;->o0:Ljava/util/ArrayList;

    .line 121
    .line 122
    invoke-static {v0}, Lcom/yunpan/appmanage/util/k;->j(Ljava/util/ArrayList;)V

    .line 123
    .line 124
    .line 125
    return-void
.end method

.method public final n(Landroid/graphics/Bitmap;Ljava/lang/String;)V
    .locals 4

    .line 1
    const/4 v0, 0x0

    .line 2
    :try_start_0
    new-instance v1, Ljava/io/FileOutputStream;

    .line 3
    .line 4
    new-instance v2, Ljava/lang/StringBuilder;

    .line 5
    .line 6
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 7
    .line 8
    .line 9
    iget-object v3, p0, Lcom/yunpan/appmanage/util/k;->a:Landroid/content/ContextWrapper;

    .line 10
    .line 11
    invoke-virtual {v3}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    .line 12
    .line 13
    .line 14
    move-result-object v3

    .line 15
    invoke-virtual {v3}, Ljava/io/File;->getPath()Ljava/lang/String;

    .line 16
    .line 17
    .line 18
    move-result-object v3

    .line 19
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 20
    .line 21
    .line 22
    const-string v3, "/"

    .line 23
    .line 24
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 25
    .line 26
    .line 27
    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 28
    .line 29
    .line 30
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 31
    .line 32
    .line 33
    move-result-object p2

    .line 34
    invoke-direct {v1, p2}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 35
    .line 36
    .line 37
    :try_start_1
    sget-object p2, Landroid/graphics/Bitmap$CompressFormat;->PNG:Landroid/graphics/Bitmap$CompressFormat;

    .line 38
    .line 39
    const/16 v0, 0x64

    .line 40
    .line 41
    invoke-virtual {p1, p2, v0, v1}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 42
    .line 43
    .line 44
    goto :goto_1

    .line 45
    :catch_0
    nop

    .line 46
    move-object v0, v1

    .line 47
    goto :goto_0

    .line 48
    :catch_1
    nop

    .line 49
    :goto_0
    move-object v1, v0

    .line 50
    :goto_1
    if-eqz v1, :cond_0

    .line 51
    .line 52
    :try_start_2
    invoke-virtual {v1}, Ljava/io/OutputStream;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    .line 53
    .line 54
    .line 55
    :catch_2
    :cond_0
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->recycle()V

    .line 56
    .line 57
    .line 58
    return-void
.end method

.method public final o()V
    .locals 4

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    const-string v1, "http://"

    .line 4
    .line 5
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    iget-object v1, p0, Lcom/yunpan/appmanage/util/k;->i0:Ljava/lang/String;

    .line 9
    .line 10
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 11
    .line 12
    .line 13
    const-string v1, ":"

    .line 14
    .line 15
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 16
    .line 17
    .line 18
    iget v1, p0, Lcom/yunpan/appmanage/util/k;->j0:I

    .line 19
    .line 20
    const-string v2, "/"

    .line 21
    .line 22
    invoke-static {v0, v1, v2}, Landroid/support/v4/media/session/a;->s(Ljava/lang/StringBuilder;ILjava/lang/String;)Ljava/lang/String;

    .line 23
    .line 24
    .line 25
    move-result-object v0

    .line 26
    :try_start_0
    iget-object v1, p0, Lcom/yunpan/appmanage/util/k;->a:Landroid/content/ContextWrapper;

    .line 27
    .line 28
    const/16 v2, 0x140

    .line 29
    .line 30
    invoke-static {v1, v2}, Lcom/yunpan/appmanage/util/k;->d(Landroid/content/Context;I)I

    .line 31
    .line 32
    .line 33
    move-result v1

    .line 34
    invoke-static {v1, v1, v0}, La9/o;->J(IILjava/lang/String;)Landroid/graphics/Bitmap;

    .line 35
    .line 36
    .line 37
    move-result-object v2

    .line 38
    const-string v3, "qrCode_share"

    .line 39
    .line 40
    invoke-virtual {p0, v2, v3}, Lcom/yunpan/appmanage/util/k;->n(Landroid/graphics/Bitmap;Ljava/lang/String;)V

    .line 41
    .line 42
    .line 43
    new-instance v2, Ljava/lang/StringBuilder;

    .line 44
    .line 45
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 46
    .line 47
    .line 48
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 49
    .line 50
    .line 51
    const-string v3, "url.html"

    .line 52
    .line 53
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 54
    .line 55
    .line 56
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 57
    .line 58
    .line 59
    move-result-object v2

    .line 60
    invoke-static {v1, v1, v2}, La9/o;->J(IILjava/lang/String;)Landroid/graphics/Bitmap;

    .line 61
    .line 62
    .line 63
    move-result-object v2

    .line 64
    const-string v3, "qrCode_url"

    .line 65
    .line 66
    invoke-virtual {p0, v2, v3}, Lcom/yunpan/appmanage/util/k;->n(Landroid/graphics/Bitmap;Ljava/lang/String;)V

    .line 67
    .line 68
    .line 69
    new-instance v2, Ljava/lang/StringBuilder;

    .line 70
    .line 71
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 72
    .line 73
    .line 74
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 75
    .line 76
    .line 77
    const-string v0, "cmd.html"

    .line 78
    .line 79
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 80
    .line 81
    .line 82
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 83
    .line 84
    .line 85
    move-result-object v0

    .line 86
    invoke-static {v1, v1, v0}, La9/o;->J(IILjava/lang/String;)Landroid/graphics/Bitmap;

    .line 87
    .line 88
    .line 89
    move-result-object v0

    .line 90
    const-string v1, "qrCode_cmd"

    .line 91
    .line 92
    invoke-virtual {p0, v0, v1}, Lcom/yunpan/appmanage/util/k;->n(Landroid/graphics/Bitmap;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 93
    .line 94
    .line 95
    :catch_0
    return-void
.end method

.method public final p()V
    .locals 3

    .line 1
    sget-object v0, Lcom/yunpan/appmanage/util/v;->a:Lcom/yunpan/appmanage/util/w;

    .line 2
    .line 3
    iget v0, v0, Lcom/yunpan/appmanage/util/w;->p0:I

    .line 4
    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    const/16 v0, 0x50

    .line 8
    .line 9
    iput v0, p0, Lcom/yunpan/appmanage/util/k;->R:I

    .line 10
    .line 11
    const/16 v0, 0xf0

    .line 12
    .line 13
    iput v0, p0, Lcom/yunpan/appmanage/util/k;->S:I

    .line 14
    .line 15
    const/16 v0, 0x87

    .line 16
    .line 17
    iput v0, p0, Lcom/yunpan/appmanage/util/k;->T:I

    .line 18
    .line 19
    goto :goto_0

    .line 20
    :cond_0
    const/4 v1, 0x1

    .line 21
    const/16 v2, 0x140

    .line 22
    .line 23
    if-ne v0, v1, :cond_1

    .line 24
    .line 25
    const/16 v0, 0xa0

    .line 26
    .line 27
    iput v0, p0, Lcom/yunpan/appmanage/util/k;->R:I

    .line 28
    .line 29
    iput v2, p0, Lcom/yunpan/appmanage/util/k;->S:I

    .line 30
    .line 31
    const/16 v0, 0xb4

    .line 32
    .line 33
    iput v0, p0, Lcom/yunpan/appmanage/util/k;->T:I

    .line 34
    .line 35
    goto :goto_0

    .line 36
    :cond_1
    iput v2, p0, Lcom/yunpan/appmanage/util/k;->R:I

    .line 37
    .line 38
    const/16 v0, 0x1e0

    .line 39
    .line 40
    iput v0, p0, Lcom/yunpan/appmanage/util/k;->S:I

    .line 41
    .line 42
    const/16 v0, 0x10e

    .line 43
    .line 44
    iput v0, p0, Lcom/yunpan/appmanage/util/k;->T:I

    .line 45
    .line 46
    :goto_0
    return-void
.end method
