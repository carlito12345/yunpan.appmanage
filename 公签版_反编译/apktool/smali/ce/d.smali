.class public final Lce/d;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final c:Lde/d;

.field public static final d:Z

.field public static final e:J

.field public static final f:Z

.field public static final g:Lce/c;


# instance fields
.field public a:Lce/c;

.field public b:Lce/c;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 1
    invoke-static {}, Lde/d;->r()Lde/d;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    sput-object v0, Lce/d;->c:Lde/d;

    .line 6
    .line 7
    const-string v0, "jcifs.smb1.smb.client.dfs.strictView"

    .line 8
    .line 9
    const/4 v1, 0x0

    .line 10
    invoke-static {v0, v1}, Lwd/a;->a(Ljava/lang/String;Z)Z

    .line 11
    .line 12
    .line 13
    move-result v0

    .line 14
    sput-boolean v0, Lce/d;->d:Z

    .line 15
    .line 16
    sget-object v0, Lwd/a;->a:Ljava/util/Properties;

    .line 17
    .line 18
    const-string v2, "jcifs.smb1.smb.client.dfs.ttl"

    .line 19
    .line 20
    invoke-virtual {v0, v2}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    .line 21
    .line 22
    .line 23
    move-result-object v0

    .line 24
    if-eqz v0, :cond_0

    .line 25
    .line 26
    :try_start_0
    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    .line 27
    .line 28
    .line 29
    move-result-wide v2
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 30
    goto :goto_0

    .line 31
    :catch_0
    move-exception v0

    .line 32
    sget v2, Lde/d;->b:I

    .line 33
    .line 34
    if-lez v2, :cond_0

    .line 35
    .line 36
    sget-object v2, Lwd/a;->b:Lde/d;

    .line 37
    .line 38
    invoke-virtual {v0, v2}, Ljava/lang/Throwable;->printStackTrace(Ljava/io/PrintStream;)V

    .line 39
    .line 40
    .line 41
    :cond_0
    const-wide/16 v2, 0x12c

    .line 42
    .line 43
    :goto_0
    sput-wide v2, Lce/d;->e:J

    .line 44
    .line 45
    const-string v0, "jcifs.smb1.smb.client.dfs.disabled"

    .line 46
    .line 47
    invoke-static {v0, v1}, Lwd/a;->a(Ljava/lang/String;Z)Z

    .line 48
    .line 49
    .line 50
    move-result v0

    .line 51
    sput-boolean v0, Lce/d;->f:Z

    .line 52
    .line 53
    new-instance v0, Lce/c;

    .line 54
    .line 55
    const-wide/16 v1, 0x0

    .line 56
    .line 57
    invoke-direct {v0, v1, v2}, Lce/c;-><init>(J)V

    .line 58
    .line 59
    .line 60
    sput-object v0, Lce/d;->g:Lce/c;

    .line 61
    .line 62
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x0

    .line 5
    iput-object v0, p0, Lce/d;->a:Lce/c;

    .line 6
    .line 7
    iput-object v0, p0, Lce/d;->b:Lce/c;

    .line 8
    .line 9
    return-void
.end method

.method public static a(Ljava/lang/String;Lce/p;)Lce/b1;
    .locals 6

    .line 1
    const-string v0, "\\"

    .line 2
    .line 3
    sget-boolean v1, Lce/d;->f:Z

    .line 4
    .line 5
    const/4 v2, 0x0

    .line 6
    if-eqz v1, :cond_0

    .line 7
    .line 8
    return-object v2

    .line 9
    :cond_0
    const/4 v1, 0x1

    .line 10
    :try_start_0
    invoke-static {p0, v1}, Lwd/c;->b(Ljava/lang/String;Z)Lwd/c;

    .line 11
    .line 12
    .line 13
    move-result-object v3

    .line 14
    const/4 v4, 0x0

    .line 15
    invoke-static {v3, v4}, Lce/b1;->o(Lwd/c;I)Lce/b1;

    .line 16
    .line 17
    .line 18
    move-result-object v3

    .line 19
    new-instance v5, Ljava/lang/StringBuilder;

    .line 20
    .line 21
    invoke-direct {v5, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 22
    .line 23
    .line 24
    invoke-virtual {v5, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 25
    .line 26
    .line 27
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 28
    .line 29
    .line 30
    move-result-object p0

    .line 31
    invoke-virtual {v3, p1, p0, v1}, Lce/b1;->m(Lce/p;Ljava/lang/String;I)Lce/e;

    .line 32
    .line 33
    .line 34
    move-result-object p0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    .line 35
    if-eqz p0, :cond_4

    .line 36
    .line 37
    move-object p1, p0

    .line 38
    :goto_0
    :try_start_1
    iget-object v0, p1, Lce/e;->e:Ljava/lang/String;

    .line 39
    .line 40
    invoke-static {v0, v4}, Lwd/c;->b(Ljava/lang/String;Z)Lwd/c;

    .line 41
    .line 42
    .line 43
    move-result-object v0

    .line 44
    invoke-static {v0, v4}, Lce/b1;->o(Lwd/c;I)Lce/b1;

    .line 45
    .line 46
    .line 47
    move-result-object p0
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    .line 48
    return-object p0

    .line 49
    :catch_0
    move-exception v0

    .line 50
    :try_start_2
    iget-object p1, p1, Lce/e;->j:Lce/e;

    .line 51
    .line 52
    if-eq p1, p0, :cond_1

    .line 53
    .line 54
    goto :goto_0

    .line 55
    :cond_1
    throw v0
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    .line 56
    :catch_1
    move-exception p0

    .line 57
    sget p1, Lde/d;->b:I

    .line 58
    .line 59
    const/4 v0, 0x3

    .line 60
    if-lt p1, v0, :cond_2

    .line 61
    .line 62
    sget-object p1, Lce/d;->c:Lde/d;

    .line 63
    .line 64
    invoke-virtual {p0, p1}, Ljava/lang/Throwable;->printStackTrace(Ljava/io/PrintStream;)V

    .line 65
    .line 66
    .line 67
    :cond_2
    sget-boolean p1, Lce/d;->d:Z

    .line 68
    .line 69
    if-eqz p1, :cond_4

    .line 70
    .line 71
    instance-of p1, p0, Lce/s;

    .line 72
    .line 73
    if-nez p1, :cond_3

    .line 74
    .line 75
    goto :goto_1

    .line 76
    :cond_3
    check-cast p0, Lce/s;

    .line 77
    .line 78
    throw p0

    .line 79
    :cond_4
    :goto_1
    return-object v2
.end method

.method public static b(Lce/b1;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lce/p;)Lce/e;
    .locals 3

    .line 1
    const-string v0, "\\"

    .line 2
    .line 3
    sget-boolean v1, Lce/d;->f:Z

    .line 4
    .line 5
    const/4 v2, 0x0

    .line 6
    if-eqz v1, :cond_0

    .line 7
    .line 8
    return-object v2

    .line 9
    :cond_0
    :try_start_0
    new-instance v1, Ljava/lang/StringBuilder;

    .line 10
    .line 11
    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 12
    .line 13
    .line 14
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 15
    .line 16
    .line 17
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 18
    .line 19
    .line 20
    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 21
    .line 22
    .line 23
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 24
    .line 25
    .line 26
    move-result-object p1

    .line 27
    if-eqz p3, :cond_1

    .line 28
    .line 29
    new-instance p2, Ljava/lang/StringBuilder;

    .line 30
    .line 31
    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    .line 32
    .line 33
    .line 34
    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 35
    .line 36
    .line 37
    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 38
    .line 39
    .line 40
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 41
    .line 42
    .line 43
    move-result-object p1

    .line 44
    goto :goto_0

    .line 45
    :catch_0
    move-exception p0

    .line 46
    goto :goto_1

    .line 47
    :cond_1
    :goto_0
    const/4 p2, 0x0

    .line 48
    invoke-virtual {p0, p4, p1, p2}, Lce/b1;->m(Lce/p;Ljava/lang/String;I)Lce/e;

    .line 49
    .line 50
    .line 51
    move-result-object p0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 52
    if-eqz p0, :cond_4

    .line 53
    .line 54
    return-object p0

    .line 55
    :goto_1
    sget p1, Lde/d;->b:I

    .line 56
    .line 57
    const/4 p2, 0x4

    .line 58
    if-lt p1, p2, :cond_2

    .line 59
    .line 60
    sget-object p1, Lce/d;->c:Lde/d;

    .line 61
    .line 62
    invoke-virtual {p0, p1}, Ljava/lang/Throwable;->printStackTrace(Ljava/io/PrintStream;)V

    .line 63
    .line 64
    .line 65
    :cond_2
    sget-boolean p1, Lce/d;->d:Z

    .line 66
    .line 67
    if-eqz p1, :cond_4

    .line 68
    .line 69
    instance-of p1, p0, Lce/s;

    .line 70
    .line 71
    if-nez p1, :cond_3

    .line 72
    .line 73
    goto :goto_2

    .line 74
    :cond_3
    check-cast p0, Lce/s;

    .line 75
    .line 76
    throw p0

    .line 77
    :cond_4
    :goto_2
    return-object v2
.end method


# virtual methods
.method public final c(Lce/p;)Ljava/util/HashMap;
    .locals 8

    .line 1
    sget-boolean v0, Lce/d;->f:Z

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-nez v0, :cond_6

    .line 5
    .line 6
    iget-object v0, p1, Lce/p;->a:Ljava/lang/String;

    .line 7
    .line 8
    const-string v2, "?"

    .line 9
    .line 10
    if-ne v0, v2, :cond_0

    .line 11
    .line 12
    goto :goto_0

    .line 13
    :cond_0
    iget-object v0, p0, Lce/d;->a:Lce/c;

    .line 14
    .line 15
    if-eqz v0, :cond_1

    .line 16
    .line 17
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 18
    .line 19
    .line 20
    move-result-wide v2

    .line 21
    iget-object v0, p0, Lce/d;->a:Lce/c;

    .line 22
    .line 23
    iget-wide v4, v0, Lce/c;->a:J

    .line 24
    .line 25
    cmp-long v0, v2, v4

    .line 26
    .line 27
    if-lez v0, :cond_1

    .line 28
    .line 29
    iput-object v1, p0, Lce/d;->a:Lce/c;

    .line 30
    .line 31
    :cond_1
    iget-object v0, p0, Lce/d;->a:Lce/c;

    .line 32
    .line 33
    if-eqz v0, :cond_2

    .line 34
    .line 35
    iget-object p1, v0, Lce/c;->b:Ljava/util/HashMap;

    .line 36
    .line 37
    return-object p1

    .line 38
    :cond_2
    :try_start_0
    iget-object v0, p1, Lce/p;->a:Ljava/lang/String;

    .line 39
    .line 40
    const/4 v2, 0x1

    .line 41
    invoke-static {v0, v2}, Lwd/c;->b(Ljava/lang/String;Z)Lwd/c;

    .line 42
    .line 43
    .line 44
    move-result-object v0

    .line 45
    const/4 v2, 0x0

    .line 46
    invoke-static {v0, v2}, Lce/b1;->o(Lwd/c;I)Lce/b1;

    .line 47
    .line 48
    .line 49
    move-result-object v0

    .line 50
    new-instance v3, Lce/c;

    .line 51
    .line 52
    sget-wide v4, Lce/d;->e:J

    .line 53
    .line 54
    const-wide/16 v6, 0xa

    .line 55
    .line 56
    mul-long v4, v4, v6

    .line 57
    .line 58
    invoke-direct {v3, v4, v5}, Lce/c;-><init>(J)V

    .line 59
    .line 60
    .line 61
    const-string v4, ""

    .line 62
    .line 63
    invoke-virtual {v0, p1, v4, v2}, Lce/b1;->m(Lce/p;Ljava/lang/String;I)Lce/e;

    .line 64
    .line 65
    .line 66
    move-result-object p1

    .line 67
    if-eqz p1, :cond_6

    .line 68
    .line 69
    move-object v0, p1

    .line 70
    :cond_3
    iget-object v2, v0, Lce/e;->e:Ljava/lang/String;

    .line 71
    .line 72
    invoke-virtual {v2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    .line 73
    .line 74
    .line 75
    move-result-object v2

    .line 76
    iget-object v4, v3, Lce/c;->b:Ljava/util/HashMap;

    .line 77
    .line 78
    new-instance v5, Ljava/util/HashMap;

    .line 79
    .line 80
    invoke-direct {v5}, Ljava/util/HashMap;-><init>()V

    .line 81
    .line 82
    .line 83
    invoke-virtual {v4, v2, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 84
    .line 85
    .line 86
    iget-object v0, v0, Lce/e;->j:Lce/e;

    .line 87
    .line 88
    if-ne v0, p1, :cond_3

    .line 89
    .line 90
    iput-object v3, p0, Lce/d;->a:Lce/c;

    .line 91
    .line 92
    iget-object p1, v3, Lce/c;->b:Ljava/util/HashMap;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 93
    .line 94
    return-object p1

    .line 95
    :catch_0
    move-exception p1

    .line 96
    sget v0, Lde/d;->b:I

    .line 97
    .line 98
    const/4 v2, 0x3

    .line 99
    if-lt v0, v2, :cond_4

    .line 100
    .line 101
    sget-object v0, Lce/d;->c:Lde/d;

    .line 102
    .line 103
    invoke-virtual {p1, v0}, Ljava/lang/Throwable;->printStackTrace(Ljava/io/PrintStream;)V

    .line 104
    .line 105
    .line 106
    :cond_4
    sget-boolean v0, Lce/d;->d:Z

    .line 107
    .line 108
    if-eqz v0, :cond_6

    .line 109
    .line 110
    instance-of v0, p1, Lce/s;

    .line 111
    .line 112
    if-nez v0, :cond_5

    .line 113
    .line 114
    goto :goto_0

    .line 115
    :cond_5
    check-cast p1, Lce/s;

    .line 116
    .line 117
    throw p1

    .line 118
    :cond_6
    :goto_0
    return-object v1
.end method

.method public final declared-synchronized d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lce/p;)Lce/e;
    .locals 16

    .line 1
    move-object/from16 v1, p0

    .line 2
    .line 3
    move-object/from16 v0, p3

    .line 4
    .line 5
    move-object/from16 v2, p4

    .line 6
    .line 7
    monitor-enter p0

    .line 8
    :try_start_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 9
    .line 10
    .line 11
    move-result-wide v3

    .line 12
    sget-boolean v5, Lce/d;->f:Z

    .line 13
    .line 14
    const/4 v6, 0x0

    .line 15
    if-nez v5, :cond_16

    .line 16
    .line 17
    const-string v5, "IPC$"

    .line 18
    .line 19
    move-object/from16 v7, p2

    .line 20
    .line 21
    invoke-virtual {v7, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 22
    .line 23
    .line 24
    move-result v5

    .line 25
    if-eqz v5, :cond_0

    .line 26
    .line 27
    goto/16 :goto_9

    .line 28
    .line 29
    :cond_0
    invoke-virtual {v1, v2}, Lce/d;->c(Lce/p;)Ljava/util/HashMap;

    .line 30
    .line 31
    .line 32
    move-result-object v5

    .line 33
    const-wide/16 v8, 0x0

    .line 34
    .line 35
    if-eqz v5, :cond_d

    .line 36
    .line 37
    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    .line 38
    .line 39
    .line 40
    move-result-object v10

    .line 41
    invoke-virtual {v5, v10}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 42
    .line 43
    .line 44
    move-result-object v5

    .line 45
    check-cast v5, Ljava/util/HashMap;

    .line 46
    .line 47
    if-eqz v5, :cond_c

    .line 48
    .line 49
    invoke-virtual/range {p2 .. p2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    .line 50
    .line 51
    .line 52
    move-result-object v7

    .line 53
    invoke-virtual {v5, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 54
    .line 55
    .line 56
    move-result-object v11

    .line 57
    check-cast v11, Lce/c;

    .line 58
    .line 59
    if-eqz v11, :cond_1

    .line 60
    .line 61
    iget-wide v12, v11, Lce/c;->a:J

    .line 62
    .line 63
    cmp-long v14, v3, v12

    .line 64
    .line 65
    if-lez v14, :cond_1

    .line 66
    .line 67
    invoke-virtual {v5, v7}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 68
    .line 69
    .line 70
    move-object v11, v6

    .line 71
    goto :goto_0

    .line 72
    :catchall_0
    move-exception v0

    .line 73
    goto/16 :goto_a

    .line 74
    .line 75
    :cond_1
    :goto_0
    if-nez v11, :cond_7

    .line 76
    .line 77
    invoke-static {v10, v2}, Lce/d;->a(Ljava/lang/String;Lce/p;)Lce/b1;

    .line 78
    .line 79
    .line 80
    move-result-object v12
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 81
    if-nez v12, :cond_2

    .line 82
    .line 83
    monitor-exit p0

    .line 84
    return-object v6

    .line 85
    :cond_2
    :try_start_1
    invoke-static {v12, v10, v7, v0, v2}, Lce/d;->b(Lce/b1;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lce/p;)Lce/e;

    .line 86
    .line 87
    .line 88
    move-result-object v13

    .line 89
    if-eqz v13, :cond_6

    .line 90
    .line 91
    invoke-virtual {v10}, Ljava/lang/String;->length()I

    .line 92
    .line 93
    .line 94
    move-result v11

    .line 95
    add-int/lit8 v11, v11, 0x2

    .line 96
    .line 97
    invoke-virtual {v7}, Ljava/lang/String;->length()I

    .line 98
    .line 99
    .line 100
    move-result v14

    .line 101
    add-int/2addr v11, v14

    .line 102
    new-instance v14, Lce/c;

    .line 103
    .line 104
    invoke-direct {v14, v8, v9}, Lce/c;-><init>(J)V

    .line 105
    .line 106
    .line 107
    move-object v15, v13

    .line 108
    :goto_1
    if-nez v0, :cond_3

    .line 109
    .line 110
    iget-object v8, v14, Lce/c;->b:Ljava/util/HashMap;

    .line 111
    .line 112
    iput-object v8, v15, Lce/e;->k:Ljava/util/HashMap;

    .line 113
    .line 114
    const-string v8, "\\"

    .line 115
    .line 116
    iput-object v8, v15, Lce/e;->l:Ljava/lang/String;

    .line 117
    .line 118
    :cond_3
    iget v8, v15, Lce/e;->c:I

    .line 119
    .line 120
    sub-int/2addr v8, v11

    .line 121
    iput v8, v15, Lce/e;->c:I

    .line 122
    .line 123
    iget-object v15, v15, Lce/e;->j:Lce/e;

    .line 124
    .line 125
    if-ne v15, v13, :cond_5

    .line 126
    .line 127
    iget-object v8, v13, Lce/e;->l:Ljava/lang/String;

    .line 128
    .line 129
    if-eqz v8, :cond_4

    .line 130
    .line 131
    iget-object v9, v14, Lce/c;->b:Ljava/util/HashMap;

    .line 132
    .line 133
    invoke-virtual {v9, v8, v13}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 134
    .line 135
    .line 136
    :cond_4
    invoke-virtual {v5, v7, v14}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 137
    .line 138
    .line 139
    move-object v11, v14

    .line 140
    goto :goto_3

    .line 141
    :cond_5
    const-wide/16 v8, 0x0

    .line 142
    .line 143
    goto :goto_1

    .line 144
    :cond_6
    if-nez v0, :cond_9

    .line 145
    .line 146
    sget-object v8, Lce/d;->g:Lce/c;

    .line 147
    .line 148
    invoke-virtual {v5, v7, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 149
    .line 150
    .line 151
    goto :goto_3

    .line 152
    :cond_7
    sget-object v5, Lce/d;->g:Lce/c;

    .line 153
    .line 154
    if-ne v11, v5, :cond_8

    .line 155
    .line 156
    move-object v11, v6

    .line 157
    move-object v12, v11

    .line 158
    :goto_2
    move-object v13, v12

    .line 159
    goto :goto_3

    .line 160
    :cond_8
    move-object v12, v6

    .line 161
    goto :goto_2

    .line 162
    :cond_9
    :goto_3
    if-eqz v11, :cond_e

    .line 163
    .line 164
    const-string v5, "\\"

    .line 165
    .line 166
    iget-object v8, v11, Lce/c;->b:Ljava/util/HashMap;

    .line 167
    .line 168
    invoke-virtual {v8, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 169
    .line 170
    .line 171
    move-result-object v8

    .line 172
    check-cast v8, Lce/e;

    .line 173
    .line 174
    if-eqz v8, :cond_a

    .line 175
    .line 176
    iget-wide v13, v8, Lce/e;->i:J

    .line 177
    .line 178
    cmp-long v9, v3, v13

    .line 179
    .line 180
    if-lez v9, :cond_a

    .line 181
    .line 182
    iget-object v8, v11, Lce/c;->b:Ljava/util/HashMap;

    .line 183
    .line 184
    invoke-virtual {v8, v5}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 185
    .line 186
    .line 187
    move-object v13, v6

    .line 188
    goto :goto_4

    .line 189
    :cond_a
    move-object v13, v8

    .line 190
    :goto_4
    if-nez v13, :cond_e

    .line 191
    .line 192
    if-nez v12, :cond_b

    .line 193
    .line 194
    invoke-static {v10, v2}, Lce/d;->a(Ljava/lang/String;Lce/p;)Lce/b1;

    .line 195
    .line 196
    .line 197
    move-result-object v12
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 198
    if-nez v12, :cond_b

    .line 199
    .line 200
    monitor-exit p0

    .line 201
    return-object v6

    .line 202
    :cond_b
    :try_start_2
    invoke-static {v12, v10, v7, v0, v2}, Lce/d;->b(Lce/b1;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lce/p;)Lce/e;

    .line 203
    .line 204
    .line 205
    move-result-object v13

    .line 206
    if-eqz v13, :cond_e

    .line 207
    .line 208
    iget v2, v13, Lce/e;->c:I

    .line 209
    .line 210
    invoke-virtual {v10}, Ljava/lang/String;->length()I

    .line 211
    .line 212
    .line 213
    move-result v8

    .line 214
    add-int/lit8 v8, v8, 0x2

    .line 215
    .line 216
    invoke-virtual {v7}, Ljava/lang/String;->length()I

    .line 217
    .line 218
    .line 219
    move-result v9

    .line 220
    add-int/2addr v8, v9

    .line 221
    sub-int/2addr v2, v8

    .line 222
    iput v2, v13, Lce/e;->c:I

    .line 223
    .line 224
    iput-object v5, v13, Lce/e;->g:Ljava/lang/String;

    .line 225
    .line 226
    iget-object v2, v11, Lce/c;->b:Ljava/util/HashMap;

    .line 227
    .line 228
    invoke-virtual {v2, v5, v13}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 229
    .line 230
    .line 231
    goto :goto_6

    .line 232
    :cond_c
    :goto_5
    move-object v13, v6

    .line 233
    goto :goto_6

    .line 234
    :cond_d
    move-object/from16 v10, p1

    .line 235
    .line 236
    goto :goto_5

    .line 237
    :cond_e
    :goto_6
    if-nez v13, :cond_15

    .line 238
    .line 239
    if-eqz v0, :cond_15

    .line 240
    .line 241
    iget-object v2, v1, Lce/d;->b:Lce/c;

    .line 242
    .line 243
    if-eqz v2, :cond_f

    .line 244
    .line 245
    iget-wide v8, v2, Lce/c;->a:J

    .line 246
    .line 247
    cmp-long v2, v3, v8

    .line 248
    .line 249
    if-lez v2, :cond_f

    .line 250
    .line 251
    iput-object v6, v1, Lce/d;->b:Lce/c;

    .line 252
    .line 253
    :cond_f
    iget-object v2, v1, Lce/d;->b:Lce/c;

    .line 254
    .line 255
    if-nez v2, :cond_10

    .line 256
    .line 257
    new-instance v2, Lce/c;

    .line 258
    .line 259
    const-wide/16 v3, 0x0

    .line 260
    .line 261
    invoke-direct {v2, v3, v4}, Lce/c;-><init>(J)V

    .line 262
    .line 263
    .line 264
    iput-object v2, v1, Lce/d;->b:Lce/c;

    .line 265
    .line 266
    :cond_10
    new-instance v2, Ljava/lang/StringBuilder;

    .line 267
    .line 268
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 269
    .line 270
    .line 271
    const-string v3, "\\"

    .line 272
    .line 273
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 274
    .line 275
    .line 276
    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 277
    .line 278
    .line 279
    const-string v3, "\\"

    .line 280
    .line 281
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 282
    .line 283
    .line 284
    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 285
    .line 286
    .line 287
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 288
    .line 289
    .line 290
    move-result-object v2

    .line 291
    const-string v3, "\\"

    .line 292
    .line 293
    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 294
    .line 295
    .line 296
    move-result v3

    .line 297
    if-nez v3, :cond_11

    .line 298
    .line 299
    new-instance v3, Ljava/lang/StringBuilder;

    .line 300
    .line 301
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 302
    .line 303
    .line 304
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 305
    .line 306
    .line 307
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 308
    .line 309
    .line 310
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 311
    .line 312
    .line 313
    move-result-object v2

    .line 314
    :cond_11
    invoke-virtual {v2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    .line 315
    .line 316
    .line 317
    move-result-object v0

    .line 318
    iget-object v2, v1, Lce/d;->b:Lce/c;

    .line 319
    .line 320
    iget-object v2, v2, Lce/c;->b:Ljava/util/HashMap;

    .line 321
    .line 322
    invoke-virtual {v2}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    .line 323
    .line 324
    .line 325
    move-result-object v2

    .line 326
    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 327
    .line 328
    .line 329
    move-result-object v2

    .line 330
    :cond_12
    :goto_7
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 331
    .line 332
    .line 333
    move-result v3

    .line 334
    if-eqz v3, :cond_15

    .line 335
    .line 336
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 337
    .line 338
    .line 339
    move-result-object v3

    .line 340
    check-cast v3, Ljava/lang/String;

    .line 341
    .line 342
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    .line 343
    .line 344
    .line 345
    move-result v4

    .line 346
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    .line 347
    .line 348
    .line 349
    move-result v5

    .line 350
    if-ne v4, v5, :cond_13

    .line 351
    .line 352
    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 353
    .line 354
    .line 355
    move-result v4

    .line 356
    goto :goto_8

    .line 357
    :cond_13
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    .line 358
    .line 359
    .line 360
    move-result v5

    .line 361
    const/4 v6, 0x0

    .line 362
    if-ge v4, v5, :cond_14

    .line 363
    .line 364
    invoke-virtual {v3, v6, v0, v6, v4}, Ljava/lang/String;->regionMatches(ILjava/lang/String;II)Z

    .line 365
    .line 366
    .line 367
    move-result v5

    .line 368
    if-eqz v5, :cond_14

    .line 369
    .line 370
    invoke-virtual {v0, v4}, Ljava/lang/String;->charAt(I)C

    .line 371
    .line 372
    .line 373
    move-result v4

    .line 374
    const/16 v5, 0x5c

    .line 375
    .line 376
    if-ne v4, v5, :cond_14

    .line 377
    .line 378
    const/4 v4, 0x1

    .line 379
    goto :goto_8

    .line 380
    :cond_14
    const/4 v4, 0x0

    .line 381
    :goto_8
    if-eqz v4, :cond_12

    .line 382
    .line 383
    iget-object v4, v1, Lce/d;->b:Lce/c;

    .line 384
    .line 385
    iget-object v4, v4, Lce/c;->b:Ljava/util/HashMap;

    .line 386
    .line 387
    invoke-virtual {v4, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 388
    .line 389
    .line 390
    move-result-object v3

    .line 391
    check-cast v3, Lce/e;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 392
    .line 393
    move-object v13, v3

    .line 394
    goto :goto_7

    .line 395
    :cond_15
    monitor-exit p0

    .line 396
    return-object v13

    .line 397
    :cond_16
    :goto_9
    monitor-exit p0

    .line 398
    return-object v6

    .line 399
    :goto_a
    :try_start_3
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 400
    goto :goto_c

    .line 401
    :goto_b
    throw v0

    .line 402
    :goto_c
    goto :goto_b
.end method
