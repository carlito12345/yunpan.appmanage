.class public final Lxc/b;
.super Lxc/a;
.source "SourceFile"


# static fields
.field public static final j:Lorg/slf4j/Logger;

.field public static k:Lxc/b;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    const-class v0, Lxc/b;

    .line 2
    .line 3
    invoke-static {v0}, Lorg/slf4j/LoggerFactory;->getLogger(Ljava/lang/Class;)Lorg/slf4j/Logger;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    sput-object v0, Lxc/b;->j:Lorg/slf4j/Logger;

    .line 8
    .line 9
    return-void
.end method

.method public constructor <init>(Ljava/util/Properties;)V
    .locals 1

    .line 1
    new-instance v0, Lwc/a;

    .line 2
    .line 3
    invoke-direct {v0, p1}, Lwc/a;-><init>(Ljava/util/Properties;)V

    .line 4
    .line 5
    .line 6
    invoke-direct {p0, v0}, Lxc/a;-><init>(Lwc/a;)V

    .line 7
    .line 8
    .line 9
    return-void
.end method

.method public static final declared-synchronized c()V
    .locals 9

    .line 1
    const/4 v0, 0x0

    .line 2
    const/4 v1, 0x1

    .line 3
    const-class v2, Lxc/b;

    .line 4
    .line 5
    monitor-enter v2

    .line 6
    :try_start_0
    sget-object v3, Lxc/b;->k:Lxc/b;

    .line 7
    .line 8
    if-nez v3, :cond_1

    .line 9
    .line 10
    new-instance v3, Ljava/util/Properties;

    .line 11
    .line 12
    invoke-direct {v3}, Ljava/util/Properties;-><init>()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 13
    .line 14
    .line 15
    :try_start_1
    const-string v4, "jcifs.properties"

    .line 16
    .line 17
    invoke-static {v4}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    .line 18
    .line 19
    .line 20
    move-result-object v4

    .line 21
    if-eqz v4, :cond_0

    .line 22
    .line 23
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    .line 24
    .line 25
    .line 26
    move-result v5

    .line 27
    if-le v5, v1, :cond_0

    .line 28
    .line 29
    new-instance v5, Ljava/io/FileInputStream;

    .line 30
    .line 31
    invoke-direct {v5, v4}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 32
    .line 33
    .line 34
    :try_start_2
    invoke-virtual {v3, v5}, Ljava/util/Properties;->load(Ljava/io/InputStream;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 35
    .line 36
    .line 37
    :try_start_3
    invoke-virtual {v5}, Ljava/io/FileInputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 38
    .line 39
    .line 40
    goto :goto_2

    .line 41
    :catchall_0
    move-exception v0

    .line 42
    goto :goto_3

    .line 43
    :catch_0
    move-exception v0

    .line 44
    goto :goto_1

    .line 45
    :catchall_1
    move-exception v4

    .line 46
    :try_start_4
    invoke-virtual {v5}, Ljava/io/FileInputStream;->close()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    .line 47
    .line 48
    .line 49
    goto :goto_0

    .line 50
    :catchall_2
    move-exception v5

    .line 51
    :try_start_5
    const-class v6, Ljava/lang/Throwable;
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_0
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 52
    .line 53
    :try_start_6
    const-string v7, "addSuppressed"

    .line 54
    .line 55
    new-array v8, v1, [Ljava/lang/Class;

    .line 56
    .line 57
    aput-object v6, v8, v0

    .line 58
    .line 59
    invoke-virtual {v6, v7, v8}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 60
    .line 61
    .line 62
    move-result-object v6

    .line 63
    new-array v1, v1, [Ljava/lang/Object;

    .line 64
    .line 65
    aput-object v5, v1, v0

    .line 66
    .line 67
    invoke-virtual {v6, v4, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_1
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 68
    .line 69
    .line 70
    :catch_1
    :goto_0
    :try_start_7
    throw v4
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_0
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .line 71
    :goto_1
    :try_start_8
    sget-object v1, Lxc/b;->j:Lorg/slf4j/Logger;

    .line 72
    .line 73
    const-string v4, "Failed to load config"

    .line 74
    .line 75
    invoke-interface {v1, v4, v0}, Lorg/slf4j/Logger;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 76
    .line 77
    .line 78
    :cond_0
    :goto_2
    invoke-static {}, Ljava/lang/System;->getProperties()Ljava/util/Properties;

    .line 79
    .line 80
    .line 81
    move-result-object v0

    .line 82
    invoke-virtual {v3, v0}, Ljava/util/Properties;->putAll(Ljava/util/Map;)V

    .line 83
    .line 84
    .line 85
    new-instance v0, Lxc/b;

    .line 86
    .line 87
    invoke-direct {v0, v3}, Lxc/b;-><init>(Ljava/util/Properties;)V

    .line 88
    .line 89
    .line 90
    sput-object v0, Lxc/b;->k:Lxc/b;
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    .line 91
    .line 92
    monitor-exit v2

    .line 93
    return-void

    .line 94
    :cond_1
    :try_start_9
    new-instance v0, Lvc/c;

    .line 95
    .line 96
    const-string v1, "Singleton context is already initialized"

    .line 97
    .line 98
    invoke-direct {v0, v1}, Lvc/c;-><init>(Ljava/lang/String;)V

    .line 99
    .line 100
    .line 101
    throw v0

    .line 102
    :goto_3
    monitor-exit v2
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    .line 103
    throw v0
.end method
