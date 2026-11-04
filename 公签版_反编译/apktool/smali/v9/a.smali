.class public final Lv9/a;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public a:J

.field public b:I


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const-wide/16 v0, 0x14

    .line 5
    .line 6
    iput-wide v0, p0, Lv9/a;->a:J

    .line 7
    .line 8
    const/4 v0, 0x0

    .line 9
    iput v0, p0, Lv9/a;->b:I

    .line 10
    .line 11
    return-void
.end method

.method public static c()Lv9/a;
    .locals 1

    .line 1
    new-instance v0, Lv9/a;

    .line 2
    .line 3
    invoke-direct {v0}, Lv9/a;-><init>()V

    .line 4
    .line 5
    .line 6
    return-object v0
.end method


# virtual methods
.method public final a()Lv9/i;
    .locals 6

    .line 1
    const/4 v0, 0x2

    .line 2
    const/4 v1, 0x0

    .line 3
    const/4 v2, 0x1

    .line 4
    invoke-virtual {p0, v2}, Lv9/a;->e(I)Z

    .line 5
    .line 6
    .line 7
    move-result v3

    .line 8
    const/4 v4, 0x0

    .line 9
    if-nez v3, :cond_1

    .line 10
    .line 11
    invoke-virtual {p0, v0}, Lv9/a;->e(I)Z

    .line 12
    .line 13
    .line 14
    move-result v3

    .line 15
    if-eqz v3, :cond_1

    .line 16
    .line 17
    :try_start_0
    new-array v0, v0, [Ljava/lang/String;

    .line 18
    .line 19
    const-string v3, "su"

    .line 20
    .line 21
    aput-object v3, v0, v1

    .line 22
    .line 23
    const-string v3, "--mount-master"

    .line 24
    .line 25
    aput-object v3, v0, v2

    .line 26
    .line 27
    invoke-virtual {p0, v0}, Lv9/a;->d([Ljava/lang/String;)Lv9/i;

    .line 28
    .line 29
    .line 30
    move-result-object v0
    :try_end_0
    .catch Lu9/a; {:try_start_0 .. :try_end_0} :catch_1

    .line 31
    :try_start_1
    iget v3, v0, Lv9/i;->c:I
    :try_end_1
    .catch Lu9/a; {:try_start_1 .. :try_end_1} :catch_0

    .line 32
    .line 33
    if-lt v3, v2, :cond_0

    .line 34
    .line 35
    const/4 v3, 0x1

    .line 36
    goto :goto_0

    .line 37
    :cond_0
    const/4 v3, 0x0

    .line 38
    :goto_0
    if-nez v3, :cond_2

    .line 39
    .line 40
    goto :goto_1

    .line 41
    :catch_0
    nop

    .line 42
    goto :goto_2

    .line 43
    :catch_1
    nop

    .line 44
    :cond_1
    :goto_1
    move-object v0, v4

    .line 45
    :cond_2
    :goto_2
    if-nez v0, :cond_5

    .line 46
    .line 47
    invoke-virtual {p0, v2}, Lv9/a;->e(I)Z

    .line 48
    .line 49
    .line 50
    move-result v3

    .line 51
    if-nez v3, :cond_5

    .line 52
    .line 53
    :try_start_2
    new-array v3, v2, [Ljava/lang/String;

    .line 54
    .line 55
    const-string v5, "su"

    .line 56
    .line 57
    aput-object v5, v3, v1

    .line 58
    .line 59
    invoke-virtual {p0, v3}, Lv9/a;->d([Ljava/lang/String;)Lv9/i;

    .line 60
    .line 61
    .line 62
    move-result-object v0

    .line 63
    iget v3, v0, Lv9/i;->c:I
    :try_end_2
    .catch Lu9/a; {:try_start_2 .. :try_end_2} :catch_2

    .line 64
    .line 65
    if-lt v3, v2, :cond_3

    .line 66
    .line 67
    const/4 v3, 0x1

    .line 68
    goto :goto_3

    .line 69
    :cond_3
    const/4 v3, 0x0

    .line 70
    :goto_3
    if-nez v3, :cond_4

    .line 71
    .line 72
    goto :goto_4

    .line 73
    :cond_4
    move-object v4, v0

    .line 74
    :goto_4
    move-object v0, v4

    .line 75
    goto :goto_5

    .line 76
    :catch_2
    nop

    .line 77
    :cond_5
    :goto_5
    if-nez v0, :cond_7

    .line 78
    .line 79
    invoke-virtual {p0, v2}, Lv9/a;->e(I)Z

    .line 80
    .line 81
    .line 82
    move-result v0

    .line 83
    if-nez v0, :cond_6

    .line 84
    .line 85
    const-class v0, Lv9/l;

    .line 86
    .line 87
    monitor-enter v0

    .line 88
    monitor-exit v0

    .line 89
    :cond_6
    new-array v0, v2, [Ljava/lang/String;

    .line 90
    .line 91
    const-string v2, "sh"

    .line 92
    .line 93
    aput-object v2, v0, v1

    .line 94
    .line 95
    invoke-virtual {p0, v0}, Lv9/a;->d([Ljava/lang/String;)Lv9/i;

    .line 96
    .line 97
    .line 98
    move-result-object v0

    .line 99
    :cond_7
    return-object v0
.end method

.method public final b(Ljava/lang/Process;)Lv9/i;
    .locals 4

    .line 1
    :try_start_0
    new-instance v0, Lv9/i;

    .line 2
    .line 3
    invoke-direct {v0, p0, p1}, Lv9/i;-><init>(Lv9/a;Ljava/lang/Process;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 4
    .line 5
    .line 6
    const/16 p1, 0x8

    .line 7
    .line 8
    invoke-virtual {p0, p1}, Lv9/a;->e(I)Z

    .line 9
    .line 10
    .line 11
    move-result p1

    .line 12
    if-eqz p1, :cond_0

    .line 13
    .line 14
    const/4 p1, 0x1

    .line 15
    sput-boolean p1, Lu9/d;->b:Z

    .line 16
    .line 17
    :cond_0
    const-class p1, Lv9/c;

    .line 18
    .line 19
    monitor-enter p1

    .line 20
    :try_start_1
    sget-boolean v1, Lv9/c;->c:Z

    .line 21
    .line 22
    const/4 v2, 0x0

    .line 23
    if-eqz v1, :cond_1

    .line 24
    .line 25
    sget-object v1, Lv9/c;->a:[Lv9/i;

    .line 26
    .line 27
    monitor-enter v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 28
    :try_start_2
    aput-object v0, v1, v2

    .line 29
    .line 30
    monitor-exit v1

    .line 31
    goto :goto_0

    .line 32
    :catchall_0
    move-exception v0

    .line 33
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 34
    :try_start_3
    throw v0

    .line 35
    :catchall_1
    move-exception v0

    .line 36
    goto :goto_1

    .line 37
    :cond_1
    sget-object v1, Lv9/c;->b:[Lv9/i;

    .line 38
    .line 39
    aget-object v3, v1, v2

    .line 40
    .line 41
    if-nez v3, :cond_2

    .line 42
    .line 43
    sget-object v3, Lv9/c;->a:[Lv9/i;

    .line 44
    .line 45
    monitor-enter v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 46
    :try_start_4
    aput-object v0, v1, v2

    .line 47
    .line 48
    monitor-exit v3

    .line 49
    goto :goto_0

    .line 50
    :catchall_2
    move-exception v0

    .line 51
    monitor-exit v3
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    .line 52
    :try_start_5
    throw v0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 53
    :cond_2
    :goto_0
    monitor-exit p1

    .line 54
    return-object v0

    .line 55
    :goto_1
    :try_start_6
    monitor-exit p1
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    .line 56
    throw v0

    .line 57
    :catch_0
    move-exception p1

    .line 58
    new-instance v0, Lu9/a;

    .line 59
    .line 60
    invoke-direct {v0, p1}, Lu9/a;-><init>(Ljava/io/IOException;)V

    .line 61
    .line 62
    .line 63
    throw v0
.end method

.method public final varargs d([Ljava/lang/String;)Lv9/i;
    .locals 1

    .line 1
    :try_start_0
    const-string v0, " "

    .line 2
    .line 3
    invoke-static {v0, p1}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;[Ljava/lang/Object;)Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    invoke-virtual {v0, p1}, Ljava/lang/Runtime;->exec([Ljava/lang/String;)Ljava/lang/Process;

    .line 11
    .line 12
    .line 13
    move-result-object p1

    .line 14
    invoke-virtual {p0, p1}, Lv9/a;->b(Ljava/lang/Process;)Lv9/i;

    .line 15
    .line 16
    .line 17
    move-result-object p1
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 18
    return-object p1

    .line 19
    :catch_0
    move-exception p1

    .line 20
    new-instance v0, Lu9/a;

    .line 21
    .line 22
    invoke-direct {v0, p1}, Lu9/a;-><init>(Ljava/io/IOException;)V

    .line 23
    .line 24
    .line 25
    throw v0
.end method

.method public final e(I)Z
    .locals 1

    .line 1
    iget v0, p0, Lv9/a;->b:I

    .line 2
    .line 3
    and-int/2addr v0, p1

    .line 4
    if-ne v0, p1, :cond_0

    .line 5
    .line 6
    const/4 p1, 0x1

    .line 7
    goto :goto_0

    .line 8
    :cond_0
    const/4 p1, 0x0

    .line 9
    :goto_0
    return p1
.end method

.method public final f()Lv9/a;
    .locals 1

    .line 1
    const/4 v0, 0x2

    .line 2
    iput v0, p0, Lv9/a;->b:I

    .line 3
    .line 4
    return-object p0
.end method

.method public final g(J)Lv9/a;
    .locals 0

    .line 1
    iput-wide p1, p0, Lv9/a;->a:J

    .line 2
    .line 3
    return-object p0
.end method
