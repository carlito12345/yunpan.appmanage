.class public final Lo5/v;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final e:Z

.field public static final f:Z

.field public static final g:Ljava/io/File;

.field public static volatile h:Lo5/v;


# instance fields
.field public final a:I

.field public b:I

.field public c:Z

.field public final d:Ljava/util/concurrent/atomic/AtomicBoolean;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 2
    .line 3
    const/16 v1, 0x1d

    .line 4
    .line 5
    const/4 v2, 0x0

    .line 6
    const/4 v3, 0x1

    .line 7
    if-ge v0, v1, :cond_0

    .line 8
    .line 9
    const/4 v1, 0x1

    .line 10
    goto :goto_0

    .line 11
    :cond_0
    const/4 v1, 0x0

    .line 12
    :goto_0
    sput-boolean v1, Lo5/v;->e:Z

    .line 13
    .line 14
    const/16 v1, 0x1c

    .line 15
    .line 16
    if-lt v0, v1, :cond_1

    .line 17
    .line 18
    const/4 v2, 0x1

    .line 19
    :cond_1
    sput-boolean v2, Lo5/v;->f:Z

    .line 20
    .line 21
    new-instance v0, Ljava/io/File;

    .line 22
    .line 23
    const-string v1, "/proc/self/fd"

    .line 24
    .line 25
    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 26
    .line 27
    .line 28
    sput-object v0, Lo5/v;->g:Ljava/io/File;

    .line 29
    .line 30
    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x1

    .line 5
    iput-boolean v0, p0, Lo5/v;->c:Z

    .line 6
    .line 7
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 8
    .line 9
    const/4 v1, 0x0

    .line 10
    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    .line 11
    .line 12
    .line 13
    iput-object v0, p0, Lo5/v;->d:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 14
    .line 15
    const/16 v0, 0x4e20

    .line 16
    .line 17
    iput v0, p0, Lo5/v;->a:I

    .line 18
    .line 19
    return-void
.end method

.method public static a()Lo5/v;
    .locals 2

    .line 1
    sget-object v0, Lo5/v;->h:Lo5/v;

    .line 2
    .line 3
    if-nez v0, :cond_1

    .line 4
    .line 5
    const-class v0, Lo5/v;

    .line 6
    .line 7
    monitor-enter v0

    .line 8
    :try_start_0
    sget-object v1, Lo5/v;->h:Lo5/v;

    .line 9
    .line 10
    if-nez v1, :cond_0

    .line 11
    .line 12
    new-instance v1, Lo5/v;

    .line 13
    .line 14
    invoke-direct {v1}, Lo5/v;-><init>()V

    .line 15
    .line 16
    .line 17
    sput-object v1, Lo5/v;->h:Lo5/v;

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
    sget-object v0, Lo5/v;->h:Lo5/v;

    .line 27
    .line 28
    return-object v0
.end method


# virtual methods
.method public final b()I
    .locals 3

    .line 1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 2
    .line 3
    const/16 v1, 0x1c

    .line 4
    .line 5
    if-eq v0, v1, :cond_0

    .line 6
    .line 7
    goto :goto_0

    .line 8
    :cond_0
    const/16 v0, 0xe

    .line 9
    .line 10
    new-array v0, v0, [Ljava/lang/String;

    .line 11
    .line 12
    const-string v1, "GM1900"

    .line 13
    .line 14
    const/4 v2, 0x0

    .line 15
    aput-object v1, v0, v2

    .line 16
    .line 17
    const-string v1, "GM1901"

    .line 18
    .line 19
    const/4 v2, 0x1

    .line 20
    aput-object v1, v0, v2

    .line 21
    .line 22
    const-string v1, "GM1903"

    .line 23
    .line 24
    const/4 v2, 0x2

    .line 25
    aput-object v1, v0, v2

    .line 26
    .line 27
    const-string v1, "GM1911"

    .line 28
    .line 29
    const/4 v2, 0x3

    .line 30
    aput-object v1, v0, v2

    .line 31
    .line 32
    const-string v1, "GM1915"

    .line 33
    .line 34
    const/4 v2, 0x4

    .line 35
    aput-object v1, v0, v2

    .line 36
    .line 37
    const-string v1, "ONEPLUS A3000"

    .line 38
    .line 39
    const/4 v2, 0x5

    .line 40
    aput-object v1, v0, v2

    .line 41
    .line 42
    const-string v1, "ONEPLUS A3010"

    .line 43
    .line 44
    const/4 v2, 0x6

    .line 45
    aput-object v1, v0, v2

    .line 46
    .line 47
    const-string v1, "ONEPLUS A5010"

    .line 48
    .line 49
    const/4 v2, 0x7

    .line 50
    aput-object v1, v0, v2

    .line 51
    .line 52
    const-string v1, "ONEPLUS A5000"

    .line 53
    .line 54
    const/16 v2, 0x8

    .line 55
    .line 56
    aput-object v1, v0, v2

    .line 57
    .line 58
    const-string v1, "ONEPLUS A3003"

    .line 59
    .line 60
    const/16 v2, 0x9

    .line 61
    .line 62
    aput-object v1, v0, v2

    .line 63
    .line 64
    const-string v1, "ONEPLUS A6000"

    .line 65
    .line 66
    const/16 v2, 0xa

    .line 67
    .line 68
    aput-object v1, v0, v2

    .line 69
    .line 70
    const-string v1, "ONEPLUS A6003"

    .line 71
    .line 72
    const/16 v2, 0xb

    .line 73
    .line 74
    aput-object v1, v0, v2

    .line 75
    .line 76
    const-string v1, "ONEPLUS A6010"

    .line 77
    .line 78
    const/16 v2, 0xc

    .line 79
    .line 80
    aput-object v1, v0, v2

    .line 81
    .line 82
    const-string v1, "ONEPLUS A6013"

    .line 83
    .line 84
    const/16 v2, 0xd

    .line 85
    .line 86
    aput-object v1, v0, v2

    .line 87
    .line 88
    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    .line 89
    .line 90
    .line 91
    move-result-object v0

    .line 92
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 93
    .line 94
    .line 95
    move-result-object v0

    .line 96
    :cond_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 97
    .line 98
    .line 99
    move-result v1

    .line 100
    if-eqz v1, :cond_2

    .line 101
    .line 102
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 103
    .line 104
    .line 105
    move-result-object v1

    .line 106
    check-cast v1, Ljava/lang/String;

    .line 107
    .line 108
    sget-object v2, Landroid/os/Build;->MODEL:Ljava/lang/String;

    .line 109
    .line 110
    invoke-virtual {v2, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 111
    .line 112
    .line 113
    move-result v1

    .line 114
    if-eqz v1, :cond_1

    .line 115
    .line 116
    const/16 v0, 0x1f4

    .line 117
    .line 118
    return v0

    .line 119
    :cond_2
    :goto_0
    iget v0, p0, Lo5/v;->a:I

    .line 120
    .line 121
    return v0
.end method

.method public final c(IIZZ)Z
    .locals 3

    .line 1
    const/4 v0, 0x0

    .line 2
    if-nez p3, :cond_0

    .line 3
    .line 4
    return v0

    .line 5
    :cond_0
    sget-boolean p3, Lo5/v;->f:Z

    .line 6
    .line 7
    if-nez p3, :cond_1

    .line 8
    .line 9
    return v0

    .line 10
    :cond_1
    sget-boolean p3, Lo5/v;->e:Z

    .line 11
    .line 12
    if-eqz p3, :cond_2

    .line 13
    .line 14
    iget-object p3, p0, Lo5/v;->d:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 15
    .line 16
    invoke-virtual {p3}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    .line 17
    .line 18
    .line 19
    move-result p3

    .line 20
    if-nez p3, :cond_2

    .line 21
    .line 22
    return v0

    .line 23
    :cond_2
    if-eqz p4, :cond_3

    .line 24
    .line 25
    return v0

    .line 26
    :cond_3
    if-ltz p1, :cond_8

    .line 27
    .line 28
    if-gez p2, :cond_4

    .line 29
    .line 30
    goto :goto_3

    .line 31
    :cond_4
    monitor-enter p0

    .line 32
    :try_start_0
    iget p1, p0, Lo5/v;->b:I

    .line 33
    .line 34
    const/4 p2, 0x1

    .line 35
    add-int/2addr p1, p2

    .line 36
    iput p1, p0, Lo5/v;->b:I

    .line 37
    .line 38
    const/16 p3, 0x32

    .line 39
    .line 40
    if-lt p1, p3, :cond_6

    .line 41
    .line 42
    iput v0, p0, Lo5/v;->b:I

    .line 43
    .line 44
    sget-object p1, Lo5/v;->g:Ljava/io/File;

    .line 45
    .line 46
    invoke-virtual {p1}, Ljava/io/File;->list()[Ljava/lang/String;

    .line 47
    .line 48
    .line 49
    move-result-object p1

    .line 50
    array-length p1, p1

    .line 51
    invoke-virtual {p0}, Lo5/v;->b()I

    .line 52
    .line 53
    .line 54
    move-result p3

    .line 55
    int-to-long p3, p3

    .line 56
    int-to-long v1, p1

    .line 57
    cmp-long p1, v1, p3

    .line 58
    .line 59
    if-gez p1, :cond_5

    .line 60
    .line 61
    const/4 p1, 0x1

    .line 62
    goto :goto_0

    .line 63
    :cond_5
    const/4 p1, 0x0

    .line 64
    :goto_0
    iput-boolean p1, p0, Lo5/v;->c:Z

    .line 65
    .line 66
    goto :goto_1

    .line 67
    :catchall_0
    move-exception p1

    .line 68
    goto :goto_2

    .line 69
    :cond_6
    :goto_1
    iget-boolean p1, p0, Lo5/v;->c:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 70
    .line 71
    monitor-exit p0

    .line 72
    if-nez p1, :cond_7

    .line 73
    .line 74
    return v0

    .line 75
    :cond_7
    return p2

    .line 76
    :goto_2
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 77
    throw p1

    .line 78
    :cond_8
    :goto_3
    return v0
.end method
