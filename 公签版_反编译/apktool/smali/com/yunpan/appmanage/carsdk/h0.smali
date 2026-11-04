.class public final Lcom/yunpan/appmanage/carsdk/h0;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final A:Lcom/yunpan/appmanage/carsdk/b0;

.field public final B:Lcom/yunpan/appmanage/carsdk/c0;

.field public final C:Lcom/yunpan/appmanage/carsdk/d0;

.field public final D:Lcom/yunpan/appmanage/carsdk/e0;

.field public final E:Lcom/yunpan/appmanage/carsdk/f0;

.field public F:Lz7/s;

.field public G:Lcom/yunpan/appmanage/service/AccService;

.field public final H:Ljava/util/HashMap;

.field public final I:Ljava/util/HashMap;

.field public final J:Ljava/util/HashMap;

.field public final K:Ljava/util/HashMap;

.field public final L:Ljava/util/HashMap;

.field public final M:Ljava/util/HashMap;

.field public N:Z

.field public O:Lz7/o;

.field public a:Landroid/content/Context;

.field public b:Lcom/autolink/adapterinterface/IHardKeyService;

.field public c:Lcom/autolink/app/vehicleservice/IVehicleControl;

.field public d:Lcom/autolink/adapterinterface/IPower;

.field public e:Lcom/autolink/adapterinterface/car/IALCar;

.field public f:Lcom/autolink/adapterinterface/clusterinteraction/IClusterInteraction;

.field public g:Lcom/autolink/adapterinterface/IHardKeyCallback$Stub;

.field public h:Lua/u2;

.field public i:Lua/c3;

.field public j:Lua/v2;

.field public k:Lua/x2;

.field public l:Lua/w2;

.field public m:Lua/y2;

.field public n:Lua/z2;

.field public o:Lua/a3;

.field public p:Lua/b3;

.field public q:Lua/r2;

.field public r:Lua/s2;

.field public final s:Lcom/yunpan/appmanage/carsdk/z;

.field public final t:Lcom/yunpan/appmanage/carsdk/a0;

.field public u:I

.field public v:J

.field public w:I

.field public final x:Ljava/util/HashSet;

.field public final y:Landroid/os/Handler;

.field public final z:Lcom/yunpan/appmanage/carsdk/b0;


# direct methods
.method public constructor <init>()V
    .locals 4

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x0

    .line 5
    iput-object v0, p0, Lcom/yunpan/appmanage/carsdk/h0;->g:Lcom/autolink/adapterinterface/IHardKeyCallback$Stub;

    .line 6
    .line 7
    iput-object v0, p0, Lcom/yunpan/appmanage/carsdk/h0;->h:Lua/u2;

    .line 8
    .line 9
    iput-object v0, p0, Lcom/yunpan/appmanage/carsdk/h0;->j:Lua/v2;

    .line 10
    .line 11
    iput-object v0, p0, Lcom/yunpan/appmanage/carsdk/h0;->k:Lua/x2;

    .line 12
    .line 13
    iput-object v0, p0, Lcom/yunpan/appmanage/carsdk/h0;->l:Lua/w2;

    .line 14
    .line 15
    iput-object v0, p0, Lcom/yunpan/appmanage/carsdk/h0;->m:Lua/y2;

    .line 16
    .line 17
    iput-object v0, p0, Lcom/yunpan/appmanage/carsdk/h0;->n:Lua/z2;

    .line 18
    .line 19
    iput-object v0, p0, Lcom/yunpan/appmanage/carsdk/h0;->o:Lua/a3;

    .line 20
    .line 21
    iput-object v0, p0, Lcom/yunpan/appmanage/carsdk/h0;->p:Lua/b3;

    .line 22
    .line 23
    iput-object v0, p0, Lcom/yunpan/appmanage/carsdk/h0;->q:Lua/r2;

    .line 24
    .line 25
    iput-object v0, p0, Lcom/yunpan/appmanage/carsdk/h0;->r:Lua/s2;

    .line 26
    .line 27
    new-instance v1, Lcom/yunpan/appmanage/carsdk/y;

    .line 28
    .line 29
    invoke-direct {v1, p0}, Lcom/yunpan/appmanage/carsdk/y;-><init>(Lcom/yunpan/appmanage/carsdk/h0;)V

    .line 30
    .line 31
    .line 32
    new-instance v1, Lcom/yunpan/appmanage/carsdk/z;

    .line 33
    .line 34
    invoke-direct {v1, p0}, Lcom/yunpan/appmanage/carsdk/z;-><init>(Lcom/yunpan/appmanage/carsdk/h0;)V

    .line 35
    .line 36
    .line 37
    iput-object v1, p0, Lcom/yunpan/appmanage/carsdk/h0;->s:Lcom/yunpan/appmanage/carsdk/z;

    .line 38
    .line 39
    new-instance v1, Lcom/yunpan/appmanage/carsdk/a0;

    .line 40
    .line 41
    invoke-direct {v1, p0}, Lcom/yunpan/appmanage/carsdk/a0;-><init>(Lcom/yunpan/appmanage/carsdk/h0;)V

    .line 42
    .line 43
    .line 44
    iput-object v1, p0, Lcom/yunpan/appmanage/carsdk/h0;->t:Lcom/yunpan/appmanage/carsdk/a0;

    .line 45
    .line 46
    const/4 v1, -0x1

    .line 47
    iput v1, p0, Lcom/yunpan/appmanage/carsdk/h0;->u:I

    .line 48
    .line 49
    const-wide/16 v1, 0x0

    .line 50
    .line 51
    iput-wide v1, p0, Lcom/yunpan/appmanage/carsdk/h0;->v:J

    .line 52
    .line 53
    const/4 v1, 0x0

    .line 54
    iput v1, p0, Lcom/yunpan/appmanage/carsdk/h0;->w:I

    .line 55
    .line 56
    new-instance v2, Ljava/util/HashSet;

    .line 57
    .line 58
    invoke-direct {v2}, Ljava/util/HashSet;-><init>()V

    .line 59
    .line 60
    .line 61
    iput-object v2, p0, Lcom/yunpan/appmanage/carsdk/h0;->x:Ljava/util/HashSet;

    .line 62
    .line 63
    new-instance v2, Landroid/os/Handler;

    .line 64
    .line 65
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    .line 66
    .line 67
    .line 68
    move-result-object v3

    .line 69
    invoke-direct {v2, v3}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 70
    .line 71
    .line 72
    iput-object v2, p0, Lcom/yunpan/appmanage/carsdk/h0;->y:Landroid/os/Handler;

    .line 73
    .line 74
    new-instance v2, Lcom/yunpan/appmanage/carsdk/b0;

    .line 75
    .line 76
    const/4 v3, 0x0

    .line 77
    invoke-direct {v2, p0, v3}, Lcom/yunpan/appmanage/carsdk/b0;-><init>(Lcom/yunpan/appmanage/carsdk/h0;I)V

    .line 78
    .line 79
    .line 80
    iput-object v2, p0, Lcom/yunpan/appmanage/carsdk/h0;->z:Lcom/yunpan/appmanage/carsdk/b0;

    .line 81
    .line 82
    new-instance v2, Lcom/yunpan/appmanage/carsdk/b0;

    .line 83
    .line 84
    const/4 v3, 0x1

    .line 85
    invoke-direct {v2, p0, v3}, Lcom/yunpan/appmanage/carsdk/b0;-><init>(Lcom/yunpan/appmanage/carsdk/h0;I)V

    .line 86
    .line 87
    .line 88
    iput-object v2, p0, Lcom/yunpan/appmanage/carsdk/h0;->A:Lcom/yunpan/appmanage/carsdk/b0;

    .line 89
    .line 90
    new-instance v2, Lcom/yunpan/appmanage/carsdk/c0;

    .line 91
    .line 92
    invoke-direct {v2, p0}, Lcom/yunpan/appmanage/carsdk/c0;-><init>(Lcom/yunpan/appmanage/carsdk/h0;)V

    .line 93
    .line 94
    .line 95
    iput-object v2, p0, Lcom/yunpan/appmanage/carsdk/h0;->B:Lcom/yunpan/appmanage/carsdk/c0;

    .line 96
    .line 97
    new-instance v2, Lcom/yunpan/appmanage/carsdk/d0;

    .line 98
    .line 99
    invoke-direct {v2, p0}, Lcom/yunpan/appmanage/carsdk/d0;-><init>(Lcom/yunpan/appmanage/carsdk/h0;)V

    .line 100
    .line 101
    .line 102
    iput-object v2, p0, Lcom/yunpan/appmanage/carsdk/h0;->C:Lcom/yunpan/appmanage/carsdk/d0;

    .line 103
    .line 104
    new-instance v2, Lcom/yunpan/appmanage/carsdk/e0;

    .line 105
    .line 106
    invoke-direct {v2, p0}, Lcom/yunpan/appmanage/carsdk/e0;-><init>(Lcom/yunpan/appmanage/carsdk/h0;)V

    .line 107
    .line 108
    .line 109
    iput-object v2, p0, Lcom/yunpan/appmanage/carsdk/h0;->D:Lcom/yunpan/appmanage/carsdk/e0;

    .line 110
    .line 111
    new-instance v2, Lcom/yunpan/appmanage/carsdk/f0;

    .line 112
    .line 113
    invoke-direct {v2, p0}, Lcom/yunpan/appmanage/carsdk/f0;-><init>(Lcom/yunpan/appmanage/carsdk/h0;)V

    .line 114
    .line 115
    .line 116
    iput-object v2, p0, Lcom/yunpan/appmanage/carsdk/h0;->E:Lcom/yunpan/appmanage/carsdk/f0;

    .line 117
    .line 118
    iput-object v0, p0, Lcom/yunpan/appmanage/carsdk/h0;->G:Lcom/yunpan/appmanage/service/AccService;

    .line 119
    .line 120
    new-instance v0, Ljava/util/HashMap;

    .line 121
    .line 122
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 123
    .line 124
    .line 125
    iput-object v0, p0, Lcom/yunpan/appmanage/carsdk/h0;->H:Ljava/util/HashMap;

    .line 126
    .line 127
    new-instance v0, Ljava/util/HashMap;

    .line 128
    .line 129
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 130
    .line 131
    .line 132
    iput-object v0, p0, Lcom/yunpan/appmanage/carsdk/h0;->I:Ljava/util/HashMap;

    .line 133
    .line 134
    new-instance v0, Ljava/util/HashMap;

    .line 135
    .line 136
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 137
    .line 138
    .line 139
    iput-object v0, p0, Lcom/yunpan/appmanage/carsdk/h0;->J:Ljava/util/HashMap;

    .line 140
    .line 141
    new-instance v0, Ljava/util/HashMap;

    .line 142
    .line 143
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 144
    .line 145
    .line 146
    iput-object v0, p0, Lcom/yunpan/appmanage/carsdk/h0;->K:Ljava/util/HashMap;

    .line 147
    .line 148
    new-instance v0, Ljava/util/HashMap;

    .line 149
    .line 150
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 151
    .line 152
    .line 153
    iput-object v0, p0, Lcom/yunpan/appmanage/carsdk/h0;->L:Ljava/util/HashMap;

    .line 154
    .line 155
    new-instance v0, Ljava/util/HashMap;

    .line 156
    .line 157
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 158
    .line 159
    .line 160
    iput-object v0, p0, Lcom/yunpan/appmanage/carsdk/h0;->M:Ljava/util/HashMap;

    .line 161
    .line 162
    iput-boolean v1, p0, Lcom/yunpan/appmanage/carsdk/h0;->N:Z

    .line 163
    .line 164
    return-void
.end method

.method public static c(Landroid/content/Context;)Z
    .locals 2

    .line 1
    const/4 v0, 0x0

    .line 2
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 3
    .line 4
    .line 5
    move-result-object p0

    .line 6
    const-string v1, "com.autolink.app.vehicleservice"

    .line 7
    .line 8
    invoke-virtual {p0, v1, v0}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 9
    .line 10
    .line 11
    const/4 p0, 0x1

    .line 12
    return p0

    .line 13
    :catch_0
    return v0
.end method


# virtual methods
.method public final a(Landroid/content/Context;ZZZZ)V
    .locals 2

    .line 1
    iput-object p1, p0, Lcom/yunpan/appmanage/carsdk/h0;->a:Landroid/content/Context;

    .line 2
    .line 3
    const/4 v0, 0x1

    .line 4
    if-eqz p2, :cond_0

    .line 5
    .line 6
    :try_start_0
    new-instance p2, Landroid/content/Intent;

    .line 7
    .line 8
    invoke-direct {p2}, Landroid/content/Intent;-><init>()V

    .line 9
    .line 10
    .line 11
    const-string v1, "com.autolink.hardkeyservice"

    .line 12
    .line 13
    invoke-virtual {p2, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 14
    .line 15
    .line 16
    const-string v1, "com.autolink.hardkeyservice/.core.ALHardKeyService"

    .line 17
    .line 18
    invoke-static {v1}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    .line 19
    .line 20
    .line 21
    move-result-object v1

    .line 22
    invoke-virtual {p2, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 23
    .line 24
    .line 25
    iget-object v1, p0, Lcom/yunpan/appmanage/carsdk/h0;->C:Lcom/yunpan/appmanage/carsdk/d0;

    .line 26
    .line 27
    invoke-virtual {p1, p2, v1, v0}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 28
    .line 29
    .line 30
    goto :goto_0

    .line 31
    :catch_0
    nop

    .line 32
    :cond_0
    :goto_0
    if-eqz p3, :cond_1

    .line 33
    .line 34
    :try_start_1
    new-instance p2, Landroid/content/Intent;

    .line 35
    .line 36
    const-string p3, "com.autolink.vehicleservice"

    .line 37
    .line 38
    invoke-direct {p2, p3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 39
    .line 40
    .line 41
    const-string p3, "com.autolink.app.vehicleservice"

    .line 42
    .line 43
    invoke-virtual {p2, p3}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 44
    .line 45
    .line 46
    iget-object p3, p0, Lcom/yunpan/appmanage/carsdk/h0;->E:Lcom/yunpan/appmanage/carsdk/f0;

    .line 47
    .line 48
    invoke-virtual {p1, p2, p3, v0}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 49
    .line 50
    .line 51
    goto :goto_1

    .line 52
    :catch_1
    nop

    .line 53
    :cond_1
    :goto_1
    if-eqz p4, :cond_2

    .line 54
    .line 55
    :try_start_2
    new-instance p2, Landroid/content/Intent;

    .line 56
    .line 57
    const-string p3, "com.autolink.powerservice.PowerService"

    .line 58
    .line 59
    invoke-direct {p2, p3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 60
    .line 61
    .line 62
    const-string p3, "com.autolink.powerservice"

    .line 63
    .line 64
    invoke-virtual {p2, p3}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 65
    .line 66
    .line 67
    iget-object p3, p0, Lcom/yunpan/appmanage/carsdk/h0;->s:Lcom/yunpan/appmanage/carsdk/z;

    .line 68
    .line 69
    invoke-virtual {p1, p2, p3, v0}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    .line 70
    .line 71
    .line 72
    goto :goto_2

    .line 73
    :catch_2
    nop

    .line 74
    :cond_2
    :goto_2
    if-eqz p5, :cond_3

    .line 75
    .line 76
    :try_start_3
    const-string p1, "alcar_service"

    .line 77
    .line 78
    invoke-static {p1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    .line 79
    .line 80
    .line 81
    move-result-object p1

    .line 82
    invoke-static {p1}, Lcom/autolink/adapterinterface/car/IALCar$Stub;->asInterface(Landroid/os/IBinder;)Lcom/autolink/adapterinterface/car/IALCar;

    .line 83
    .line 84
    .line 85
    move-result-object p1

    .line 86
    iput-object p1, p0, Lcom/yunpan/appmanage/carsdk/h0;->e:Lcom/autolink/adapterinterface/car/IALCar;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3

    .line 87
    .line 88
    :catch_3
    :cond_3
    return-void
.end method

.method public final b(Lcom/yunpan/appmanage/service/AccService;)V
    .locals 14

    .line 1
    invoke-static {p1}, Lq4/a;->s(Landroid/content/ContextWrapper;)Lz7/s;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    iput-object v0, p0, Lcom/yunpan/appmanage/carsdk/h0;->F:Lz7/s;

    .line 6
    .line 7
    if-eqz v0, :cond_a

    .line 8
    .line 9
    const-string v1, "isOn"

    .line 10
    .line 11
    invoke-virtual {v0, v1}, Lz7/s;->o(Ljava/lang/String;)Lz7/p;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    invoke-virtual {v0}, Lz7/p;->b()Z

    .line 16
    .line 17
    .line 18
    move-result v0

    .line 19
    if-nez v0, :cond_0

    .line 20
    .line 21
    goto/16 :goto_2

    .line 22
    .line 23
    :cond_0
    iput-object p1, p0, Lcom/yunpan/appmanage/carsdk/h0;->G:Lcom/yunpan/appmanage/service/AccService;

    .line 24
    .line 25
    iget-object v0, p0, Lcom/yunpan/appmanage/carsdk/h0;->H:Ljava/util/HashMap;

    .line 26
    .line 27
    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 28
    .line 29
    .line 30
    iget-object v1, p0, Lcom/yunpan/appmanage/carsdk/h0;->I:Ljava/util/HashMap;

    .line 31
    .line 32
    invoke-virtual {v1}, Ljava/util/HashMap;->clear()V

    .line 33
    .line 34
    .line 35
    iget-object v2, p0, Lcom/yunpan/appmanage/carsdk/h0;->J:Ljava/util/HashMap;

    .line 36
    .line 37
    invoke-virtual {v2}, Ljava/util/HashMap;->clear()V

    .line 38
    .line 39
    .line 40
    iget-object v3, p0, Lcom/yunpan/appmanage/carsdk/h0;->K:Ljava/util/HashMap;

    .line 41
    .line 42
    invoke-virtual {v3}, Ljava/util/HashMap;->clear()V

    .line 43
    .line 44
    .line 45
    iget-object v4, p0, Lcom/yunpan/appmanage/carsdk/h0;->L:Ljava/util/HashMap;

    .line 46
    .line 47
    invoke-virtual {v4}, Ljava/util/HashMap;->clear()V

    .line 48
    .line 49
    .line 50
    iget-object v5, p0, Lcom/yunpan/appmanage/carsdk/h0;->M:Ljava/util/HashMap;

    .line 51
    .line 52
    invoke-virtual {v5}, Ljava/util/HashMap;->clear()V

    .line 53
    .line 54
    .line 55
    const/4 v6, 0x0

    .line 56
    iput-boolean v6, p0, Lcom/yunpan/appmanage/carsdk/h0;->N:Z

    .line 57
    .line 58
    iget-object v7, p0, Lcom/yunpan/appmanage/carsdk/h0;->F:Lz7/s;

    .line 59
    .line 60
    const-string v8, "maps"

    .line 61
    .line 62
    invoke-virtual {v7, v8}, Lz7/s;->p(Ljava/lang/String;)Lz7/o;

    .line 63
    .line 64
    .line 65
    move-result-object v7

    .line 66
    :goto_0
    iget-object v8, v7, Lz7/o;->a:Ljava/util/ArrayList;

    .line 67
    .line 68
    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    .line 69
    .line 70
    .line 71
    move-result v8

    .line 72
    if-ge v6, v8, :cond_9

    .line 73
    .line 74
    invoke-virtual {v7, v6}, Lz7/o;->l(I)Lz7/p;

    .line 75
    .line 76
    .line 77
    move-result-object v8

    .line 78
    invoke-virtual {v8}, Lz7/p;->g()Lz7/s;

    .line 79
    .line 80
    .line 81
    move-result-object v8

    .line 82
    const-string v9, "isOpen"

    .line 83
    .line 84
    invoke-virtual {v8, v9}, Lz7/s;->o(Ljava/lang/String;)Lz7/p;

    .line 85
    .line 86
    .line 87
    move-result-object v9

    .line 88
    invoke-virtual {v9}, Lz7/p;->b()Z

    .line 89
    .line 90
    .line 91
    move-result v9

    .line 92
    if-nez v9, :cond_1

    .line 93
    .line 94
    goto/16 :goto_1

    .line 95
    .line 96
    :cond_1
    const-string v9, "type"

    .line 97
    .line 98
    invoke-virtual {v8, v9}, Lz7/s;->o(Ljava/lang/String;)Lz7/p;

    .line 99
    .line 100
    .line 101
    move-result-object v9

    .line 102
    invoke-virtual {v9}, Lz7/p;->e()I

    .line 103
    .line 104
    .line 105
    move-result v9

    .line 106
    sget-object v10, Lcom/autolink/app/vehiclemanager/data/JieTKeymapType;->MAP_TYPE_KEY:Lcom/autolink/app/vehiclemanager/data/JieTKeymapType;

    .line 107
    .line 108
    invoke-virtual {v10}, Lcom/autolink/app/vehiclemanager/data/JieTKeymapType;->getValue()I

    .line 109
    .line 110
    .line 111
    move-result v10

    .line 112
    if-ne v9, v10, :cond_2

    .line 113
    .line 114
    const-string v9, "key1"

    .line 115
    .line 116
    invoke-virtual {v8, v9}, Lz7/s;->o(Ljava/lang/String;)Lz7/p;

    .line 117
    .line 118
    .line 119
    move-result-object v9

    .line 120
    invoke-virtual {v9}, Lz7/p;->e()I

    .line 121
    .line 122
    .line 123
    move-result v9

    .line 124
    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 125
    .line 126
    .line 127
    move-result-object v9

    .line 128
    invoke-virtual {v0, v9, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 129
    .line 130
    .line 131
    goto/16 :goto_1

    .line 132
    .line 133
    :cond_2
    sget-object v10, Lcom/autolink/app/vehiclemanager/data/JieTKeymapType;->MAP_TYPE_GEAR:Lcom/autolink/app/vehiclemanager/data/JieTKeymapType;

    .line 134
    .line 135
    invoke-virtual {v10}, Lcom/autolink/app/vehiclemanager/data/JieTKeymapType;->getValue()I

    .line 136
    .line 137
    .line 138
    move-result v10

    .line 139
    if-ne v9, v10, :cond_3

    .line 140
    .line 141
    const-string v9, "gear"

    .line 142
    .line 143
    invoke-virtual {v8, v9}, Lz7/s;->o(Ljava/lang/String;)Lz7/p;

    .line 144
    .line 145
    .line 146
    move-result-object v9

    .line 147
    invoke-virtual {v9}, Lz7/p;->e()I

    .line 148
    .line 149
    .line 150
    move-result v9

    .line 151
    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 152
    .line 153
    .line 154
    move-result-object v9

    .line 155
    invoke-virtual {v1, v9, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 156
    .line 157
    .line 158
    goto/16 :goto_1

    .line 159
    .line 160
    :cond_3
    sget-object v10, Lcom/autolink/app/vehiclemanager/data/JieTKeymapType;->MAP_TYPE_DOOR:Lcom/autolink/app/vehiclemanager/data/JieTKeymapType;

    .line 161
    .line 162
    invoke-virtual {v10}, Lcom/autolink/app/vehiclemanager/data/JieTKeymapType;->getValue()I

    .line 163
    .line 164
    .line 165
    move-result v10

    .line 166
    const-string v11, "switch"

    .line 167
    .line 168
    if-ne v9, v10, :cond_6

    .line 169
    .line 170
    const-string v9, "door"

    .line 171
    .line 172
    invoke-virtual {v8, v9}, Lz7/s;->o(Ljava/lang/String;)Lz7/p;

    .line 173
    .line 174
    .line 175
    move-result-object v9

    .line 176
    invoke-virtual {v9}, Lz7/p;->e()I

    .line 177
    .line 178
    .line 179
    move-result v9

    .line 180
    const/4 v10, -0x1

    .line 181
    if-ne v9, v10, :cond_4

    .line 182
    .line 183
    const/4 v9, 0x1

    .line 184
    iput-boolean v9, p0, Lcom/yunpan/appmanage/carsdk/h0;->N:Z

    .line 185
    .line 186
    const-string v9, "click"

    .line 187
    .line 188
    invoke-virtual {v8, v9}, Lz7/s;->p(Ljava/lang/String;)Lz7/o;

    .line 189
    .line 190
    .line 191
    move-result-object v8

    .line 192
    iput-object v8, p0, Lcom/yunpan/appmanage/carsdk/h0;->O:Lz7/o;

    .line 193
    .line 194
    goto :goto_1

    .line 195
    :cond_4
    invoke-virtual {v8, v11}, Lz7/s;->o(Ljava/lang/String;)Lz7/p;

    .line 196
    .line 197
    .line 198
    move-result-object v10

    .line 199
    invoke-virtual {v10}, Lz7/p;->e()I

    .line 200
    .line 201
    .line 202
    move-result v10

    .line 203
    if-nez v10, :cond_5

    .line 204
    .line 205
    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 206
    .line 207
    .line 208
    move-result-object v9

    .line 209
    invoke-virtual {v2, v9, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 210
    .line 211
    .line 212
    goto :goto_1

    .line 213
    :cond_5
    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 214
    .line 215
    .line 216
    move-result-object v9

    .line 217
    invoke-virtual {v3, v9, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 218
    .line 219
    .line 220
    goto :goto_1

    .line 221
    :cond_6
    sget-object v10, Lcom/autolink/app/vehiclemanager/data/JieTKeymapType;->MAP_TYPE_LAMP:Lcom/autolink/app/vehiclemanager/data/JieTKeymapType;

    .line 222
    .line 223
    invoke-virtual {v10}, Lcom/autolink/app/vehiclemanager/data/JieTKeymapType;->getValue()I

    .line 224
    .line 225
    .line 226
    move-result v10

    .line 227
    if-ne v9, v10, :cond_8

    .line 228
    .line 229
    invoke-virtual {v8, v11}, Lz7/s;->o(Ljava/lang/String;)Lz7/p;

    .line 230
    .line 231
    .line 232
    move-result-object v9

    .line 233
    invoke-virtual {v9}, Lz7/p;->e()I

    .line 234
    .line 235
    .line 236
    move-result v9

    .line 237
    const-string v10, "lamp"

    .line 238
    .line 239
    if-nez v9, :cond_7

    .line 240
    .line 241
    invoke-virtual {v8, v10}, Lz7/s;->o(Ljava/lang/String;)Lz7/p;

    .line 242
    .line 243
    .line 244
    move-result-object v9

    .line 245
    invoke-virtual {v9}, Lz7/p;->e()I

    .line 246
    .line 247
    .line 248
    move-result v9

    .line 249
    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 250
    .line 251
    .line 252
    move-result-object v9

    .line 253
    invoke-virtual {v4, v9, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 254
    .line 255
    .line 256
    goto :goto_1

    .line 257
    :cond_7
    invoke-virtual {v8, v10}, Lz7/s;->o(Ljava/lang/String;)Lz7/p;

    .line 258
    .line 259
    .line 260
    move-result-object v9

    .line 261
    invoke-virtual {v9}, Lz7/p;->e()I

    .line 262
    .line 263
    .line 264
    move-result v9

    .line 265
    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 266
    .line 267
    .line 268
    move-result-object v9

    .line 269
    invoke-virtual {v5, v9, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 270
    .line 271
    .line 272
    :cond_8
    :goto_1
    add-int/lit8 v6, v6, 0x1

    .line 273
    .line 274
    goto/16 :goto_0

    .line 275
    .line 276
    :cond_9
    const/4 v11, 0x1

    .line 277
    const/4 v12, 0x0

    .line 278
    const/4 v10, 0x1

    .line 279
    const/4 v13, 0x0

    .line 280
    move-object v8, p0

    .line 281
    move-object v9, p1

    .line 282
    invoke-virtual/range {v8 .. v13}, Lcom/yunpan/appmanage/carsdk/h0;->a(Landroid/content/Context;ZZZZ)V

    .line 283
    .line 284
    .line 285
    return-void

    .line 286
    :cond_a
    :goto_2
    invoke-virtual {p0}, Lcom/yunpan/appmanage/carsdk/h0;->d()V

    .line 287
    .line 288
    .line 289
    return-void
.end method

.method public final d()V
    .locals 3

    .line 1
    const/4 v0, 0x0

    .line 2
    :try_start_0
    iget-object v1, p0, Lcom/yunpan/appmanage/carsdk/h0;->b:Lcom/autolink/adapterinterface/IHardKeyService;

    .line 3
    .line 4
    if-eqz v1, :cond_0

    .line 5
    .line 6
    iget-object v2, p0, Lcom/yunpan/appmanage/carsdk/h0;->B:Lcom/yunpan/appmanage/carsdk/c0;

    .line 7
    .line 8
    invoke-interface {v1, v2}, Lcom/autolink/adapterinterface/IHardKeyService;->unregisterHardKeyEvent(Lcom/autolink/adapterinterface/IHardKeyCallback;)V

    .line 9
    .line 10
    .line 11
    :cond_0
    iput-object v0, p0, Lcom/yunpan/appmanage/carsdk/h0;->g:Lcom/autolink/adapterinterface/IHardKeyCallback$Stub;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 12
    .line 13
    :catch_0
    :try_start_1
    iget-object v1, p0, Lcom/yunpan/appmanage/carsdk/h0;->a:Landroid/content/Context;

    .line 14
    .line 15
    iget-object v2, p0, Lcom/yunpan/appmanage/carsdk/h0;->C:Lcom/yunpan/appmanage/carsdk/d0;

    .line 16
    .line 17
    invoke-virtual {v1, v2}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 18
    .line 19
    .line 20
    :catch_1
    :try_start_2
    iget-object v1, p0, Lcom/yunpan/appmanage/carsdk/h0;->d:Lcom/autolink/adapterinterface/IPower;

    .line 21
    .line 22
    if-eqz v1, :cond_1

    .line 23
    .line 24
    iget-object v2, p0, Lcom/yunpan/appmanage/carsdk/h0;->t:Lcom/yunpan/appmanage/carsdk/a0;

    .line 25
    .line 26
    invoke-interface {v1, v2}, Lcom/autolink/adapterinterface/IPower;->unregisterPowerCallback(Lcom/autolink/adapterinterface/IPowerCallback;)V

    .line 27
    .line 28
    .line 29
    :cond_1
    iput-object v0, p0, Lcom/yunpan/appmanage/carsdk/h0;->h:Lua/u2;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    .line 30
    .line 31
    :catch_2
    :try_start_3
    iget-object v1, p0, Lcom/yunpan/appmanage/carsdk/h0;->a:Landroid/content/Context;

    .line 32
    .line 33
    iget-object v2, p0, Lcom/yunpan/appmanage/carsdk/h0;->s:Lcom/yunpan/appmanage/carsdk/z;

    .line 34
    .line 35
    invoke-virtual {v1, v2}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3

    .line 36
    .line 37
    .line 38
    :catch_3
    :try_start_4
    iget-object v1, p0, Lcom/yunpan/appmanage/carsdk/h0;->c:Lcom/autolink/app/vehicleservice/IVehicleControl;

    .line 39
    .line 40
    if-eqz v1, :cond_2

    .line 41
    .line 42
    iget-object v2, p0, Lcom/yunpan/appmanage/carsdk/h0;->D:Lcom/yunpan/appmanage/carsdk/e0;

    .line 43
    .line 44
    invoke-interface {v1, v2}, Lcom/autolink/app/vehicleservice/IVehicleControl;->unregisterCallback(Lcom/autolink/app/vehicleservice/IVehicleControlCallback;)V

    .line 45
    .line 46
    .line 47
    :cond_2
    iput-object v0, p0, Lcom/yunpan/appmanage/carsdk/h0;->i:Lua/c3;
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_4

    .line 48
    .line 49
    :catch_4
    :try_start_5
    iget-object v1, p0, Lcom/yunpan/appmanage/carsdk/h0;->a:Landroid/content/Context;

    .line 50
    .line 51
    iget-object v2, p0, Lcom/yunpan/appmanage/carsdk/h0;->E:Lcom/yunpan/appmanage/carsdk/f0;

    .line 52
    .line 53
    invoke-virtual {v1, v2}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_5

    .line 54
    .line 55
    .line 56
    :catch_5
    :try_start_6
    iget-object v1, p0, Lcom/yunpan/appmanage/carsdk/h0;->e:Lcom/autolink/adapterinterface/car/IALCar;

    .line 57
    .line 58
    if-eqz v1, :cond_3

    .line 59
    .line 60
    iget-object v2, p0, Lcom/yunpan/appmanage/carsdk/h0;->j:Lua/v2;

    .line 61
    .line 62
    if-eqz v2, :cond_3

    .line 63
    .line 64
    invoke-interface {v1, v2}, Lcom/autolink/adapterinterface/car/IALCar;->unregisterCarSpeedListener(Lcom/autolink/adapterinterface/car/IALCarSpeedListener;)V

    .line 65
    .line 66
    .line 67
    :cond_3
    iget-object v1, p0, Lcom/yunpan/appmanage/carsdk/h0;->e:Lcom/autolink/adapterinterface/car/IALCar;

    .line 68
    .line 69
    if-eqz v1, :cond_4

    .line 70
    .line 71
    iget-object v2, p0, Lcom/yunpan/appmanage/carsdk/h0;->k:Lua/x2;

    .line 72
    .line 73
    if-eqz v2, :cond_4

    .line 74
    .line 75
    invoke-interface {v1, v2}, Lcom/autolink/adapterinterface/car/IALCar;->unregisterVehicleControlPropertyListener(Lcom/autolink/adapterinterface/car/IALCarVehicleControlPropertyListener;)V

    .line 76
    .line 77
    .line 78
    :cond_4
    iget-object v1, p0, Lcom/yunpan/appmanage/carsdk/h0;->e:Lcom/autolink/adapterinterface/car/IALCar;

    .line 79
    .line 80
    if-eqz v1, :cond_5

    .line 81
    .line 82
    iget-object v2, p0, Lcom/yunpan/appmanage/carsdk/h0;->l:Lua/w2;

    .line 83
    .line 84
    if-eqz v2, :cond_5

    .line 85
    .line 86
    invoke-interface {v1, v2}, Lcom/autolink/adapterinterface/car/IALCar;->unregisterCarEngineSpeedListener(Lcom/autolink/adapterinterface/car/IALCarEngineSpeedListener;)V

    .line 87
    .line 88
    .line 89
    :cond_5
    iget-object v1, p0, Lcom/yunpan/appmanage/carsdk/h0;->e:Lcom/autolink/adapterinterface/car/IALCar;

    .line 90
    .line 91
    if-eqz v1, :cond_6

    .line 92
    .line 93
    iget-object v2, p0, Lcom/yunpan/appmanage/carsdk/h0;->m:Lua/y2;

    .line 94
    .line 95
    if-eqz v2, :cond_6

    .line 96
    .line 97
    invoke-interface {v1, v2}, Lcom/autolink/adapterinterface/car/IALCar;->unregisterCarSteerListener(Lcom/autolink/adapterinterface/car/IALCarSteerListener;)V

    .line 98
    .line 99
    .line 100
    :cond_6
    iget-object v1, p0, Lcom/yunpan/appmanage/carsdk/h0;->e:Lcom/autolink/adapterinterface/car/IALCar;

    .line 101
    .line 102
    if-eqz v1, :cond_7

    .line 103
    .line 104
    iget-object v2, p0, Lcom/yunpan/appmanage/carsdk/h0;->n:Lua/z2;

    .line 105
    .line 106
    if-eqz v2, :cond_7

    .line 107
    .line 108
    invoke-interface {v1, v2}, Lcom/autolink/adapterinterface/car/IALCar;->unregisterCarTyreListener(Lcom/autolink/adapterinterface/car/IALCarTyreListener;)V

    .line 109
    .line 110
    .line 111
    :cond_7
    iget-object v1, p0, Lcom/yunpan/appmanage/carsdk/h0;->e:Lcom/autolink/adapterinterface/car/IALCar;

    .line 112
    .line 113
    if-eqz v1, :cond_8

    .line 114
    .line 115
    iget-object v2, p0, Lcom/yunpan/appmanage/carsdk/h0;->o:Lua/a3;

    .line 116
    .line 117
    if-eqz v2, :cond_8

    .line 118
    .line 119
    invoke-interface {v1, v2}, Lcom/autolink/adapterinterface/car/IALCar;->unregisterAVMPropertyListener(Lcom/autolink/adapterinterface/car/IALCarAVMPropertyListener;)V

    .line 120
    .line 121
    .line 122
    :cond_8
    iget-object v1, p0, Lcom/yunpan/appmanage/carsdk/h0;->e:Lcom/autolink/adapterinterface/car/IALCar;

    .line 123
    .line 124
    if-eqz v1, :cond_9

    .line 125
    .line 126
    iget-object v2, p0, Lcom/yunpan/appmanage/carsdk/h0;->p:Lua/b3;

    .line 127
    .line 128
    if-eqz v2, :cond_9

    .line 129
    .line 130
    invoke-interface {v1, v2}, Lcom/autolink/adapterinterface/car/IALCar;->unregisterCarWindListener(Lcom/autolink/adapterinterface/car/IALCarWindListener;)V

    .line 131
    .line 132
    .line 133
    :cond_9
    iget-object v1, p0, Lcom/yunpan/appmanage/carsdk/h0;->e:Lcom/autolink/adapterinterface/car/IALCar;

    .line 134
    .line 135
    if-eqz v1, :cond_a

    .line 136
    .line 137
    iget-object v2, p0, Lcom/yunpan/appmanage/carsdk/h0;->q:Lua/r2;

    .line 138
    .line 139
    if-eqz v2, :cond_a

    .line 140
    .line 141
    invoke-interface {v1, v2}, Lcom/autolink/adapterinterface/car/IALCar;->unregisterExtPropertyListener(Lcom/autolink/adapterinterface/car/IALCarExtPropertyListener;)V

    .line 142
    .line 143
    .line 144
    :cond_a
    iget-object v1, p0, Lcom/yunpan/appmanage/carsdk/h0;->e:Lcom/autolink/adapterinterface/car/IALCar;

    .line 145
    .line 146
    if-eqz v1, :cond_b

    .line 147
    .line 148
    iget-object v2, p0, Lcom/yunpan/appmanage/carsdk/h0;->r:Lua/s2;

    .line 149
    .line 150
    if-eqz v2, :cond_b

    .line 151
    .line 152
    invoke-interface {v1, v2}, Lcom/autolink/adapterinterface/car/IALCar;->unregisterHvacPropertyListener(Lcom/autolink/adapterinterface/car/IALCarHvacPropertyListener;)V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_6

    .line 153
    .line 154
    .line 155
    :catch_6
    :cond_b
    iput-object v0, p0, Lcom/yunpan/appmanage/carsdk/h0;->G:Lcom/yunpan/appmanage/service/AccService;

    .line 156
    .line 157
    return-void
.end method
