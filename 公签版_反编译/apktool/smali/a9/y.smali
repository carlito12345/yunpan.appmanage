.class public final La9/y;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:La9/l;

.field public final b:Ljava/util/Vector;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    sget-object v0, La9/h0;->a:[B

    .line 2
    .line 3
    sget-object v0, Lj$/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    .line 4
    .line 5
    const-string v1, "\n"

    .line 6
    .line 7
    invoke-static {v1, v0}, La9/h0;->k(Ljava/lang/String;Ljava/nio/charset/Charset;)[B

    .line 8
    .line 9
    .line 10
    return-void
.end method

.method public constructor <init>(La9/l;)V
    .locals 4

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x0

    .line 5
    iput-object v0, p0, La9/y;->b:Ljava/util/Vector;

    .line 6
    .line 7
    iput-object p1, p0, La9/y;->a:La9/l;

    .line 8
    .line 9
    const-string p1, "hmac-sha1"

    .line 10
    .line 11
    invoke-static {p1}, La9/l;->b(Ljava/lang/String;)Ljava/lang/String;

    .line 12
    .line 13
    .line 14
    move-result-object p1

    .line 15
    :try_start_0
    invoke-static {p1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    .line 16
    .line 17
    .line 18
    move-result-object v1

    .line 19
    const-class v2, La9/a0;

    .line 20
    .line 21
    invoke-virtual {v1, v2}, Ljava/lang/Class;->asSubclass(Ljava/lang/Class;)Ljava/lang/Class;

    .line 22
    .line 23
    .line 24
    move-result-object v1

    .line 25
    invoke-virtual {v1, v0}, Ljava/lang/Class;->getDeclaredConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    .line 26
    .line 27
    .line 28
    move-result-object v1

    .line 29
    invoke-virtual {v1, v0}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    .line 30
    .line 31
    .line 32
    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 33
    if-nez v0, :cond_0

    .line 34
    .line 35
    new-instance p1, Ljava/util/Vector;

    .line 36
    .line 37
    invoke-direct {p1}, Ljava/util/Vector;-><init>()V

    .line 38
    .line 39
    .line 40
    iput-object p1, p0, La9/y;->b:Ljava/util/Vector;

    .line 41
    .line 42
    return-void

    .line 43
    :cond_0
    :try_start_1
    new-instance v0, Ljava/lang/ClassCastException;

    .line 44
    .line 45
    invoke-direct {v0}, Ljava/lang/ClassCastException;-><init>()V

    .line 46
    .line 47
    .line 48
    throw v0
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 49
    :catch_0
    move-exception v0

    .line 50
    iget-object v1, p0, La9/y;->a:La9/l;

    .line 51
    .line 52
    invoke-virtual {v1}, La9/l;->c()Lgf/g;

    .line 53
    .line 54
    .line 55
    move-result-object v1

    .line 56
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 57
    .line 58
    .line 59
    new-instance v1, Ljava/lang/IllegalArgumentException;

    .line 60
    .line 61
    const-string v2, "instantiation of "

    .line 62
    .line 63
    const-string v3, " lead to an error"

    .line 64
    .line 65
    invoke-static {v2, p1, v3}, Lg/b;->A(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 66
    .line 67
    .line 68
    move-result-object p1

    .line 69
    invoke-direct {v1, p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 70
    .line 71
    .line 72
    throw v1
.end method


# virtual methods
.method public final a(Ljava/lang/String;)[La9/h;
    .locals 7

    .line 1
    iget-object v0, p0, La9/y;->b:Ljava/util/Vector;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    new-instance v1, Ljava/util/ArrayList;

    .line 5
    .line 6
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 7
    .line 8
    .line 9
    const/4 v2, 0x0

    .line 10
    const/4 v3, 0x0

    .line 11
    :goto_0
    iget-object v4, p0, La9/y;->b:Ljava/util/Vector;

    .line 12
    .line 13
    invoke-virtual {v4}, Ljava/util/Vector;->size()I

    .line 14
    .line 15
    .line 16
    move-result v4

    .line 17
    if-ge v3, v4, :cond_2

    .line 18
    .line 19
    iget-object v4, p0, La9/y;->b:Ljava/util/Vector;

    .line 20
    .line 21
    invoke-virtual {v4, v3}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    .line 22
    .line 23
    .line 24
    move-result-object v4

    .line 25
    check-cast v4, La9/h;

    .line 26
    .line 27
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 28
    .line 29
    .line 30
    if-eqz p1, :cond_0

    .line 31
    .line 32
    invoke-virtual {v4, p1}, La9/h;->b(Ljava/lang/String;)Z

    .line 33
    .line 34
    .line 35
    move-result v5

    .line 36
    if-eqz v5, :cond_1

    .line 37
    .line 38
    goto :goto_1

    .line 39
    :catchall_0
    move-exception p1

    .line 40
    goto :goto_3

    .line 41
    :cond_0
    :goto_1
    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 42
    .line 43
    .line 44
    :cond_1
    add-int/lit8 v3, v3, 0x1

    .line 45
    .line 46
    goto :goto_0

    .line 47
    :cond_2
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    .line 48
    .line 49
    .line 50
    move-result v3

    .line 51
    new-array v4, v3, [La9/h;

    .line 52
    .line 53
    const/4 v5, 0x0

    .line 54
    :goto_2
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    .line 55
    .line 56
    .line 57
    move-result v6

    .line 58
    if-ge v5, v6, :cond_3

    .line 59
    .line 60
    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 61
    .line 62
    .line 63
    move-result-object v6

    .line 64
    check-cast v6, La9/h;

    .line 65
    .line 66
    aput-object v6, v4, v5

    .line 67
    .line 68
    add-int/lit8 v5, v5, 0x1

    .line 69
    .line 70
    goto :goto_2

    .line 71
    :cond_3
    if-eqz p1, :cond_4

    .line 72
    .line 73
    const-string v1, "["

    .line 74
    .line 75
    invoke-virtual {p1, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 76
    .line 77
    .line 78
    move-result v1

    .line 79
    if-eqz v1, :cond_4

    .line 80
    .line 81
    const-string v1, "]:"

    .line 82
    .line 83
    invoke-virtual {p1, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    .line 84
    .line 85
    .line 86
    move-result v1

    .line 87
    const/4 v5, 0x1

    .line 88
    if-le v1, v5, :cond_4

    .line 89
    .line 90
    const-string v1, "]:"

    .line 91
    .line 92
    invoke-virtual {p1, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    .line 93
    .line 94
    .line 95
    move-result v1

    .line 96
    invoke-virtual {p1, v5, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 97
    .line 98
    .line 99
    move-result-object p1

    .line 100
    invoke-virtual {p0, p1}, La9/y;->a(Ljava/lang/String;)[La9/h;

    .line 101
    .line 102
    .line 103
    move-result-object p1

    .line 104
    array-length v1, p1

    .line 105
    if-lez v1, :cond_4

    .line 106
    .line 107
    array-length v1, p1

    .line 108
    add-int/2addr v1, v3

    .line 109
    new-array v1, v1, [La9/h;

    .line 110
    .line 111
    invoke-static {v4, v2, v1, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 112
    .line 113
    .line 114
    array-length v4, p1

    .line 115
    invoke-static {p1, v2, v1, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 116
    .line 117
    .line 118
    move-object v4, v1

    .line 119
    :cond_4
    monitor-exit v0

    .line 120
    return-object v4

    .line 121
    :goto_3
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 122
    goto :goto_5

    .line 123
    :goto_4
    throw p1

    .line 124
    :goto_5
    goto :goto_4
.end method
