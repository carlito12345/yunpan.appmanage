.class public final Ldh/i;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final c:[Ldh/g;


# instance fields
.field public a:Ljava/util/LinkedList;

.field public final b:Ldh/h;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    new-array v0, v0, [Ldh/g;

    .line 3
    .line 4
    sput-object v0, Ldh/i;->c:[Ldh/g;

    .line 5
    .line 6
    return-void
.end method

.method public constructor <init>(Ldh/h;Ldh/f;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance p2, Ljava/util/LinkedList;

    .line 5
    .line 6
    invoke-direct {p2}, Ljava/util/LinkedList;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object p2, p0, Ldh/i;->a:Ljava/util/LinkedList;

    .line 10
    .line 11
    invoke-interface {p2}, Ljava/util/List;->listIterator()Ljava/util/ListIterator;

    .line 12
    .line 13
    .line 14
    iput-object p1, p0, Ldh/i;->b:Ldh/h;

    .line 15
    .line 16
    return-void
.end method


# virtual methods
.method public final a(Ljava/io/InputStream;Ljava/lang/String;)V
    .locals 5

    .line 1
    const/4 v0, 0x0

    .line 2
    const/4 v1, 0x1

    .line 3
    iget-object v2, p0, Ldh/i;->b:Ldh/h;

    .line 4
    .line 5
    new-instance v3, Ljava/util/LinkedList;

    .line 6
    .line 7
    invoke-direct {v3}, Ljava/util/LinkedList;-><init>()V

    .line 8
    .line 9
    .line 10
    iput-object v3, p0, Ldh/i;->a:Ljava/util/LinkedList;

    .line 11
    .line 12
    new-instance v3, Ljava/io/BufferedReader;

    .line 13
    .line 14
    new-instance v4, Ljava/io/InputStreamReader;

    .line 15
    .line 16
    if-nez p2, :cond_0

    .line 17
    .line 18
    invoke-static {}, Ljava/nio/charset/Charset;->defaultCharset()Ljava/nio/charset/Charset;

    .line 19
    .line 20
    .line 21
    move-result-object p2

    .line 22
    goto :goto_0

    .line 23
    :cond_0
    invoke-static {p2}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    .line 24
    .line 25
    .line 26
    move-result-object p2

    .line 27
    :goto_0
    invoke-direct {v4, p1, p2}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/nio/charset/Charset;)V

    .line 28
    .line 29
    .line 30
    invoke-direct {v3, v4}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 31
    .line 32
    .line 33
    :try_start_0
    invoke-virtual {v2, v3}, Ldh/h;->d(Ljava/io/BufferedReader;)Ljava/lang/String;

    .line 34
    .line 35
    .line 36
    move-result-object p1

    .line 37
    :goto_1
    if-eqz p1, :cond_1

    .line 38
    .line 39
    iget-object p2, p0, Ldh/i;->a:Ljava/util/LinkedList;

    .line 40
    .line 41
    invoke-virtual {p2, p1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 42
    .line 43
    .line 44
    invoke-virtual {v2, v3}, Ldh/h;->d(Ljava/io/BufferedReader;)Ljava/lang/String;

    .line 45
    .line 46
    .line 47
    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 48
    goto :goto_1

    .line 49
    :catchall_0
    move-exception p1

    .line 50
    goto :goto_2

    .line 51
    :cond_1
    invoke-virtual {v3}, Ljava/io/BufferedReader;->close()V

    .line 52
    .line 53
    .line 54
    iget-object p1, p0, Ldh/i;->a:Ljava/util/LinkedList;

    .line 55
    .line 56
    invoke-virtual {v2, p1}, Ldh/h;->c(Ljava/util/LinkedList;)V

    .line 57
    .line 58
    .line 59
    iget-object p1, p0, Ldh/i;->a:Ljava/util/LinkedList;

    .line 60
    .line 61
    invoke-interface {p1}, Ljava/util/List;->listIterator()Ljava/util/ListIterator;

    .line 62
    .line 63
    .line 64
    return-void

    .line 65
    :goto_2
    :try_start_1
    invoke-virtual {v3}, Ljava/io/BufferedReader;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 66
    .line 67
    .line 68
    goto :goto_3

    .line 69
    :catchall_1
    move-exception p2

    .line 70
    const-class v2, Ljava/lang/Throwable;

    .line 71
    .line 72
    :try_start_2
    const-string v3, "addSuppressed"

    .line 73
    .line 74
    new-array v4, v1, [Ljava/lang/Class;

    .line 75
    .line 76
    aput-object v2, v4, v0

    .line 77
    .line 78
    invoke-virtual {v2, v3, v4}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 79
    .line 80
    .line 81
    move-result-object v2

    .line 82
    new-array v1, v1, [Ljava/lang/Object;

    .line 83
    .line 84
    aput-object p2, v1, v0

    .line 85
    .line 86
    invoke-virtual {v2, p1, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 87
    .line 88
    .line 89
    :catch_0
    :goto_3
    goto :goto_5

    .line 90
    :goto_4
    throw p1

    .line 91
    :goto_5
    goto :goto_4
.end method
