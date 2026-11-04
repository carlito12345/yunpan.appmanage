.class public Lcom/yunpan/appmanage/service/AccService;
.super Landroid/accessibilityservice/AccessibilityService;
.source "SourceFile"


# static fields
.field public static final synthetic U0:I


# instance fields
.field public final A:Lta/a;

.field public final B:Lta/f;

.field public final C:Ljava/util/LinkedHashSet;

.field public D:Ljava/lang/String;

.field public E:Ljava/lang/String;

.field public F:Z

.field public final G:Lta/e;

.field public H:J

.field public I:I

.field public K:J

.field public L:I

.field public M:J

.field public final M0:Ljava/util/HashMap;

.field public N:I

.field public N0:Ljava/util/concurrent/ExecutorService;

.field public O:J

.field public O0:Landroid/media/AudioManager;

.field public final P:Ljava/util/HashSet;

.field public P0:Z

.field public final Q0:Ljava/util/LinkedList;

.field public final R:Ljava/util/HashSet;

.field public volatile R0:Z

.field public S:Lz7/s;

.field public final S0:Ljava/util/LinkedList;

.field public final T:Ljava/lang/String;

.field public volatile T0:Z

.field public V:Lya/i;

.field public final X:Ljava/util/HashSet;

.field public Y:Lz7/o;

.field public Z:Ljava/util/ArrayList;

.field public a:Ljava/lang/String;

.field public b:Ljava/lang/String;

.field public c:Lpa/h;

.field public d:Lcom/yunpan/appmanage/carsdk/x;

.field public e:Lcom/yunpan/appmanage/carsdk/m;

.field public f:Lcom/yunpan/appmanage/carsdk/i;

.field public g:J

.field public final h:La2/k;

.field public h0:Lta/o;

.field public i:Ly3/a;

.field public final j:Landroid/os/Handler;

.field public k:Ljava/lang/String;

.field public final l:Lta/e;

.field public m:J

.field public n:J

.field public p:Landroid/hardware/usb/UsbManager;

.field public final q:Ljava/util/HashSet;

.field public r:Landroid/hardware/SensorManager;

.field public s:F

.field public final t:Lha/u;

.field public t0:Ljava/util/concurrent/ExecutorService;

.field public v:I

.field public final w:Lc1/a;

.field public final x:Ljava/util/HashSet;

.field public final y:Lta/f;

.field public final z:Ljava/util/concurrent/atomic/AtomicBoolean;


# direct methods
.method public constructor <init>()V
    .locals 8

    .line 1
    invoke-direct {p0}, Landroid/accessibilityservice/AccessibilityService;-><init>()V

    .line 2
    .line 3
    .line 4
    const-string v0, ""

    .line 5
    .line 6
    iput-object v0, p0, Lcom/yunpan/appmanage/service/AccService;->a:Ljava/lang/String;

    .line 7
    .line 8
    iput-object v0, p0, Lcom/yunpan/appmanage/service/AccService;->b:Ljava/lang/String;

    .line 9
    .line 10
    const/4 v1, 0x0

    .line 11
    iput-object v1, p0, Lcom/yunpan/appmanage/service/AccService;->d:Lcom/yunpan/appmanage/carsdk/x;

    .line 12
    .line 13
    iput-object v1, p0, Lcom/yunpan/appmanage/service/AccService;->e:Lcom/yunpan/appmanage/carsdk/m;

    .line 14
    .line 15
    iput-object v1, p0, Lcom/yunpan/appmanage/service/AccService;->f:Lcom/yunpan/appmanage/carsdk/i;

    .line 16
    .line 17
    const-wide/16 v2, 0x0

    .line 18
    .line 19
    iput-wide v2, p0, Lcom/yunpan/appmanage/service/AccService;->g:J

    .line 20
    .line 21
    new-instance v4, La2/k;

    .line 22
    .line 23
    const/4 v5, 0x5

    .line 24
    invoke-direct {v4, v5, p0}, La2/k;-><init>(ILjava/lang/Object;)V

    .line 25
    .line 26
    .line 27
    iput-object v4, p0, Lcom/yunpan/appmanage/service/AccService;->h:La2/k;

    .line 28
    .line 29
    iput-object v1, p0, Lcom/yunpan/appmanage/service/AccService;->i:Ly3/a;

    .line 30
    .line 31
    new-instance v4, Landroid/os/Handler;

    .line 32
    .line 33
    invoke-direct {v4}, Landroid/os/Handler;-><init>()V

    .line 34
    .line 35
    .line 36
    iput-object v4, p0, Lcom/yunpan/appmanage/service/AccService;->j:Landroid/os/Handler;

    .line 37
    .line 38
    iput-object v0, p0, Lcom/yunpan/appmanage/service/AccService;->k:Ljava/lang/String;

    .line 39
    .line 40
    new-instance v4, Lta/e;

    .line 41
    .line 42
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    .line 43
    .line 44
    .line 45
    move-result-object v5

    .line 46
    const/4 v6, 0x0

    .line 47
    invoke-direct {v4, p0, v5, v6}, Lta/e;-><init>(Lcom/yunpan/appmanage/service/AccService;Landroid/os/Looper;I)V

    .line 48
    .line 49
    .line 50
    iput-object v4, p0, Lcom/yunpan/appmanage/service/AccService;->l:Lta/e;

    .line 51
    .line 52
    iput-wide v2, p0, Lcom/yunpan/appmanage/service/AccService;->m:J

    .line 53
    .line 54
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 55
    .line 56
    .line 57
    move-result-wide v4

    .line 58
    iput-wide v4, p0, Lcom/yunpan/appmanage/service/AccService;->n:J

    .line 59
    .line 60
    new-instance v4, Ljava/util/HashSet;

    .line 61
    .line 62
    invoke-direct {v4}, Ljava/util/HashSet;-><init>()V

    .line 63
    .line 64
    .line 65
    iput-object v4, p0, Lcom/yunpan/appmanage/service/AccService;->q:Ljava/util/HashSet;

    .line 66
    .line 67
    const/high16 v4, -0x40800000    # -1.0f

    .line 68
    .line 69
    iput v4, p0, Lcom/yunpan/appmanage/service/AccService;->s:F

    .line 70
    .line 71
    new-instance v4, Lha/u;

    .line 72
    .line 73
    const/4 v5, 0x2

    .line 74
    invoke-direct {v4, v5, p0}, Lha/u;-><init>(ILjava/lang/Object;)V

    .line 75
    .line 76
    .line 77
    iput-object v4, p0, Lcom/yunpan/appmanage/service/AccService;->t:Lha/u;

    .line 78
    .line 79
    const/4 v4, -0x1

    .line 80
    iput v4, p0, Lcom/yunpan/appmanage/service/AccService;->v:I

    .line 81
    .line 82
    new-instance v5, Lc1/a;

    .line 83
    .line 84
    new-instance v6, Landroid/os/Handler;

    .line 85
    .line 86
    invoke-direct {v6}, Landroid/os/Handler;-><init>()V

    .line 87
    .line 88
    .line 89
    const/4 v7, 0x3

    .line 90
    invoke-direct {v5, p0, v6, v7}, Lc1/a;-><init>(Ljava/lang/Object;Landroid/os/Handler;I)V

    .line 91
    .line 92
    .line 93
    iput-object v5, p0, Lcom/yunpan/appmanage/service/AccService;->w:Lc1/a;

    .line 94
    .line 95
    new-instance v5, Ljava/util/HashSet;

    .line 96
    .line 97
    invoke-direct {v5}, Ljava/util/HashSet;-><init>()V

    .line 98
    .line 99
    .line 100
    iput-object v5, p0, Lcom/yunpan/appmanage/service/AccService;->x:Ljava/util/HashSet;

    .line 101
    .line 102
    new-instance v5, Lta/f;

    .line 103
    .line 104
    const/4 v6, 0x0

    .line 105
    invoke-direct {v5, p0, v6}, Lta/f;-><init>(Lcom/yunpan/appmanage/service/AccService;I)V

    .line 106
    .line 107
    .line 108
    iput-object v5, p0, Lcom/yunpan/appmanage/service/AccService;->y:Lta/f;

    .line 109
    .line 110
    new-instance v5, Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 111
    .line 112
    invoke-direct {v5, v6}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    .line 113
    .line 114
    .line 115
    iput-object v5, p0, Lcom/yunpan/appmanage/service/AccService;->z:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 116
    .line 117
    new-instance v5, Lta/a;

    .line 118
    .line 119
    const/4 v7, 0x2

    .line 120
    invoke-direct {v5, p0, v7}, Lta/a;-><init>(Lcom/yunpan/appmanage/service/AccService;I)V

    .line 121
    .line 122
    .line 123
    iput-object v5, p0, Lcom/yunpan/appmanage/service/AccService;->A:Lta/a;

    .line 124
    .line 125
    new-instance v5, Lta/f;

    .line 126
    .line 127
    const/4 v7, 0x1

    .line 128
    invoke-direct {v5, p0, v7}, Lta/f;-><init>(Lcom/yunpan/appmanage/service/AccService;I)V

    .line 129
    .line 130
    .line 131
    iput-object v5, p0, Lcom/yunpan/appmanage/service/AccService;->B:Lta/f;

    .line 132
    .line 133
    new-instance v5, Ljava/util/LinkedHashSet;

    .line 134
    .line 135
    invoke-direct {v5}, Ljava/util/LinkedHashSet;-><init>()V

    .line 136
    .line 137
    .line 138
    iput-object v5, p0, Lcom/yunpan/appmanage/service/AccService;->C:Ljava/util/LinkedHashSet;

    .line 139
    .line 140
    iput-object v0, p0, Lcom/yunpan/appmanage/service/AccService;->D:Ljava/lang/String;

    .line 141
    .line 142
    iput-object v0, p0, Lcom/yunpan/appmanage/service/AccService;->E:Ljava/lang/String;

    .line 143
    .line 144
    iput-boolean v6, p0, Lcom/yunpan/appmanage/service/AccService;->F:Z

    .line 145
    .line 146
    new-instance v0, Lta/e;

    .line 147
    .line 148
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    .line 149
    .line 150
    .line 151
    move-result-object v5

    .line 152
    invoke-direct {v0, p0, v5, v7}, Lta/e;-><init>(Lcom/yunpan/appmanage/service/AccService;Landroid/os/Looper;I)V

    .line 153
    .line 154
    .line 155
    iput-object v0, p0, Lcom/yunpan/appmanage/service/AccService;->G:Lta/e;

    .line 156
    .line 157
    iput-wide v2, p0, Lcom/yunpan/appmanage/service/AccService;->H:J

    .line 158
    .line 159
    iput v4, p0, Lcom/yunpan/appmanage/service/AccService;->I:I

    .line 160
    .line 161
    iput-wide v2, p0, Lcom/yunpan/appmanage/service/AccService;->K:J

    .line 162
    .line 163
    iput v4, p0, Lcom/yunpan/appmanage/service/AccService;->L:I

    .line 164
    .line 165
    iput-wide v2, p0, Lcom/yunpan/appmanage/service/AccService;->M:J

    .line 166
    .line 167
    iput v4, p0, Lcom/yunpan/appmanage/service/AccService;->N:I

    .line 168
    .line 169
    iput-wide v2, p0, Lcom/yunpan/appmanage/service/AccService;->O:J

    .line 170
    .line 171
    new-instance v0, Ljava/util/HashSet;

    .line 172
    .line 173
    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 174
    .line 175
    .line 176
    iput-object v0, p0, Lcom/yunpan/appmanage/service/AccService;->P:Ljava/util/HashSet;

    .line 177
    .line 178
    new-instance v0, Ljava/util/HashSet;

    .line 179
    .line 180
    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 181
    .line 182
    .line 183
    iput-object v0, p0, Lcom/yunpan/appmanage/service/AccService;->R:Ljava/util/HashSet;

    .line 184
    .line 185
    iput-object v1, p0, Lcom/yunpan/appmanage/service/AccService;->S:Lz7/s;

    .line 186
    .line 187
    const-string v0, "EasyWindow_KEYMAP_Tag"

    .line 188
    .line 189
    iput-object v0, p0, Lcom/yunpan/appmanage/service/AccService;->T:Ljava/lang/String;

    .line 190
    .line 191
    iput-object v1, p0, Lcom/yunpan/appmanage/service/AccService;->V:Lya/i;

    .line 192
    .line 193
    new-instance v0, Ljava/util/HashSet;

    .line 194
    .line 195
    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 196
    .line 197
    .line 198
    iput-object v0, p0, Lcom/yunpan/appmanage/service/AccService;->X:Ljava/util/HashSet;

    .line 199
    .line 200
    new-instance v0, Ljava/util/ArrayList;

    .line 201
    .line 202
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 203
    .line 204
    .line 205
    iput-object v0, p0, Lcom/yunpan/appmanage/service/AccService;->Z:Ljava/util/ArrayList;

    .line 206
    .line 207
    iput-object v1, p0, Lcom/yunpan/appmanage/service/AccService;->h0:Lta/o;

    .line 208
    .line 209
    const/4 v0, 0x1

    .line 210
    invoke-static {v0}, Ljava/util/concurrent/Executors;->newFixedThreadPool(I)Ljava/util/concurrent/ExecutorService;

    .line 211
    .line 212
    .line 213
    move-result-object v0

    .line 214
    iput-object v0, p0, Lcom/yunpan/appmanage/service/AccService;->t0:Ljava/util/concurrent/ExecutorService;

    .line 215
    .line 216
    new-instance v0, Ljava/util/HashMap;

    .line 217
    .line 218
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 219
    .line 220
    .line 221
    iput-object v0, p0, Lcom/yunpan/appmanage/service/AccService;->M0:Ljava/util/HashMap;

    .line 222
    .line 223
    const/4 v0, 0x4

    .line 224
    invoke-static {v0}, Ljava/util/concurrent/Executors;->newFixedThreadPool(I)Ljava/util/concurrent/ExecutorService;

    .line 225
    .line 226
    .line 227
    move-result-object v0

    .line 228
    iput-object v0, p0, Lcom/yunpan/appmanage/service/AccService;->N0:Ljava/util/concurrent/ExecutorService;

    .line 229
    .line 230
    iput-boolean v6, p0, Lcom/yunpan/appmanage/service/AccService;->P0:Z

    .line 231
    .line 232
    new-instance v0, Ljava/util/LinkedList;

    .line 233
    .line 234
    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    .line 235
    .line 236
    .line 237
    iput-object v0, p0, Lcom/yunpan/appmanage/service/AccService;->Q0:Ljava/util/LinkedList;

    .line 238
    .line 239
    iput-boolean v6, p0, Lcom/yunpan/appmanage/service/AccService;->R0:Z

    .line 240
    .line 241
    new-instance v0, Ljava/util/LinkedList;

    .line 242
    .line 243
    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    .line 244
    .line 245
    .line 246
    iput-object v0, p0, Lcom/yunpan/appmanage/service/AccService;->S0:Ljava/util/LinkedList;

    .line 247
    .line 248
    iput-boolean v6, p0, Lcom/yunpan/appmanage/service/AccService;->T0:Z

    .line 249
    .line 250
    return-void
.end method

.method public static a(Lcom/yunpan/appmanage/service/AccService;Lmc/b;)V
    .locals 8

    .line 1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    :try_start_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 5
    .line 6
    .line 7
    move-result-wide v0

    .line 8
    const-wide/32 v2, 0xdbba0

    .line 9
    .line 10
    .line 11
    sub-long/2addr v0, v2

    .line 12
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 13
    .line 14
    .line 15
    move-result-wide v2

    .line 16
    const-wide/32 v4, 0x6ddd00

    .line 17
    .line 18
    .line 19
    add-long/2addr v2, v4

    .line 20
    sget v4, Landroid/os/Build$VERSION;->SDK_INT:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 21
    .line 22
    const/16 v5, 0x16

    .line 23
    .line 24
    const-string v6, "usagestats"

    .line 25
    .line 26
    if-lt v4, v5, :cond_0

    .line 27
    .line 28
    :try_start_1
    invoke-virtual {p0, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 29
    .line 30
    .line 31
    move-result-object v4

    .line 32
    check-cast v4, Landroid/app/usage/UsageStatsManager;

    .line 33
    .line 34
    goto :goto_0

    .line 35
    :cond_0
    invoke-virtual {p0, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 36
    .line 37
    .line 38
    move-result-object v4

    .line 39
    check-cast v4, Landroid/app/usage/UsageStatsManager;

    .line 40
    .line 41
    :goto_0
    invoke-virtual {v4, v0, v1, v2, v3}, Landroid/app/usage/UsageStatsManager;->queryEvents(JJ)Landroid/app/usage/UsageEvents;

    .line 42
    .line 43
    .line 44
    move-result-object v0

    .line 45
    const-wide/16 v1, 0x0

    .line 46
    .line 47
    move-wide v3, v1

    .line 48
    :cond_1
    :goto_1
    invoke-virtual {v0}, Landroid/app/usage/UsageEvents;->hasNextEvent()Z

    .line 49
    .line 50
    .line 51
    move-result v5

    .line 52
    if-eqz v5, :cond_2

    .line 53
    .line 54
    new-instance v5, Landroid/app/usage/UsageEvents$Event;

    .line 55
    .line 56
    invoke-direct {v5}, Landroid/app/usage/UsageEvents$Event;-><init>()V

    .line 57
    .line 58
    .line 59
    invoke-virtual {v0, v5}, Landroid/app/usage/UsageEvents;->getNextEvent(Landroid/app/usage/UsageEvents$Event;)Z

    .line 60
    .line 61
    .line 62
    invoke-virtual {v5}, Landroid/app/usage/UsageEvents$Event;->getEventType()I

    .line 63
    .line 64
    .line 65
    move-result v6

    .line 66
    const/16 v7, 0xf

    .line 67
    .line 68
    if-ne v6, v7, :cond_1

    .line 69
    .line 70
    invoke-virtual {v5}, Landroid/app/usage/UsageEvents$Event;->getTimeStamp()J

    .line 71
    .line 72
    .line 73
    move-result-wide v3

    .line 74
    goto :goto_1

    .line 75
    :cond_2
    cmp-long v0, v3, v1

    .line 76
    .line 77
    if-nez v0, :cond_3

    .line 78
    .line 79
    goto :goto_2

    .line 80
    :cond_3
    sget-object v0, Lwa/t;->a:Lwa/u;

    .line 81
    .line 82
    iget-wide v0, v0, Lwa/u;->g:J

    .line 83
    .line 84
    const-wide/16 v5, 0x1388

    .line 85
    .line 86
    sub-long/2addr v3, v5

    .line 87
    cmp-long v2, v0, v3

    .line 88
    .line 89
    if-lez v2, :cond_4

    .line 90
    .line 91
    goto :goto_2

    .line 92
    :cond_4
    const-string v0, "\u65e0\u969c\u788d"

    .line 93
    .line 94
    invoke-static {p0, v0}, Lcom/yunpan/appmanage/service/BootReceiver;->a(Landroid/content/Context;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 95
    .line 96
    .line 97
    :catch_0
    invoke-virtual {p1}, Lmc/b;->b()V

    .line 98
    .line 99
    .line 100
    :goto_2
    return-void
.end method


# virtual methods
.method public final b(Lz7/o;)V
    .locals 3

    .line 1
    if-eqz p1, :cond_4

    .line 2
    .line 3
    iget-object v0, p1, Lz7/o;->a:Ljava/util/ArrayList;

    .line 4
    .line 5
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    goto :goto_0

    .line 12
    :cond_0
    iget-boolean v0, p0, Lcom/yunpan/appmanage/service/AccService;->R0:Z

    .line 13
    .line 14
    if-eqz v0, :cond_1

    .line 15
    .line 16
    return-void

    .line 17
    :cond_1
    iget-object v0, p0, Lcom/yunpan/appmanage/service/AccService;->N0:Ljava/util/concurrent/ExecutorService;

    .line 18
    .line 19
    if-eqz v0, :cond_2

    .line 20
    .line 21
    invoke-interface {v0}, Ljava/util/concurrent/ExecutorService;->isShutdown()Z

    .line 22
    .line 23
    .line 24
    move-result v0

    .line 25
    if-eqz v0, :cond_3

    .line 26
    .line 27
    :cond_2
    const/4 v0, 0x4

    .line 28
    invoke-static {v0}, Ljava/util/concurrent/Executors;->newFixedThreadPool(I)Ljava/util/concurrent/ExecutorService;

    .line 29
    .line 30
    .line 31
    move-result-object v0

    .line 32
    iput-object v0, p0, Lcom/yunpan/appmanage/service/AccService;->N0:Ljava/util/concurrent/ExecutorService;

    .line 33
    .line 34
    :cond_3
    iget-object v0, p0, Lcom/yunpan/appmanage/service/AccService;->N0:Ljava/util/concurrent/ExecutorService;

    .line 35
    .line 36
    new-instance v1, Lta/b;

    .line 37
    .line 38
    const/4 v2, 0x0

    .line 39
    invoke-direct {v1, p0, p1, v2}, Lta/b;-><init>(Lcom/yunpan/appmanage/service/AccService;Lz7/o;I)V

    .line 40
    .line 41
    .line 42
    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    .line 43
    .line 44
    .line 45
    :cond_4
    :goto_0
    return-void
.end method

.method public final c(Ljava/lang/String;Ljava/lang/String;)V
    .locals 16

    .line 1
    move-object/from16 v1, p0

    .line 2
    .line 3
    move-object/from16 v0, p1

    .line 4
    .line 5
    move-object/from16 v2, p2

    .line 6
    .line 7
    :try_start_0
    sget-object v3, Ljava/lang/System;->out:Ljava/io/PrintStream;

    .line 8
    .line 9
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 10
    .line 11
    .line 12
    const-string v3, "null"

    .line 13
    .line 14
    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 15
    .line 16
    .line 17
    move-result v3

    .line 18
    if-eqz v3, :cond_0

    .line 19
    .line 20
    return-void

    .line 21
    :cond_0
    const-string v3, ".widget.Toast"

    .line 22
    .line 23
    invoke-virtual {v2, v3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    .line 24
    .line 25
    .line 26
    move-result v3

    .line 27
    if-eqz v3, :cond_1

    .line 28
    .line 29
    return-void

    .line 30
    :cond_1
    const-string v3, ".inputmethodservice.SoftInputWindow"

    .line 31
    .line 32
    invoke-virtual {v2, v3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    .line 33
    .line 34
    .line 35
    move-result v3

    .line 36
    if-eqz v3, :cond_2

    .line 37
    .line 38
    return-void

    .line 39
    :cond_2
    invoke-static {}, Lwa/s;->c()Lwa/s;

    .line 40
    .line 41
    .line 42
    move-result-object v3

    .line 43
    iget-wide v3, v3, Lwa/s;->h:J
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 44
    .line 45
    iget-object v5, v1, Lcom/yunpan/appmanage/service/AccService;->j:Landroid/os/Handler;

    .line 46
    .line 47
    const-wide/16 v6, 0x12c

    .line 48
    .line 49
    const-wide/16 v8, 0x0

    .line 50
    .line 51
    const/16 v10, 0x12

    .line 52
    .line 53
    cmp-long v11, v3, v8

    .line 54
    .line 55
    if-lez v11, :cond_4

    .line 56
    .line 57
    :try_start_1
    const-string v3, "com.leapmotor.system.demo.DemoActivity"

    .line 58
    .line 59
    invoke-virtual {v2, v3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    .line 60
    .line 61
    .line 62
    move-result v3

    .line 63
    if-eqz v3, :cond_4

    .line 64
    .line 65
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 66
    .line 67
    if-ge v3, v10, :cond_3

    .line 68
    .line 69
    goto :goto_0

    .line 70
    :cond_3
    new-instance v3, Lta/a;

    .line 71
    .line 72
    const/16 v4, 0xb

    .line 73
    .line 74
    invoke-direct {v3, v1, v4}, Lta/a;-><init>(Lcom/yunpan/appmanage/service/AccService;I)V

    .line 75
    .line 76
    .line 77
    invoke-virtual {v5, v3, v6, v7}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 78
    .line 79
    .line 80
    :goto_0
    invoke-static {}, Lwa/s;->c()Lwa/s;

    .line 81
    .line 82
    .line 83
    move-result-object v3

    .line 84
    iput-wide v8, v3, Lwa/s;->h:J

    .line 85
    .line 86
    goto :goto_1

    .line 87
    :catch_0
    move-exception v0

    .line 88
    goto/16 :goto_9

    .line 89
    .line 90
    :cond_4
    :goto_1
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    .line 91
    .line 92
    .line 93
    move-result-object v3

    .line 94
    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 95
    .line 96
    .line 97
    move-result v3
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 98
    const-string v4, "android"

    .line 99
    .line 100
    if-eqz v3, :cond_5

    .line 101
    .line 102
    :try_start_2
    invoke-virtual {v2, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 103
    .line 104
    .line 105
    move-result v3

    .line 106
    if-eqz v3, :cond_5

    .line 107
    .line 108
    return-void

    .line 109
    :cond_5
    sget-object v3, Lwa/t;->a:Lwa/u;

    .line 110
    .line 111
    iget-boolean v8, v3, Lwa/u;->G:Z
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 112
    .line 113
    iget-object v9, v1, Lcom/yunpan/appmanage/service/AccService;->G:Lta/e;

    .line 114
    .line 115
    const-string v11, "com.android.packageinstaller"

    .line 116
    .line 117
    const-string v12, ".RequestPermissionActivity"

    .line 118
    .line 119
    if-eqz v8, :cond_8

    .line 120
    .line 121
    :try_start_3
    invoke-virtual {v2, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 122
    .line 123
    .line 124
    move-result v8
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    .line 125
    iget-object v13, v1, Lcom/yunpan/appmanage/service/AccService;->z:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 126
    .line 127
    iget-object v14, v1, Lcom/yunpan/appmanage/service/AccService;->B:Lta/f;

    .line 128
    .line 129
    iget-object v15, v1, Lcom/yunpan/appmanage/service/AccService;->A:Lta/a;

    .line 130
    .line 131
    if-nez v8, :cond_7

    .line 132
    .line 133
    :try_start_4
    const-string v8, ".GrantPermissionsActivity"

    .line 134
    .line 135
    invoke-virtual {v2, v8}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    .line 136
    .line 137
    .line 138
    move-result v8

    .line 139
    if-nez v8, :cond_7

    .line 140
    .line 141
    invoke-virtual {v0, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 142
    .line 143
    .line 144
    move-result v8

    .line 145
    if-nez v8, :cond_7

    .line 146
    .line 147
    const-string v8, ".PackageInstallerActivity"

    .line 148
    .line 149
    invoke-virtual {v2, v8}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    .line 150
    .line 151
    .line 152
    move-result v8

    .line 153
    if-eqz v8, :cond_6

    .line 154
    .line 155
    goto :goto_2

    .line 156
    :cond_6
    invoke-virtual {v9, v15}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 157
    .line 158
    .line 159
    invoke-virtual {v9, v14}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 160
    .line 161
    .line 162
    invoke-virtual {v13}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    .line 163
    .line 164
    .line 165
    move-result v8

    .line 166
    if-eqz v8, :cond_8

    .line 167
    .line 168
    const-wide/16 v6, 0x29a

    .line 169
    .line 170
    invoke-virtual {v9, v14, v6, v7}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 171
    .line 172
    .line 173
    goto :goto_3

    .line 174
    :cond_7
    :goto_2
    invoke-virtual {v9, v15}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 175
    .line 176
    .line 177
    invoke-virtual {v9, v14}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 178
    .line 179
    .line 180
    invoke-virtual {v13}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    .line 181
    .line 182
    .line 183
    move-result v6

    .line 184
    if-nez v6, :cond_8

    .line 185
    .line 186
    const-wide/16 v6, 0x1f4

    .line 187
    .line 188
    invoke-virtual {v9, v15, v6, v7}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 189
    .line 190
    .line 191
    :cond_8
    :goto_3
    invoke-virtual {v0, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 192
    .line 193
    .line 194
    move-result v6

    .line 195
    if-eqz v6, :cond_9

    .line 196
    .line 197
    return-void

    .line 198
    :cond_9
    const-string v6, "com.android.settings"

    .line 199
    .line 200
    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 201
    .line 202
    .line 203
    move-result v6

    .line 204
    if-eqz v6, :cond_b

    .line 205
    .line 206
    sget v6, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 207
    .line 208
    const/16 v7, 0x21

    .line 209
    .line 210
    if-lt v6, v7, :cond_b

    .line 211
    .line 212
    invoke-virtual {v2, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 213
    .line 214
    .line 215
    move-result v7

    .line 216
    if-eqz v7, :cond_b

    .line 217
    .line 218
    const/16 v0, 0x17

    .line 219
    .line 220
    if-ge v6, v0, :cond_a

    .line 221
    .line 222
    goto :goto_4

    .line 223
    :cond_a
    new-instance v0, Lta/a;

    .line 224
    .line 225
    const/4 v2, 0x6

    .line 226
    invoke-direct {v0, v1, v2}, Lta/a;-><init>(Lcom/yunpan/appmanage/service/AccService;I)V

    .line 227
    .line 228
    .line 229
    const-wide/16 v2, 0xc8

    .line 230
    .line 231
    invoke-virtual {v5, v0, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 232
    .line 233
    .line 234
    :goto_4
    return-void

    .line 235
    :cond_b
    const-string v6, ".FallbackHome"

    .line 236
    .line 237
    invoke-virtual {v2, v6}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    .line 238
    .line 239
    .line 240
    move-result v6

    .line 241
    if-eqz v6, :cond_c

    .line 242
    .line 243
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 244
    .line 245
    .line 246
    move-result-wide v6

    .line 247
    const-wide/32 v11, 0x15f90

    .line 248
    .line 249
    .line 250
    cmp-long v8, v6, v11

    .line 251
    .line 252
    if-gez v8, :cond_c

    .line 253
    .line 254
    new-instance v0, Lta/a;

    .line 255
    .line 256
    const/4 v2, 0x1

    .line 257
    invoke-direct {v0, v1, v2}, Lta/a;-><init>(Lcom/yunpan/appmanage/service/AccService;I)V

    .line 258
    .line 259
    .line 260
    const-wide/16 v2, 0x7530

    .line 261
    .line 262
    invoke-virtual {v5, v0, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 263
    .line 264
    .line 265
    return-void

    .line 266
    :cond_c
    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 267
    .line 268
    .line 269
    move-result v6

    .line 270
    if-eqz v6, :cond_10

    .line 271
    .line 272
    const-string v6, ".ResolverActivity"

    .line 273
    .line 274
    invoke-virtual {v2, v6}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    .line 275
    .line 276
    .line 277
    move-result v6

    .line 278
    if-nez v6, :cond_d

    .line 279
    .line 280
    const-string v6, ".ChooserActivity"

    .line 281
    .line 282
    invoke-virtual {v2, v6}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    .line 283
    .line 284
    .line 285
    move-result v6

    .line 286
    if-eqz v6, :cond_10

    .line 287
    .line 288
    :cond_d
    iget-boolean v0, v3, Lwa/u;->Y:Z

    .line 289
    .line 290
    if-eqz v0, :cond_f

    .line 291
    .line 292
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 293
    .line 294
    const/16 v2, 0x15

    .line 295
    .line 296
    const-wide/16 v3, 0x170

    .line 297
    .line 298
    if-ge v0, v2, :cond_e

    .line 299
    .line 300
    new-instance v0, Lta/a;

    .line 301
    .line 302
    const/4 v2, 0x7

    .line 303
    invoke-direct {v0, v1, v2}, Lta/a;-><init>(Lcom/yunpan/appmanage/service/AccService;I)V

    .line 304
    .line 305
    .line 306
    invoke-virtual {v5, v0, v3, v4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 307
    .line 308
    .line 309
    goto :goto_5

    .line 310
    :cond_e
    new-instance v0, Lta/a;

    .line 311
    .line 312
    const/16 v2, 0x8

    .line 313
    .line 314
    invoke-direct {v0, v1, v2}, Lta/a;-><init>(Lcom/yunpan/appmanage/service/AccService;I)V

    .line 315
    .line 316
    .line 317
    invoke-virtual {v5, v0, v3, v4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 318
    .line 319
    .line 320
    :cond_f
    :goto_5
    return-void

    .line 321
    :cond_10
    const-string v6, "com.android.systemui"

    .line 322
    .line 323
    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 324
    .line 325
    .line 326
    move-result v6

    .line 327
    if-eqz v6, :cond_15

    .line 328
    .line 329
    iget-boolean v0, v3, Lwa/u;->b0:Z

    .line 330
    .line 331
    if-eqz v0, :cond_11

    .line 332
    .line 333
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 334
    .line 335
    const/16 v2, 0x20

    .line 336
    .line 337
    if-lt v0, v2, :cond_11

    .line 338
    .line 339
    iget-object v0, v1, Lcom/yunpan/appmanage/service/AccService;->j:Landroid/os/Handler;

    .line 340
    .line 341
    new-instance v2, Lta/a;

    .line 342
    .line 343
    const/16 v4, 0xa

    .line 344
    .line 345
    invoke-direct {v2, v1, v4}, Lta/a;-><init>(Lcom/yunpan/appmanage/service/AccService;I)V

    .line 346
    .line 347
    .line 348
    const-wide/16 v6, 0x12c

    .line 349
    .line 350
    invoke-virtual {v0, v2, v6, v7}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 351
    .line 352
    .line 353
    :cond_11
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 354
    .line 355
    if-ge v0, v10, :cond_12

    .line 356
    .line 357
    return-void

    .line 358
    :cond_12
    iget-boolean v0, v3, Lwa/u;->W:Z

    .line 359
    .line 360
    if-eqz v0, :cond_13

    .line 361
    .line 362
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 363
    .line 364
    .line 365
    move-result-wide v6

    .line 366
    iget-wide v8, v1, Lcom/yunpan/appmanage/service/AccService;->n:J

    .line 367
    .line 368
    sub-long v8, v6, v8

    .line 369
    .line 370
    const-wide/32 v10, 0x1d4c0

    .line 371
    .line 372
    .line 373
    cmp-long v0, v8, v10

    .line 374
    .line 375
    if-lez v0, :cond_13

    .line 376
    .line 377
    iget-wide v8, v1, Lcom/yunpan/appmanage/service/AccService;->g:J

    .line 378
    .line 379
    sub-long/2addr v6, v8

    .line 380
    const-wide/16 v8, 0x2710

    .line 381
    .line 382
    cmp-long v0, v6, v8

    .line 383
    .line 384
    if-gez v0, :cond_13

    .line 385
    .line 386
    return-void

    .line 387
    :cond_13
    iget-boolean v0, v3, Lwa/u;->V:Z

    .line 388
    .line 389
    if-eqz v0, :cond_14

    .line 390
    .line 391
    new-instance v0, Lta/a;

    .line 392
    .line 393
    const/16 v2, 0x9

    .line 394
    .line 395
    invoke-direct {v0, v1, v2}, Lta/a;-><init>(Lcom/yunpan/appmanage/service/AccService;I)V

    .line 396
    .line 397
    .line 398
    const-wide/16 v2, 0x190

    .line 399
    .line 400
    invoke-virtual {v5, v0, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 401
    .line 402
    .line 403
    :cond_14
    return-void

    .line 404
    :cond_15
    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 405
    .line 406
    .line 407
    move-result v4

    .line 408
    if-eqz v4, :cond_18

    .line 409
    .line 410
    iget-boolean v0, v3, Lwa/u;->b0:Z

    .line 411
    .line 412
    if-eqz v0, :cond_17

    .line 413
    .line 414
    const-string v0, ".app.LogAccessDialogActivity"

    .line 415
    .line 416
    invoke-virtual {v2, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    .line 417
    .line 418
    .line 419
    move-result v0

    .line 420
    if-eqz v0, :cond_17

    .line 421
    .line 422
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 423
    .line 424
    if-ge v0, v10, :cond_16

    .line 425
    .line 426
    return-void

    .line 427
    :cond_16
    iget-object v0, v1, Lcom/yunpan/appmanage/service/AccService;->j:Landroid/os/Handler;

    .line 428
    .line 429
    new-instance v2, Lta/a;

    .line 430
    .line 431
    const/16 v3, 0xa

    .line 432
    .line 433
    invoke-direct {v2, v1, v3}, Lta/a;-><init>(Lcom/yunpan/appmanage/service/AccService;I)V

    .line 434
    .line 435
    .line 436
    const-wide/16 v3, 0x12c

    .line 437
    .line 438
    invoke-virtual {v0, v2, v3, v4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 439
    .line 440
    .line 441
    :cond_17
    return-void

    .line 442
    :cond_18
    invoke-static {}, Lwa/s;->c()Lwa/s;

    .line 443
    .line 444
    .line 445
    move-result-object v3

    .line 446
    iget-boolean v3, v3, Lwa/s;->a:Z

    .line 447
    .line 448
    const/4 v4, 0x0

    .line 449
    const/4 v5, 0x1

    .line 450
    if-eqz v3, :cond_1b

    .line 451
    .line 452
    const-string v3, "com.baidu.naviauto"

    .line 453
    .line 454
    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 455
    .line 456
    .line 457
    move-result v3

    .line 458
    if-eqz v3, :cond_1b

    .line 459
    .line 460
    iget-object v3, v1, Lcom/yunpan/appmanage/service/AccService;->f:Lcom/yunpan/appmanage/carsdk/i;

    .line 461
    .line 462
    iget-boolean v6, v3, Lcom/yunpan/appmanage/carsdk/i;->b:Z

    .line 463
    .line 464
    if-eqz v6, :cond_1a

    .line 465
    .line 466
    iget-object v3, v3, Lcom/yunpan/appmanage/carsdk/i;->a:Lc5/c;

    .line 467
    .line 468
    if-nez v3, :cond_19

    .line 469
    .line 470
    goto :goto_6

    .line 471
    :cond_19
    const/4 v3, 0x1

    .line 472
    goto :goto_7

    .line 473
    :cond_1a
    :goto_6
    const/4 v3, 0x0

    .line 474
    :goto_7
    if-nez v3, :cond_1b

    .line 475
    .line 476
    const/4 v3, -0x5

    .line 477
    invoke-virtual {v9, v3}, Landroid/os/Handler;->removeMessages(I)V

    .line 478
    .line 479
    .line 480
    const-wide/16 v6, 0x8ae

    .line 481
    .line 482
    invoke-virtual {v9, v3, v6, v7}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 483
    .line 484
    .line 485
    :cond_1b
    const-string v3, "android.widget."

    .line 486
    .line 487
    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 488
    .line 489
    .line 490
    move-result v3

    .line 491
    if-eqz v3, :cond_1c

    .line 492
    .line 493
    return-void

    .line 494
    :cond_1c
    const-string v3, ".app.Dialog"

    .line 495
    .line 496
    invoke-virtual {v2, v3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    .line 497
    .line 498
    .line 499
    move-result v3

    .line 500
    if-eqz v3, :cond_1d

    .line 501
    .line 502
    return-void

    .line 503
    :cond_1d
    const-string v3, ".app.AlertDialog"

    .line 504
    .line 505
    invoke-virtual {v2, v3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    .line 506
    .line 507
    .line 508
    move-result v3

    .line 509
    if-eqz v3, :cond_1e

    .line 510
    .line 511
    return-void

    .line 512
    :cond_1e
    iput-object v0, v1, Lcom/yunpan/appmanage/service/AccService;->D:Ljava/lang/String;

    .line 513
    .line 514
    iput-object v2, v1, Lcom/yunpan/appmanage/service/AccService;->E:Ljava/lang/String;

    .line 515
    .line 516
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    .line 517
    .line 518
    .line 519
    move-result-object v3

    .line 520
    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 521
    .line 522
    .line 523
    move-result v3

    .line 524
    if-eqz v3, :cond_1f

    .line 525
    .line 526
    const-class v3, Lha/p6;

    .line 527
    .line 528
    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    .line 529
    .line 530
    .line 531
    move-result-object v3

    .line 532
    invoke-virtual {v2, v3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    .line 533
    .line 534
    .line 535
    move-result v2

    .line 536
    if-eqz v2, :cond_1f

    .line 537
    .line 538
    iput-boolean v5, v1, Lcom/yunpan/appmanage/service/AccService;->F:Z

    .line 539
    .line 540
    goto :goto_8

    .line 541
    :cond_1f
    iput-boolean v4, v1, Lcom/yunpan/appmanage/service/AccService;->F:Z

    .line 542
    .line 543
    :goto_8
    iget-object v2, v1, Lcom/yunpan/appmanage/service/AccService;->k:Ljava/lang/String;

    .line 544
    .line 545
    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 546
    .line 547
    .line 548
    move-result v2

    .line 549
    if-eqz v2, :cond_20

    .line 550
    .line 551
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 552
    .line 553
    .line 554
    move-result-wide v2

    .line 555
    iget-wide v4, v1, Lcom/yunpan/appmanage/service/AccService;->m:J

    .line 556
    .line 557
    sub-long/2addr v2, v4

    .line 558
    const-wide/16 v4, 0x1d4

    .line 559
    .line 560
    cmp-long v6, v2, v4

    .line 561
    .line 562
    if-gez v6, :cond_20

    .line 563
    .line 564
    return-void

    .line 565
    :cond_20
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 566
    .line 567
    .line 568
    move-result-wide v2

    .line 569
    iput-wide v2, v1, Lcom/yunpan/appmanage/service/AccService;->m:J
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    .line 570
    .line 571
    iget-object v2, v1, Lcom/yunpan/appmanage/service/AccService;->C:Ljava/util/LinkedHashSet;

    .line 572
    .line 573
    :try_start_5
    invoke-virtual {v2, v0}, Ljava/util/AbstractCollection;->contains(Ljava/lang/Object;)Z

    .line 574
    .line 575
    .line 576
    move-result v3

    .line 577
    if-eqz v3, :cond_21

    .line 578
    .line 579
    invoke-virtual {v2, v0}, Ljava/util/AbstractCollection;->remove(Ljava/lang/Object;)Z

    .line 580
    .line 581
    .line 582
    :cond_21
    invoke-virtual {v2, v0}, Ljava/util/AbstractCollection;->add(Ljava/lang/Object;)Z

    .line 583
    .line 584
    .line 585
    invoke-static {}, Lwa/s;->c()Lwa/s;

    .line 586
    .line 587
    .line 588
    move-result-object v2

    .line 589
    iget-object v2, v2, Lwa/s;->i:Ljava/util/HashMap;

    .line 590
    .line 591
    invoke-virtual {v2}, Ljava/util/HashMap;->isEmpty()Z

    .line 592
    .line 593
    .line 594
    move-result v2

    .line 595
    if-nez v2, :cond_22

    .line 596
    .line 597
    invoke-static {}, Lwa/s;->c()Lwa/s;

    .line 598
    .line 599
    .line 600
    move-result-object v2

    .line 601
    iget-object v2, v2, Lwa/s;->i:Ljava/util/HashMap;

    .line 602
    .line 603
    invoke-virtual {v2, v0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    .line 604
    .line 605
    .line 606
    move-result v2

    .line 607
    if-eqz v2, :cond_22

    .line 608
    .line 609
    invoke-static {}, Lwa/s;->c()Lwa/s;

    .line 610
    .line 611
    .line 612
    move-result-object v2

    .line 613
    iget-object v2, v2, Lwa/s;->i:Ljava/util/HashMap;

    .line 614
    .line 615
    invoke-virtual {v2, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 616
    .line 617
    .line 618
    move-result-object v2

    .line 619
    check-cast v2, Lz7/o;

    .line 620
    .line 621
    invoke-virtual {v1, v2}, Lcom/yunpan/appmanage/service/AccService;->b(Lz7/o;)V

    .line 622
    .line 623
    .line 624
    :cond_22
    invoke-static {}, Lwa/s;->c()Lwa/s;

    .line 625
    .line 626
    .line 627
    move-result-object v2

    .line 628
    iget-object v2, v2, Lwa/s;->j:Ljava/util/HashMap;

    .line 629
    .line 630
    invoke-virtual {v2}, Ljava/util/HashMap;->isEmpty()Z

    .line 631
    .line 632
    .line 633
    move-result v2

    .line 634
    if-nez v2, :cond_23

    .line 635
    .line 636
    invoke-static {}, Lwa/s;->c()Lwa/s;

    .line 637
    .line 638
    .line 639
    move-result-object v2

    .line 640
    iget-object v2, v2, Lwa/s;->k:Ljava/util/HashSet;

    .line 641
    .line 642
    invoke-virtual {v2, v0}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    .line 643
    .line 644
    .line 645
    move-result v2

    .line 646
    if-nez v2, :cond_23

    .line 647
    .line 648
    invoke-static {}, Lwa/s;->c()Lwa/s;

    .line 649
    .line 650
    .line 651
    move-result-object v2

    .line 652
    iget-object v2, v2, Lwa/s;->j:Ljava/util/HashMap;

    .line 653
    .line 654
    invoke-virtual {v2, v0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    .line 655
    .line 656
    .line 657
    move-result v2

    .line 658
    if-eqz v2, :cond_23

    .line 659
    .line 660
    invoke-static {}, Lwa/s;->c()Lwa/s;

    .line 661
    .line 662
    .line 663
    move-result-object v2

    .line 664
    iget-object v2, v2, Lwa/s;->j:Ljava/util/HashMap;

    .line 665
    .line 666
    invoke-virtual {v2, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 667
    .line 668
    .line 669
    move-result-object v2

    .line 670
    check-cast v2, Lz7/o;

    .line 671
    .line 672
    invoke-virtual {v1, v2}, Lcom/yunpan/appmanage/service/AccService;->b(Lz7/o;)V

    .line 673
    .line 674
    .line 675
    invoke-static {}, Lwa/s;->c()Lwa/s;

    .line 676
    .line 677
    .line 678
    move-result-object v2

    .line 679
    iget-object v2, v2, Lwa/s;->j:Ljava/util/HashMap;

    .line 680
    .line 681
    invoke-virtual {v2, v0}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 682
    .line 683
    .line 684
    invoke-static {}, Lwa/s;->c()Lwa/s;

    .line 685
    .line 686
    .line 687
    move-result-object v2

    .line 688
    iget-object v2, v2, Lwa/s;->k:Ljava/util/HashSet;

    .line 689
    .line 690
    invoke-virtual {v2, v0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 691
    .line 692
    .line 693
    :cond_23
    sget-object v2, Lwa/y;->a:Lwa/z;

    .line 694
    .line 695
    invoke-virtual {v2, v0}, Lwa/z;->d(Ljava/lang/String;)V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_0

    .line 696
    .line 697
    .line 698
    goto :goto_a

    .line 699
    :goto_9
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 700
    .line 701
    .line 702
    :goto_a
    return-void
.end method

.method public final d()V
    .locals 7

    .line 1
    const-string v0, "isOpen"

    .line 2
    .line 3
    :try_start_0
    new-instance v1, Ljava/io/File;

    .line 4
    .line 5
    invoke-virtual {p0}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    .line 6
    .line 7
    .line 8
    move-result-object v2

    .line 9
    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    .line 10
    .line 11
    .line 12
    move-result-object v2

    .line 13
    const-string v3, "KeyMapAcc.json"

    .line 14
    .line 15
    invoke-direct {v1, v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 16
    .line 17
    .line 18
    invoke-static {v1}, Lq4/a;->I(Ljava/io/File;)Lz7/s;

    .line 19
    .line 20
    .line 21
    move-result-object v1

    .line 22
    const-string v2, "keys"

    .line 23
    .line 24
    invoke-virtual {v1, v2}, Lz7/s;->p(Ljava/lang/String;)Lz7/o;

    .line 25
    .line 26
    .line 27
    move-result-object v1

    .line 28
    iput-object v1, p0, Lcom/yunpan/appmanage/service/AccService;->Y:Lz7/o;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 29
    .line 30
    iget-object v1, p0, Lcom/yunpan/appmanage/service/AccService;->X:Ljava/util/HashSet;

    .line 31
    .line 32
    :try_start_1
    invoke-virtual {v1}, Ljava/util/HashSet;->clear()V

    .line 33
    .line 34
    .line 35
    new-instance v2, Ljava/util/ArrayList;

    .line 36
    .line 37
    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 38
    .line 39
    .line 40
    const/4 v3, 0x0

    .line 41
    :goto_0
    iget-object v4, p0, Lcom/yunpan/appmanage/service/AccService;->Y:Lz7/o;

    .line 42
    .line 43
    iget-object v4, v4, Lz7/o;->a:Ljava/util/ArrayList;

    .line 44
    .line 45
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    .line 46
    .line 47
    .line 48
    move-result v4

    .line 49
    if-ge v3, v4, :cond_4

    .line 50
    .line 51
    new-instance v4, Lcom/yunpan/appmanage/bean/KeyMapAccFindBean;

    .line 52
    .line 53
    invoke-direct {v4}, Lcom/yunpan/appmanage/bean/KeyMapAccFindBean;-><init>()V

    .line 54
    .line 55
    .line 56
    iget-object v5, p0, Lcom/yunpan/appmanage/service/AccService;->Y:Lz7/o;

    .line 57
    .line 58
    invoke-virtual {v5, v3}, Lz7/o;->l(I)Lz7/p;

    .line 59
    .line 60
    .line 61
    move-result-object v5

    .line 62
    invoke-virtual {v5}, Lz7/p;->g()Lz7/s;

    .line 63
    .line 64
    .line 65
    move-result-object v5

    .line 66
    iget-object v5, v5, Lz7/s;->a:Lb8/n;

    .line 67
    .line 68
    invoke-virtual {v5, v0}, Lb8/n;->containsKey(Ljava/lang/Object;)Z

    .line 69
    .line 70
    .line 71
    move-result v5

    .line 72
    if-eqz v5, :cond_0

    .line 73
    .line 74
    iget-object v5, p0, Lcom/yunpan/appmanage/service/AccService;->Y:Lz7/o;

    .line 75
    .line 76
    invoke-virtual {v5, v3}, Lz7/o;->l(I)Lz7/p;

    .line 77
    .line 78
    .line 79
    move-result-object v5

    .line 80
    invoke-virtual {v5}, Lz7/p;->g()Lz7/s;

    .line 81
    .line 82
    .line 83
    move-result-object v5

    .line 84
    invoke-virtual {v5, v0}, Lz7/s;->o(Ljava/lang/String;)Lz7/p;

    .line 85
    .line 86
    .line 87
    move-result-object v5

    .line 88
    invoke-virtual {v5}, Lz7/p;->b()Z

    .line 89
    .line 90
    .line 91
    move-result v5

    .line 92
    iput-boolean v5, v4, Lcom/yunpan/appmanage/bean/KeyMapAccFindBean;->isOpen:Z

    .line 93
    .line 94
    if-nez v5, :cond_0

    .line 95
    .line 96
    goto/16 :goto_1

    .line 97
    .line 98
    :cond_0
    iput v3, v4, Lcom/yunpan/appmanage/bean/KeyMapAccFindBean;->pos:I

    .line 99
    .line 100
    iget-object v5, p0, Lcom/yunpan/appmanage/service/AccService;->Y:Lz7/o;

    .line 101
    .line 102
    invoke-virtual {v5, v3}, Lz7/o;->l(I)Lz7/p;

    .line 103
    .line 104
    .line 105
    move-result-object v5

    .line 106
    invoke-virtual {v5}, Lz7/p;->g()Lz7/s;

    .line 107
    .line 108
    .line 109
    move-result-object v5

    .line 110
    const-string v6, "keyCode"

    .line 111
    .line 112
    invoke-virtual {v5, v6}, Lz7/s;->o(Ljava/lang/String;)Lz7/p;

    .line 113
    .line 114
    .line 115
    move-result-object v5

    .line 116
    invoke-virtual {v5}, Lz7/p;->e()I

    .line 117
    .line 118
    .line 119
    move-result v5

    .line 120
    iput v5, v4, Lcom/yunpan/appmanage/bean/KeyMapAccFindBean;->keyCode:I

    .line 121
    .line 122
    iget-object v5, p0, Lcom/yunpan/appmanage/service/AccService;->Y:Lz7/o;

    .line 123
    .line 124
    invoke-virtual {v5, v3}, Lz7/o;->l(I)Lz7/p;

    .line 125
    .line 126
    .line 127
    move-result-object v5

    .line 128
    invoke-virtual {v5}, Lz7/p;->g()Lz7/s;

    .line 129
    .line 130
    .line 131
    move-result-object v5

    .line 132
    const-string v6, "zhKeyCode"

    .line 133
    .line 134
    invoke-virtual {v5, v6}, Lz7/s;->o(Ljava/lang/String;)Lz7/p;

    .line 135
    .line 136
    .line 137
    move-result-object v5

    .line 138
    invoke-virtual {v5}, Lz7/p;->e()I

    .line 139
    .line 140
    .line 141
    move-result v5

    .line 142
    iput v5, v4, Lcom/yunpan/appmanage/bean/KeyMapAccFindBean;->zhKeyCode:I

    .line 143
    .line 144
    iget-object v5, p0, Lcom/yunpan/appmanage/service/AccService;->Y:Lz7/o;

    .line 145
    .line 146
    invoke-virtual {v5, v3}, Lz7/o;->l(I)Lz7/p;

    .line 147
    .line 148
    .line 149
    move-result-object v5

    .line 150
    invoke-virtual {v5}, Lz7/p;->g()Lz7/s;

    .line 151
    .line 152
    .line 153
    move-result-object v5

    .line 154
    const-string v6, "zhModeDown"

    .line 155
    .line 156
    invoke-virtual {v5, v6}, Lz7/s;->o(Ljava/lang/String;)Lz7/p;

    .line 157
    .line 158
    .line 159
    move-result-object v5

    .line 160
    invoke-virtual {v5}, Lz7/p;->b()Z

    .line 161
    .line 162
    .line 163
    move-result v5

    .line 164
    iput-boolean v5, v4, Lcom/yunpan/appmanage/bean/KeyMapAccFindBean;->zhModeDown:Z

    .line 165
    .line 166
    iget-object v5, p0, Lcom/yunpan/appmanage/service/AccService;->Y:Lz7/o;

    .line 167
    .line 168
    invoke-virtual {v5, v3}, Lz7/o;->l(I)Lz7/p;

    .line 169
    .line 170
    .line 171
    move-result-object v5

    .line 172
    invoke-virtual {v5}, Lz7/p;->g()Lz7/s;

    .line 173
    .line 174
    .line 175
    move-result-object v5

    .line 176
    const-string v6, "ljKey"

    .line 177
    .line 178
    invoke-virtual {v5, v6}, Lz7/s;->o(Ljava/lang/String;)Lz7/p;

    .line 179
    .line 180
    .line 181
    move-result-object v5

    .line 182
    invoke-virtual {v5}, Lz7/p;->b()Z

    .line 183
    .line 184
    .line 185
    move-result v5

    .line 186
    iput-boolean v5, v4, Lcom/yunpan/appmanage/bean/KeyMapAccFindBean;->ljKey:Z

    .line 187
    .line 188
    iget-object v5, p0, Lcom/yunpan/appmanage/service/AccService;->Y:Lz7/o;

    .line 189
    .line 190
    invoke-virtual {v5, v3}, Lz7/o;->l(I)Lz7/p;

    .line 191
    .line 192
    .line 193
    move-result-object v5

    .line 194
    invoke-virtual {v5}, Lz7/p;->g()Lz7/s;

    .line 195
    .line 196
    .line 197
    move-result-object v5

    .line 198
    const-string v6, "ljZhKey"

    .line 199
    .line 200
    invoke-virtual {v5, v6}, Lz7/s;->o(Ljava/lang/String;)Lz7/p;

    .line 201
    .line 202
    .line 203
    move-result-object v5

    .line 204
    invoke-virtual {v5}, Lz7/p;->b()Z

    .line 205
    .line 206
    .line 207
    move-result v5

    .line 208
    iput-boolean v5, v4, Lcom/yunpan/appmanage/bean/KeyMapAccFindBean;->ljZhKey:Z

    .line 209
    .line 210
    iget-object v5, p0, Lcom/yunpan/appmanage/service/AccService;->Y:Lz7/o;

    .line 211
    .line 212
    invoke-virtual {v5, v3}, Lz7/o;->l(I)Lz7/p;

    .line 213
    .line 214
    .line 215
    move-result-object v5

    .line 216
    invoke-virtual {v5}, Lz7/p;->g()Lz7/s;

    .line 217
    .line 218
    .line 219
    move-result-object v5

    .line 220
    const-string v6, "click"

    .line 221
    .line 222
    invoke-virtual {v5, v6}, Lz7/s;->p(Ljava/lang/String;)Lz7/o;

    .line 223
    .line 224
    .line 225
    move-result-object v5

    .line 226
    iget-object v5, v5, Lz7/o;->a:Ljava/util/ArrayList;

    .line 227
    .line 228
    invoke-virtual {v5}, Ljava/util/ArrayList;->isEmpty()Z

    .line 229
    .line 230
    .line 231
    move-result v5

    .line 232
    xor-int/lit8 v5, v5, 0x1

    .line 233
    .line 234
    iput-boolean v5, v4, Lcom/yunpan/appmanage/bean/KeyMapAccFindBean;->isHaveClick:Z

    .line 235
    .line 236
    iget-object v5, p0, Lcom/yunpan/appmanage/service/AccService;->Y:Lz7/o;

    .line 237
    .line 238
    invoke-virtual {v5, v3}, Lz7/o;->l(I)Lz7/p;

    .line 239
    .line 240
    .line 241
    move-result-object v5

    .line 242
    invoke-virtual {v5}, Lz7/p;->g()Lz7/s;

    .line 243
    .line 244
    .line 245
    move-result-object v5

    .line 246
    const-string v6, "longClick"

    .line 247
    .line 248
    invoke-virtual {v5, v6}, Lz7/s;->p(Ljava/lang/String;)Lz7/o;

    .line 249
    .line 250
    .line 251
    move-result-object v5

    .line 252
    iget-object v5, v5, Lz7/o;->a:Ljava/util/ArrayList;

    .line 253
    .line 254
    invoke-virtual {v5}, Ljava/util/ArrayList;->isEmpty()Z

    .line 255
    .line 256
    .line 257
    move-result v5

    .line 258
    xor-int/lit8 v5, v5, 0x1

    .line 259
    .line 260
    iput-boolean v5, v4, Lcom/yunpan/appmanage/bean/KeyMapAccFindBean;->isHaveLongClick:Z

    .line 261
    .line 262
    iget-object v5, p0, Lcom/yunpan/appmanage/service/AccService;->Y:Lz7/o;

    .line 263
    .line 264
    invoke-virtual {v5, v3}, Lz7/o;->l(I)Lz7/p;

    .line 265
    .line 266
    .line 267
    move-result-object v5

    .line 268
    invoke-virtual {v5}, Lz7/p;->g()Lz7/s;

    .line 269
    .line 270
    .line 271
    move-result-object v5

    .line 272
    const-string v6, "doubleClick"

    .line 273
    .line 274
    invoke-virtual {v5, v6}, Lz7/s;->p(Ljava/lang/String;)Lz7/o;

    .line 275
    .line 276
    .line 277
    move-result-object v5

    .line 278
    iget-object v5, v5, Lz7/o;->a:Ljava/util/ArrayList;

    .line 279
    .line 280
    invoke-virtual {v5}, Ljava/util/ArrayList;->isEmpty()Z

    .line 281
    .line 282
    .line 283
    move-result v5

    .line 284
    xor-int/lit8 v5, v5, 0x1

    .line 285
    .line 286
    iput-boolean v5, v4, Lcom/yunpan/appmanage/bean/KeyMapAccFindBean;->isHaveDoubleClick:Z

    .line 287
    .line 288
    iget-object v5, p0, Lcom/yunpan/appmanage/service/AccService;->Y:Lz7/o;

    .line 289
    .line 290
    invoke-virtual {v5, v3}, Lz7/o;->l(I)Lz7/p;

    .line 291
    .line 292
    .line 293
    move-result-object v5

    .line 294
    invoke-virtual {v5}, Lz7/p;->g()Lz7/s;

    .line 295
    .line 296
    .line 297
    move-result-object v5

    .line 298
    const-string v6, "zhClick"

    .line 299
    .line 300
    invoke-virtual {v5, v6}, Lz7/s;->p(Ljava/lang/String;)Lz7/o;

    .line 301
    .line 302
    .line 303
    move-result-object v5

    .line 304
    iget-object v5, v5, Lz7/o;->a:Ljava/util/ArrayList;

    .line 305
    .line 306
    invoke-virtual {v5}, Ljava/util/ArrayList;->isEmpty()Z

    .line 307
    .line 308
    .line 309
    move-result v5

    .line 310
    const/4 v6, -0x1

    .line 311
    if-eqz v5, :cond_1

    .line 312
    .line 313
    iput v6, v4, Lcom/yunpan/appmanage/bean/KeyMapAccFindBean;->zhKeyCode:I

    .line 314
    .line 315
    :cond_1
    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 316
    .line 317
    .line 318
    iget-boolean v5, v4, Lcom/yunpan/appmanage/bean/KeyMapAccFindBean;->ljKey:Z

    .line 319
    .line 320
    if-eqz v5, :cond_2

    .line 321
    .line 322
    iget v5, v4, Lcom/yunpan/appmanage/bean/KeyMapAccFindBean;->keyCode:I

    .line 323
    .line 324
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 325
    .line 326
    .line 327
    move-result-object v5

    .line 328
    invoke-virtual {v1, v5}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 329
    .line 330
    .line 331
    :cond_2
    iget-boolean v5, v4, Lcom/yunpan/appmanage/bean/KeyMapAccFindBean;->ljZhKey:Z

    .line 332
    .line 333
    if-eqz v5, :cond_3

    .line 334
    .line 335
    iget v4, v4, Lcom/yunpan/appmanage/bean/KeyMapAccFindBean;->zhKeyCode:I

    .line 336
    .line 337
    if-eq v4, v6, :cond_3

    .line 338
    .line 339
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 340
    .line 341
    .line 342
    move-result-object v4

    .line 343
    invoke-virtual {v1, v4}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 344
    .line 345
    .line 346
    :cond_3
    :goto_1
    add-int/lit8 v3, v3, 0x1

    .line 347
    .line 348
    goto/16 :goto_0

    .line 349
    .line 350
    :cond_4
    iput-object v2, p0, Lcom/yunpan/appmanage/service/AccService;->Z:Ljava/util/ArrayList;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 351
    .line 352
    :catch_0
    return-void
.end method

.method public final e()V
    .locals 4

    .line 1
    const-string v0, "isOn"

    .line 2
    .line 3
    iget-object v1, p0, Lcom/yunpan/appmanage/service/AccService;->h0:Lta/o;

    .line 4
    .line 5
    if-eqz v1, :cond_0

    .line 6
    .line 7
    invoke-virtual {v1}, Lta/o;->g()V

    .line 8
    .line 9
    .line 10
    :cond_0
    const/4 v1, 0x0

    .line 11
    iput-object v1, p0, Lcom/yunpan/appmanage/service/AccService;->h0:Lta/o;

    .line 12
    .line 13
    sget-object v1, Lwa/t;->a:Lwa/u;

    .line 14
    .line 15
    iget-boolean v1, v1, Lwa/u;->u:Z

    .line 16
    .line 17
    if-eqz v1, :cond_1

    .line 18
    .line 19
    const-string v1, "\u521d\u59cb\u5316\u65e5\u5fd7\u6620\u5c04"

    .line 20
    .line 21
    invoke-static {v1}, Lwa/w;->b(Ljava/lang/String;)V

    .line 22
    .line 23
    .line 24
    :cond_1
    new-instance v1, Ljava/io/File;

    .line 25
    .line 26
    invoke-virtual {p0}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    .line 27
    .line 28
    .line 29
    move-result-object v2

    .line 30
    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    .line 31
    .line 32
    .line 33
    move-result-object v2

    .line 34
    const-string v3, "KeyMapLogcatSuper.json"

    .line 35
    .line 36
    invoke-direct {v1, v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 37
    .line 38
    .line 39
    invoke-static {v1}, Lq4/a;->I(Ljava/io/File;)Lz7/s;

    .line 40
    .line 41
    .line 42
    move-result-object v1

    .line 43
    :try_start_0
    iget-object v2, v1, Lz7/s;->a:Lb8/n;

    .line 44
    .line 45
    invoke-virtual {v2, v0}, Lb8/n;->containsKey(Ljava/lang/Object;)Z

    .line 46
    .line 47
    .line 48
    move-result v2

    .line 49
    if-eqz v2, :cond_2

    .line 50
    .line 51
    invoke-virtual {v1, v0}, Lz7/s;->o(Ljava/lang/String;)Lz7/p;

    .line 52
    .line 53
    .line 54
    move-result-object v0

    .line 55
    invoke-virtual {v0}, Lz7/p;->b()Z

    .line 56
    .line 57
    .line 58
    move-result v0

    .line 59
    if-nez v0, :cond_2

    .line 60
    .line 61
    return-void

    .line 62
    :catch_0
    move-exception v0

    .line 63
    goto :goto_0

    .line 64
    :cond_2
    const-string v0, "keys"

    .line 65
    .line 66
    invoke-virtual {v1, v0}, Lz7/s;->p(Ljava/lang/String;)Lz7/o;

    .line 67
    .line 68
    .line 69
    move-result-object v0

    .line 70
    iget-object v0, v0, Lz7/o;->a:Ljava/util/ArrayList;

    .line 71
    .line 72
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    .line 73
    .line 74
    .line 75
    move-result v0

    .line 76
    if-nez v0, :cond_4

    .line 77
    .line 78
    new-instance v0, Lta/o;

    .line 79
    .line 80
    invoke-direct {v0, v1}, Lta/o;-><init>(Lz7/s;)V

    .line 81
    .line 82
    .line 83
    iput-object v0, p0, Lcom/yunpan/appmanage/service/AccService;->h0:Lta/o;

    .line 84
    .line 85
    new-instance v1, Lph/j;

    .line 86
    .line 87
    const/16 v2, 0xa

    .line 88
    .line 89
    invoke-direct {v1, v2, v0}, Lph/j;-><init>(ILjava/lang/Object;)V

    .line 90
    .line 91
    .line 92
    new-instance v0, Lmc/c;

    .line 93
    .line 94
    const/4 v2, 0x0

    .line 95
    invoke-direct {v0, v2, v1}, Lmc/c;-><init>(ILjava/lang/Object;)V

    .line 96
    .line 97
    .line 98
    sget-object v1, Lrc/f;->b:Lec/j;

    .line 99
    .line 100
    invoke-virtual {v0, v1}, Lec/b;->d(Lec/j;)Lmc/p;

    .line 101
    .line 102
    .line 103
    move-result-object v0

    .line 104
    invoke-static {}, Lfc/b;->a()Lfc/e;

    .line 105
    .line 106
    .line 107
    move-result-object v1

    .line 108
    invoke-virtual {v0, v1}, Lec/b;->a(Lfc/e;)Lmc/g;

    .line 109
    .line 110
    .line 111
    move-result-object v0

    .line 112
    new-instance v1, Lka/c;

    .line 113
    .line 114
    const/4 v2, 0x2

    .line 115
    invoke-direct {v1, v2, p0}, Lka/c;-><init>(ILjava/lang/Object;)V

    .line 116
    .line 117
    .line 118
    invoke-virtual {v0, v1}, Lec/b;->b(Lec/e;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 119
    .line 120
    .line 121
    goto :goto_1

    .line 122
    :goto_0
    sget-object v1, Lwa/t;->a:Lwa/u;

    .line 123
    .line 124
    iget-boolean v1, v1, Lwa/u;->u:Z

    .line 125
    .line 126
    if-eqz v1, :cond_3

    .line 127
    .line 128
    new-instance v1, Ljava/lang/StringBuilder;

    .line 129
    .line 130
    const-string v2, "\u3010\u62a5\u9519\u4f4d\u7f6ea\u3011 "

    .line 131
    .line 132
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 133
    .line 134
    .line 135
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 136
    .line 137
    .line 138
    move-result-object v2

    .line 139
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 140
    .line 141
    .line 142
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 143
    .line 144
    .line 145
    move-result-object v1

    .line 146
    invoke-static {v1}, Lwa/w;->b(Ljava/lang/String;)V

    .line 147
    .line 148
    .line 149
    :cond_3
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 150
    .line 151
    .line 152
    :cond_4
    :goto_1
    return-void
.end method

.method public final f()V
    .locals 5

    .line 1
    const-string v0, "screen_brightness"

    .line 2
    .line 3
    :try_start_0
    const-string v1, "sensor"

    .line 4
    .line 5
    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 6
    .line 7
    .line 8
    move-result-object v1

    .line 9
    check-cast v1, Landroid/hardware/SensorManager;

    .line 10
    .line 11
    iput-object v1, p0, Lcom/yunpan/appmanage/service/AccService;->r:Landroid/hardware/SensorManager;

    .line 12
    .line 13
    if-nez v1, :cond_0

    .line 14
    .line 15
    return-void

    .line 16
    :cond_0
    const/4 v2, 0x5

    .line 17
    invoke-virtual {v1, v2}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    .line 18
    .line 19
    .line 20
    move-result-object v1

    .line 21
    if-nez v1, :cond_1

    .line 22
    .line 23
    return-void

    .line 24
    :cond_1
    iget-object v2, p0, Lcom/yunpan/appmanage/service/AccService;->r:Landroid/hardware/SensorManager;

    .line 25
    .line 26
    iget-object v3, p0, Lcom/yunpan/appmanage/service/AccService;->t:Lha/u;

    .line 27
    .line 28
    const v4, 0x4c4b40

    .line 29
    .line 30
    .line 31
    invoke-virtual {v2, v3, v1, v4}, Landroid/hardware/SensorManager;->registerListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;I)Z

    .line 32
    .line 33
    .line 34
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 35
    .line 36
    .line 37
    move-result-object v1

    .line 38
    const/16 v2, 0xff

    .line 39
    .line 40
    invoke-static {v1, v0, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    .line 41
    .line 42
    .line 43
    move-result v1

    .line 44
    iput v1, p0, Lcom/yunpan/appmanage/service/AccService;->v:I

    .line 45
    .line 46
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 47
    .line 48
    .line 49
    move-result-object v1

    .line 50
    invoke-static {v0}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    .line 51
    .line 52
    .line 53
    move-result-object v0

    .line 54
    iget-object v2, p0, Lcom/yunpan/appmanage/service/AccService;->w:Lc1/a;

    .line 55
    .line 56
    const/4 v3, 0x1

    .line 57
    invoke-virtual {v1, v0, v3, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 58
    .line 59
    .line 60
    :catch_0
    return-void
.end method

.method public final g()V
    .locals 4

    .line 1
    sget-object v0, Lwa/t;->a:Lwa/u;

    .line 2
    .line 3
    iget-boolean v0, v0, Lwa/u;->C:Z

    .line 4
    .line 5
    if-eqz v0, :cond_1

    .line 6
    .line 7
    :try_start_0
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 8
    .line 9
    const/16 v1, 0x1a

    .line 10
    .line 11
    const/4 v2, 0x2

    .line 12
    const-string v3, "accessibility_service_channel"

    .line 13
    .line 14
    if-lt v0, v1, :cond_0

    .line 15
    .line 16
    :try_start_1
    new-instance v0, Landroid/app/NotificationChannel;

    .line 17
    .line 18
    const-string v1, "\u540e\u53f0\u670d\u52a1"

    .line 19
    .line 20
    invoke-direct {v0, v3, v1, v2}, Landroid/app/NotificationChannel;-><init>(Ljava/lang/String;Ljava/lang/CharSequence;I)V

    .line 21
    .line 22
    .line 23
    const-class v1, Landroid/app/NotificationManager;

    .line 24
    .line 25
    invoke-virtual {p0, v1}, Landroid/accessibilityservice/AccessibilityService;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    .line 26
    .line 27
    .line 28
    move-result-object v1

    .line 29
    check-cast v1, Landroid/app/NotificationManager;

    .line 30
    .line 31
    invoke-virtual {v1, v0}, Landroid/app/NotificationManager;->createNotificationChannel(Landroid/app/NotificationChannel;)V

    .line 32
    .line 33
    .line 34
    goto :goto_0

    .line 35
    :catch_0
    move-exception v0

    .line 36
    goto :goto_1

    .line 37
    :cond_0
    :goto_0
    new-instance v0, Lm0/q;

    .line 38
    .line 39
    invoke-direct {v0, p0, v3}, Lm0/q;-><init>(Landroid/app/Service;Ljava/lang/String;)V

    .line 40
    .line 41
    .line 42
    const-string v1, "\u81ea\u52a8\u5316\u670d\u52a1"

    .line 43
    .line 44
    invoke-static {v1}, Lm0/q;->b(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    .line 45
    .line 46
    .line 47
    move-result-object v1

    .line 48
    iput-object v1, v0, Lm0/q;->e:Ljava/lang/CharSequence;

    .line 49
    .line 50
    const-string v1, "\u8fd0\u884c\u4e2d"

    .line 51
    .line 52
    invoke-static {v1}, Lm0/q;->b(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    .line 53
    .line 54
    .line 55
    move-result-object v1

    .line 56
    iput-object v1, v0, Lm0/q;->f:Ljava/lang/CharSequence;

    .line 57
    .line 58
    iget-object v1, v0, Lm0/q;->m:Landroid/app/Notification;

    .line 59
    .line 60
    const v3, 0x7f08008f

    .line 61
    .line 62
    .line 63
    iput v3, v1, Landroid/app/Notification;->icon:I

    .line 64
    .line 65
    const/4 v1, -0x1

    .line 66
    iput v1, v0, Lm0/q;->g:I

    .line 67
    .line 68
    const-string v1, "service"

    .line 69
    .line 70
    iput-object v1, v0, Lm0/q;->i:Ljava/lang/String;

    .line 71
    .line 72
    invoke-virtual {v0}, Lm0/q;->c()V

    .line 73
    .line 74
    .line 75
    invoke-virtual {v0}, Lm0/q;->a()Landroid/app/Notification;

    .line 76
    .line 77
    .line 78
    move-result-object v0

    .line 79
    invoke-virtual {p0, v2, v0}, Landroid/app/Service;->startForeground(ILandroid/app/Notification;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 80
    .line 81
    .line 82
    goto :goto_2

    .line 83
    :goto_1
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 84
    .line 85
    .line 86
    :cond_1
    :goto_2
    return-void
.end method

.method public final onAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V
    .locals 2

    .line 1
    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityEvent;->getEventType()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const/16 v1, 0x20

    .line 6
    .line 7
    if-ne v0, v1, :cond_0

    .line 8
    .line 9
    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityEvent;->getPackageName()Ljava/lang/CharSequence;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityRecord;->getClassName()Ljava/lang/CharSequence;

    .line 18
    .line 19
    .line 20
    move-result-object p1

    .line 21
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 22
    .line 23
    .line 24
    move-result-object p1

    .line 25
    invoke-virtual {p0, v0, p1}, Lcom/yunpan/appmanage/service/AccService;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 26
    .line 27
    .line 28
    :cond_0
    return-void
.end method

.method public final onCreate()V
    .locals 1

    .line 1
    invoke-super {p0}, Landroid/accessibilityservice/AccessibilityService;->onCreate()V

    .line 2
    .line 3
    .line 4
    sget-object v0, Lwa/t;->a:Lwa/u;

    .line 5
    .line 6
    iget-boolean v0, v0, Lwa/u;->t:Z

    .line 7
    .line 8
    if-eqz v0, :cond_0

    .line 9
    .line 10
    const-string v0, "AccService\uff1a\u521b\u5efa"

    .line 11
    .line 12
    invoke-static {v0}, Lwa/w;->c(Ljava/lang/String;)V

    .line 13
    .line 14
    .line 15
    :cond_0
    return-void
.end method

.method public final onDestroy()V
    .locals 9

    .line 1
    sget-object v0, Lwa/v;->a:Lcom/yunpan/appmanage/util/b0;

    .line 2
    .line 3
    const-string v1, "/"

    .line 4
    .line 5
    invoke-super {p0}, Landroid/accessibilityservice/AccessibilityService;->onDestroy()V

    .line 6
    .line 7
    .line 8
    sget-object v2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    .line 9
    .line 10
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 11
    .line 12
    .line 13
    iget-object v2, p0, Lcom/yunpan/appmanage/service/AccService;->f:Lcom/yunpan/appmanage/carsdk/i;

    .line 14
    .line 15
    const/4 v3, 0x0

    .line 16
    if-eqz v2, :cond_0

    .line 17
    .line 18
    iget-boolean v4, v2, Lcom/yunpan/appmanage/carsdk/i;->b:Z

    .line 19
    .line 20
    if-eqz v4, :cond_0

    .line 21
    .line 22
    :try_start_0
    iget-object v4, v2, Lcom/yunpan/appmanage/carsdk/i;->a:Lc5/c;

    .line 23
    .line 24
    const-string v5, "yingyongguanjia"

    .line 25
    .line 26
    check-cast v4, Lc5/a;

    .line 27
    .line 28
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 29
    .line 30
    .line 31
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    .line 32
    .line 33
    .line 34
    move-result-object v6

    .line 35
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    .line 36
    .line 37
    .line 38
    move-result-object v7
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 39
    :try_start_1
    const-string v8, "com.baidu.naviauto.imaplbs.IMapAutoAPIService"

    .line 40
    .line 41
    invoke-virtual {v6, v8}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 42
    .line 43
    .line 44
    invoke-virtual {v6, v5}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 45
    .line 46
    .line 47
    iget-object v4, v4, Lc5/a;->e:Landroid/os/IBinder;

    .line 48
    .line 49
    const/4 v5, 0x3

    .line 50
    invoke-interface {v4, v5, v6, v7, v3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 51
    .line 52
    .line 53
    invoke-virtual {v7}, Landroid/os/Parcel;->readException()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 54
    .line 55
    .line 56
    :try_start_2
    invoke-virtual {v7}, Landroid/os/Parcel;->recycle()V

    .line 57
    .line 58
    .line 59
    invoke-virtual {v6}, Landroid/os/Parcel;->recycle()V

    .line 60
    .line 61
    .line 62
    goto :goto_0

    .line 63
    :catchall_0
    move-exception v4

    .line 64
    invoke-virtual {v7}, Landroid/os/Parcel;->recycle()V

    .line 65
    .line 66
    .line 67
    invoke-virtual {v6}, Landroid/os/Parcel;->recycle()V

    .line 68
    .line 69
    .line 70
    throw v4
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0

    .line 71
    :catch_0
    :goto_0
    iget-object v4, v2, Lcom/yunpan/appmanage/carsdk/i;->c:Lcom/yunpan/appmanage/carsdk/f;

    .line 72
    .line 73
    invoke-virtual {p0, v4}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    .line 74
    .line 75
    .line 76
    iput-boolean v3, v2, Lcom/yunpan/appmanage/carsdk/i;->b:Z

    .line 77
    .line 78
    :cond_0
    const/4 v2, 0x1

    .line 79
    :try_start_3
    sget-object v4, Lcom/yunpan/appmanage/carsdk/j0;->a:Lcom/yunpan/appmanage/carsdk/k0;

    .line 80
    .line 81
    iget-object v5, v4, Lcom/yunpan/appmanage/carsdk/k0;->f:Ljava/lang/Object;

    .line 82
    .line 83
    check-cast v5, Landroid/os/HandlerThread;

    .line 84
    .line 85
    if-nez v5, :cond_1

    .line 86
    .line 87
    goto :goto_1

    .line 88
    :cond_1
    iput-boolean v2, v4, Lcom/yunpan/appmanage/carsdk/k0;->a:Z

    .line 89
    .line 90
    iget-object v5, v4, Lcom/yunpan/appmanage/carsdk/k0;->e:Ljava/lang/Object;

    .line 91
    .line 92
    check-cast v5, Landroid/os/Handler;

    .line 93
    .line 94
    new-instance v6, La2/h;

    .line 95
    .line 96
    const/16 v7, 0xf

    .line 97
    .line 98
    invoke-direct {v6, v7, v4}, La2/h;-><init>(ILjava/lang/Object;)V

    .line 99
    .line 100
    .line 101
    invoke-virtual {v5, v6}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    .line 102
    .line 103
    .line 104
    :catch_1
    :goto_1
    const-string v4, "ACC_CLOSE"

    .line 105
    .line 106
    invoke-static {p0, v4}, Lta/m;->d(Landroid/content/Context;Ljava/lang/String;)V

    .line 107
    .line 108
    .line 109
    sget-object v4, Lwa/t;->a:Lwa/u;

    .line 110
    .line 111
    iget-boolean v5, v4, Lwa/u;->t:Z

    .line 112
    .line 113
    if-eqz v5, :cond_2

    .line 114
    .line 115
    const-string v5, "AccService\uff1a\u9500\u6bc1"

    .line 116
    .line 117
    invoke-static {v5}, Lwa/w;->c(Ljava/lang/String;)V

    .line 118
    .line 119
    .line 120
    :cond_2
    :try_start_4
    iget-object v5, v0, Lcom/yunpan/appmanage/util/b0;->c:Ljava/lang/Object;

    .line 121
    .line 122
    check-cast v5, Ljava/lang/String;

    .line 123
    .line 124
    new-instance v6, Ljava/lang/StringBuilder;

    .line 125
    .line 126
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    .line 127
    .line 128
    .line 129
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    .line 130
    .line 131
    .line 132
    move-result-object v7

    .line 133
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 134
    .line 135
    .line 136
    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 137
    .line 138
    .line 139
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 140
    .line 141
    .line 142
    move-result-object v6

    .line 143
    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 144
    .line 145
    .line 146
    move-result v5

    .line 147
    if-eqz v5, :cond_3

    .line 148
    .line 149
    iget-boolean v5, p0, Lcom/yunpan/appmanage/service/AccService;->R0:Z

    .line 150
    .line 151
    if-nez v5, :cond_3

    .line 152
    .line 153
    iget-boolean v4, v4, Lwa/u;->t:Z

    .line 154
    .line 155
    if-eqz v4, :cond_3

    .line 156
    .line 157
    const-string v4, "AccService\uff1a\u7591\u662f\u65e0\u7f18\u65e0\u6545\u88ab\u9500\u6bc1"

    .line 158
    .line 159
    invoke-static {v4}, Lwa/w;->c(Ljava/lang/String;)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2

    .line 160
    .line 161
    .line 162
    :catch_2
    :cond_3
    sget-object v4, Lwa/y;->a:Lwa/z;

    .line 163
    .line 164
    iput v3, v4, Lwa/z;->e:I

    .line 165
    .line 166
    const-wide/16 v5, 0x0

    .line 167
    .line 168
    iput-wide v5, v4, Lwa/z;->g:J

    .line 169
    .line 170
    iget-object v7, v4, Lwa/z;->c:Lv8/a;

    .line 171
    .line 172
    const/4 v8, 0x0

    .line 173
    if-eqz v7, :cond_4

    .line 174
    .line 175
    invoke-virtual {v7}, Lv8/a;->b()V

    .line 176
    .line 177
    .line 178
    iget-object v7, v4, Lwa/z;->c:Lv8/a;

    .line 179
    .line 180
    invoke-virtual {v7}, Lv8/a;->g()V

    .line 181
    .line 182
    .line 183
    iput-object v8, v4, Lwa/z;->c:Lv8/a;

    .line 184
    .line 185
    :cond_4
    iget-object v7, v4, Lwa/z;->d:Lv8/a;

    .line 186
    .line 187
    if-eqz v7, :cond_5

    .line 188
    .line 189
    invoke-virtual {v7}, Lv8/a;->b()V

    .line 190
    .line 191
    .line 192
    iget-object v7, v4, Lwa/z;->d:Lv8/a;

    .line 193
    .line 194
    invoke-virtual {v7}, Lv8/a;->g()V

    .line 195
    .line 196
    .line 197
    iput-object v8, v4, Lwa/z;->d:Lv8/a;

    .line 198
    .line 199
    :cond_5
    invoke-static {}, Lwa/s;->c()Lwa/s;

    .line 200
    .line 201
    .line 202
    move-result-object v4

    .line 203
    iget-object v4, v4, Lwa/s;->c:Lv8/a;

    .line 204
    .line 205
    if-eqz v4, :cond_6

    .line 206
    .line 207
    invoke-static {}, Lwa/s;->c()Lwa/s;

    .line 208
    .line 209
    .line 210
    move-result-object v0

    .line 211
    iget-object v0, v0, Lwa/s;->c:Lv8/a;

    .line 212
    .line 213
    invoke-virtual {v0, v5, v6}, Lv8/a;->c(J)V

    .line 214
    .line 215
    .line 216
    invoke-static {}, Lwa/s;->c()Lwa/s;

    .line 217
    .line 218
    .line 219
    move-result-object v0

    .line 220
    iput-object v8, v0, Lwa/s;->c:Lv8/a;

    .line 221
    .line 222
    return-void

    .line 223
    :cond_6
    :try_start_5
    invoke-static {}, Lv8/b;->a()V

    .line 224
    .line 225
    .line 226
    invoke-static {}, Lv8/b;->b()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_3

    .line 227
    .line 228
    .line 229
    goto :goto_2

    .line 230
    :catch_3
    nop

    .line 231
    :goto_2
    invoke-static {p0}, Lpa/e;->b(Landroid/content/Context;)Z

    .line 232
    .line 233
    .line 234
    move-result v4

    .line 235
    if-eqz v4, :cond_8

    .line 236
    .line 237
    sget-object v4, Lpa/d;->a:Lpa/e;

    .line 238
    .line 239
    iget-object v5, v4, Lpa/e;->j:Landroid/os/Handler;

    .line 240
    .line 241
    :try_start_6
    iget-object v6, v4, Lpa/e;->k:Landroidx/activity/h;

    .line 242
    .line 243
    invoke-virtual {v5, v6}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 244
    .line 245
    .line 246
    iget-object v6, v4, Lpa/e;->l:Landroidx/emoji2/text/o;

    .line 247
    .line 248
    invoke-virtual {v5, v6}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 249
    .line 250
    .line 251
    iget-object v6, v4, Lpa/e;->m:Landroidx/emoji2/text/o;

    .line 252
    .line 253
    invoke-virtual {v5, v6}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 254
    .line 255
    .line 256
    iget-object v5, v4, Lpa/e;->b:Lcom/hsae/autosdk/vehicle/IVehicle;

    .line 257
    .line 258
    if-eqz v5, :cond_7

    .line 259
    .line 260
    iget-object v6, v4, Lpa/e;->c:Lpa/b;

    .line 261
    .line 262
    invoke-interface {v5, v6}, Lcom/hsae/autosdk/vehicle/IVehicle;->unregisterVehicleCallback(Lcom/hsae/autosdk/vehicle/IVehicleCallback;)V

    .line 263
    .line 264
    .line 265
    goto :goto_3

    .line 266
    :catch_4
    move-exception v4

    .line 267
    goto :goto_4

    .line 268
    :cond_7
    :goto_3
    iget-object v5, v4, Lpa/e;->d:Lcom/hsae/autosdk/reverse/Reverse;

    .line 269
    .line 270
    if-eqz v5, :cond_8

    .line 271
    .line 272
    iget-object v4, v4, Lpa/e;->e:Lpa/c;

    .line 273
    .line 274
    invoke-virtual {v5, v4}, Lcom/hsae/autosdk/reverse/Reverse;->unRegisterStateListener(Lcom/hsae/autosdk/reverse/Reverse$ReverseStateListener;)V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_4

    .line 275
    .line 276
    .line 277
    goto :goto_5

    .line 278
    :goto_4
    invoke-virtual {v4}, Ljava/lang/Throwable;->printStackTrace()V

    .line 279
    .line 280
    .line 281
    :cond_8
    :goto_5
    iget-object v4, p0, Lcom/yunpan/appmanage/service/AccService;->c:Lpa/h;

    .line 282
    .line 283
    if-eqz v4, :cond_9

    .line 284
    .line 285
    invoke-virtual {v4}, Lpa/h;->c()V

    .line 286
    .line 287
    .line 288
    :cond_9
    iget-object v4, p0, Lcom/yunpan/appmanage/service/AccService;->d:Lcom/yunpan/appmanage/carsdk/x;

    .line 289
    .line 290
    if-eqz v4, :cond_a

    .line 291
    .line 292
    invoke-virtual {v4}, Lcom/yunpan/appmanage/carsdk/x;->m()V

    .line 293
    .line 294
    .line 295
    :cond_a
    iget-object v4, p0, Lcom/yunpan/appmanage/service/AccService;->e:Lcom/yunpan/appmanage/carsdk/m;

    .line 296
    .line 297
    if-eqz v4, :cond_c

    .line 298
    .line 299
    iget-object v5, v4, Lcom/yunpan/appmanage/carsdk/m;->b:Lcom/yunpan/appmanage/service/AccService;

    .line 300
    .line 301
    if-eqz v5, :cond_c

    .line 302
    .line 303
    iget-object v6, v4, Lcom/yunpan/appmanage/carsdk/m;->a:La1/i;

    .line 304
    .line 305
    if-eqz v6, :cond_b

    .line 306
    .line 307
    :try_start_7
    sget v7, Lcom/yunpan/appmanage/carsdk/m;->e:I

    .line 308
    .line 309
    iget-object v7, v4, Lcom/yunpan/appmanage/carsdk/m;->d:Lcom/yunpan/appmanage/carsdk/l;

    .line 310
    .line 311
    invoke-virtual {v6, v7}, La1/i;->I(Lcom/yunpan/appmanage/carsdk/l;)V
    :try_end_7
    .catch Landroid/os/RemoteException; {:try_start_7 .. :try_end_7} :catch_5

    .line 312
    .line 313
    .line 314
    :catch_5
    :cond_b
    :try_start_8
    iget-object v4, v4, Lcom/yunpan/appmanage/carsdk/m;->c:Lcom/yunpan/appmanage/carsdk/k;

    .line 315
    .line 316
    invoke-virtual {v5, v4}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_6

    .line 317
    .line 318
    .line 319
    goto :goto_6

    .line 320
    :catch_6
    nop

    .line 321
    :cond_c
    :goto_6
    iget-object v4, p0, Lcom/yunpan/appmanage/service/AccService;->h0:Lta/o;

    .line 322
    .line 323
    if-eqz v4, :cond_e

    .line 324
    .line 325
    sget-object v4, Lwa/t;->a:Lwa/u;

    .line 326
    .line 327
    iget-boolean v4, v4, Lwa/u;->u:Z

    .line 328
    .line 329
    if-eqz v4, :cond_d

    .line 330
    .line 331
    const-string v4, "\u505c\u6b62\u65e5\u5fd7\u76d1\u542c"

    .line 332
    .line 333
    invoke-static {v4}, Lwa/w;->b(Ljava/lang/String;)V

    .line 334
    .line 335
    .line 336
    :cond_d
    iget-object v4, p0, Lcom/yunpan/appmanage/service/AccService;->h0:Lta/o;

    .line 337
    .line 338
    invoke-virtual {v4}, Lta/o;->g()V

    .line 339
    .line 340
    .line 341
    iput-object v8, p0, Lcom/yunpan/appmanage/service/AccService;->h0:Lta/o;

    .line 342
    .line 343
    :cond_e
    iget-object v4, p0, Lcom/yunpan/appmanage/service/AccService;->r:Landroid/hardware/SensorManager;

    .line 344
    .line 345
    iget-object v5, p0, Lcom/yunpan/appmanage/service/AccService;->t:Lha/u;

    .line 346
    .line 347
    invoke-virtual {v4, v5}, Landroid/hardware/SensorManager;->unregisterListener(Landroid/hardware/SensorEventListener;)V

    .line 348
    .line 349
    .line 350
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 351
    .line 352
    .line 353
    move-result-object v4

    .line 354
    iget-object v5, p0, Lcom/yunpan/appmanage/service/AccService;->w:Lc1/a;

    .line 355
    .line 356
    invoke-virtual {v4, v5}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 357
    .line 358
    .line 359
    iget-object v4, p0, Lcom/yunpan/appmanage/service/AccService;->i:Ly3/a;

    .line 360
    .line 361
    if-eqz v4, :cond_10

    .line 362
    .line 363
    iget-object v5, v4, Ly3/a;->c:Ljava/lang/Object;

    .line 364
    .line 365
    check-cast v5, Landroid/view/WindowManager;

    .line 366
    .line 367
    iget-object v6, v4, Ly3/a;->b:Ljava/lang/Object;

    .line 368
    .line 369
    check-cast v6, Lcom/yunpan/appmanage/service/AccService;

    .line 370
    .line 371
    iget-object v6, v6, Lcom/yunpan/appmanage/service/AccService;->G:Lta/e;

    .line 372
    .line 373
    iget-object v7, v4, Ly3/a;->h:Ljava/lang/Object;

    .line 374
    .line 375
    check-cast v7, Landroidx/emoji2/text/o;

    .line 376
    .line 377
    invoke-virtual {v6, v7}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 378
    .line 379
    .line 380
    :try_start_9
    iget-object v6, v4, Ly3/a;->f:Ljava/lang/Object;

    .line 381
    .line 382
    check-cast v6, Landroid/view/View;

    .line 383
    .line 384
    if-eqz v6, :cond_f

    .line 385
    .line 386
    invoke-interface {v5, v6}, Landroid/view/ViewManager;->removeView(Landroid/view/View;)V

    .line 387
    .line 388
    .line 389
    iput-object v8, v4, Ly3/a;->f:Ljava/lang/Object;
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_7

    .line 390
    .line 391
    :catch_7
    :cond_f
    :try_start_a
    iget-object v6, v4, Ly3/a;->g:Ljava/lang/Object;

    .line 392
    .line 393
    check-cast v6, Landroid/view/View;

    .line 394
    .line 395
    if-eqz v6, :cond_10

    .line 396
    .line 397
    invoke-interface {v5, v6}, Landroid/view/ViewManager;->removeView(Landroid/view/View;)V

    .line 398
    .line 399
    .line 400
    iput-object v8, v4, Ly3/a;->g:Ljava/lang/Object;
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_8

    .line 401
    .line 402
    :catch_8
    :cond_10
    invoke-static {}, Lya/e;->b()Lya/e;

    .line 403
    .line 404
    .line 405
    move-result-object v4

    .line 406
    invoke-virtual {v4}, Lya/e;->e()V

    .line 407
    .line 408
    .line 409
    invoke-static {}, Lya/h;->a()Lya/h;

    .line 410
    .line 411
    .line 412
    move-result-object v4

    .line 413
    invoke-virtual {v4}, Lya/h;->c()V

    .line 414
    .line 415
    .line 416
    invoke-static {}, Lcom/yunpan/appmanage/carsdk/e;->j()V

    .line 417
    .line 418
    .line 419
    sget-object v4, Lcom/yunpan/appmanage/carsdk/g0;->a:Lcom/yunpan/appmanage/carsdk/h0;

    .line 420
    .line 421
    invoke-virtual {v4}, Lcom/yunpan/appmanage/carsdk/h0;->d()V

    .line 422
    .line 423
    .line 424
    :try_start_b
    invoke-static {}, Lwa/s;->c()Lwa/s;

    .line 425
    .line 426
    .line 427
    move-result-object v4

    .line 428
    iget-object v4, v4, Lwa/s;->n:Ljava/util/HashSet;

    .line 429
    .line 430
    invoke-virtual {v4}, Ljava/util/HashSet;->clear()V

    .line 431
    .line 432
    .line 433
    invoke-static {}, Lwa/s;->c()Lwa/s;

    .line 434
    .line 435
    .line 436
    move-result-object v4

    .line 437
    invoke-virtual {v4, v3}, Lwa/s;->r(Z)V
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_9

    .line 438
    .line 439
    .line 440
    :catch_9
    invoke-static {}, Lwa/s;->c()Lwa/s;

    .line 441
    .line 442
    .line 443
    move-result-object v3

    .line 444
    iput-object v8, v3, Lwa/s;->e:Lcom/yunpan/appmanage/service/AccService;

    .line 445
    .line 446
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 447
    .line 448
    const/16 v4, 0x18

    .line 449
    .line 450
    if-lt v3, v4, :cond_11

    .line 451
    .line 452
    invoke-static {p0}, Lq/t;->r(Lcom/yunpan/appmanage/service/AccService;)V

    .line 453
    .line 454
    .line 455
    goto :goto_7

    .line 456
    :cond_11
    invoke-virtual {p0, v2}, Landroid/app/Service;->stopForeground(Z)V

    .line 457
    .line 458
    .line 459
    :goto_7
    :try_start_c
    iget-object v2, p0, Lcom/yunpan/appmanage/service/AccService;->h:La2/k;

    .line 460
    .line 461
    invoke-virtual {p0, v2}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_c} :catch_a

    .line 462
    .line 463
    .line 464
    :catch_a
    :try_start_d
    iget-object v2, p0, Lcom/yunpan/appmanage/service/AccService;->t0:Ljava/util/concurrent/ExecutorService;

    .line 465
    .line 466
    invoke-interface {v2}, Ljava/util/concurrent/ExecutorService;->shutdownNow()Ljava/util/List;

    .line 467
    .line 468
    .line 469
    iput-object v8, p0, Lcom/yunpan/appmanage/service/AccService;->t0:Ljava/util/concurrent/ExecutorService;
    :try_end_d
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_d} :catch_b

    .line 470
    .line 471
    :catch_b
    :try_start_e
    iget-object v2, p0, Lcom/yunpan/appmanage/service/AccService;->N0:Ljava/util/concurrent/ExecutorService;

    .line 472
    .line 473
    invoke-interface {v2}, Ljava/util/concurrent/ExecutorService;->shutdownNow()Ljava/util/List;

    .line 474
    .line 475
    .line 476
    iput-object v8, p0, Lcom/yunpan/appmanage/service/AccService;->N0:Ljava/util/concurrent/ExecutorService;
    :try_end_e
    .catch Ljava/lang/Exception; {:try_start_e .. :try_end_e} :catch_c

    .line 477
    .line 478
    goto :goto_8

    .line 479
    :catch_c
    nop

    .line 480
    :goto_8
    iget-boolean v2, p0, Lcom/yunpan/appmanage/service/AccService;->R0:Z

    .line 481
    .line 482
    if-nez v2, :cond_12

    .line 483
    .line 484
    sget-object v2, Lwa/t;->a:Lwa/u;

    .line 485
    .line 486
    iget-boolean v2, v2, Lwa/u;->D:Z

    .line 487
    .line 488
    if-eqz v2, :cond_12

    .line 489
    .line 490
    const-string v2, "\u5df2\u505c\u6b62\u81ea\u52a8\u5316\u670d\u52a1"

    .line 491
    .line 492
    invoke-static {v2}, Lcom/yunpan/appmanage/util/a0;->t(Ljava/lang/String;)V

    .line 493
    .line 494
    .line 495
    :cond_12
    sget-object v2, Lwa/t;->a:Lwa/u;

    .line 496
    .line 497
    iget-boolean v3, v2, Lwa/u;->t:Z

    .line 498
    .line 499
    if-eqz v3, :cond_13

    .line 500
    .line 501
    const-string v3, "AccService\uff1a\u5173\u95ed"

    .line 502
    .line 503
    invoke-static {v3}, Lwa/w;->c(Ljava/lang/String;)V

    .line 504
    .line 505
    .line 506
    :cond_13
    iget-object v3, p0, Lcom/yunpan/appmanage/service/AccService;->j:Landroid/os/Handler;

    .line 507
    .line 508
    invoke-virtual {v3, v8}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 509
    .line 510
    .line 511
    iget-object v3, p0, Lcom/yunpan/appmanage/service/AccService;->G:Lta/e;

    .line 512
    .line 513
    invoke-virtual {v3, v8}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 514
    .line 515
    .line 516
    iget-object v3, p0, Lcom/yunpan/appmanage/service/AccService;->l:Lta/e;

    .line 517
    .line 518
    invoke-virtual {v3, v8}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 519
    .line 520
    .line 521
    invoke-virtual {v0}, Lcom/yunpan/appmanage/util/b0;->b()V

    .line 522
    .line 523
    .line 524
    iget-object v3, v0, Lcom/yunpan/appmanage/util/b0;->c:Ljava/lang/Object;

    .line 525
    .line 526
    check-cast v3, Ljava/lang/String;

    .line 527
    .line 528
    new-instance v4, Ljava/lang/StringBuilder;

    .line 529
    .line 530
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 531
    .line 532
    .line 533
    sget-object v5, Lcom/yunpan/appmanage/base/AppStart;->h:Lcom/yunpan/appmanage/base/AppStart;

    .line 534
    .line 535
    invoke-virtual {v5}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    .line 536
    .line 537
    .line 538
    move-result-object v5

    .line 539
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 540
    .line 541
    .line 542
    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 543
    .line 544
    .line 545
    const-class v5, Lcom/yunpan/appmanage/service/AccService;

    .line 546
    .line 547
    invoke-virtual {v5}, Ljava/lang/Class;->getName()Ljava/lang/String;

    .line 548
    .line 549
    .line 550
    move-result-object v6

    .line 551
    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 552
    .line 553
    .line 554
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 555
    .line 556
    .line 557
    move-result-object v4

    .line 558
    invoke-virtual {v3, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 559
    .line 560
    .line 561
    move-result v3

    .line 562
    if-eqz v3, :cond_18

    .line 563
    .line 564
    const-class v3, Lcom/yunpan/appmanage/service/BootTaskService;

    .line 565
    .line 566
    invoke-static {p0, v3}, Lif/a;->h0(Landroid/content/Context;Ljava/lang/Class;)Z

    .line 567
    .line 568
    .line 569
    move-result v3

    .line 570
    if-eqz v3, :cond_14

    .line 571
    .line 572
    return-void

    .line 573
    :cond_14
    iget-boolean v3, v2, Lwa/u;->I:Z

    .line 574
    .line 575
    if-eqz v3, :cond_15

    .line 576
    .line 577
    const-string v0, "\u65e0\u969c\u788d\u5f02\u5e38\u5173\u95ed\u62c9\u8d77\u5f00\u673a\u4efb\u52a1"

    .line 578
    .line 579
    invoke-static {p0, v0}, Lcom/yunpan/appmanage/service/BootReceiver;->a(Landroid/content/Context;Ljava/lang/String;)V

    .line 580
    .line 581
    .line 582
    goto :goto_9

    .line 583
    :cond_15
    iget-boolean v2, v2, Lwa/u;->H:Z

    .line 584
    .line 585
    if-eqz v2, :cond_18

    .line 586
    .line 587
    const-class v2, Lcom/yunpan/appmanage/service/AccRestartService;

    .line 588
    .line 589
    :try_start_f
    invoke-virtual {v0}, Lcom/yunpan/appmanage/util/b0;->b()V

    .line 590
    .line 591
    .line 592
    iget-object v0, v0, Lcom/yunpan/appmanage/util/b0;->c:Ljava/lang/Object;

    .line 593
    .line 594
    check-cast v0, Ljava/lang/String;

    .line 595
    .line 596
    new-instance v3, Ljava/lang/StringBuilder;

    .line 597
    .line 598
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 599
    .line 600
    .line 601
    sget-object v4, Lcom/yunpan/appmanage/base/AppStart;->h:Lcom/yunpan/appmanage/base/AppStart;

    .line 602
    .line 603
    invoke-virtual {v4}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    .line 604
    .line 605
    .line 606
    move-result-object v4

    .line 607
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 608
    .line 609
    .line 610
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 611
    .line 612
    .line 613
    invoke-virtual {v5}, Ljava/lang/Class;->getName()Ljava/lang/String;

    .line 614
    .line 615
    .line 616
    move-result-object v1

    .line 617
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 618
    .line 619
    .line 620
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 621
    .line 622
    .line 623
    move-result-object v1

    .line 624
    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 625
    .line 626
    .line 627
    move-result v0

    .line 628
    if-nez v0, :cond_16

    .line 629
    .line 630
    goto :goto_9

    .line 631
    :cond_16
    sget-object v0, Lcom/yunpan/appmanage/base/AppStart;->h:Lcom/yunpan/appmanage/base/AppStart;

    .line 632
    .line 633
    invoke-static {v0, v2}, Lif/a;->h0(Landroid/content/Context;Ljava/lang/Class;)Z

    .line 634
    .line 635
    .line 636
    move-result v0

    .line 637
    if-nez v0, :cond_18

    .line 638
    .line 639
    new-instance v0, Landroid/content/Intent;

    .line 640
    .line 641
    sget-object v1, Lcom/yunpan/appmanage/base/AppStart;->h:Lcom/yunpan/appmanage/base/AppStart;

    .line 642
    .line 643
    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 644
    .line 645
    .line 646
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 647
    .line 648
    const/16 v2, 0x1a

    .line 649
    .line 650
    if-lt v1, v2, :cond_17

    .line 651
    .line 652
    sget-object v1, Lcom/yunpan/appmanage/base/AppStart;->h:Lcom/yunpan/appmanage/base/AppStart;

    .line 653
    .line 654
    invoke-static {v1, v0}, Ln5/a;->t(Lcom/yunpan/appmanage/base/AppStart;Landroid/content/Intent;)V

    .line 655
    .line 656
    .line 657
    goto :goto_9

    .line 658
    :cond_17
    sget-object v1, Lcom/yunpan/appmanage/base/AppStart;->h:Lcom/yunpan/appmanage/base/AppStart;

    .line 659
    .line 660
    invoke-virtual {v1, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;
    :try_end_f
    .catch Ljava/lang/Exception; {:try_start_f .. :try_end_f} :catch_d

    .line 661
    .line 662
    .line 663
    :catch_d
    :cond_18
    :goto_9
    return-void
.end method

.method public final onInterrupt()V
    .locals 1

    .line 1
    sget-object v0, Lwa/t;->a:Lwa/u;

    .line 2
    .line 3
    iget-boolean v0, v0, Lwa/u;->t:Z

    .line 4
    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    const-string v0, "AccService\uff1a\u4e2d\u65ad"

    .line 8
    .line 9
    invoke-static {v0}, Lwa/w;->c(Ljava/lang/String;)V

    .line 10
    .line 11
    .line 12
    :cond_0
    return-void
.end method

.method public final onKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 24

    .line 1
    move-object/from16 v1, p0

    .line 2
    .line 3
    iget-boolean v0, v1, Lcom/yunpan/appmanage/service/AccService;->F:Z

    .line 4
    .line 5
    const/4 v2, 0x1

    .line 6
    if-eqz v0, :cond_0

    .line 7
    .line 8
    sget-object v0, Lwa/t;->a:Lwa/u;

    .line 9
    .line 10
    iget-object v0, v0, Lwa/u;->d:Lcom/yunpan/appmanage/base/AppStart;

    .line 11
    .line 12
    invoke-virtual/range {p1 .. p1}, Landroid/view/KeyEvent;->getKeyCode()I

    .line 13
    .line 14
    .line 15
    move-result v3

    .line 16
    invoke-virtual/range {p1 .. p1}, Landroid/view/KeyEvent;->getAction()I

    .line 17
    .line 18
    .line 19
    move-result v4

    .line 20
    :try_start_0
    new-instance v5, Landroid/content/Intent;

    .line 21
    .line 22
    new-instance v6, Ljava/lang/StringBuilder;

    .line 23
    .line 24
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    .line 25
    .line 26
    .line 27
    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    .line 28
    .line 29
    .line 30
    move-result-object v7

    .line 31
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 32
    .line 33
    .line 34
    const-string v7, ".BROADCAST_ACC_KEY_CODE"

    .line 35
    .line 36
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 37
    .line 38
    .line 39
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 40
    .line 41
    .line 42
    move-result-object v6

    .line 43
    invoke-direct {v5, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 44
    .line 45
    .line 46
    const-string v6, "keyCode"

    .line 47
    .line 48
    invoke-virtual {v5, v6, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 49
    .line 50
    .line 51
    const-string v3, "action"

    .line 52
    .line 53
    invoke-virtual {v5, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 54
    .line 55
    .line 56
    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    .line 57
    .line 58
    .line 59
    move-result-object v3

    .line 60
    invoke-virtual {v5, v3}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 61
    .line 62
    .line 63
    invoke-virtual {v0, v5}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 64
    .line 65
    .line 66
    :catch_0
    return v2

    .line 67
    :cond_0
    invoke-virtual/range {p1 .. p1}, Landroid/view/KeyEvent;->getKeyCode()I

    .line 68
    .line 69
    .line 70
    move-result v0

    .line 71
    const/4 v3, 0x3

    .line 72
    if-ne v0, v3, :cond_1

    .line 73
    .line 74
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 75
    .line 76
    .line 77
    move-result-wide v4

    .line 78
    iput-wide v4, v1, Lcom/yunpan/appmanage/service/AccService;->H:J

    .line 79
    .line 80
    :cond_1
    invoke-virtual/range {p1 .. p1}, Landroid/view/KeyEvent;->getKeyCode()I

    .line 81
    .line 82
    .line 83
    invoke-virtual/range {p1 .. p1}, Landroid/view/KeyEvent;->getAction()I

    .line 84
    .line 85
    .line 86
    iget-object v0, v1, Lcom/yunpan/appmanage/service/AccService;->Z:Ljava/util/ArrayList;

    .line 87
    .line 88
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    .line 89
    .line 90
    .line 91
    move-result v0

    .line 92
    if-eqz v0, :cond_2

    .line 93
    .line 94
    invoke-super/range {p0 .. p1}, Landroid/accessibilityservice/AccessibilityService;->onKeyEvent(Landroid/view/KeyEvent;)Z

    .line 95
    .line 96
    .line 97
    move-result v0

    .line 98
    return v0

    .line 99
    :cond_2
    invoke-virtual/range {p1 .. p1}, Landroid/view/KeyEvent;->getAction()I

    .line 100
    .line 101
    .line 102
    move-result v0

    .line 103
    iget-object v4, v1, Lcom/yunpan/appmanage/service/AccService;->P:Ljava/util/HashSet;

    .line 104
    .line 105
    if-ne v0, v2, :cond_4

    .line 106
    .line 107
    invoke-virtual/range {p1 .. p1}, Landroid/view/KeyEvent;->getKeyCode()I

    .line 108
    .line 109
    .line 110
    move-result v0

    .line 111
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 112
    .line 113
    .line 114
    move-result-object v0

    .line 115
    invoke-virtual {v4, v0}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    .line 116
    .line 117
    .line 118
    move-result v0

    .line 119
    if-eqz v0, :cond_4

    .line 120
    .line 121
    iget-object v0, v1, Lcom/yunpan/appmanage/service/AccService;->X:Ljava/util/HashSet;

    .line 122
    .line 123
    invoke-virtual/range {p1 .. p1}, Landroid/view/KeyEvent;->getKeyCode()I

    .line 124
    .line 125
    .line 126
    move-result v3

    .line 127
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 128
    .line 129
    .line 130
    move-result-object v3

    .line 131
    invoke-virtual {v0, v3}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    .line 132
    .line 133
    .line 134
    move-result v0

    .line 135
    if-eqz v0, :cond_3

    .line 136
    .line 137
    return v2

    .line 138
    :cond_3
    invoke-super/range {p0 .. p1}, Landroid/accessibilityservice/AccessibilityService;->onKeyEvent(Landroid/view/KeyEvent;)Z

    .line 139
    .line 140
    .line 141
    move-result v0

    .line 142
    return v0

    .line 143
    :cond_4
    invoke-virtual/range {p1 .. p1}, Landroid/view/KeyEvent;->getAction()I

    .line 144
    .line 145
    .line 146
    move-result v0

    .line 147
    if-nez v0, :cond_6

    .line 148
    .line 149
    iget-object v0, v1, Lcom/yunpan/appmanage/service/AccService;->R:Ljava/util/HashSet;

    .line 150
    .line 151
    invoke-virtual/range {p1 .. p1}, Landroid/view/KeyEvent;->getKeyCode()I

    .line 152
    .line 153
    .line 154
    move-result v5

    .line 155
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 156
    .line 157
    .line 158
    move-result-object v5

    .line 159
    invoke-virtual {v0, v5}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    .line 160
    .line 161
    .line 162
    move-result v0

    .line 163
    if-eqz v0, :cond_6

    .line 164
    .line 165
    iget-object v0, v1, Lcom/yunpan/appmanage/service/AccService;->X:Ljava/util/HashSet;

    .line 166
    .line 167
    invoke-virtual/range {p1 .. p1}, Landroid/view/KeyEvent;->getKeyCode()I

    .line 168
    .line 169
    .line 170
    move-result v3

    .line 171
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 172
    .line 173
    .line 174
    move-result-object v3

    .line 175
    invoke-virtual {v0, v3}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    .line 176
    .line 177
    .line 178
    move-result v0

    .line 179
    if-eqz v0, :cond_5

    .line 180
    .line 181
    return v2

    .line 182
    :cond_5
    invoke-super/range {p0 .. p1}, Landroid/accessibilityservice/AccessibilityService;->onKeyEvent(Landroid/view/KeyEvent;)Z

    .line 183
    .line 184
    .line 185
    move-result v0

    .line 186
    return v0

    .line 187
    :cond_6
    iget-object v0, v1, Lcom/yunpan/appmanage/service/AccService;->S:Lz7/s;

    .line 188
    .line 189
    iget-object v5, v1, Lcom/yunpan/appmanage/service/AccService;->G:Lta/e;

    .line 190
    .line 191
    if-eqz v0, :cond_9

    .line 192
    .line 193
    invoke-virtual/range {p1 .. p1}, Landroid/view/KeyEvent;->getAction()I

    .line 194
    .line 195
    .line 196
    move-result v0

    .line 197
    if-nez v0, :cond_7

    .line 198
    .line 199
    return v2

    .line 200
    :cond_7
    :try_start_1
    iget-object v0, v1, Lcom/yunpan/appmanage/service/AccService;->S:Lz7/s;

    .line 201
    .line 202
    invoke-virtual/range {p1 .. p1}, Landroid/view/KeyEvent;->getKeyCode()I

    .line 203
    .line 204
    .line 205
    move-result v3

    .line 206
    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 207
    .line 208
    .line 209
    move-result-object v3

    .line 210
    iget-object v0, v0, Lz7/s;->a:Lb8/n;

    .line 211
    .line 212
    invoke-virtual {v0, v3}, Lb8/n;->containsKey(Ljava/lang/Object;)Z

    .line 213
    .line 214
    .line 215
    move-result v0

    .line 216
    if-eqz v0, :cond_8

    .line 217
    .line 218
    iget-object v0, v1, Lcom/yunpan/appmanage/service/AccService;->S:Lz7/s;

    .line 219
    .line 220
    invoke-virtual/range {p1 .. p1}, Landroid/view/KeyEvent;->getKeyCode()I

    .line 221
    .line 222
    .line 223
    move-result v3

    .line 224
    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 225
    .line 226
    .line 227
    move-result-object v3

    .line 228
    invoke-virtual {v0, v3}, Lz7/s;->q(Ljava/lang/String;)Lz7/s;

    .line 229
    .line 230
    .line 231
    move-result-object v0

    .line 232
    const-string v3, "maps"

    .line 233
    .line 234
    invoke-virtual {v0, v3}, Lz7/s;->p(Ljava/lang/String;)Lz7/o;

    .line 235
    .line 236
    .line 237
    move-result-object v0

    .line 238
    invoke-virtual {v1, v0}, Lcom/yunpan/appmanage/service/AccService;->b(Lz7/o;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 239
    .line 240
    .line 241
    :catch_1
    :cond_8
    const/4 v0, 0x0

    .line 242
    iput-object v0, v1, Lcom/yunpan/appmanage/service/AccService;->S:Lz7/s;

    .line 243
    .line 244
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    .line 245
    .line 246
    .line 247
    move-result-object v0

    .line 248
    const/4 v3, -0x3

    .line 249
    iput v3, v0, Landroid/os/Message;->what:I

    .line 250
    .line 251
    iget-object v3, v1, Lcom/yunpan/appmanage/service/AccService;->T:Ljava/lang/String;

    .line 252
    .line 253
    iput-object v3, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 254
    .line 255
    invoke-virtual {v5, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 256
    .line 257
    .line 258
    return v2

    .line 259
    :cond_9
    iget-object v6, v1, Lcom/yunpan/appmanage/service/AccService;->V:Lya/i;

    .line 260
    .line 261
    const/4 v0, 0x0

    .line 262
    const/4 v7, -0x1

    .line 263
    if-eqz v6, :cond_21

    .line 264
    .line 265
    invoke-virtual/range {p1 .. p1}, Landroid/view/KeyEvent;->getKeyCode()I

    .line 266
    .line 267
    .line 268
    move-result v4

    .line 269
    invoke-virtual/range {p1 .. p1}, Landroid/view/KeyEvent;->getAction()I

    .line 270
    .line 271
    .line 272
    move-result v5

    .line 273
    const/4 v8, 0x2

    .line 274
    const/16 v9, 0x52

    .line 275
    .line 276
    if-ne v4, v9, :cond_a

    .line 277
    .line 278
    if-ne v5, v2, :cond_b

    .line 279
    .line 280
    iget v10, v6, Lya/i;->r:I

    .line 281
    .line 282
    add-int/2addr v10, v2

    .line 283
    iput v10, v6, Lya/i;->r:I

    .line 284
    .line 285
    if-lt v10, v8, :cond_b

    .line 286
    .line 287
    invoke-virtual {v6}, Lya/i;->c()V

    .line 288
    .line 289
    .line 290
    goto/16 :goto_6

    .line 291
    .line 292
    :cond_a
    iput v0, v6, Lya/i;->r:I

    .line 293
    .line 294
    :cond_b
    iget v10, v6, Lya/i;->k:I

    .line 295
    .line 296
    if-eq v10, v7, :cond_c

    .line 297
    .line 298
    if-ne v4, v10, :cond_c

    .line 299
    .line 300
    if-ne v5, v2, :cond_20

    .line 301
    .line 302
    invoke-virtual {v6}, Lya/i;->c()V

    .line 303
    .line 304
    .line 305
    goto/16 :goto_6

    .line 306
    .line 307
    :cond_c
    iget-object v7, v6, Lya/i;->s:Lcom/yunpan/appmanage/carsdk/u;

    .line 308
    .line 309
    iget-boolean v10, v6, Lya/i;->m:Z

    .line 310
    .line 311
    if-eqz v10, :cond_e

    .line 312
    .line 313
    const/16 v10, -0x64

    .line 314
    .line 315
    invoke-virtual {v7, v10}, Landroid/os/Handler;->removeMessages(I)V

    .line 316
    .line 317
    .line 318
    iget-object v11, v6, Lya/i;->e:Landroid/widget/ImageView;

    .line 319
    .line 320
    invoke-virtual {v11}, Landroid/view/View;->getVisibility()I

    .line 321
    .line 322
    .line 323
    move-result v11

    .line 324
    const/16 v12, 0x8

    .line 325
    .line 326
    if-ne v11, v12, :cond_d

    .line 327
    .line 328
    iget-object v11, v6, Lya/i;->e:Landroid/widget/ImageView;

    .line 329
    .line 330
    invoke-virtual {v11, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 331
    .line 332
    .line 333
    :cond_d
    if-ne v5, v2, :cond_e

    .line 334
    .line 335
    const-wide/16 v11, 0x2710

    .line 336
    .line 337
    invoke-virtual {v7, v10, v11, v12}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 338
    .line 339
    .line 340
    :cond_e
    iget-object v10, v6, Lya/i;->q:Ljava/util/HashMap;

    .line 341
    .line 342
    const/16 v11, 0xa5

    .line 343
    .line 344
    if-eq v4, v11, :cond_1b

    .line 345
    .line 346
    if-eq v4, v9, :cond_1b

    .line 347
    .line 348
    if-eq v4, v3, :cond_1b

    .line 349
    .line 350
    const/16 v11, 0x1d

    .line 351
    .line 352
    if-ne v4, v11, :cond_f

    .line 353
    .line 354
    goto/16 :goto_4

    .line 355
    .line 356
    :cond_f
    const/16 v3, 0x13

    .line 357
    .line 358
    if-eq v4, v3, :cond_19

    .line 359
    .line 360
    const/16 v9, 0x14

    .line 361
    .line 362
    if-eq v4, v9, :cond_19

    .line 363
    .line 364
    const/16 v11, 0x15

    .line 365
    .line 366
    if-eq v4, v11, :cond_19

    .line 367
    .line 368
    const/16 v11, 0x16

    .line 369
    .line 370
    if-ne v4, v11, :cond_10

    .line 371
    .line 372
    goto/16 :goto_3

    .line 373
    .line 374
    :cond_10
    const/16 v7, 0x17

    .line 375
    .line 376
    if-eq v4, v7, :cond_14

    .line 377
    .line 378
    const/16 v7, 0x42

    .line 379
    .line 380
    if-ne v4, v7, :cond_11

    .line 381
    .line 382
    goto :goto_1

    .line 383
    :cond_11
    iget-boolean v7, v6, Lya/i;->l:Z

    .line 384
    .line 385
    if-eqz v7, :cond_12

    .line 386
    .line 387
    const/16 v8, 0xa6

    .line 388
    .line 389
    if-ne v4, v8, :cond_12

    .line 390
    .line 391
    if-ne v5, v2, :cond_20

    .line 392
    .line 393
    :try_start_2
    iget-object v4, v6, Lya/i;->n:Landroid/hardware/input/IInputManager;

    .line 394
    .line 395
    invoke-static {v4, v3, v0}, Lwa/c;->d(Landroid/hardware/input/IInputManager;IZ)V

    .line 396
    .line 397
    .line 398
    goto/16 :goto_6

    .line 399
    .line 400
    :cond_12
    if-eqz v7, :cond_13

    .line 401
    .line 402
    const/16 v3, 0xa7

    .line 403
    .line 404
    if-ne v4, v3, :cond_13

    .line 405
    .line 406
    if-ne v5, v2, :cond_20

    .line 407
    .line 408
    iget-object v3, v6, Lya/i;->n:Landroid/hardware/input/IInputManager;

    .line 409
    .line 410
    invoke-static {v3, v9, v0}, Lwa/c;->d(Landroid/hardware/input/IInputManager;IZ)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_4

    .line 411
    .line 412
    .line 413
    goto/16 :goto_6

    .line 414
    .line 415
    :cond_13
    :goto_0
    const/4 v2, 0x0

    .line 416
    goto/16 :goto_6

    .line 417
    .line 418
    :cond_14
    :goto_1
    iget v0, v6, Lya/i;->f:F

    .line 419
    .line 420
    float-to-int v0, v0

    .line 421
    iget-object v3, v6, Lya/i;->e:Landroid/widget/ImageView;

    .line 422
    .line 423
    invoke-virtual {v3}, Landroid/view/View;->getWidth()I

    .line 424
    .line 425
    .line 426
    move-result v3

    .line 427
    div-int/2addr v3, v8

    .line 428
    add-int/2addr v3, v0

    .line 429
    iget v0, v6, Lya/i;->g:F

    .line 430
    .line 431
    float-to-int v0, v0

    .line 432
    iget-object v7, v6, Lya/i;->e:Landroid/widget/ImageView;

    .line 433
    .line 434
    invoke-virtual {v7}, Landroid/view/View;->getHeight()I

    .line 435
    .line 436
    .line 437
    move-result v7

    .line 438
    div-int/2addr v7, v8

    .line 439
    add-int/2addr v7, v0

    .line 440
    iget-object v0, v6, Lya/i;->n:Landroid/hardware/input/IInputManager;

    .line 441
    .line 442
    if-nez v0, :cond_15

    .line 443
    .line 444
    if-nez v5, :cond_20

    .line 445
    .line 446
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 447
    .line 448
    const/16 v4, 0x18

    .line 449
    .line 450
    if-lt v0, v4, :cond_20

    .line 451
    .line 452
    int-to-float v0, v3

    .line 453
    int-to-float v3, v7

    .line 454
    const-wide/16 v4, 0x64

    .line 455
    .line 456
    iget-object v7, v6, Lya/i;->a:Lcom/yunpan/appmanage/service/AccService;

    .line 457
    .line 458
    invoke-static {v7, v0, v3, v4, v5}, Lwa/b;->a(Lcom/yunpan/appmanage/service/AccService;FFJ)V

    .line 459
    .line 460
    .line 461
    invoke-virtual {v6}, Lya/i;->d()V

    .line 462
    .line 463
    .line 464
    goto/16 :goto_6

    .line 465
    .line 466
    :cond_15
    const/16 v9, 0x1002

    .line 467
    .line 468
    if-nez v5, :cond_17

    .line 469
    .line 470
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 471
    .line 472
    .line 473
    move-result-object v0

    .line 474
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    .line 475
    .line 476
    .line 477
    move-result-wide v11

    .line 478
    invoke-static {v11, v12}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 479
    .line 480
    .line 481
    move-result-object v5

    .line 482
    invoke-virtual {v10, v0, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 483
    .line 484
    .line 485
    iget-object v0, v6, Lya/i;->n:Landroid/hardware/input/IInputManager;

    .line 486
    .line 487
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 488
    .line 489
    .line 490
    move-result-object v4

    .line 491
    invoke-virtual {v10, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 492
    .line 493
    .line 494
    move-result-object v4

    .line 495
    check-cast v4, Ljava/lang/Long;

    .line 496
    .line 497
    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    .line 498
    .line 499
    .line 500
    move-result-wide v12

    .line 501
    if-nez v0, :cond_16

    .line 502
    .line 503
    goto :goto_2

    .line 504
    :cond_16
    int-to-float v15, v3

    .line 505
    int-to-float v3, v7

    .line 506
    const/4 v14, 0x0

    .line 507
    const/high16 v17, 0x3f800000    # 1.0f

    .line 508
    .line 509
    const/high16 v18, 0x3f800000    # 1.0f

    .line 510
    .line 511
    const/16 v19, 0x0

    .line 512
    .line 513
    const/high16 v20, 0x3f800000    # 1.0f

    .line 514
    .line 515
    const/high16 v21, 0x3f800000    # 1.0f

    .line 516
    .line 517
    const/16 v22, 0x0

    .line 518
    .line 519
    const/16 v23, 0x0

    .line 520
    .line 521
    move-wide v10, v12

    .line 522
    move/from16 v16, v3

    .line 523
    .line 524
    :try_start_3
    invoke-static/range {v10 .. v23}, Landroid/view/MotionEvent;->obtain(JJIFFFFIFFII)Landroid/view/MotionEvent;

    .line 525
    .line 526
    .line 527
    move-result-object v3

    .line 528
    invoke-virtual {v3, v9}, Landroid/view/MotionEvent;->setSource(I)V

    .line 529
    .line 530
    .line 531
    invoke-interface {v0, v3, v8}, Landroid/hardware/input/IInputManager;->injectInputEvent(Landroid/view/InputEvent;I)Z

    .line 532
    .line 533
    .line 534
    invoke-virtual {v3}, Landroid/view/MotionEvent;->recycle()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    .line 535
    .line 536
    .line 537
    goto :goto_2

    .line 538
    :catch_2
    move-exception v0

    .line 539
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 540
    .line 541
    .line 542
    goto :goto_2

    .line 543
    :cond_17
    if-ne v5, v2, :cond_18

    .line 544
    .line 545
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 546
    .line 547
    .line 548
    move-result-object v4

    .line 549
    invoke-virtual {v10, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 550
    .line 551
    .line 552
    move-result-object v4

    .line 553
    check-cast v4, Ljava/lang/Long;

    .line 554
    .line 555
    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    .line 556
    .line 557
    .line 558
    move-result-wide v10

    .line 559
    :try_start_4
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    .line 560
    .line 561
    .line 562
    move-result-wide v12

    .line 563
    int-to-float v15, v3

    .line 564
    int-to-float v3, v7

    .line 565
    const/4 v14, 0x1

    .line 566
    const/high16 v17, 0x3f800000    # 1.0f

    .line 567
    .line 568
    const/high16 v18, 0x3f800000    # 1.0f

    .line 569
    .line 570
    const/16 v19, 0x0

    .line 571
    .line 572
    const/high16 v20, 0x3f800000    # 1.0f

    .line 573
    .line 574
    const/high16 v21, 0x3f800000    # 1.0f

    .line 575
    .line 576
    const/16 v22, 0x0

    .line 577
    .line 578
    const/16 v23, 0x0

    .line 579
    .line 580
    move/from16 v16, v3

    .line 581
    .line 582
    invoke-static/range {v10 .. v23}, Landroid/view/MotionEvent;->obtain(JJIFFFFIFFII)Landroid/view/MotionEvent;

    .line 583
    .line 584
    .line 585
    move-result-object v3

    .line 586
    invoke-virtual {v3, v9}, Landroid/view/MotionEvent;->setSource(I)V

    .line 587
    .line 588
    .line 589
    invoke-interface {v0, v3, v8}, Landroid/hardware/input/IInputManager;->injectInputEvent(Landroid/view/InputEvent;I)Z

    .line 590
    .line 591
    .line 592
    invoke-virtual {v3}, Landroid/view/MotionEvent;->recycle()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_3

    .line 593
    .line 594
    .line 595
    goto :goto_2

    .line 596
    :catch_3
    move-exception v0

    .line 597
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 598
    .line 599
    .line 600
    :cond_18
    :goto_2
    invoke-virtual {v6}, Lya/i;->d()V

    .line 601
    .line 602
    .line 603
    goto/16 :goto_6

    .line 604
    .line 605
    :cond_19
    :goto_3
    if-nez v5, :cond_1a

    .line 606
    .line 607
    iget-object v2, v6, Lya/i;->p:Ljava/util/HashMap;

    .line 608
    .line 609
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 610
    .line 611
    .line 612
    move-result-object v3

    .line 613
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 614
    .line 615
    .line 616
    move-result-object v0

    .line 617
    invoke-virtual {v2, v3, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 618
    .line 619
    .line 620
    iget-object v0, v6, Lya/i;->o:Ljava/util/HashMap;

    .line 621
    .line 622
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 623
    .line 624
    .line 625
    move-result-object v2

    .line 626
    iget v3, v6, Lya/i;->j:I

    .line 627
    .line 628
    div-int/2addr v3, v8

    .line 629
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 630
    .line 631
    .line 632
    move-result-object v3

    .line 633
    invoke-virtual {v0, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 634
    .line 635
    .line 636
    invoke-virtual {v7, v4}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 637
    .line 638
    .line 639
    move-result v2

    .line 640
    goto :goto_6

    .line 641
    :cond_1a
    invoke-virtual {v7, v4}, Landroid/os/Handler;->removeMessages(I)V

    .line 642
    .line 643
    .line 644
    goto :goto_6

    .line 645
    :cond_1b
    :goto_4
    if-nez v5, :cond_1c

    .line 646
    .line 647
    const-wide/16 v11, 0x258

    .line 648
    .line 649
    invoke-virtual {v7, v4, v11, v12}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 650
    .line 651
    .line 652
    goto :goto_5

    .line 653
    :cond_1c
    if-ne v5, v2, :cond_1d

    .line 654
    .line 655
    invoke-virtual {v7, v4}, Landroid/os/Handler;->removeMessages(I)V

    .line 656
    .line 657
    .line 658
    :cond_1d
    :goto_5
    if-eq v4, v9, :cond_1e

    .line 659
    .line 660
    if-ne v4, v3, :cond_13

    .line 661
    .line 662
    :cond_1e
    if-nez v5, :cond_13

    .line 663
    .line 664
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 665
    .line 666
    .line 667
    move-result-object v2

    .line 668
    invoke-virtual {v10, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 669
    .line 670
    .line 671
    move-result-object v2

    .line 672
    if-eqz v2, :cond_1f

    .line 673
    .line 674
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 675
    .line 676
    .line 677
    move-result-wide v2

    .line 678
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 679
    .line 680
    .line 681
    move-result-object v5

    .line 682
    invoke-virtual {v10, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 683
    .line 684
    .line 685
    move-result-object v5

    .line 686
    check-cast v5, Ljava/lang/Long;

    .line 687
    .line 688
    invoke-virtual {v5}, Ljava/lang/Long;->longValue()J

    .line 689
    .line 690
    .line 691
    move-result-wide v5

    .line 692
    sub-long/2addr v2, v5

    .line 693
    const-wide/16 v5, 0x1f4

    .line 694
    .line 695
    cmp-long v8, v2, v5

    .line 696
    .line 697
    if-gez v8, :cond_1f

    .line 698
    .line 699
    invoke-virtual {v7, v4}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 700
    .line 701
    .line 702
    goto/16 :goto_0

    .line 703
    .line 704
    :cond_1f
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 705
    .line 706
    .line 707
    move-result-object v2

    .line 708
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 709
    .line 710
    .line 711
    move-result-wide v3

    .line 712
    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 713
    .line 714
    .line 715
    move-result-object v3

    .line 716
    invoke-virtual {v10, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 717
    .line 718
    .line 719
    goto/16 :goto_0

    .line 720
    .line 721
    :catch_4
    :cond_20
    :goto_6
    return v2

    .line 722
    :cond_21
    :try_start_5
    iget v3, v1, Lcom/yunpan/appmanage/service/AccService;->I:I

    .line 723
    .line 724
    const-wide/16 v8, 0x0

    .line 725
    .line 726
    if-eq v3, v7, :cond_27

    .line 727
    .line 728
    invoke-virtual/range {p1 .. p1}, Landroid/view/KeyEvent;->getAction()I

    .line 729
    .line 730
    .line 731
    move-result v3

    .line 732
    if-nez v3, :cond_27

    .line 733
    .line 734
    iget-object v3, v1, Lcom/yunpan/appmanage/service/AccService;->Z:Ljava/util/ArrayList;

    .line 735
    .line 736
    iget v6, v1, Lcom/yunpan/appmanage/service/AccService;->I:I

    .line 737
    .line 738
    invoke-virtual {v3, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 739
    .line 740
    .line 741
    move-result-object v3

    .line 742
    check-cast v3, Lcom/yunpan/appmanage/bean/KeyMapAccFindBean;

    .line 743
    .line 744
    iget v3, v3, Lcom/yunpan/appmanage/bean/KeyMapAccFindBean;->zhKeyCode:I

    .line 745
    .line 746
    invoke-virtual/range {p1 .. p1}, Landroid/view/KeyEvent;->getKeyCode()I

    .line 747
    .line 748
    .line 749
    move-result v6

    .line 750
    if-ne v3, v6, :cond_26

    .line 751
    .line 752
    iget-object v3, v1, Lcom/yunpan/appmanage/service/AccService;->Z:Ljava/util/ArrayList;

    .line 753
    .line 754
    iget v6, v1, Lcom/yunpan/appmanage/service/AccService;->I:I

    .line 755
    .line 756
    invoke-virtual {v3, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 757
    .line 758
    .line 759
    move-result-object v3

    .line 760
    check-cast v3, Lcom/yunpan/appmanage/bean/KeyMapAccFindBean;

    .line 761
    .line 762
    iget-boolean v3, v3, Lcom/yunpan/appmanage/bean/KeyMapAccFindBean;->zhModeDown:Z
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_5

    .line 763
    .line 764
    const-string v6, "zhClick"

    .line 765
    .line 766
    if-eqz v3, :cond_23

    .line 767
    .line 768
    :try_start_6
    invoke-virtual/range {p1 .. p1}, Landroid/view/KeyEvent;->getKeyCode()I

    .line 769
    .line 770
    .line 771
    move-result v3

    .line 772
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 773
    .line 774
    .line 775
    move-result-object v3

    .line 776
    invoke-virtual {v4, v3}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 777
    .line 778
    .line 779
    iget-object v3, v1, Lcom/yunpan/appmanage/service/AccService;->Z:Ljava/util/ArrayList;

    .line 780
    .line 781
    iget v10, v1, Lcom/yunpan/appmanage/service/AccService;->I:I

    .line 782
    .line 783
    invoke-virtual {v3, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 784
    .line 785
    .line 786
    move-result-object v3

    .line 787
    check-cast v3, Lcom/yunpan/appmanage/bean/KeyMapAccFindBean;

    .line 788
    .line 789
    iget-boolean v3, v3, Lcom/yunpan/appmanage/bean/KeyMapAccFindBean;->zhModeDown:Z

    .line 790
    .line 791
    if-eqz v3, :cond_22

    .line 792
    .line 793
    iget-object v3, v1, Lcom/yunpan/appmanage/service/AccService;->Z:Ljava/util/ArrayList;

    .line 794
    .line 795
    iget v10, v1, Lcom/yunpan/appmanage/service/AccService;->I:I

    .line 796
    .line 797
    invoke-virtual {v3, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 798
    .line 799
    .line 800
    move-result-object v3

    .line 801
    check-cast v3, Lcom/yunpan/appmanage/bean/KeyMapAccFindBean;

    .line 802
    .line 803
    iget v3, v3, Lcom/yunpan/appmanage/bean/KeyMapAccFindBean;->keyCode:I

    .line 804
    .line 805
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 806
    .line 807
    .line 808
    move-result-object v3

    .line 809
    invoke-virtual {v4, v3}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 810
    .line 811
    .line 812
    :cond_22
    invoke-virtual {v5, v0}, Landroid/os/Handler;->removeMessages(I)V

    .line 813
    .line 814
    .line 815
    invoke-virtual {v5, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 816
    .line 817
    .line 818
    iget-object v0, v1, Lcom/yunpan/appmanage/service/AccService;->Y:Lz7/o;

    .line 819
    .line 820
    iget v3, v1, Lcom/yunpan/appmanage/service/AccService;->I:I

    .line 821
    .line 822
    invoke-virtual {v0, v3}, Lz7/o;->l(I)Lz7/p;

    .line 823
    .line 824
    .line 825
    move-result-object v0

    .line 826
    invoke-virtual {v0}, Lz7/p;->g()Lz7/s;

    .line 827
    .line 828
    .line 829
    move-result-object v0

    .line 830
    invoke-virtual {v0, v6}, Lz7/s;->p(Ljava/lang/String;)Lz7/o;

    .line 831
    .line 832
    .line 833
    move-result-object v0

    .line 834
    invoke-virtual {v1, v0}, Lcom/yunpan/appmanage/service/AccService;->b(Lz7/o;)V

    .line 835
    .line 836
    .line 837
    iput v7, v1, Lcom/yunpan/appmanage/service/AccService;->I:I

    .line 838
    .line 839
    iput-wide v8, v1, Lcom/yunpan/appmanage/service/AccService;->K:J

    .line 840
    .line 841
    iput v7, v1, Lcom/yunpan/appmanage/service/AccService;->L:I

    .line 842
    .line 843
    iput-wide v8, v1, Lcom/yunpan/appmanage/service/AccService;->M:J

    .line 844
    .line 845
    iput v7, v1, Lcom/yunpan/appmanage/service/AccService;->N:I

    .line 846
    .line 847
    iput-wide v8, v1, Lcom/yunpan/appmanage/service/AccService;->O:J

    .line 848
    .line 849
    new-instance v0, Ljava/lang/Exception;

    .line 850
    .line 851
    invoke-direct {v0}, Ljava/lang/Exception;-><init>()V

    .line 852
    .line 853
    .line 854
    throw v0

    .line 855
    :cond_23
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 856
    .line 857
    .line 858
    move-result-wide v10

    .line 859
    iget-wide v12, v1, Lcom/yunpan/appmanage/service/AccService;->K:J

    .line 860
    .line 861
    sub-long/2addr v10, v12

    .line 862
    sget-object v3, Lwa/t;->a:Lwa/u;

    .line 863
    .line 864
    iget v3, v3, Lwa/u;->q:I

    .line 865
    .line 866
    int-to-long v12, v3

    .line 867
    cmp-long v3, v10, v12

    .line 868
    .line 869
    if-gez v3, :cond_25

    .line 870
    .line 871
    invoke-virtual/range {p1 .. p1}, Landroid/view/KeyEvent;->getKeyCode()I

    .line 872
    .line 873
    .line 874
    move-result v3

    .line 875
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 876
    .line 877
    .line 878
    move-result-object v3

    .line 879
    invoke-virtual {v4, v3}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 880
    .line 881
    .line 882
    iget-object v3, v1, Lcom/yunpan/appmanage/service/AccService;->Z:Ljava/util/ArrayList;

    .line 883
    .line 884
    iget v10, v1, Lcom/yunpan/appmanage/service/AccService;->I:I

    .line 885
    .line 886
    invoke-virtual {v3, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 887
    .line 888
    .line 889
    move-result-object v3

    .line 890
    check-cast v3, Lcom/yunpan/appmanage/bean/KeyMapAccFindBean;

    .line 891
    .line 892
    iget-boolean v3, v3, Lcom/yunpan/appmanage/bean/KeyMapAccFindBean;->zhModeDown:Z

    .line 893
    .line 894
    if-eqz v3, :cond_24

    .line 895
    .line 896
    iget-object v3, v1, Lcom/yunpan/appmanage/service/AccService;->Z:Ljava/util/ArrayList;

    .line 897
    .line 898
    iget v10, v1, Lcom/yunpan/appmanage/service/AccService;->I:I

    .line 899
    .line 900
    invoke-virtual {v3, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 901
    .line 902
    .line 903
    move-result-object v3

    .line 904
    check-cast v3, Lcom/yunpan/appmanage/bean/KeyMapAccFindBean;

    .line 905
    .line 906
    iget v3, v3, Lcom/yunpan/appmanage/bean/KeyMapAccFindBean;->keyCode:I

    .line 907
    .line 908
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 909
    .line 910
    .line 911
    move-result-object v3

    .line 912
    invoke-virtual {v4, v3}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 913
    .line 914
    .line 915
    :cond_24
    invoke-virtual {v5, v0}, Landroid/os/Handler;->removeMessages(I)V

    .line 916
    .line 917
    .line 918
    invoke-virtual {v5, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 919
    .line 920
    .line 921
    iget-object v0, v1, Lcom/yunpan/appmanage/service/AccService;->Y:Lz7/o;

    .line 922
    .line 923
    iget v3, v1, Lcom/yunpan/appmanage/service/AccService;->I:I

    .line 924
    .line 925
    invoke-virtual {v0, v3}, Lz7/o;->l(I)Lz7/p;

    .line 926
    .line 927
    .line 928
    move-result-object v0

    .line 929
    invoke-virtual {v0}, Lz7/p;->g()Lz7/s;

    .line 930
    .line 931
    .line 932
    move-result-object v0

    .line 933
    invoke-virtual {v0, v6}, Lz7/s;->p(Ljava/lang/String;)Lz7/o;

    .line 934
    .line 935
    .line 936
    move-result-object v0

    .line 937
    invoke-virtual {v1, v0}, Lcom/yunpan/appmanage/service/AccService;->b(Lz7/o;)V

    .line 938
    .line 939
    .line 940
    iput v7, v1, Lcom/yunpan/appmanage/service/AccService;->I:I

    .line 941
    .line 942
    iput-wide v8, v1, Lcom/yunpan/appmanage/service/AccService;->K:J

    .line 943
    .line 944
    iput v7, v1, Lcom/yunpan/appmanage/service/AccService;->L:I

    .line 945
    .line 946
    iput-wide v8, v1, Lcom/yunpan/appmanage/service/AccService;->M:J

    .line 947
    .line 948
    iput v7, v1, Lcom/yunpan/appmanage/service/AccService;->N:I

    .line 949
    .line 950
    iput-wide v8, v1, Lcom/yunpan/appmanage/service/AccService;->O:J

    .line 951
    .line 952
    new-instance v0, Ljava/lang/Exception;

    .line 953
    .line 954
    invoke-direct {v0}, Ljava/lang/Exception;-><init>()V

    .line 955
    .line 956
    .line 957
    throw v0

    .line 958
    :cond_25
    iput v7, v1, Lcom/yunpan/appmanage/service/AccService;->I:I

    .line 959
    .line 960
    iput-wide v8, v1, Lcom/yunpan/appmanage/service/AccService;->K:J

    .line 961
    .line 962
    goto :goto_7

    .line 963
    :cond_26
    iput v7, v1, Lcom/yunpan/appmanage/service/AccService;->I:I

    .line 964
    .line 965
    iput-wide v8, v1, Lcom/yunpan/appmanage/service/AccService;->K:J

    .line 966
    .line 967
    :cond_27
    :goto_7
    iget-object v3, v1, Lcom/yunpan/appmanage/service/AccService;->Z:Ljava/util/ArrayList;

    .line 968
    .line 969
    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 970
    .line 971
    .line 972
    move-result-object v3

    .line 973
    :cond_28
    :goto_8
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    .line 974
    .line 975
    .line 976
    move-result v6

    .line 977
    if-eqz v6, :cond_39

    .line 978
    .line 979
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 980
    .line 981
    .line 982
    move-result-object v6

    .line 983
    check-cast v6, Lcom/yunpan/appmanage/bean/KeyMapAccFindBean;

    .line 984
    .line 985
    iget v10, v6, Lcom/yunpan/appmanage/bean/KeyMapAccFindBean;->keyCode:I

    .line 986
    .line 987
    invoke-virtual/range {p1 .. p1}, Landroid/view/KeyEvent;->getKeyCode()I

    .line 988
    .line 989
    .line 990
    move-result v11

    .line 991
    if-eq v10, v11, :cond_29

    .line 992
    .line 993
    goto :goto_8

    .line 994
    :cond_29
    invoke-virtual {v5, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 995
    .line 996
    .line 997
    invoke-virtual/range {p1 .. p1}, Landroid/view/KeyEvent;->getAction()I

    .line 998
    .line 999
    .line 1000
    move-result v10
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_5

    .line 1001
    const-string v11, "click"

    .line 1002
    .line 1003
    if-nez v10, :cond_2f

    .line 1004
    .line 1005
    :try_start_7
    iget-boolean v10, v6, Lcom/yunpan/appmanage/bean/KeyMapAccFindBean;->isHaveDoubleClick:Z

    .line 1006
    .line 1007
    if-nez v10, :cond_2b

    .line 1008
    .line 1009
    iget-boolean v10, v6, Lcom/yunpan/appmanage/bean/KeyMapAccFindBean;->isHaveLongClick:Z

    .line 1010
    .line 1011
    if-nez v10, :cond_2b

    .line 1012
    .line 1013
    iget v10, v6, Lcom/yunpan/appmanage/bean/KeyMapAccFindBean;->zhKeyCode:I

    .line 1014
    .line 1015
    if-ne v10, v7, :cond_2b

    .line 1016
    .line 1017
    iget-boolean v10, v6, Lcom/yunpan/appmanage/bean/KeyMapAccFindBean;->isHaveClick:Z

    .line 1018
    .line 1019
    if-nez v10, :cond_2a

    .line 1020
    .line 1021
    goto :goto_9

    .line 1022
    :cond_2a
    iget-object v0, v1, Lcom/yunpan/appmanage/service/AccService;->Y:Lz7/o;

    .line 1023
    .line 1024
    iget v3, v6, Lcom/yunpan/appmanage/bean/KeyMapAccFindBean;->pos:I

    .line 1025
    .line 1026
    invoke-virtual {v0, v3}, Lz7/o;->l(I)Lz7/p;

    .line 1027
    .line 1028
    .line 1029
    move-result-object v0

    .line 1030
    invoke-virtual {v0}, Lz7/p;->g()Lz7/s;

    .line 1031
    .line 1032
    .line 1033
    move-result-object v0

    .line 1034
    invoke-virtual {v0, v11}, Lz7/s;->p(Ljava/lang/String;)Lz7/o;

    .line 1035
    .line 1036
    .line 1037
    move-result-object v0

    .line 1038
    invoke-virtual {v1, v0}, Lcom/yunpan/appmanage/service/AccService;->b(Lz7/o;)V

    .line 1039
    .line 1040
    .line 1041
    iput v7, v1, Lcom/yunpan/appmanage/service/AccService;->I:I

    .line 1042
    .line 1043
    iput-wide v8, v1, Lcom/yunpan/appmanage/service/AccService;->K:J

    .line 1044
    .line 1045
    iput v7, v1, Lcom/yunpan/appmanage/service/AccService;->L:I

    .line 1046
    .line 1047
    iput-wide v8, v1, Lcom/yunpan/appmanage/service/AccService;->M:J

    .line 1048
    .line 1049
    iput v7, v1, Lcom/yunpan/appmanage/service/AccService;->N:I

    .line 1050
    .line 1051
    iput-wide v8, v1, Lcom/yunpan/appmanage/service/AccService;->O:J

    .line 1052
    .line 1053
    invoke-virtual/range {p1 .. p1}, Landroid/view/KeyEvent;->getKeyCode()I

    .line 1054
    .line 1055
    .line 1056
    move-result v0

    .line 1057
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 1058
    .line 1059
    .line 1060
    move-result-object v0

    .line 1061
    invoke-virtual {v4, v0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 1062
    .line 1063
    .line 1064
    new-instance v0, Ljava/lang/Exception;

    .line 1065
    .line 1066
    invoke-direct {v0}, Ljava/lang/Exception;-><init>()V

    .line 1067
    .line 1068
    .line 1069
    throw v0

    .line 1070
    :cond_2b
    :goto_9
    iget-boolean v10, v6, Lcom/yunpan/appmanage/bean/KeyMapAccFindBean;->isHaveLongClick:Z

    .line 1071
    .line 1072
    if-eqz v10, :cond_2d

    .line 1073
    .line 1074
    iget v10, v6, Lcom/yunpan/appmanage/bean/KeyMapAccFindBean;->zhKeyCode:I

    .line 1075
    .line 1076
    if-eq v10, v7, :cond_2c

    .line 1077
    .line 1078
    iget-boolean v10, v6, Lcom/yunpan/appmanage/bean/KeyMapAccFindBean;->zhModeDown:Z

    .line 1079
    .line 1080
    if-nez v10, :cond_2d

    .line 1081
    .line 1082
    :cond_2c
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    .line 1083
    .line 1084
    .line 1085
    move-result-object v10

    .line 1086
    iput v2, v10, Landroid/os/Message;->what:I

    .line 1087
    .line 1088
    iget v11, v6, Lcom/yunpan/appmanage/bean/KeyMapAccFindBean;->pos:I

    .line 1089
    .line 1090
    iput v11, v10, Landroid/os/Message;->arg1:I

    .line 1091
    .line 1092
    sget-object v11, Lwa/t;->a:Lwa/u;

    .line 1093
    .line 1094
    iget v11, v11, Lwa/u;->q:I

    .line 1095
    .line 1096
    int-to-long v11, v11

    .line 1097
    invoke-virtual {v5, v10, v11, v12}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 1098
    .line 1099
    .line 1100
    :cond_2d
    iget v10, v6, Lcom/yunpan/appmanage/bean/KeyMapAccFindBean;->zhKeyCode:I

    .line 1101
    .line 1102
    if-eq v10, v7, :cond_2e

    .line 1103
    .line 1104
    iget-boolean v10, v6, Lcom/yunpan/appmanage/bean/KeyMapAccFindBean;->zhModeDown:Z

    .line 1105
    .line 1106
    if-eqz v10, :cond_2e

    .line 1107
    .line 1108
    sget-object v10, Ljava/lang/System;->out:Ljava/io/PrintStream;

    .line 1109
    .line 1110
    invoke-virtual {v10}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1111
    .line 1112
    .line 1113
    iget v10, v6, Lcom/yunpan/appmanage/bean/KeyMapAccFindBean;->pos:I

    .line 1114
    .line 1115
    iput v10, v1, Lcom/yunpan/appmanage/service/AccService;->I:I

    .line 1116
    .line 1117
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 1118
    .line 1119
    .line 1120
    move-result-wide v10

    .line 1121
    iput-wide v10, v1, Lcom/yunpan/appmanage/service/AccService;->K:J

    .line 1122
    .line 1123
    :cond_2e
    iget v6, v6, Lcom/yunpan/appmanage/bean/KeyMapAccFindBean;->pos:I

    .line 1124
    .line 1125
    iput v6, v1, Lcom/yunpan/appmanage/service/AccService;->L:I

    .line 1126
    .line 1127
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 1128
    .line 1129
    .line 1130
    move-result-wide v10

    .line 1131
    iput-wide v10, v1, Lcom/yunpan/appmanage/service/AccService;->M:J

    .line 1132
    .line 1133
    goto/16 :goto_8

    .line 1134
    .line 1135
    :cond_2f
    invoke-virtual/range {p1 .. p1}, Landroid/view/KeyEvent;->getAction()I

    .line 1136
    .line 1137
    .line 1138
    move-result v10

    .line 1139
    if-ne v10, v2, :cond_28

    .line 1140
    .line 1141
    iget v10, v1, Lcom/yunpan/appmanage/service/AccService;->N:I

    .line 1142
    .line 1143
    iget v12, v6, Lcom/yunpan/appmanage/bean/KeyMapAccFindBean;->pos:I

    .line 1144
    .line 1145
    if-ne v10, v12, :cond_31

    .line 1146
    .line 1147
    iget-boolean v10, v6, Lcom/yunpan/appmanage/bean/KeyMapAccFindBean;->isHaveDoubleClick:Z

    .line 1148
    .line 1149
    if-eqz v10, :cond_31

    .line 1150
    .line 1151
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 1152
    .line 1153
    .line 1154
    move-result-wide v12

    .line 1155
    iget-wide v14, v1, Lcom/yunpan/appmanage/service/AccService;->O:J

    .line 1156
    .line 1157
    sub-long/2addr v12, v14

    .line 1158
    sget-object v10, Lwa/t;->a:Lwa/u;

    .line 1159
    .line 1160
    iget v10, v10, Lwa/u;->q:I

    .line 1161
    .line 1162
    int-to-long v14, v10

    .line 1163
    cmp-long v10, v12, v14

    .line 1164
    .line 1165
    if-ltz v10, :cond_30

    .line 1166
    .line 1167
    goto :goto_a

    .line 1168
    :cond_30
    iget-object v3, v1, Lcom/yunpan/appmanage/service/AccService;->Y:Lz7/o;

    .line 1169
    .line 1170
    iget v4, v6, Lcom/yunpan/appmanage/bean/KeyMapAccFindBean;->pos:I

    .line 1171
    .line 1172
    invoke-virtual {v3, v4}, Lz7/o;->l(I)Lz7/p;

    .line 1173
    .line 1174
    .line 1175
    move-result-object v3

    .line 1176
    invoke-virtual {v3}, Lz7/p;->g()Lz7/s;

    .line 1177
    .line 1178
    .line 1179
    move-result-object v3

    .line 1180
    const-string v4, "doubleClick"

    .line 1181
    .line 1182
    invoke-virtual {v3, v4}, Lz7/s;->p(Ljava/lang/String;)Lz7/o;

    .line 1183
    .line 1184
    .line 1185
    move-result-object v3

    .line 1186
    invoke-virtual {v1, v3}, Lcom/yunpan/appmanage/service/AccService;->b(Lz7/o;)V

    .line 1187
    .line 1188
    .line 1189
    invoke-virtual {v5, v0}, Landroid/os/Handler;->removeMessages(I)V

    .line 1190
    .line 1191
    .line 1192
    iput v7, v1, Lcom/yunpan/appmanage/service/AccService;->I:I

    .line 1193
    .line 1194
    iput-wide v8, v1, Lcom/yunpan/appmanage/service/AccService;->K:J

    .line 1195
    .line 1196
    iput v7, v1, Lcom/yunpan/appmanage/service/AccService;->L:I

    .line 1197
    .line 1198
    iput-wide v8, v1, Lcom/yunpan/appmanage/service/AccService;->M:J

    .line 1199
    .line 1200
    iput v7, v1, Lcom/yunpan/appmanage/service/AccService;->N:I

    .line 1201
    .line 1202
    iput-wide v8, v1, Lcom/yunpan/appmanage/service/AccService;->O:J

    .line 1203
    .line 1204
    new-instance v0, Ljava/lang/Exception;

    .line 1205
    .line 1206
    invoke-direct {v0}, Ljava/lang/Exception;-><init>()V

    .line 1207
    .line 1208
    .line 1209
    throw v0

    .line 1210
    :cond_31
    :goto_a
    iget-boolean v10, v6, Lcom/yunpan/appmanage/bean/KeyMapAccFindBean;->isHaveLongClick:Z

    .line 1211
    .line 1212
    if-eqz v10, :cond_33

    .line 1213
    .line 1214
    iget v10, v1, Lcom/yunpan/appmanage/service/AccService;->L:I

    .line 1215
    .line 1216
    iget v12, v6, Lcom/yunpan/appmanage/bean/KeyMapAccFindBean;->pos:I

    .line 1217
    .line 1218
    if-ne v10, v12, :cond_33

    .line 1219
    .line 1220
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 1221
    .line 1222
    .line 1223
    move-result-wide v12

    .line 1224
    iget-wide v14, v1, Lcom/yunpan/appmanage/service/AccService;->M:J

    .line 1225
    .line 1226
    sub-long/2addr v12, v14

    .line 1227
    sget-object v10, Lwa/t;->a:Lwa/u;

    .line 1228
    .line 1229
    iget v10, v10, Lwa/u;->q:I

    .line 1230
    .line 1231
    int-to-long v14, v10

    .line 1232
    cmp-long v10, v12, v14

    .line 1233
    .line 1234
    if-gtz v10, :cond_32

    .line 1235
    .line 1236
    goto :goto_b

    .line 1237
    :cond_32
    iget-object v0, v1, Lcom/yunpan/appmanage/service/AccService;->Y:Lz7/o;

    .line 1238
    .line 1239
    iget v3, v6, Lcom/yunpan/appmanage/bean/KeyMapAccFindBean;->pos:I

    .line 1240
    .line 1241
    invoke-virtual {v0, v3}, Lz7/o;->l(I)Lz7/p;

    .line 1242
    .line 1243
    .line 1244
    move-result-object v0

    .line 1245
    invoke-virtual {v0}, Lz7/p;->g()Lz7/s;

    .line 1246
    .line 1247
    .line 1248
    move-result-object v0

    .line 1249
    const-string v3, "longClick"

    .line 1250
    .line 1251
    invoke-virtual {v0, v3}, Lz7/s;->p(Ljava/lang/String;)Lz7/o;

    .line 1252
    .line 1253
    .line 1254
    move-result-object v0

    .line 1255
    invoke-virtual {v1, v0}, Lcom/yunpan/appmanage/service/AccService;->b(Lz7/o;)V

    .line 1256
    .line 1257
    .line 1258
    iput v7, v1, Lcom/yunpan/appmanage/service/AccService;->I:I

    .line 1259
    .line 1260
    iput-wide v8, v1, Lcom/yunpan/appmanage/service/AccService;->K:J

    .line 1261
    .line 1262
    iput v7, v1, Lcom/yunpan/appmanage/service/AccService;->L:I

    .line 1263
    .line 1264
    iput-wide v8, v1, Lcom/yunpan/appmanage/service/AccService;->M:J

    .line 1265
    .line 1266
    iput v7, v1, Lcom/yunpan/appmanage/service/AccService;->N:I

    .line 1267
    .line 1268
    iput-wide v8, v1, Lcom/yunpan/appmanage/service/AccService;->O:J

    .line 1269
    .line 1270
    new-instance v0, Ljava/lang/Exception;

    .line 1271
    .line 1272
    invoke-direct {v0}, Ljava/lang/Exception;-><init>()V

    .line 1273
    .line 1274
    .line 1275
    throw v0

    .line 1276
    :cond_33
    :goto_b
    iget-boolean v10, v6, Lcom/yunpan/appmanage/bean/KeyMapAccFindBean;->zhModeDown:Z

    .line 1277
    .line 1278
    if-eqz v10, :cond_34

    .line 1279
    .line 1280
    iget v10, v1, Lcom/yunpan/appmanage/service/AccService;->I:I

    .line 1281
    .line 1282
    if-eq v10, v7, :cond_34

    .line 1283
    .line 1284
    iget-object v12, v1, Lcom/yunpan/appmanage/service/AccService;->Z:Ljava/util/ArrayList;

    .line 1285
    .line 1286
    invoke-virtual {v12, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 1287
    .line 1288
    .line 1289
    move-result-object v10

    .line 1290
    check-cast v10, Lcom/yunpan/appmanage/bean/KeyMapAccFindBean;

    .line 1291
    .line 1292
    iget v10, v10, Lcom/yunpan/appmanage/bean/KeyMapAccFindBean;->keyCode:I

    .line 1293
    .line 1294
    iget v12, v6, Lcom/yunpan/appmanage/bean/KeyMapAccFindBean;->keyCode:I

    .line 1295
    .line 1296
    if-ne v10, v12, :cond_34

    .line 1297
    .line 1298
    iput v7, v1, Lcom/yunpan/appmanage/service/AccService;->I:I

    .line 1299
    .line 1300
    iput-wide v8, v1, Lcom/yunpan/appmanage/service/AccService;->K:J

    .line 1301
    .line 1302
    :cond_34
    iget v10, v6, Lcom/yunpan/appmanage/bean/KeyMapAccFindBean;->zhKeyCode:I

    .line 1303
    .line 1304
    if-eq v10, v7, :cond_35

    .line 1305
    .line 1306
    iget-boolean v10, v6, Lcom/yunpan/appmanage/bean/KeyMapAccFindBean;->zhModeDown:Z

    .line 1307
    .line 1308
    if-nez v10, :cond_35

    .line 1309
    .line 1310
    iget v10, v6, Lcom/yunpan/appmanage/bean/KeyMapAccFindBean;->pos:I

    .line 1311
    .line 1312
    iput v10, v1, Lcom/yunpan/appmanage/service/AccService;->I:I

    .line 1313
    .line 1314
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 1315
    .line 1316
    .line 1317
    move-result-wide v12

    .line 1318
    iput-wide v12, v1, Lcom/yunpan/appmanage/service/AccService;->K:J

    .line 1319
    .line 1320
    :cond_35
    iget-boolean v10, v6, Lcom/yunpan/appmanage/bean/KeyMapAccFindBean;->isHaveClick:Z

    .line 1321
    .line 1322
    if-eqz v10, :cond_38

    .line 1323
    .line 1324
    iget-boolean v10, v6, Lcom/yunpan/appmanage/bean/KeyMapAccFindBean;->isHaveDoubleClick:Z

    .line 1325
    .line 1326
    if-nez v10, :cond_37

    .line 1327
    .line 1328
    iget v10, v6, Lcom/yunpan/appmanage/bean/KeyMapAccFindBean;->zhKeyCode:I

    .line 1329
    .line 1330
    if-eq v10, v7, :cond_36

    .line 1331
    .line 1332
    goto :goto_c

    .line 1333
    :cond_36
    iget-object v0, v1, Lcom/yunpan/appmanage/service/AccService;->Y:Lz7/o;

    .line 1334
    .line 1335
    iget v3, v6, Lcom/yunpan/appmanage/bean/KeyMapAccFindBean;->pos:I

    .line 1336
    .line 1337
    invoke-virtual {v0, v3}, Lz7/o;->l(I)Lz7/p;

    .line 1338
    .line 1339
    .line 1340
    move-result-object v0

    .line 1341
    invoke-virtual {v0}, Lz7/p;->g()Lz7/s;

    .line 1342
    .line 1343
    .line 1344
    move-result-object v0

    .line 1345
    invoke-virtual {v0, v11}, Lz7/s;->p(Ljava/lang/String;)Lz7/o;

    .line 1346
    .line 1347
    .line 1348
    move-result-object v0

    .line 1349
    invoke-virtual {v1, v0}, Lcom/yunpan/appmanage/service/AccService;->b(Lz7/o;)V

    .line 1350
    .line 1351
    .line 1352
    iput v7, v1, Lcom/yunpan/appmanage/service/AccService;->I:I

    .line 1353
    .line 1354
    iput-wide v8, v1, Lcom/yunpan/appmanage/service/AccService;->K:J

    .line 1355
    .line 1356
    iput v7, v1, Lcom/yunpan/appmanage/service/AccService;->L:I

    .line 1357
    .line 1358
    iput-wide v8, v1, Lcom/yunpan/appmanage/service/AccService;->M:J

    .line 1359
    .line 1360
    iput v7, v1, Lcom/yunpan/appmanage/service/AccService;->N:I

    .line 1361
    .line 1362
    iput-wide v8, v1, Lcom/yunpan/appmanage/service/AccService;->O:J

    .line 1363
    .line 1364
    new-instance v0, Ljava/lang/Exception;

    .line 1365
    .line 1366
    invoke-direct {v0}, Ljava/lang/Exception;-><init>()V

    .line 1367
    .line 1368
    .line 1369
    throw v0

    .line 1370
    :cond_37
    :goto_c
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    .line 1371
    .line 1372
    .line 1373
    move-result-object v10

    .line 1374
    iput v0, v10, Landroid/os/Message;->what:I

    .line 1375
    .line 1376
    iget v11, v6, Lcom/yunpan/appmanage/bean/KeyMapAccFindBean;->pos:I

    .line 1377
    .line 1378
    iput v11, v10, Landroid/os/Message;->arg1:I

    .line 1379
    .line 1380
    sget-object v11, Lwa/t;->a:Lwa/u;

    .line 1381
    .line 1382
    iget v11, v11, Lwa/u;->q:I

    .line 1383
    .line 1384
    int-to-long v11, v11

    .line 1385
    invoke-virtual {v5, v10, v11, v12}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 1386
    .line 1387
    .line 1388
    :cond_38
    iput v7, v1, Lcom/yunpan/appmanage/service/AccService;->L:I

    .line 1389
    .line 1390
    iput-wide v8, v1, Lcom/yunpan/appmanage/service/AccService;->M:J

    .line 1391
    .line 1392
    iget v6, v6, Lcom/yunpan/appmanage/bean/KeyMapAccFindBean;->pos:I

    .line 1393
    .line 1394
    iput v6, v1, Lcom/yunpan/appmanage/service/AccService;->N:I

    .line 1395
    .line 1396
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 1397
    .line 1398
    .line 1399
    move-result-wide v10

    .line 1400
    iput-wide v10, v1, Lcom/yunpan/appmanage/service/AccService;->O:J
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_5

    .line 1401
    .line 1402
    goto/16 :goto_8

    .line 1403
    .line 1404
    :catch_5
    :cond_39
    iget-object v0, v1, Lcom/yunpan/appmanage/service/AccService;->X:Ljava/util/HashSet;

    .line 1405
    .line 1406
    invoke-virtual/range {p1 .. p1}, Landroid/view/KeyEvent;->getKeyCode()I

    .line 1407
    .line 1408
    .line 1409
    move-result v3

    .line 1410
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 1411
    .line 1412
    .line 1413
    move-result-object v3

    .line 1414
    invoke-virtual {v0, v3}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    .line 1415
    .line 1416
    .line 1417
    move-result v0

    .line 1418
    if-eqz v0, :cond_3a

    .line 1419
    .line 1420
    return v2

    .line 1421
    :cond_3a
    invoke-super/range {p0 .. p1}, Landroid/accessibilityservice/AccessibilityService;->onKeyEvent(Landroid/view/KeyEvent;)Z

    .line 1422
    .line 1423
    .line 1424
    move-result v0

    .line 1425
    return v0
.end method

.method public final onServiceConnected()V
    .locals 5

    .line 1
    invoke-super {p0}, Landroid/accessibilityservice/AccessibilityService;->onServiceConnected()V

    .line 2
    .line 3
    .line 4
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    .line 5
    .line 6
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 7
    .line 8
    .line 9
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    const-string v1, "android.permission.DEVICE_POWER"

    .line 14
    .line 15
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    .line 16
    .line 17
    .line 18
    move-result-object v2

    .line 19
    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->checkPermission(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 20
    .line 21
    .line 22
    :catch_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 23
    .line 24
    .line 25
    move-result-wide v0

    .line 26
    iput-wide v0, p0, Lcom/yunpan/appmanage/service/AccService;->n:J

    .line 27
    .line 28
    sget-object v0, Lcom/yunpan/appmanage/base/AppStart;->h:Lcom/yunpan/appmanage/base/AppStart;

    .line 29
    .line 30
    invoke-virtual {v0}, Lcom/yunpan/appmanage/base/AppStart;->d()V

    .line 31
    .line 32
    .line 33
    invoke-static {}, Lwa/s;->c()Lwa/s;

    .line 34
    .line 35
    .line 36
    move-result-object v0

    .line 37
    iput-object p0, v0, Lwa/s;->e:Lcom/yunpan/appmanage/service/AccService;

    .line 38
    .line 39
    invoke-static {p0}, Lqf/c;->u(Landroid/content/Context;)Ljava/lang/String;

    .line 40
    .line 41
    .line 42
    move-result-object v0

    .line 43
    iput-object v0, p0, Lcom/yunpan/appmanage/service/AccService;->k:Ljava/lang/String;

    .line 44
    .line 45
    invoke-virtual {p0}, Lcom/yunpan/appmanage/service/AccService;->g()V

    .line 46
    .line 47
    .line 48
    sget-object v0, Lwa/t;->a:Lwa/u;

    .line 49
    .line 50
    iget-boolean v0, v0, Lwa/u;->t:Z

    .line 51
    .line 52
    if-eqz v0, :cond_0

    .line 53
    .line 54
    const-string v0, "AccService\uff1a\u8fde\u63a5"

    .line 55
    .line 56
    invoke-static {v0}, Lwa/w;->c(Ljava/lang/String;)V

    .line 57
    .line 58
    .line 59
    :cond_0
    const-string v0, "usb"

    .line 60
    .line 61
    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 62
    .line 63
    .line 64
    move-result-object v0

    .line 65
    check-cast v0, Landroid/hardware/usb/UsbManager;

    .line 66
    .line 67
    iput-object v0, p0, Lcom/yunpan/appmanage/service/AccService;->p:Landroid/hardware/usb/UsbManager;

    .line 68
    .line 69
    invoke-virtual {v0}, Landroid/hardware/usb/UsbManager;->getDeviceList()Ljava/util/HashMap;

    .line 70
    .line 71
    .line 72
    move-result-object v0

    .line 73
    invoke-virtual {v0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    .line 74
    .line 75
    .line 76
    move-result-object v0

    .line 77
    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    .line 78
    .line 79
    .line 80
    move-result-object v0

    .line 81
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 82
    .line 83
    .line 84
    move-result v1

    .line 85
    if-eqz v1, :cond_1

    .line 86
    .line 87
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 88
    .line 89
    .line 90
    move-result-object v1

    .line 91
    check-cast v1, Landroid/hardware/usb/UsbDevice;

    .line 92
    .line 93
    iget-object v2, p0, Lcom/yunpan/appmanage/service/AccService;->q:Ljava/util/HashSet;

    .line 94
    .line 95
    new-instance v3, Ljava/lang/StringBuilder;

    .line 96
    .line 97
    const-string v4, ""

    .line 98
    .line 99
    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 100
    .line 101
    .line 102
    invoke-virtual {v1}, Landroid/hardware/usb/UsbDevice;->getVendorId()I

    .line 103
    .line 104
    .line 105
    move-result v4

    .line 106
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 107
    .line 108
    .line 109
    const-string v4, ","

    .line 110
    .line 111
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 112
    .line 113
    .line 114
    invoke-virtual {v1}, Landroid/hardware/usb/UsbDevice;->getProductId()I

    .line 115
    .line 116
    .line 117
    move-result v1

    .line 118
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 119
    .line 120
    .line 121
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 122
    .line 123
    .line 124
    move-result-object v1

    .line 125
    invoke-virtual {v2, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 126
    .line 127
    .line 128
    goto :goto_0

    .line 129
    :cond_1
    invoke-virtual {p0}, Landroid/accessibilityservice/AccessibilityService;->getServiceInfo()Landroid/accessibilityservice/AccessibilityServiceInfo;

    .line 130
    .line 131
    .line 132
    move-result-object v0

    .line 133
    if-nez v0, :cond_2

    .line 134
    .line 135
    new-instance v0, Landroid/accessibilityservice/AccessibilityServiceInfo;

    .line 136
    .line 137
    invoke-direct {v0}, Landroid/accessibilityservice/AccessibilityServiceInfo;-><init>()V

    .line 138
    .line 139
    .line 140
    :cond_2
    const/16 v1, 0x20

    .line 141
    .line 142
    iput v1, v0, Landroid/accessibilityservice/AccessibilityServiceInfo;->eventTypes:I

    .line 143
    .line 144
    const/16 v1, 0x10

    .line 145
    .line 146
    iput v1, v0, Landroid/accessibilityservice/AccessibilityServiceInfo;->feedbackType:I

    .line 147
    .line 148
    const/4 v1, 0x3

    .line 149
    iput v1, v0, Landroid/accessibilityservice/AccessibilityServiceInfo;->flags:I

    .line 150
    .line 151
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 152
    .line 153
    const/16 v2, 0x12

    .line 154
    .line 155
    if-lt v1, v2, :cond_3

    .line 156
    .line 157
    const/16 v2, 0x33

    .line 158
    .line 159
    iput v2, v0, Landroid/accessibilityservice/AccessibilityServiceInfo;->flags:I

    .line 160
    .line 161
    :cond_3
    const/16 v2, 0x15

    .line 162
    .line 163
    if-lt v1, v2, :cond_4

    .line 164
    .line 165
    iget v2, v0, Landroid/accessibilityservice/AccessibilityServiceInfo;->flags:I

    .line 166
    .line 167
    or-int/lit8 v2, v2, 0x40

    .line 168
    .line 169
    iput v2, v0, Landroid/accessibilityservice/AccessibilityServiceInfo;->flags:I

    .line 170
    .line 171
    :cond_4
    const/16 v2, 0x1e

    .line 172
    .line 173
    if-lt v1, v2, :cond_5

    .line 174
    .line 175
    iget v1, v0, Landroid/accessibilityservice/AccessibilityServiceInfo;->flags:I

    .line 176
    .line 177
    or-int/lit16 v1, v1, 0x80

    .line 178
    .line 179
    iput v1, v0, Landroid/accessibilityservice/AccessibilityServiceInfo;->flags:I

    .line 180
    .line 181
    :cond_5
    const-wide/16 v1, 0x64

    .line 182
    .line 183
    iput-wide v1, v0, Landroid/accessibilityservice/AccessibilityServiceInfo;->notificationTimeout:J

    .line 184
    .line 185
    invoke-virtual {p0, v0}, Landroid/accessibilityservice/AccessibilityService;->setServiceInfo(Landroid/accessibilityservice/AccessibilityServiceInfo;)V

    .line 186
    .line 187
    .line 188
    new-instance v0, Landroid/content/IntentFilter;

    .line 189
    .line 190
    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 191
    .line 192
    .line 193
    const/16 v1, 0x3e8

    .line 194
    .line 195
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->setPriority(I)V

    .line 196
    .line 197
    .line 198
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    .line 199
    .line 200
    .line 201
    move-result-object v1

    .line 202
    new-instance v2, Ljava/lang/StringBuilder;

    .line 203
    .line 204
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 205
    .line 206
    .line 207
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 208
    .line 209
    .line 210
    const-string v1, ".BROADCAST_TO_ACC"

    .line 211
    .line 212
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 213
    .line 214
    .line 215
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 216
    .line 217
    .line 218
    move-result-object v1

    .line 219
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 220
    .line 221
    .line 222
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    .line 223
    .line 224
    .line 225
    move-result-object v1

    .line 226
    invoke-static {v1}, Lta/m;->a(Ljava/lang/String;)Ljava/lang/String;

    .line 227
    .line 228
    .line 229
    move-result-object v1

    .line 230
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 231
    .line 232
    .line 233
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    .line 234
    .line 235
    .line 236
    move-result-object v1

    .line 237
    new-instance v2, Ljava/lang/StringBuilder;

    .line 238
    .line 239
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 240
    .line 241
    .line 242
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 243
    .line 244
    .line 245
    const-string v1, ".BROADCAST_AUTO_RORATION_UP_TWO"

    .line 246
    .line 247
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 248
    .line 249
    .line 250
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 251
    .line 252
    .line 253
    move-result-object v1

    .line 254
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 255
    .line 256
    .line 257
    const-string v1, "android.bluetooth.adapter.action.STATE_CHANGED"

    .line 258
    .line 259
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 260
    .line 261
    .line 262
    const-string v1, "android.bluetooth.device.action.ACL_CONNECTED"

    .line 263
    .line 264
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 265
    .line 266
    .line 267
    const-string v1, "android.bluetooth.device.action.ACL_DISCONNECTED"

    .line 268
    .line 269
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 270
    .line 271
    .line 272
    const-string v1, "android.net.wifi.WIFI_STATE_CHANGED"

    .line 273
    .line 274
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 275
    .line 276
    .line 277
    const-string v1, "android.net.wifi.STATE_CHANGE"

    .line 278
    .line 279
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 280
    .line 281
    .line 282
    const-string v1, "android.intent.action.CONFIGURATION_CHANGED"

    .line 283
    .line 284
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 285
    .line 286
    .line 287
    const-string v1, "android.hardware.usb.action.USB_DEVICE_ATTACHED"

    .line 288
    .line 289
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 290
    .line 291
    .line 292
    const-string v1, "android.hardware.usb.action.USB_DEVICE_DETACHED"

    .line 293
    .line 294
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 295
    .line 296
    .line 297
    new-instance v1, Ljava/lang/StringBuilder;

    .line 298
    .line 299
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 300
    .line 301
    .line 302
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    .line 303
    .line 304
    .line 305
    move-result-object v2

    .line 306
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 307
    .line 308
    .line 309
    const-string v2, ".MAP_TASK"

    .line 310
    .line 311
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 312
    .line 313
    .line 314
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 315
    .line 316
    .line 317
    move-result-object v1

    .line 318
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 319
    .line 320
    .line 321
    invoke-static {}, Lwa/s;->c()Lwa/s;

    .line 322
    .line 323
    .line 324
    move-result-object v1

    .line 325
    invoke-virtual {v1, p0}, Lwa/s;->p(Lcom/yunpan/appmanage/service/AccService;)V

    .line 326
    .line 327
    .line 328
    invoke-static {}, Lwa/s;->c()Lwa/s;

    .line 329
    .line 330
    .line 331
    move-result-object v1

    .line 332
    iget-object v1, v1, Lwa/s;->l:Ljava/util/HashSet;

    .line 333
    .line 334
    invoke-virtual {v1}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    .line 335
    .line 336
    .line 337
    move-result-object v1

    .line 338
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 339
    .line 340
    .line 341
    move-result v2

    .line 342
    if-eqz v2, :cond_6

    .line 343
    .line 344
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 345
    .line 346
    .line 347
    move-result-object v2

    .line 348
    check-cast v2, Ljava/lang/String;

    .line 349
    .line 350
    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 351
    .line 352
    .line 353
    goto :goto_1

    .line 354
    :cond_6
    iget-object v1, p0, Lcom/yunpan/appmanage/service/AccService;->h:La2/k;

    .line 355
    .line 356
    invoke-virtual {p0, v1, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 357
    .line 358
    .line 359
    const-string v0, "audio"

    .line 360
    .line 361
    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 362
    .line 363
    .line 364
    move-result-object v0

    .line 365
    check-cast v0, Landroid/media/AudioManager;

    .line 366
    .line 367
    iput-object v0, p0, Lcom/yunpan/appmanage/service/AccService;->O0:Landroid/media/AudioManager;

    .line 368
    .line 369
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 370
    .line 371
    const/16 v1, 0x13

    .line 372
    .line 373
    if-lt v0, v1, :cond_7

    .line 374
    .line 375
    const-string v0, "android.permission.MEDIA_CONTENT_CONTROL"

    .line 376
    .line 377
    invoke-static {p0, v0}, Ln0/g;->a(Landroid/content/Context;Ljava/lang/String;)I

    .line 378
    .line 379
    .line 380
    :cond_7
    sget-object v0, Lwa/t;->a:Lwa/u;

    .line 381
    .line 382
    iget-boolean v0, v0, Lwa/u;->t:Z

    .line 383
    .line 384
    if-eqz v0, :cond_8

    .line 385
    .line 386
    const-string v0, "AccService\uff1a\u81ea\u52a8\u5316\u542f\u52a8"

    .line 387
    .line 388
    invoke-static {v0}, Lwa/w;->c(Ljava/lang/String;)V

    .line 389
    .line 390
    .line 391
    :cond_8
    iget-object v0, p0, Lcom/yunpan/appmanage/service/AccService;->N0:Ljava/util/concurrent/ExecutorService;

    .line 392
    .line 393
    new-instance v1, Lta/a;

    .line 394
    .line 395
    const/4 v2, 0x0

    .line 396
    invoke-direct {v1, p0, v2}, Lta/a;-><init>(Lcom/yunpan/appmanage/service/AccService;I)V

    .line 397
    .line 398
    .line 399
    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    .line 400
    .line 401
    .line 402
    return-void
.end method
