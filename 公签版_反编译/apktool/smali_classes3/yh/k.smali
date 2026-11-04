.class public final Lyh/k;
.super Lyh/o;
.source "SourceFile"


# instance fields
.field public final a:I


# direct methods
.method public constructor <init>(I)V
    .locals 2

    .line 1
    invoke-direct {p0}, Lyh/o;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x1

    .line 5
    iput v0, p0, Lyh/k;->a:I

    .line 6
    .line 7
    if-lt p1, v0, :cond_0

    .line 8
    .line 9
    const/16 v0, 0x100

    .line 10
    .line 11
    if-gt p1, v0, :cond_0

    .line 12
    .line 13
    iput p1, p0, Lyh/k;->a:I

    .line 14
    .line 15
    return-void

    .line 16
    :cond_0
    new-instance v0, Lyh/c0;

    .line 17
    .line 18
    const-string v1, "Delta distance must be in the range [1, 256]: "

    .line 19
    .line 20
    invoke-static {p1, v1}, Lda/b;->a(ILjava/lang/String;)Ljava/lang/String;

    .line 21
    .line 22
    .line 23
    move-result-object p1

    .line 24
    invoke-direct {v0, p1}, Lyh/c0;-><init>(Ljava/lang/String;)V

    .line 25
    .line 26
    .line 27
    throw v0
.end method


# virtual methods
.method public final a(Ljava/io/InputStream;Lyh/b;)Ljava/io/InputStream;
    .locals 1

    .line 1
    new-instance p2, Lyh/j;

    .line 2
    .line 3
    iget v0, p0, Lyh/k;->a:I

    .line 4
    .line 5
    invoke-direct {p2, p1, v0}, Lyh/j;-><init>(Ljava/io/InputStream;I)V

    .line 6
    .line 7
    .line 8
    return-object p2
.end method

.method public final b(Lyh/q;Lyh/b;)Lyh/p;
    .locals 0

    .line 1
    new-instance p2, Lyh/l;

    .line 2
    .line 3
    invoke-direct {p2, p1, p0}, Lyh/l;-><init>(Lyh/q;Lyh/k;)V

    .line 4
    .line 5
    .line 6
    return-object p2
.end method

.method public final clone()Ljava/lang/Object;
    .locals 1

    .line 1
    :try_start_0
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    move-result-object v0
    :try_end_0
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 5
    return-object v0

    .line 6
    :catch_0
    new-instance v0, Ljava/lang/RuntimeException;

    .line 7
    .line 8
    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    .line 9
    .line 10
    .line 11
    throw v0
.end method
