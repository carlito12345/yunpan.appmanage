.class public abstract Lwd/a;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:Ljava/util/Properties;

.field public static final b:Lde/d;

.field public static final c:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 1
    new-instance v0, Ljava/util/Properties;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/util/Properties;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lwd/a;->a:Ljava/util/Properties;

    .line 7
    .line 8
    const-string v1, "Cp850"

    .line 9
    .line 10
    sput-object v1, Lwd/a;->c:Ljava/lang/String;

    .line 11
    .line 12
    invoke-static {}, Lde/d;->r()Lde/d;

    .line 13
    .line 14
    .line 15
    move-result-object v1

    .line 16
    sput-object v1, Lwd/a;->b:Lde/d;

    .line 17
    .line 18
    :try_start_0
    const-string v1, "jcifs_smb1.properties"

    .line 19
    .line 20
    invoke-static {v1}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    .line 21
    .line 22
    .line 23
    move-result-object v1

    .line 24
    const/4 v2, 0x1

    .line 25
    if-eqz v1, :cond_0

    .line 26
    .line 27
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    .line 28
    .line 29
    .line 30
    move-result v3

    .line 31
    if-le v3, v2, :cond_0

    .line 32
    .line 33
    new-instance v3, Ljava/io/FileInputStream;

    .line 34
    .line 35
    invoke-direct {v3, v1}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    .line 36
    .line 37
    .line 38
    goto :goto_0

    .line 39
    :catch_0
    move-exception v0

    .line 40
    goto :goto_2

    .line 41
    :cond_0
    const/4 v3, 0x0

    .line 42
    :goto_0
    if-eqz v3, :cond_1

    .line 43
    .line 44
    invoke-virtual {v0, v3}, Ljava/util/Properties;->load(Ljava/io/InputStream;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 45
    .line 46
    .line 47
    :cond_1
    :try_start_1
    invoke-static {}, Ljava/lang/System;->getProperties()Ljava/util/Properties;

    .line 48
    .line 49
    .line 50
    move-result-object v1

    .line 51
    invoke-virtual {v1}, Ljava/util/Properties;->clone()Ljava/lang/Object;

    .line 52
    .line 53
    .line 54
    move-result-object v1

    .line 55
    check-cast v1, Ljava/util/Map;

    .line 56
    .line 57
    invoke-virtual {v0, v1}, Ljava/util/Properties;->putAll(Ljava/util/Map;)V
    :try_end_1
    .catch Ljava/lang/SecurityException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    .line 58
    .line 59
    .line 60
    goto :goto_1

    .line 61
    :catch_1
    :try_start_2
    sget v0, Lde/d;->b:I

    .line 62
    .line 63
    if-le v0, v2, :cond_2

    .line 64
    .line 65
    sget-object v0, Lwd/a;->b:Lde/d;

    .line 66
    .line 67
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 68
    .line 69
    .line 70
    :cond_2
    :goto_1
    if-eqz v3, :cond_3

    .line 71
    .line 72
    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    .line 73
    .line 74
    .line 75
    goto :goto_3

    .line 76
    :goto_2
    sget v1, Lde/d;->b:I

    .line 77
    .line 78
    if-lez v1, :cond_3

    .line 79
    .line 80
    sget-object v1, Lwd/a;->b:Lde/d;

    .line 81
    .line 82
    invoke-virtual {v0, v1}, Ljava/lang/Throwable;->printStackTrace(Ljava/io/PrintStream;)V

    .line 83
    .line 84
    .line 85
    :cond_3
    :goto_3
    const-string v0, "jcifs.smb1.util.loglevel"

    .line 86
    .line 87
    const/4 v1, -0x1

    .line 88
    invoke-static {v1, v0}, Lwd/a;->c(ILjava/lang/String;)I

    .line 89
    .line 90
    .line 91
    move-result v0

    .line 92
    if-eq v0, v1, :cond_4

    .line 93
    .line 94
    sput v0, Lde/d;->b:I

    .line 95
    .line 96
    :cond_4
    :try_start_3
    const-string v0, ""

    .line 97
    .line 98
    sget-object v1, Lwd/a;->c:Ljava/lang/String;

    .line 99
    .line 100
    invoke-virtual {v0, v1}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B
    :try_end_3
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_3 .. :try_end_3} :catch_2

    .line 101
    .line 102
    .line 103
    goto :goto_4

    .line 104
    :catch_2
    nop

    .line 105
    sget v0, Lde/d;->b:I

    .line 106
    .line 107
    const/4 v1, 0x2

    .line 108
    if-lt v0, v1, :cond_5

    .line 109
    .line 110
    sget-object v0, Lwd/a;->b:Lde/d;

    .line 111
    .line 112
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 113
    .line 114
    .line 115
    :cond_5
    const-string v0, "US-ASCII"

    .line 116
    .line 117
    sput-object v0, Lwd/a;->c:Ljava/lang/String;

    .line 118
    .line 119
    :goto_4
    sget v0, Lde/d;->b:I

    .line 120
    .line 121
    const/4 v1, 0x4

    .line 122
    if-lt v0, v1, :cond_6

    .line 123
    .line 124
    :try_start_4
    sget-object v0, Lwd/a;->a:Ljava/util/Properties;

    .line 125
    .line 126
    sget-object v1, Lwd/a;->b:Lde/d;

    .line 127
    .line 128
    const-string v2, "JCIFS PROPERTIES"

    .line 129
    .line 130
    invoke-virtual {v0, v1, v2}, Ljava/util/Properties;->store(Ljava/io/OutputStream;Ljava/lang/String;)V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_3

    .line 131
    .line 132
    .line 133
    :catch_3
    :cond_6
    return-void
.end method

.method public static a(Ljava/lang/String;Z)Z
    .locals 1

    .line 1
    sget-object v0, Lwd/a;->a:Ljava/util/Properties;

    .line 2
    .line 3
    invoke-virtual {v0, p0}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    if-eqz p0, :cond_0

    .line 8
    .line 9
    invoke-virtual {p0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    .line 10
    .line 11
    .line 12
    move-result-object p0

    .line 13
    const-string p1, "true"

    .line 14
    .line 15
    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 16
    .line 17
    .line 18
    move-result p1

    .line 19
    :cond_0
    return p1
.end method

.method public static b(Ljava/lang/String;Ljava/net/InetAddress;)Ljava/net/InetAddress;
    .locals 1

    .line 1
    sget-object v0, Lwd/a;->a:Ljava/util/Properties;

    .line 2
    .line 3
    invoke-virtual {v0, p0}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    if-eqz p0, :cond_0

    .line 8
    .line 9
    :try_start_0
    invoke-static {p0}, Ljava/net/InetAddress;->getByName(Ljava/lang/String;)Ljava/net/InetAddress;

    .line 10
    .line 11
    .line 12
    move-result-object p1
    :try_end_0
    .catch Ljava/net/UnknownHostException; {:try_start_0 .. :try_end_0} :catch_0

    .line 13
    goto :goto_0

    .line 14
    :catch_0
    move-exception p0

    .line 15
    sget v0, Lde/d;->b:I

    .line 16
    .line 17
    if-lez v0, :cond_0

    .line 18
    .line 19
    sget-object v0, Lwd/a;->b:Lde/d;

    .line 20
    .line 21
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 22
    .line 23
    .line 24
    invoke-virtual {p0, v0}, Ljava/lang/Throwable;->printStackTrace(Ljava/io/PrintStream;)V

    .line 25
    .line 26
    .line 27
    :cond_0
    :goto_0
    return-object p1
.end method

.method public static c(ILjava/lang/String;)I
    .locals 1

    .line 1
    sget-object v0, Lwd/a;->a:Ljava/util/Properties;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    if-eqz p1, :cond_0

    .line 8
    .line 9
    :try_start_0
    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 10
    .line 11
    .line 12
    move-result p0
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 13
    goto :goto_0

    .line 14
    :catch_0
    move-exception p1

    .line 15
    sget v0, Lde/d;->b:I

    .line 16
    .line 17
    if-lez v0, :cond_0

    .line 18
    .line 19
    sget-object v0, Lwd/a;->b:Lde/d;

    .line 20
    .line 21
    invoke-virtual {p1, v0}, Ljava/lang/Throwable;->printStackTrace(Ljava/io/PrintStream;)V

    .line 22
    .line 23
    .line 24
    :cond_0
    :goto_0
    return p0
.end method

.method public static d(Ljava/lang/String;)V
    .locals 2

    .line 1
    sget-object v0, Lwd/a;->a:Ljava/util/Properties;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-virtual {v0, p0, v1}, Ljava/util/Properties;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 5
    .line 6
    .line 7
    return-void
.end method
