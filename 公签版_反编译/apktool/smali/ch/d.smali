.class public abstract Lch/d;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final h:Ljavax/net/SocketFactory;

.field public static final i:Ljavax/net/ServerSocketFactory;


# instance fields
.field public a:I

.field public b:Ljava/net/Socket;

.field public c:Ljava/lang/String;

.field public d:Ljava/io/InputStream;

.field public e:Ljava/io/OutputStream;

.field public f:I

.field public final g:Ljava/nio/charset/Charset;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    invoke-static {}, Ljavax/net/SocketFactory;->getDefault()Ljavax/net/SocketFactory;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    sput-object v0, Lch/d;->h:Ljavax/net/SocketFactory;

    .line 6
    .line 7
    invoke-static {}, Ljavax/net/ServerSocketFactory;->getDefault()Ljavax/net/ServerSocketFactory;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    sput-object v0, Lch/d;->i:Ljavax/net/ServerSocketFactory;

    .line 12
    .line 13
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const v0, 0xea60

    .line 5
    .line 6
    .line 7
    iput v0, p0, Lch/d;->f:I

    .line 8
    .line 9
    invoke-static {}, Ljava/nio/charset/Charset;->defaultCharset()Ljava/nio/charset/Charset;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    iput-object v0, p0, Lch/d;->g:Ljava/nio/charset/Charset;

    .line 14
    .line 15
    const/4 v0, 0x0

    .line 16
    iput-object v0, p0, Lch/d;->b:Ljava/net/Socket;

    .line 17
    .line 18
    iput-object v0, p0, Lch/d;->c:Ljava/lang/String;

    .line 19
    .line 20
    iput-object v0, p0, Lch/d;->d:Ljava/io/InputStream;

    .line 21
    .line 22
    iput-object v0, p0, Lch/d;->e:Ljava/io/OutputStream;

    .line 23
    .line 24
    const/4 v0, 0x0

    .line 25
    iput v0, p0, Lch/d;->a:I

    .line 26
    .line 27
    return-void
.end method


# virtual methods
.method public abstract b()V
.end method

.method public final c(Ljava/lang/String;I)V
    .locals 1

    .line 1
    iput-object p1, p0, Lch/d;->c:Ljava/lang/String;

    .line 2
    .line 3
    new-instance v0, Ljava/net/InetSocketAddress;

    .line 4
    .line 5
    invoke-direct {v0, p1, p2}, Ljava/net/InetSocketAddress;-><init>(Ljava/lang/String;I)V

    .line 6
    .line 7
    .line 8
    sget-object p1, Lch/d;->h:Ljavax/net/SocketFactory;

    .line 9
    .line 10
    invoke-virtual {p1}, Ljavax/net/SocketFactory;->createSocket()Ljava/net/Socket;

    .line 11
    .line 12
    .line 13
    move-result-object p1

    .line 14
    iput-object p1, p0, Lch/d;->b:Ljava/net/Socket;

    .line 15
    .line 16
    iget p2, p0, Lch/d;->f:I

    .line 17
    .line 18
    invoke-virtual {p1, v0, p2}, Ljava/net/Socket;->connect(Ljava/net/SocketAddress;I)V

    .line 19
    .line 20
    .line 21
    invoke-virtual {p0}, Lch/d;->b()V

    .line 22
    .line 23
    .line 24
    return-void
.end method

.method public d()V
    .locals 1

    .line 1
    iget-object v0, p0, Lch/d;->b:Ljava/net/Socket;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    :try_start_0
    invoke-virtual {v0}, Ljava/net/Socket;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 6
    .line 7
    .line 8
    :catch_0
    :cond_0
    iget-object v0, p0, Lch/d;->d:Ljava/io/InputStream;

    .line 9
    .line 10
    if-eqz v0, :cond_1

    .line 11
    .line 12
    :try_start_1
    invoke-interface {v0}, Ljava/io/Closeable;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    .line 13
    .line 14
    .line 15
    :catch_1
    :cond_1
    iget-object v0, p0, Lch/d;->e:Ljava/io/OutputStream;

    .line 16
    .line 17
    if-eqz v0, :cond_2

    .line 18
    .line 19
    :try_start_2
    invoke-interface {v0}, Ljava/io/Closeable;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2

    .line 20
    .line 21
    .line 22
    :catch_2
    :cond_2
    const/4 v0, 0x0

    .line 23
    iput-object v0, p0, Lch/d;->b:Ljava/net/Socket;

    .line 24
    .line 25
    iput-object v0, p0, Lch/d;->c:Ljava/lang/String;

    .line 26
    .line 27
    iput-object v0, p0, Lch/d;->d:Ljava/io/InputStream;

    .line 28
    .line 29
    iput-object v0, p0, Lch/d;->e:Ljava/io/OutputStream;

    .line 30
    .line 31
    return-void
.end method

.method public final e(I)V
    .locals 2

    .line 1
    move-object p1, p0

    .line 2
    check-cast p1, Ldh/c;

    .line 3
    .line 4
    iget-object v0, p1, Ldh/c;->o:Lch/c;

    .line 5
    .line 6
    iget-object v0, v0, Lch/c;->b:Lhh/a;

    .line 7
    .line 8
    iget-object v0, v0, Lhh/a;->a:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 9
    .line 10
    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->size()I

    .line 11
    .line 12
    .line 13
    move-result v0

    .line 14
    if-lez v0, :cond_1

    .line 15
    .line 16
    iget-object p1, p1, Ldh/c;->o:Lch/c;

    .line 17
    .line 18
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 19
    .line 20
    .line 21
    new-instance v0, Lch/b;

    .line 22
    .line 23
    iget-object v1, p1, Lch/c;->a:Ldh/c;

    .line 24
    .line 25
    invoke-direct {v0, v1}, Lch/b;-><init>(Ldh/c;)V

    .line 26
    .line 27
    .line 28
    iget-object p1, p1, Lch/c;->b:Lhh/a;

    .line 29
    .line 30
    iget-object p1, p1, Lhh/a;->a:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 31
    .line 32
    invoke-virtual {p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    .line 33
    .line 34
    .line 35
    move-result-object p1

    .line 36
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 37
    .line 38
    .line 39
    move-result v0

    .line 40
    if-nez v0, :cond_0

    .line 41
    .line 42
    goto :goto_0

    .line 43
    :cond_0
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 44
    .line 45
    .line 46
    move-result-object p1

    .line 47
    check-cast p1, Ljava/util/EventListener;

    .line 48
    .line 49
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 50
    .line 51
    .line 52
    new-instance p1, Ljava/lang/ClassCastException;

    .line 53
    .line 54
    invoke-direct {p1}, Ljava/lang/ClassCastException;-><init>()V

    .line 55
    .line 56
    .line 57
    throw p1

    .line 58
    :cond_1
    :goto_0
    return-void
.end method

.method public final f()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lch/d;->b:Ljava/net/Socket;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    const/4 v0, 0x0

    .line 6
    return v0

    .line 7
    :cond_0
    invoke-virtual {v0}, Ljava/net/Socket;->isConnected()Z

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    return v0
.end method
