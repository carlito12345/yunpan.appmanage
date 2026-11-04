.class public final Lkh/e;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static volatile p:Lkh/e;

.field public static final q:Lkh/f;

.field public static final r:Ljava/util/HashMap;


# instance fields
.field public final a:Ljava/util/HashMap;

.field public final b:Ljava/util/HashMap;

.field public final c:Lj$/util/concurrent/ConcurrentHashMap;

.field public final d:Lkh/b;

.field public final e:Lha/l2;

.field public final f:Lkh/g;

.field public final g:Lkh/a;

.field public final h:Ly7/b;

.field public final i:Lkh/m;

.field public final j:Z

.field public final k:Z

.field public final l:Z

.field public final m:Z

.field public final n:Z

.field public final o:Lha/j2;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lkh/f;

    .line 2
    .line 3
    invoke-direct {v0}, Lkh/f;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lkh/e;->q:Lkh/f;

    .line 7
    .line 8
    new-instance v0, Ljava/util/HashMap;

    .line 9
    .line 10
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 11
    .line 12
    .line 13
    sput-object v0, Lkh/e;->r:Ljava/util/HashMap;

    .line 14
    .line 15
    return-void
.end method

.method public constructor <init>()V
    .locals 4

    .line 1
    const/4 v0, 0x0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    .line 4
    .line 5
    new-instance v1, Lkh/b;

    .line 6
    .line 7
    invoke-direct {v1, v0}, Lkh/b;-><init>(I)V

    .line 8
    .line 9
    .line 10
    iput-object v1, p0, Lkh/e;->d:Lkh/b;

    .line 11
    .line 12
    sget-object v1, Lkh/e;->q:Lkh/f;

    .line 13
    .line 14
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 15
    .line 16
    .line 17
    sget-object v1, Lorg/greenrobot/eventbus/android/AndroidComponentsImpl;->c:Lorg/greenrobot/eventbus/android/AndroidComponentsImpl;

    .line 18
    .line 19
    if-eqz v1, :cond_0

    .line 20
    .line 21
    iget-object v2, v1, Lorg/greenrobot/eventbus/android/AndroidComponentsImpl;->a:Lha/j2;

    .line 22
    .line 23
    goto :goto_0

    .line 24
    :cond_0
    new-instance v2, Lha/j2;

    .line 25
    .line 26
    const/16 v3, 0x10

    .line 27
    .line 28
    invoke-direct {v2, v3}, Lha/j2;-><init>(I)V

    .line 29
    .line 30
    .line 31
    :goto_0
    iput-object v2, p0, Lkh/e;->o:Lha/j2;

    .line 32
    .line 33
    new-instance v2, Ljava/util/HashMap;

    .line 34
    .line 35
    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 36
    .line 37
    .line 38
    iput-object v2, p0, Lkh/e;->a:Ljava/util/HashMap;

    .line 39
    .line 40
    new-instance v2, Ljava/util/HashMap;

    .line 41
    .line 42
    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 43
    .line 44
    .line 45
    iput-object v2, p0, Lkh/e;->b:Ljava/util/HashMap;

    .line 46
    .line 47
    new-instance v2, Lj$/util/concurrent/ConcurrentHashMap;

    .line 48
    .line 49
    invoke-direct {v2}, Lj$/util/concurrent/ConcurrentHashMap;-><init>()V

    .line 50
    .line 51
    .line 52
    iput-object v2, p0, Lkh/e;->c:Lj$/util/concurrent/ConcurrentHashMap;

    .line 53
    .line 54
    const/4 v2, 0x1

    .line 55
    if-eqz v1, :cond_1

    .line 56
    .line 57
    const/4 v0, 0x1

    .line 58
    :cond_1
    const/4 v3, 0x0

    .line 59
    if-eqz v0, :cond_2

    .line 60
    .line 61
    iget-object v0, v1, Lorg/greenrobot/eventbus/android/AndroidComponentsImpl;->b:Lha/l2;

    .line 62
    .line 63
    goto :goto_1

    .line 64
    :cond_2
    move-object v0, v3

    .line 65
    :goto_1
    iput-object v0, p0, Lkh/e;->e:Lha/l2;

    .line 66
    .line 67
    if-eqz v0, :cond_3

    .line 68
    .line 69
    new-instance v3, Lkh/g;

    .line 70
    .line 71
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    .line 72
    .line 73
    .line 74
    move-result-object v0

    .line 75
    invoke-direct {v3, p0, v0}, Lkh/g;-><init>(Lkh/e;Landroid/os/Looper;)V

    .line 76
    .line 77
    .line 78
    :cond_3
    iput-object v3, p0, Lkh/e;->f:Lkh/g;

    .line 79
    .line 80
    new-instance v0, Lkh/a;

    .line 81
    .line 82
    invoke-direct {v0, p0}, Lkh/a;-><init>(Lkh/e;)V

    .line 83
    .line 84
    .line 85
    iput-object v0, p0, Lkh/e;->g:Lkh/a;

    .line 86
    .line 87
    new-instance v0, Ly7/b;

    .line 88
    .line 89
    invoke-direct {v0, p0}, Ly7/b;-><init>(Lkh/e;)V

    .line 90
    .line 91
    .line 92
    iput-object v0, p0, Lkh/e;->h:Ly7/b;

    .line 93
    .line 94
    new-instance v0, Lkh/m;

    .line 95
    .line 96
    invoke-direct {v0}, Lkh/m;-><init>()V

    .line 97
    .line 98
    .line 99
    iput-object v0, p0, Lkh/e;->i:Lkh/m;

    .line 100
    .line 101
    iput-boolean v2, p0, Lkh/e;->j:Z

    .line 102
    .line 103
    iput-boolean v2, p0, Lkh/e;->k:Z

    .line 104
    .line 105
    iput-boolean v2, p0, Lkh/e;->l:Z

    .line 106
    .line 107
    iput-boolean v2, p0, Lkh/e;->m:Z

    .line 108
    .line 109
    iput-boolean v2, p0, Lkh/e;->n:Z

    .line 110
    .line 111
    sget-object v0, Lkh/f;->a:Ljava/util/concurrent/ExecutorService;

    .line 112
    .line 113
    return-void
.end method

.method public static a(Ljava/util/ArrayList;[Ljava/lang/Class;)V
    .locals 4

    .line 1
    array-length v0, p1

    .line 2
    const/4 v1, 0x0

    .line 3
    :goto_0
    if-ge v1, v0, :cond_1

    .line 4
    .line 5
    aget-object v2, p1, v1

    .line 6
    .line 7
    invoke-virtual {p0, v2}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    .line 8
    .line 9
    .line 10
    move-result v3

    .line 11
    if-nez v3, :cond_0

    .line 12
    .line 13
    invoke-virtual {p0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 14
    .line 15
    .line 16
    invoke-virtual {v2}, Ljava/lang/Class;->getInterfaces()[Ljava/lang/Class;

    .line 17
    .line 18
    .line 19
    move-result-object v2

    .line 20
    invoke-static {p0, v2}, Lkh/e;->a(Ljava/util/ArrayList;[Ljava/lang/Class;)V

    .line 21
    .line 22
    .line 23
    :cond_0
    add-int/lit8 v1, v1, 0x1

    .line 24
    .line 25
    goto :goto_0

    .line 26
    :cond_1
    return-void
.end method

.method public static b()Lkh/e;
    .locals 2

    .line 1
    sget-object v0, Lkh/e;->p:Lkh/e;

    .line 2
    .line 3
    if-nez v0, :cond_1

    .line 4
    .line 5
    const-class v1, Lkh/e;

    .line 6
    .line 7
    monitor-enter v1

    .line 8
    :try_start_0
    sget-object v0, Lkh/e;->p:Lkh/e;

    .line 9
    .line 10
    if-nez v0, :cond_0

    .line 11
    .line 12
    new-instance v0, Lkh/e;

    .line 13
    .line 14
    invoke-direct {v0}, Lkh/e;-><init>()V

    .line 15
    .line 16
    .line 17
    sput-object v0, Lkh/e;->p:Lkh/e;

    .line 18
    .line 19
    goto :goto_0

    .line 20
    :catchall_0
    move-exception v0

    .line 21
    goto :goto_1

    .line 22
    :cond_0
    :goto_0
    monitor-exit v1

    .line 23
    goto :goto_2

    .line 24
    :goto_1
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 25
    throw v0

    .line 26
    :cond_1
    :goto_2
    return-object v0
.end method


# virtual methods
.method public final c(Ljava/lang/Object;Lkh/n;)V
    .locals 5

    .line 1
    :try_start_0
    iget-object v0, p2, Lkh/n;->b:Lkh/l;

    .line 2
    .line 3
    iget-object v0, v0, Lkh/l;->a:Ljava/lang/reflect/Method;

    .line 4
    .line 5
    iget-object v1, p2, Lkh/n;->a:Ljava/lang/Object;

    .line 6
    .line 7
    const/4 v2, 0x1

    .line 8
    new-array v2, v2, [Ljava/lang/Object;

    .line 9
    .line 10
    const/4 v3, 0x0

    .line 11
    aput-object p1, v2, v3

    .line 12
    .line 13
    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0

    .line 14
    .line 15
    .line 16
    goto/16 :goto_2

    .line 17
    .line 18
    :catch_0
    move-exception p1

    .line 19
    goto :goto_0

    .line 20
    :catch_1
    move-exception v0

    .line 21
    goto :goto_1

    .line 22
    :goto_0
    new-instance p2, Ljava/lang/IllegalStateException;

    .line 23
    .line 24
    const-string v0, "Unexpected exception"

    .line 25
    .line 26
    invoke-direct {p2, v0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 27
    .line 28
    .line 29
    throw p2

    .line 30
    :goto_1
    invoke-virtual {v0}, Ljava/lang/reflect/InvocationTargetException;->getCause()Ljava/lang/Throwable;

    .line 31
    .line 32
    .line 33
    move-result-object v0

    .line 34
    instance-of v1, p1, Lkh/k;

    .line 35
    .line 36
    iget-boolean v2, p0, Lkh/e;->j:Z

    .line 37
    .line 38
    iget-object v3, p0, Lkh/e;->o:Lha/j2;

    .line 39
    .line 40
    if-eqz v1, :cond_0

    .line 41
    .line 42
    if-eqz v2, :cond_2

    .line 43
    .line 44
    sget-object v1, Ljava/util/logging/Level;->SEVERE:Ljava/util/logging/Level;

    .line 45
    .line 46
    new-instance v2, Ljava/lang/StringBuilder;

    .line 47
    .line 48
    const-string v4, "SubscriberExceptionEvent subscriber "

    .line 49
    .line 50
    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 51
    .line 52
    .line 53
    iget-object p2, p2, Lkh/n;->a:Ljava/lang/Object;

    .line 54
    .line 55
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 56
    .line 57
    .line 58
    move-result-object p2

    .line 59
    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 60
    .line 61
    .line 62
    const-string p2, " threw an exception"

    .line 63
    .line 64
    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 65
    .line 66
    .line 67
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 68
    .line 69
    .line 70
    move-result-object p2

    .line 71
    invoke-virtual {v3, v1, p2, v0}, Lha/j2;->g(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 72
    .line 73
    .line 74
    check-cast p1, Lkh/k;

    .line 75
    .line 76
    new-instance p2, Ljava/lang/StringBuilder;

    .line 77
    .line 78
    const-string v0, "Initial event "

    .line 79
    .line 80
    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 81
    .line 82
    .line 83
    iget-object v0, p1, Lkh/k;->b:Ljava/lang/Object;

    .line 84
    .line 85
    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 86
    .line 87
    .line 88
    const-string v0, " caused exception in "

    .line 89
    .line 90
    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 91
    .line 92
    .line 93
    iget-object v0, p1, Lkh/k;->c:Ljava/lang/Object;

    .line 94
    .line 95
    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 96
    .line 97
    .line 98
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 99
    .line 100
    .line 101
    move-result-object p2

    .line 102
    iget-object p1, p1, Lkh/k;->a:Ljava/lang/Throwable;

    .line 103
    .line 104
    invoke-virtual {v3, v1, p2, p1}, Lha/j2;->g(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 105
    .line 106
    .line 107
    goto :goto_2

    .line 108
    :cond_0
    if-eqz v2, :cond_1

    .line 109
    .line 110
    sget-object v1, Ljava/util/logging/Level;->SEVERE:Ljava/util/logging/Level;

    .line 111
    .line 112
    new-instance v2, Ljava/lang/StringBuilder;

    .line 113
    .line 114
    const-string v4, "Could not dispatch event: "

    .line 115
    .line 116
    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 117
    .line 118
    .line 119
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 120
    .line 121
    .line 122
    move-result-object v4

    .line 123
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 124
    .line 125
    .line 126
    const-string v4, " to subscribing class "

    .line 127
    .line 128
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 129
    .line 130
    .line 131
    iget-object v4, p2, Lkh/n;->a:Ljava/lang/Object;

    .line 132
    .line 133
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 134
    .line 135
    .line 136
    move-result-object v4

    .line 137
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 138
    .line 139
    .line 140
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 141
    .line 142
    .line 143
    move-result-object v2

    .line 144
    invoke-virtual {v3, v1, v2, v0}, Lha/j2;->g(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 145
    .line 146
    .line 147
    :cond_1
    iget-boolean v1, p0, Lkh/e;->l:Z

    .line 148
    .line 149
    if-eqz v1, :cond_2

    .line 150
    .line 151
    new-instance v1, Lkh/k;

    .line 152
    .line 153
    iget-object p2, p2, Lkh/n;->a:Ljava/lang/Object;

    .line 154
    .line 155
    invoke-direct {v1, v0, p1, p2}, Lkh/k;-><init>(Ljava/lang/Throwable;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 156
    .line 157
    .line 158
    invoke-virtual {p0, v1}, Lkh/e;->f(Ljava/lang/Object;)V

    .line 159
    .line 160
    .line 161
    :cond_2
    :goto_2
    return-void
.end method

.method public final d(Lkh/i;)V
    .locals 5

    .line 1
    iget-object v0, p1, Lkh/i;->a:Ljava/lang/Object;

    .line 2
    .line 3
    iget-object v1, p1, Lkh/i;->b:Lkh/n;

    .line 4
    .line 5
    const/4 v2, 0x0

    .line 6
    iput-object v2, p1, Lkh/i;->a:Ljava/lang/Object;

    .line 7
    .line 8
    iput-object v2, p1, Lkh/i;->b:Lkh/n;

    .line 9
    .line 10
    iput-object v2, p1, Lkh/i;->c:Lkh/i;

    .line 11
    .line 12
    sget-object v2, Lkh/i;->d:Ljava/util/ArrayList;

    .line 13
    .line 14
    monitor-enter v2

    .line 15
    :try_start_0
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    .line 16
    .line 17
    .line 18
    move-result v3

    .line 19
    const/16 v4, 0x2710

    .line 20
    .line 21
    if-ge v3, v4, :cond_0

    .line 22
    .line 23
    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 24
    .line 25
    .line 26
    :cond_0
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 27
    iget-boolean p1, v1, Lkh/n;->c:Z

    .line 28
    .line 29
    if-eqz p1, :cond_1

    .line 30
    .line 31
    invoke-virtual {p0, v0, v1}, Lkh/e;->c(Ljava/lang/Object;Lkh/n;)V

    .line 32
    .line 33
    .line 34
    :cond_1
    return-void

    .line 35
    :catchall_0
    move-exception p1

    .line 36
    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 37
    throw p1
.end method

.method public final declared-synchronized e(Ljava/lang/Object;)Z
    .locals 1

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iget-object v0, p0, Lkh/e;->b:Ljava/util/HashMap;

    .line 3
    .line 4
    invoke-virtual {v0, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    .line 5
    .line 6
    .line 7
    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 8
    monitor-exit p0

    .line 9
    return p1

    .line 10
    :catchall_0
    move-exception p1

    .line 11
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 12
    throw p1
.end method

.method public final f(Ljava/lang/Object;)V
    .locals 5

    .line 1
    iget-object v0, p0, Lkh/e;->d:Lkh/b;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Lkh/d;

    .line 8
    .line 9
    iget-object v1, v0, Lkh/d;->a:Ljava/util/ArrayList;

    .line 10
    .line 11
    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 12
    .line 13
    .line 14
    iget-boolean p1, v0, Lkh/d;->b:Z

    .line 15
    .line 16
    if-nez p1, :cond_3

    .line 17
    .line 18
    iget-object p1, p0, Lkh/e;->e:Lha/l2;

    .line 19
    .line 20
    const/4 v2, 0x1

    .line 21
    const/4 v3, 0x0

    .line 22
    if-eqz p1, :cond_1

    .line 23
    .line 24
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    .line 25
    .line 26
    .line 27
    move-result-object p1

    .line 28
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    .line 29
    .line 30
    .line 31
    move-result-object v4

    .line 32
    if-ne p1, v4, :cond_0

    .line 33
    .line 34
    goto :goto_0

    .line 35
    :cond_0
    const/4 p1, 0x0

    .line 36
    goto :goto_1

    .line 37
    :cond_1
    :goto_0
    const/4 p1, 0x1

    .line 38
    :goto_1
    iput-boolean p1, v0, Lkh/d;->c:Z

    .line 39
    .line 40
    iput-boolean v2, v0, Lkh/d;->b:Z

    .line 41
    .line 42
    :goto_2
    :try_start_0
    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    .line 43
    .line 44
    .line 45
    move-result p1

    .line 46
    if-nez p1, :cond_2

    .line 47
    .line 48
    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 49
    .line 50
    .line 51
    move-result-object p1

    .line 52
    invoke-virtual {p0, p1, v0}, Lkh/e;->g(Ljava/lang/Object;Lkh/d;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 53
    .line 54
    .line 55
    goto :goto_2

    .line 56
    :catchall_0
    move-exception p1

    .line 57
    goto :goto_3

    .line 58
    :cond_2
    iput-boolean v3, v0, Lkh/d;->b:Z

    .line 59
    .line 60
    iput-boolean v3, v0, Lkh/d;->c:Z

    .line 61
    .line 62
    goto :goto_4

    .line 63
    :goto_3
    iput-boolean v3, v0, Lkh/d;->b:Z

    .line 64
    .line 65
    iput-boolean v3, v0, Lkh/d;->c:Z

    .line 66
    .line 67
    throw p1

    .line 68
    :cond_3
    :goto_4
    return-void
.end method

.method public final g(Ljava/lang/Object;Lkh/d;)V
    .locals 6

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    iget-boolean v1, p0, Lkh/e;->n:Z

    .line 6
    .line 7
    if-eqz v1, :cond_2

    .line 8
    .line 9
    sget-object v1, Lkh/e;->r:Ljava/util/HashMap;

    .line 10
    .line 11
    monitor-enter v1

    .line 12
    :try_start_0
    invoke-virtual {v1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 13
    .line 14
    .line 15
    move-result-object v2

    .line 16
    check-cast v2, Ljava/util/List;

    .line 17
    .line 18
    if-nez v2, :cond_1

    .line 19
    .line 20
    new-instance v2, Ljava/util/ArrayList;

    .line 21
    .line 22
    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 23
    .line 24
    .line 25
    move-object v3, v0

    .line 26
    :goto_0
    if-eqz v3, :cond_0

    .line 27
    .line 28
    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 29
    .line 30
    .line 31
    invoke-virtual {v3}, Ljava/lang/Class;->getInterfaces()[Ljava/lang/Class;

    .line 32
    .line 33
    .line 34
    move-result-object v4

    .line 35
    invoke-static {v2, v4}, Lkh/e;->a(Ljava/util/ArrayList;[Ljava/lang/Class;)V

    .line 36
    .line 37
    .line 38
    invoke-virtual {v3}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    .line 39
    .line 40
    .line 41
    move-result-object v3

    .line 42
    goto :goto_0

    .line 43
    :catchall_0
    move-exception p1

    .line 44
    goto :goto_2

    .line 45
    :cond_0
    sget-object v3, Lkh/e;->r:Ljava/util/HashMap;

    .line 46
    .line 47
    invoke-virtual {v3, v0, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 48
    .line 49
    .line 50
    :cond_1
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 51
    invoke-interface {v2}, Ljava/util/List;->size()I

    .line 52
    .line 53
    .line 54
    move-result v1

    .line 55
    const/4 v3, 0x0

    .line 56
    const/4 v4, 0x0

    .line 57
    :goto_1
    if-ge v3, v1, :cond_3

    .line 58
    .line 59
    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 60
    .line 61
    .line 62
    move-result-object v5

    .line 63
    check-cast v5, Ljava/lang/Class;

    .line 64
    .line 65
    invoke-virtual {p0, p1, p2, v5}, Lkh/e;->h(Ljava/lang/Object;Lkh/d;Ljava/lang/Class;)Z

    .line 66
    .line 67
    .line 68
    move-result v5

    .line 69
    or-int/2addr v4, v5

    .line 70
    add-int/lit8 v3, v3, 0x1

    .line 71
    .line 72
    goto :goto_1

    .line 73
    :goto_2
    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 74
    throw p1

    .line 75
    :cond_2
    invoke-virtual {p0, p1, p2, v0}, Lkh/e;->h(Ljava/lang/Object;Lkh/d;Ljava/lang/Class;)Z

    .line 76
    .line 77
    .line 78
    move-result v4

    .line 79
    :cond_3
    if-nez v4, :cond_5

    .line 80
    .line 81
    iget-boolean p2, p0, Lkh/e;->k:Z

    .line 82
    .line 83
    if-eqz p2, :cond_4

    .line 84
    .line 85
    iget-object p2, p0, Lkh/e;->o:Lha/j2;

    .line 86
    .line 87
    sget-object v1, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    .line 88
    .line 89
    new-instance v2, Ljava/lang/StringBuilder;

    .line 90
    .line 91
    const-string v3, "No subscribers registered for event "

    .line 92
    .line 93
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 94
    .line 95
    .line 96
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 97
    .line 98
    .line 99
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 100
    .line 101
    .line 102
    move-result-object v2

    .line 103
    invoke-virtual {p2, v1, v2}, Lha/j2;->f(Ljava/util/logging/Level;Ljava/lang/String;)V

    .line 104
    .line 105
    .line 106
    :cond_4
    iget-boolean p2, p0, Lkh/e;->m:Z

    .line 107
    .line 108
    if-eqz p2, :cond_5

    .line 109
    .line 110
    const-class p2, Lkh/h;

    .line 111
    .line 112
    if-eq v0, p2, :cond_5

    .line 113
    .line 114
    const-class p2, Lkh/k;

    .line 115
    .line 116
    if-eq v0, p2, :cond_5

    .line 117
    .line 118
    new-instance p2, Lkh/h;

    .line 119
    .line 120
    invoke-direct {p2, p1}, Lkh/h;-><init>(Ljava/lang/Object;)V

    .line 121
    .line 122
    .line 123
    invoke-virtual {p0, p2}, Lkh/e;->f(Ljava/lang/Object;)V

    .line 124
    .line 125
    .line 126
    :cond_5
    return-void
.end method

.method public final h(Ljava/lang/Object;Lkh/d;Ljava/lang/Class;)Z
    .locals 2

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iget-object v0, p0, Lkh/e;->a:Ljava/util/HashMap;

    .line 3
    .line 4
    invoke-virtual {v0, p3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 5
    .line 6
    .line 7
    move-result-object p3

    .line 8
    check-cast p3, Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 9
    .line 10
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 11
    if-eqz p3, :cond_1

    .line 12
    .line 13
    invoke-virtual {p3}, Ljava/util/concurrent/CopyOnWriteArrayList;->isEmpty()Z

    .line 14
    .line 15
    .line 16
    move-result v0

    .line 17
    if-nez v0, :cond_1

    .line 18
    .line 19
    invoke-virtual {p3}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    .line 20
    .line 21
    .line 22
    move-result-object p3

    .line 23
    :goto_0
    invoke-interface {p3}, Ljava/util/Iterator;->hasNext()Z

    .line 24
    .line 25
    .line 26
    move-result v0

    .line 27
    if-eqz v0, :cond_0

    .line 28
    .line 29
    invoke-interface {p3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 30
    .line 31
    .line 32
    move-result-object v0

    .line 33
    check-cast v0, Lkh/n;

    .line 34
    .line 35
    iput-object p1, p2, Lkh/d;->d:Ljava/lang/Object;

    .line 36
    .line 37
    iget-boolean v1, p2, Lkh/d;->c:Z

    .line 38
    .line 39
    invoke-virtual {p0, v0, p1, v1}, Lkh/e;->i(Lkh/n;Ljava/lang/Object;Z)V

    .line 40
    .line 41
    .line 42
    goto :goto_0

    .line 43
    :cond_0
    const/4 p1, 0x1

    .line 44
    return p1

    .line 45
    :cond_1
    const/4 p1, 0x0

    .line 46
    return p1

    .line 47
    :catchall_0
    move-exception p1

    .line 48
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 49
    goto :goto_2

    .line 50
    :goto_1
    throw p1

    .line 51
    :goto_2
    goto :goto_1
.end method

.method public final i(Lkh/n;Ljava/lang/Object;Z)V
    .locals 4

    .line 1
    sget-object v0, Lkh/c;->a:[I

    .line 2
    .line 3
    iget-object v1, p1, Lkh/n;->b:Lkh/l;

    .line 4
    .line 5
    iget-object v1, v1, Lkh/l;->b:Lorg/greenrobot/eventbus/ThreadMode;

    .line 6
    .line 7
    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    .line 8
    .line 9
    .line 10
    move-result v1

    .line 11
    aget v0, v0, v1

    .line 12
    .line 13
    const/4 v1, 0x1

    .line 14
    if-eq v0, v1, :cond_8

    .line 15
    .line 16
    iget-object v2, p0, Lkh/e;->f:Lkh/g;

    .line 17
    .line 18
    const/4 v3, 0x2

    .line 19
    if-eq v0, v3, :cond_6

    .line 20
    .line 21
    const/4 v3, 0x3

    .line 22
    if-eq v0, v3, :cond_4

    .line 23
    .line 24
    const/4 v2, 0x4

    .line 25
    if-eq v0, v2, :cond_1

    .line 26
    .line 27
    const/4 p3, 0x5

    .line 28
    if-ne v0, p3, :cond_0

    .line 29
    .line 30
    iget-object p3, p0, Lkh/e;->h:Ly7/b;

    .line 31
    .line 32
    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 33
    .line 34
    .line 35
    invoke-static {p2, p1}, Lkh/i;->a(Ljava/lang/Object;Lkh/n;)Lkh/i;

    .line 36
    .line 37
    .line 38
    move-result-object p1

    .line 39
    iget-object p2, p3, Ly7/b;->b:Ljava/lang/Object;

    .line 40
    .line 41
    check-cast p2, Lkf/d;

    .line 42
    .line 43
    invoke-virtual {p2, p1}, Lkf/d;->v(Lkh/i;)V

    .line 44
    .line 45
    .line 46
    iget-object p1, p3, Ly7/b;->c:Ljava/lang/Object;

    .line 47
    .line 48
    check-cast p1, Lkh/e;

    .line 49
    .line 50
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 51
    .line 52
    .line 53
    sget-object p1, Lkh/f;->a:Ljava/util/concurrent/ExecutorService;

    .line 54
    .line 55
    invoke-interface {p1, p3}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 56
    .line 57
    .line 58
    goto :goto_2

    .line 59
    :cond_0
    new-instance p2, Ljava/lang/IllegalStateException;

    .line 60
    .line 61
    new-instance p3, Ljava/lang/StringBuilder;

    .line 62
    .line 63
    const-string v0, "Unknown thread mode: "

    .line 64
    .line 65
    invoke-direct {p3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 66
    .line 67
    .line 68
    iget-object p1, p1, Lkh/n;->b:Lkh/l;

    .line 69
    .line 70
    iget-object p1, p1, Lkh/l;->b:Lorg/greenrobot/eventbus/ThreadMode;

    .line 71
    .line 72
    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 73
    .line 74
    .line 75
    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 76
    .line 77
    .line 78
    move-result-object p1

    .line 79
    invoke-direct {p2, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 80
    .line 81
    .line 82
    throw p2

    .line 83
    :cond_1
    if-eqz p3, :cond_3

    .line 84
    .line 85
    iget-object p3, p0, Lkh/e;->g:Lkh/a;

    .line 86
    .line 87
    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 88
    .line 89
    .line 90
    invoke-static {p2, p1}, Lkh/i;->a(Ljava/lang/Object;Lkh/n;)Lkh/i;

    .line 91
    .line 92
    .line 93
    move-result-object p1

    .line 94
    monitor-enter p3

    .line 95
    :try_start_0
    iget-object p2, p3, Lkh/a;->a:Lkf/d;

    .line 96
    .line 97
    invoke-virtual {p2, p1}, Lkf/d;->v(Lkh/i;)V

    .line 98
    .line 99
    .line 100
    iget-boolean p1, p3, Lkh/a;->c:Z

    .line 101
    .line 102
    if-nez p1, :cond_2

    .line 103
    .line 104
    iput-boolean v1, p3, Lkh/a;->c:Z

    .line 105
    .line 106
    iget-object p1, p3, Lkh/a;->b:Lkh/e;

    .line 107
    .line 108
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 109
    .line 110
    .line 111
    sget-object p1, Lkh/f;->a:Ljava/util/concurrent/ExecutorService;

    .line 112
    .line 113
    invoke-interface {p1, p3}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 114
    .line 115
    .line 116
    goto :goto_0

    .line 117
    :catchall_0
    move-exception p1

    .line 118
    goto :goto_1

    .line 119
    :cond_2
    :goto_0
    monitor-exit p3

    .line 120
    goto :goto_2

    .line 121
    :goto_1
    monitor-exit p3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 122
    throw p1

    .line 123
    :cond_3
    invoke-virtual {p0, p2, p1}, Lkh/e;->c(Ljava/lang/Object;Lkh/n;)V

    .line 124
    .line 125
    .line 126
    goto :goto_2

    .line 127
    :cond_4
    if-eqz v2, :cond_5

    .line 128
    .line 129
    invoke-virtual {v2, p2, p1}, Lkh/g;->a(Ljava/lang/Object;Lkh/n;)V

    .line 130
    .line 131
    .line 132
    goto :goto_2

    .line 133
    :cond_5
    invoke-virtual {p0, p2, p1}, Lkh/e;->c(Ljava/lang/Object;Lkh/n;)V

    .line 134
    .line 135
    .line 136
    goto :goto_2

    .line 137
    :cond_6
    if-eqz p3, :cond_7

    .line 138
    .line 139
    invoke-virtual {p0, p2, p1}, Lkh/e;->c(Ljava/lang/Object;Lkh/n;)V

    .line 140
    .line 141
    .line 142
    goto :goto_2

    .line 143
    :cond_7
    invoke-virtual {v2, p2, p1}, Lkh/g;->a(Ljava/lang/Object;Lkh/n;)V

    .line 144
    .line 145
    .line 146
    goto :goto_2

    .line 147
    :cond_8
    invoke-virtual {p0, p2, p1}, Lkh/e;->c(Ljava/lang/Object;Lkh/n;)V

    .line 148
    .line 149
    .line 150
    :goto_2
    return-void
.end method

.method public final j(Ljava/lang/Object;)V
    .locals 18

    .line 1
    move-object/from16 v1, p0

    .line 2
    .line 3
    const/4 v0, 0x1

    .line 4
    invoke-static {}, Lq4/a;->C()Z

    .line 5
    .line 6
    .line 7
    move-result v3

    .line 8
    if-eqz v3, :cond_0

    .line 9
    .line 10
    :try_start_0
    sget-object v3, Lorg/greenrobot/eventbus/android/AndroidComponentsImpl;->c:Lorg/greenrobot/eventbus/android/AndroidComponentsImpl;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 11
    .line 12
    goto :goto_0

    .line 13
    :catch_0
    new-instance v0, Ljava/lang/RuntimeException;

    .line 14
    .line 15
    const-string v2, "It looks like you are using EventBus on Android, make sure to add the \"eventbus\" Android library to your dependencies."

    .line 16
    .line 17
    invoke-direct {v0, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 18
    .line 19
    .line 20
    throw v0

    .line 21
    :cond_0
    :goto_0
    invoke-virtual/range {p1 .. p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 22
    .line 23
    .line 24
    move-result-object v3

    .line 25
    iget-object v4, v1, Lkh/e;->i:Lkh/m;

    .line 26
    .line 27
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 28
    .line 29
    .line 30
    sget-object v4, Lkh/m;->a:Lj$/util/concurrent/ConcurrentHashMap;

    .line 31
    .line 32
    invoke-virtual {v4, v3}, Lj$/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 33
    .line 34
    .line 35
    move-result-object v5

    .line 36
    check-cast v5, Ljava/util/List;

    .line 37
    .line 38
    if-eqz v5, :cond_1

    .line 39
    .line 40
    goto/16 :goto_7

    .line 41
    .line 42
    :cond_1
    invoke-static {}, Lkh/m;->b()Ldg/a;

    .line 43
    .line 44
    .line 45
    move-result-object v5

    .line 46
    iput-object v3, v5, Ldg/a;->f:Ljava/lang/Object;

    .line 47
    .line 48
    const/4 v6, 0x0

    .line 49
    iput-boolean v6, v5, Ldg/a;->a:Z

    .line 50
    .line 51
    :goto_1
    iget-object v7, v5, Ldg/a;->f:Ljava/lang/Object;

    .line 52
    .line 53
    check-cast v7, Ljava/lang/Class;

    .line 54
    .line 55
    if-eqz v7, :cond_a

    .line 56
    .line 57
    :try_start_1
    invoke-virtual {v7}, Ljava/lang/Class;->getDeclaredMethods()[Ljava/lang/reflect/Method;

    .line 58
    .line 59
    .line 60
    move-result-object v7
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 61
    goto :goto_2

    .line 62
    :catchall_0
    :try_start_2
    iget-object v7, v5, Ldg/a;->f:Ljava/lang/Object;

    .line 63
    .line 64
    check-cast v7, Ljava/lang/Class;

    .line 65
    .line 66
    invoke-virtual {v7}, Ljava/lang/Class;->getMethods()[Ljava/lang/reflect/Method;

    .line 67
    .line 68
    .line 69
    move-result-object v7
    :try_end_2
    .catch Ljava/lang/LinkageError; {:try_start_2 .. :try_end_2} :catch_1

    .line 70
    iput-boolean v0, v5, Ldg/a;->a:Z

    .line 71
    .line 72
    :goto_2
    array-length v8, v7

    .line 73
    const/4 v9, 0x0

    .line 74
    :goto_3
    if-ge v9, v8, :cond_6

    .line 75
    .line 76
    aget-object v11, v7, v9

    .line 77
    .line 78
    invoke-virtual {v11}, Ljava/lang/reflect/Method;->getModifiers()I

    .line 79
    .line 80
    .line 81
    move-result v10

    .line 82
    and-int/lit8 v12, v10, 0x1

    .line 83
    .line 84
    if-eqz v12, :cond_5

    .line 85
    .line 86
    and-int/lit16 v10, v10, 0x1448

    .line 87
    .line 88
    if-nez v10, :cond_5

    .line 89
    .line 90
    invoke-virtual {v11}, Ljava/lang/reflect/Method;->getParameterTypes()[Ljava/lang/Class;

    .line 91
    .line 92
    .line 93
    move-result-object v10

    .line 94
    array-length v12, v10

    .line 95
    if-ne v12, v0, :cond_5

    .line 96
    .line 97
    const-class v12, Lkh/j;

    .line 98
    .line 99
    invoke-virtual {v11, v12}, Ljava/lang/reflect/Method;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    .line 100
    .line 101
    .line 102
    move-result-object v12

    .line 103
    check-cast v12, Lkh/j;

    .line 104
    .line 105
    if-eqz v12, :cond_5

    .line 106
    .line 107
    aget-object v13, v10, v6

    .line 108
    .line 109
    iget-object v10, v5, Ldg/a;->c:Ljava/lang/Object;

    .line 110
    .line 111
    check-cast v10, Ljava/util/HashMap;

    .line 112
    .line 113
    invoke-virtual {v10, v13, v11}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 114
    .line 115
    .line 116
    move-result-object v14

    .line 117
    if-nez v14, :cond_2

    .line 118
    .line 119
    const/4 v10, 0x1

    .line 120
    goto :goto_5

    .line 121
    :cond_2
    instance-of v15, v14, Ljava/lang/reflect/Method;

    .line 122
    .line 123
    if-eqz v15, :cond_4

    .line 124
    .line 125
    check-cast v14, Ljava/lang/reflect/Method;

    .line 126
    .line 127
    invoke-virtual {v5, v14, v13}, Ldg/a;->a(Ljava/lang/reflect/Method;Ljava/lang/Class;)Z

    .line 128
    .line 129
    .line 130
    move-result v14

    .line 131
    if-eqz v14, :cond_3

    .line 132
    .line 133
    invoke-virtual {v10, v13, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 134
    .line 135
    .line 136
    goto :goto_4

    .line 137
    :cond_3
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 138
    .line 139
    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    .line 140
    .line 141
    .line 142
    throw v0

    .line 143
    :cond_4
    :goto_4
    invoke-virtual {v5, v11, v13}, Ldg/a;->a(Ljava/lang/reflect/Method;Ljava/lang/Class;)Z

    .line 144
    .line 145
    .line 146
    move-result v10

    .line 147
    :goto_5
    if-eqz v10, :cond_5

    .line 148
    .line 149
    invoke-interface {v12}, Lkh/j;->threadMode()Lorg/greenrobot/eventbus/ThreadMode;

    .line 150
    .line 151
    .line 152
    move-result-object v14

    .line 153
    iget-object v10, v5, Ldg/a;->b:Ljava/lang/Object;

    .line 154
    .line 155
    move-object v15, v10

    .line 156
    check-cast v15, Ljava/util/ArrayList;

    .line 157
    .line 158
    new-instance v10, Lkh/l;

    .line 159
    .line 160
    invoke-interface {v12}, Lkh/j;->priority()I

    .line 161
    .line 162
    .line 163
    move-result v16

    .line 164
    invoke-interface {v12}, Lkh/j;->sticky()Z

    .line 165
    .line 166
    .line 167
    move-result v17

    .line 168
    move-object v12, v10

    .line 169
    move-object v6, v12

    .line 170
    move-object v12, v13

    .line 171
    move-object v13, v14

    .line 172
    move/from16 v14, v16

    .line 173
    .line 174
    move-object v2, v15

    .line 175
    move/from16 v15, v17

    .line 176
    .line 177
    invoke-direct/range {v10 .. v15}, Lkh/l;-><init>(Ljava/lang/reflect/Method;Ljava/lang/Class;Lorg/greenrobot/eventbus/ThreadMode;IZ)V

    .line 178
    .line 179
    .line 180
    invoke-virtual {v2, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 181
    .line 182
    .line 183
    :cond_5
    add-int/2addr v9, v0

    .line 184
    const/4 v6, 0x0

    .line 185
    goto :goto_3

    .line 186
    :cond_6
    iget-boolean v2, v5, Ldg/a;->a:Z

    .line 187
    .line 188
    const/4 v6, 0x0

    .line 189
    if-eqz v2, :cond_7

    .line 190
    .line 191
    iput-object v6, v5, Ldg/a;->f:Ljava/lang/Object;

    .line 192
    .line 193
    goto :goto_6

    .line 194
    :cond_7
    iget-object v2, v5, Ldg/a;->f:Ljava/lang/Object;

    .line 195
    .line 196
    check-cast v2, Ljava/lang/Class;

    .line 197
    .line 198
    invoke-virtual {v2}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    .line 199
    .line 200
    .line 201
    move-result-object v2

    .line 202
    iput-object v2, v5, Ldg/a;->f:Ljava/lang/Object;

    .line 203
    .line 204
    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    .line 205
    .line 206
    .line 207
    move-result-object v2

    .line 208
    const-string v7, "java."

    .line 209
    .line 210
    invoke-virtual {v2, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 211
    .line 212
    .line 213
    move-result v7

    .line 214
    if-nez v7, :cond_8

    .line 215
    .line 216
    const-string v7, "javax."

    .line 217
    .line 218
    invoke-virtual {v2, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 219
    .line 220
    .line 221
    move-result v7

    .line 222
    if-nez v7, :cond_8

    .line 223
    .line 224
    const-string v7, "android."

    .line 225
    .line 226
    invoke-virtual {v2, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 227
    .line 228
    .line 229
    move-result v7

    .line 230
    if-nez v7, :cond_8

    .line 231
    .line 232
    const-string v7, "androidx."

    .line 233
    .line 234
    invoke-virtual {v2, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 235
    .line 236
    .line 237
    move-result v2

    .line 238
    if-eqz v2, :cond_9

    .line 239
    .line 240
    :cond_8
    iput-object v6, v5, Ldg/a;->f:Ljava/lang/Object;

    .line 241
    .line 242
    :cond_9
    :goto_6
    const/4 v6, 0x0

    .line 243
    goto/16 :goto_1

    .line 244
    .line 245
    :catch_1
    move-exception v0

    .line 246
    iget-object v2, v5, Ldg/a;->f:Ljava/lang/Object;

    .line 247
    .line 248
    check-cast v2, Ljava/lang/Class;

    .line 249
    .line 250
    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    .line 251
    .line 252
    .line 253
    move-result-object v2

    .line 254
    const-string v3, "Could not inspect methods of "

    .line 255
    .line 256
    invoke-virtual {v3, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 257
    .line 258
    .line 259
    move-result-object v2

    .line 260
    const-string v3, ". Please make this class visible to EventBus annotation processor to avoid reflection."

    .line 261
    .line 262
    invoke-static {v2, v3}, Lg/b;->j(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 263
    .line 264
    .line 265
    move-result-object v2

    .line 266
    new-instance v3, Landroidx/fragment/app/b0;

    .line 267
    .line 268
    const/4 v4, 0x7

    .line 269
    invoke-direct {v3, v4, v2, v0}, Landroidx/fragment/app/b0;-><init>(ILjava/lang/String;Ljava/lang/Throwable;)V

    .line 270
    .line 271
    .line 272
    throw v3

    .line 273
    :cond_a
    invoke-static {v5}, Lkh/m;->a(Ldg/a;)Ljava/util/ArrayList;

    .line 274
    .line 275
    .line 276
    move-result-object v5

    .line 277
    invoke-virtual {v5}, Ljava/util/ArrayList;->isEmpty()Z

    .line 278
    .line 279
    .line 280
    move-result v0

    .line 281
    if-nez v0, :cond_c

    .line 282
    .line 283
    invoke-virtual {v4, v3, v5}, Lj$/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 284
    .line 285
    .line 286
    :goto_7
    monitor-enter p0

    .line 287
    :try_start_3
    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 288
    .line 289
    .line 290
    move-result-object v0

    .line 291
    :goto_8
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 292
    .line 293
    .line 294
    move-result v2

    .line 295
    if-eqz v2, :cond_b

    .line 296
    .line 297
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 298
    .line 299
    .line 300
    move-result-object v2

    .line 301
    check-cast v2, Lkh/l;

    .line 302
    .line 303
    move-object/from16 v3, p1

    .line 304
    .line 305
    invoke-virtual {v1, v3, v2}, Lkh/e;->k(Ljava/lang/Object;Lkh/l;)V

    .line 306
    .line 307
    .line 308
    goto :goto_8

    .line 309
    :catchall_1
    move-exception v0

    .line 310
    goto :goto_9

    .line 311
    :cond_b
    monitor-exit p0

    .line 312
    return-void

    .line 313
    :goto_9
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 314
    throw v0

    .line 315
    :cond_c
    new-instance v0, Landroidx/fragment/app/b0;

    .line 316
    .line 317
    const-string v2, "Subscriber "

    .line 318
    .line 319
    const-string v4, " and its super classes have no public methods with the @Subscribe annotation"

    .line 320
    .line 321
    invoke-static {v2, v3, v4}, Landroid/support/v4/media/session/a;->r(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/String;

    .line 322
    .line 323
    .line 324
    move-result-object v2

    .line 325
    const/4 v3, 0x7

    .line 326
    invoke-direct {v0, v2, v3}, Landroidx/fragment/app/b0;-><init>(Ljava/lang/String;I)V

    .line 327
    .line 328
    .line 329
    goto :goto_b

    .line 330
    :goto_a
    throw v0

    .line 331
    :goto_b
    goto :goto_a
.end method

.method public final k(Ljava/lang/Object;Lkh/l;)V
    .locals 8

    .line 1
    iget-object v0, p2, Lkh/l;->c:Ljava/lang/Class;

    .line 2
    .line 3
    new-instance v1, Lkh/n;

    .line 4
    .line 5
    invoke-direct {v1, p1, p2}, Lkh/n;-><init>(Ljava/lang/Object;Lkh/l;)V

    .line 6
    .line 7
    .line 8
    iget-object v2, p0, Lkh/e;->a:Ljava/util/HashMap;

    .line 9
    .line 10
    invoke-virtual {v2, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 11
    .line 12
    .line 13
    move-result-object v3

    .line 14
    check-cast v3, Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 15
    .line 16
    if-nez v3, :cond_0

    .line 17
    .line 18
    new-instance v3, Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 19
    .line 20
    invoke-direct {v3}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    .line 21
    .line 22
    .line 23
    invoke-virtual {v2, v0, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 24
    .line 25
    .line 26
    goto :goto_0

    .line 27
    :cond_0
    invoke-virtual {v3, v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->contains(Ljava/lang/Object;)Z

    .line 28
    .line 29
    .line 30
    move-result v2

    .line 31
    if-nez v2, :cond_c

    .line 32
    .line 33
    :goto_0
    invoke-virtual {v3}, Ljava/util/concurrent/CopyOnWriteArrayList;->size()I

    .line 34
    .line 35
    .line 36
    move-result v2

    .line 37
    const/4 v4, 0x0

    .line 38
    const/4 v5, 0x0

    .line 39
    :goto_1
    if-gt v5, v2, :cond_3

    .line 40
    .line 41
    if-eq v5, v2, :cond_2

    .line 42
    .line 43
    invoke-virtual {v3, v5}, Ljava/util/concurrent/CopyOnWriteArrayList;->get(I)Ljava/lang/Object;

    .line 44
    .line 45
    .line 46
    move-result-object v6

    .line 47
    check-cast v6, Lkh/n;

    .line 48
    .line 49
    iget-object v6, v6, Lkh/n;->b:Lkh/l;

    .line 50
    .line 51
    iget v6, v6, Lkh/l;->d:I

    .line 52
    .line 53
    iget v7, p2, Lkh/l;->d:I

    .line 54
    .line 55
    if-le v7, v6, :cond_1

    .line 56
    .line 57
    goto :goto_2

    .line 58
    :cond_1
    add-int/lit8 v5, v5, 0x1

    .line 59
    .line 60
    goto :goto_1

    .line 61
    :cond_2
    :goto_2
    invoke-virtual {v3, v5, v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(ILjava/lang/Object;)V

    .line 62
    .line 63
    .line 64
    :cond_3
    iget-object v2, p0, Lkh/e;->b:Ljava/util/HashMap;

    .line 65
    .line 66
    invoke-virtual {v2, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 67
    .line 68
    .line 69
    move-result-object v3

    .line 70
    check-cast v3, Ljava/util/List;

    .line 71
    .line 72
    if-nez v3, :cond_4

    .line 73
    .line 74
    new-instance v3, Ljava/util/ArrayList;

    .line 75
    .line 76
    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 77
    .line 78
    .line 79
    invoke-virtual {v2, p1, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 80
    .line 81
    .line 82
    :cond_4
    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 83
    .line 84
    .line 85
    iget-boolean p1, p2, Lkh/l;->e:Z

    .line 86
    .line 87
    if-eqz p1, :cond_b

    .line 88
    .line 89
    iget-object p1, p0, Lkh/e;->c:Lj$/util/concurrent/ConcurrentHashMap;

    .line 90
    .line 91
    iget-object p2, p0, Lkh/e;->e:Lha/l2;

    .line 92
    .line 93
    const/4 v2, 0x1

    .line 94
    iget-boolean v3, p0, Lkh/e;->n:Z

    .line 95
    .line 96
    if-eqz v3, :cond_8

    .line 97
    .line 98
    invoke-virtual {p1}, Lj$/util/concurrent/ConcurrentHashMap;->entrySet()Ljava/util/Set;

    .line 99
    .line 100
    .line 101
    move-result-object p1

    .line 102
    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 103
    .line 104
    .line 105
    move-result-object p1

    .line 106
    :cond_5
    :goto_3
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 107
    .line 108
    .line 109
    move-result v3

    .line 110
    if-eqz v3, :cond_b

    .line 111
    .line 112
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 113
    .line 114
    .line 115
    move-result-object v3

    .line 116
    check-cast v3, Ljava/util/Map$Entry;

    .line 117
    .line 118
    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    .line 119
    .line 120
    .line 121
    move-result-object v5

    .line 122
    check-cast v5, Ljava/lang/Class;

    .line 123
    .line 124
    invoke-virtual {v0, v5}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    .line 125
    .line 126
    .line 127
    move-result v5

    .line 128
    if-eqz v5, :cond_5

    .line 129
    .line 130
    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 131
    .line 132
    .line 133
    move-result-object v3

    .line 134
    if-eqz v3, :cond_5

    .line 135
    .line 136
    if-eqz p2, :cond_7

    .line 137
    .line 138
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    .line 139
    .line 140
    .line 141
    move-result-object v5

    .line 142
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    .line 143
    .line 144
    .line 145
    move-result-object v6

    .line 146
    if-ne v5, v6, :cond_6

    .line 147
    .line 148
    goto :goto_4

    .line 149
    :cond_6
    const/4 v5, 0x0

    .line 150
    goto :goto_5

    .line 151
    :cond_7
    :goto_4
    const/4 v5, 0x1

    .line 152
    :goto_5
    invoke-virtual {p0, v1, v3, v5}, Lkh/e;->i(Lkh/n;Ljava/lang/Object;Z)V

    .line 153
    .line 154
    .line 155
    goto :goto_3

    .line 156
    :cond_8
    invoke-virtual {p1, v0}, Lj$/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 157
    .line 158
    .line 159
    move-result-object p1

    .line 160
    if-eqz p1, :cond_b

    .line 161
    .line 162
    if-eqz p2, :cond_9

    .line 163
    .line 164
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    .line 165
    .line 166
    .line 167
    move-result-object p2

    .line 168
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    .line 169
    .line 170
    .line 171
    move-result-object v0

    .line 172
    if-ne p2, v0, :cond_a

    .line 173
    .line 174
    :cond_9
    const/4 v4, 0x1

    .line 175
    :cond_a
    invoke-virtual {p0, v1, p1, v4}, Lkh/e;->i(Lkh/n;Ljava/lang/Object;Z)V

    .line 176
    .line 177
    .line 178
    :cond_b
    return-void

    .line 179
    :cond_c
    new-instance p2, Landroidx/fragment/app/b0;

    .line 180
    .line 181
    new-instance v1, Ljava/lang/StringBuilder;

    .line 182
    .line 183
    const-string v2, "Subscriber "

    .line 184
    .line 185
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 186
    .line 187
    .line 188
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 189
    .line 190
    .line 191
    move-result-object p1

    .line 192
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 193
    .line 194
    .line 195
    const-string p1, " already registered to event "

    .line 196
    .line 197
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 198
    .line 199
    .line 200
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 201
    .line 202
    .line 203
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 204
    .line 205
    .line 206
    move-result-object p1

    .line 207
    const/4 v0, 0x7

    .line 208
    invoke-direct {p2, p1, v0}, Landroidx/fragment/app/b0;-><init>(Ljava/lang/String;I)V

    .line 209
    .line 210
    .line 211
    goto :goto_7

    .line 212
    :goto_6
    throw p2

    .line 213
    :goto_7
    goto :goto_6
.end method

.method public final declared-synchronized l(Ljava/lang/Object;)V
    .locals 7

    .line 1
    const-string v0, "Subscriber to unregister was not registered before: "

    .line 2
    .line 3
    monitor-enter p0

    .line 4
    :try_start_0
    iget-object v1, p0, Lkh/e;->b:Ljava/util/HashMap;

    .line 5
    .line 6
    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 7
    .line 8
    .line 9
    move-result-object v1

    .line 10
    check-cast v1, Ljava/util/List;

    .line 11
    .line 12
    if-eqz v1, :cond_3

    .line 13
    .line 14
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 19
    .line 20
    .line 21
    move-result v1

    .line 22
    if-eqz v1, :cond_2

    .line 23
    .line 24
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 25
    .line 26
    .line 27
    move-result-object v1

    .line 28
    check-cast v1, Ljava/lang/Class;

    .line 29
    .line 30
    iget-object v2, p0, Lkh/e;->a:Ljava/util/HashMap;

    .line 31
    .line 32
    invoke-virtual {v2, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 33
    .line 34
    .line 35
    move-result-object v1

    .line 36
    check-cast v1, Ljava/util/List;

    .line 37
    .line 38
    if-eqz v1, :cond_0

    .line 39
    .line 40
    invoke-interface {v1}, Ljava/util/List;->size()I

    .line 41
    .line 42
    .line 43
    move-result v2

    .line 44
    const/4 v3, 0x0

    .line 45
    const/4 v4, 0x0

    .line 46
    :goto_0
    if-ge v4, v2, :cond_0

    .line 47
    .line 48
    invoke-interface {v1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 49
    .line 50
    .line 51
    move-result-object v5

    .line 52
    check-cast v5, Lkh/n;

    .line 53
    .line 54
    iget-object v6, v5, Lkh/n;->a:Ljava/lang/Object;

    .line 55
    .line 56
    if-ne v6, p1, :cond_1

    .line 57
    .line 58
    iput-boolean v3, v5, Lkh/n;->c:Z

    .line 59
    .line 60
    invoke-interface {v1, v4}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 61
    .line 62
    .line 63
    add-int/lit8 v4, v4, -0x1

    .line 64
    .line 65
    add-int/lit8 v2, v2, -0x1

    .line 66
    .line 67
    :cond_1
    add-int/lit8 v4, v4, 0x1

    .line 68
    .line 69
    goto :goto_0

    .line 70
    :catchall_0
    move-exception p1

    .line 71
    goto :goto_2

    .line 72
    :cond_2
    iget-object v0, p0, Lkh/e;->b:Ljava/util/HashMap;

    .line 73
    .line 74
    invoke-virtual {v0, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 75
    .line 76
    .line 77
    goto :goto_1

    .line 78
    :cond_3
    iget-object v1, p0, Lkh/e;->o:Lha/j2;

    .line 79
    .line 80
    sget-object v2, Ljava/util/logging/Level;->WARNING:Ljava/util/logging/Level;

    .line 81
    .line 82
    new-instance v3, Ljava/lang/StringBuilder;

    .line 83
    .line 84
    invoke-direct {v3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 85
    .line 86
    .line 87
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 88
    .line 89
    .line 90
    move-result-object p1

    .line 91
    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 92
    .line 93
    .line 94
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 95
    .line 96
    .line 97
    move-result-object p1

    .line 98
    invoke-virtual {v1, v2, p1}, Lha/j2;->f(Ljava/util/logging/Level;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 99
    .line 100
    .line 101
    :goto_1
    monitor-exit p0

    .line 102
    return-void

    .line 103
    :goto_2
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 104
    goto :goto_4

    .line 105
    :goto_3
    throw p1

    .line 106
    :goto_4
    goto :goto_3
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    const-string v1, "EventBus[indexCount=0, eventInheritance="

    .line 4
    .line 5
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    iget-boolean v1, p0, Lkh/e;->n:Z

    .line 9
    .line 10
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 11
    .line 12
    .line 13
    const-string v1, "]"

    .line 14
    .line 15
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 16
    .line 17
    .line 18
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 19
    .line 20
    .line 21
    move-result-object v0

    .line 22
    return-object v0
.end method
