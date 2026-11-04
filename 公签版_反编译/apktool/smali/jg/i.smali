.class public final Ljg/i;
.super Ljg/d;
.source "SourceFile"


# instance fields
.field public final b:Lyh/a;


# direct methods
.method public constructor <init>(Lyh/a;)V
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    new-array v0, v0, [Ljava/lang/Class;

    .line 3
    .line 4
    invoke-direct {p0, v0}, Ljg/d;-><init>([Ljava/lang/Class;)V

    .line 5
    .line 6
    .line 7
    iput-object p1, p0, Ljg/i;->b:Lyh/a;

    .line 8
    .line 9
    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/String;Ljava/io/InputStream;JLjg/g;[BI)Ljava/io/InputStream;
    .locals 0

    .line 1
    :try_start_0
    iget-object p3, p0, Ljg/i;->b:Lyh/a;

    .line 2
    .line 3
    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4
    .line 5
    .line 6
    sget-object p4, Lyh/b;->a:Lyh/b;

    .line 7
    .line 8
    invoke-virtual {p3, p2, p4}, Lyh/o;->a(Ljava/io/InputStream;Lyh/b;)Ljava/io/InputStream;

    .line 9
    .line 10
    .line 11
    move-result-object p1
    :try_end_0
    .catch Ljava/lang/AssertionError; {:try_start_0 .. :try_end_0} :catch_0

    .line 12
    return-object p1

    .line 13
    :catch_0
    move-exception p2

    .line 14
    new-instance p3, Ljava/io/IOException;

    .line 15
    .line 16
    const-string p4, "BCJ filter used in "

    .line 17
    .line 18
    const-string p5, " needs XZ for Java > 1.4 - see https://commons.apache.org/proper/commons-compress/limitations.html#7Z"

    .line 19
    .line 20
    invoke-static {p4, p1, p5}, Lg/b;->A(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 21
    .line 22
    .line 23
    move-result-object p1

    .line 24
    invoke-direct {p3, p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 25
    .line 26
    .line 27
    throw p3
.end method

.method public final b(Ljava/io/OutputStream;Ljava/lang/Object;)Ljava/io/OutputStream;
    .locals 2

    .line 1
    new-instance p2, Lrg/c;

    .line 2
    .line 3
    iget-object v0, p0, Ljg/i;->b:Lyh/a;

    .line 4
    .line 5
    new-instance v1, Lyh/q;

    .line 6
    .line 7
    invoke-direct {v1, p1}, Lyh/q;-><init>(Ljava/io/OutputStream;)V

    .line 8
    .line 9
    .line 10
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 11
    .line 12
    .line 13
    sget-object p1, Lyh/b;->a:Lyh/b;

    .line 14
    .line 15
    invoke-virtual {v0, v1, p1}, Lyh/o;->b(Lyh/q;Lyh/b;)Lyh/p;

    .line 16
    .line 17
    .line 18
    move-result-object p1

    .line 19
    invoke-direct {p2, p1}, Lrg/c;-><init>(Lyh/p;)V

    .line 20
    .line 21
    .line 22
    return-object p2
.end method
