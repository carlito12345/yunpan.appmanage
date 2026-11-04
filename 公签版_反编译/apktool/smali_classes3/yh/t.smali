.class public final Lyh/t;
.super Lyh/o;
.source "SourceFile"


# static fields
.field public static final i:[I


# instance fields
.field public a:I

.field public b:I

.field public c:I

.field public d:I

.field public final e:I

.field public final f:I

.field public final g:I

.field public final h:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    const/16 v0, 0xa

    .line 2
    .line 3
    new-array v0, v0, [I

    .line 4
    .line 5
    fill-array-data v0, :array_0

    .line 6
    .line 7
    .line 8
    sput-object v0, Lyh/t;->i:[I

    .line 9
    .line 10
    return-void

    .line 11
    :array_0
    .array-data 4
        0x40000
        0x100000
        0x200000
        0x400000
        0x400000
        0x800000
        0x800000
        0x1000000
        0x2000000
        0x4000000
    .end array-data
.end method

.method public constructor <init>()V
    .locals 4

    .line 1
    invoke-direct {p0}, Lyh/o;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x3

    .line 5
    :try_start_0
    iput v0, p0, Lyh/t;->b:I

    .line 6
    .line 7
    const/4 v0, 0x0

    .line 8
    iput v0, p0, Lyh/t;->c:I

    .line 9
    .line 10
    const/4 v1, 0x2

    .line 11
    iput v1, p0, Lyh/t;->d:I

    .line 12
    .line 13
    sget-object v2, Lyh/t;->i:[I

    .line 14
    .line 15
    const/4 v3, 0x6

    .line 16
    aget v2, v2, v3

    .line 17
    .line 18
    iput v2, p0, Lyh/t;->a:I

    .line 19
    .line 20
    iput v1, p0, Lyh/t;->e:I

    .line 21
    .line 22
    const/16 v1, 0x14

    .line 23
    .line 24
    iput v1, p0, Lyh/t;->g:I

    .line 25
    .line 26
    const/16 v1, 0x40

    .line 27
    .line 28
    iput v1, p0, Lyh/t;->f:I

    .line 29
    .line 30
    iput v0, p0, Lyh/t;->h:I
    :try_end_0
    .catch Lyh/c0; {:try_start_0 .. :try_end_0} :catch_0

    .line 31
    .line 32
    return-void

    .line 33
    :catch_0
    new-instance v0, Ljava/lang/RuntimeException;

    .line 34
    .line 35
    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    .line 36
    .line 37
    .line 38
    throw v0
.end method


# virtual methods
.method public final a(Ljava/io/InputStream;Lyh/b;)Ljava/io/InputStream;
    .locals 2

    .line 1
    new-instance v0, Lyh/s;

    .line 2
    .line 3
    iget v1, p0, Lyh/t;->a:I

    .line 4
    .line 5
    invoke-direct {v0, p1, v1, p2}, Lyh/s;-><init>(Ljava/io/InputStream;ILyh/b;)V

    .line 6
    .line 7
    .line 8
    return-object v0
.end method

.method public final b(Lyh/q;Lyh/b;)Lyh/p;
    .locals 1

    .line 1
    iget v0, p0, Lyh/t;->e:I

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    new-instance v0, Lyh/b0;

    .line 6
    .line 7
    invoke-direct {v0, p1, p2}, Lyh/b0;-><init>(Lyh/q;Lyh/b;)V

    .line 8
    .line 9
    .line 10
    return-object v0

    .line 11
    :cond_0
    new-instance v0, Lyh/u;

    .line 12
    .line 13
    invoke-direct {v0, p1, p0, p2}, Lyh/u;-><init>(Lyh/q;Lyh/t;Lyh/b;)V

    .line 14
    .line 15
    .line 16
    return-object v0
.end method

.method public final c(I)V
    .locals 3

    .line 1
    const/16 v0, 0x1000

    .line 2
    .line 3
    const-string v1, " B"

    .line 4
    .line 5
    if-lt p1, v0, :cond_1

    .line 6
    .line 7
    const/high16 v0, 0x30000000

    .line 8
    .line 9
    if-gt p1, v0, :cond_0

    .line 10
    .line 11
    iput p1, p0, Lyh/t;->a:I

    .line 12
    .line 13
    return-void

    .line 14
    :cond_0
    new-instance v0, Lyh/c0;

    .line 15
    .line 16
    const-string v2, "LZMA2 dictionary size must not exceed 768 MiB: "

    .line 17
    .line 18
    invoke-static {v2, p1, v1}, Lg/b;->i(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/String;

    .line 19
    .line 20
    .line 21
    move-result-object p1

    .line 22
    invoke-direct {v0, p1}, Lyh/c0;-><init>(Ljava/lang/String;)V

    .line 23
    .line 24
    .line 25
    throw v0

    .line 26
    :cond_1
    new-instance v0, Lyh/c0;

    .line 27
    .line 28
    const-string v2, "LZMA2 dictionary size must be at least 4 KiB: "

    .line 29
    .line 30
    invoke-static {v2, p1, v1}, Lg/b;->i(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/String;

    .line 31
    .line 32
    .line 33
    move-result-object p1

    .line 34
    invoke-direct {v0, p1}, Lyh/c0;-><init>(Ljava/lang/String;)V

    .line 35
    .line 36
    .line 37
    throw v0
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
