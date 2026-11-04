.class public abstract Lrg/d;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final synthetic a:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    new-array v0, v0, [Ljava/nio/file/LinkOption;

    .line 3
    .line 4
    return-void
.end method

.method public static a(ILjava/io/InputStream;)[B
    .locals 14

    .line 1
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 4
    .line 5
    .line 6
    int-to-long v1, p0

    .line 7
    sget-object p0, Lsg/b;->b:Loh/b;

    .line 8
    .line 9
    invoke-virtual {p0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    .line 10
    .line 11
    .line 12
    move-result-object p0

    .line 13
    check-cast p0, [B

    .line 14
    .line 15
    const/4 v3, 0x0

    .line 16
    invoke-static {p0, v3}, Ljava/util/Arrays;->fill([BB)V

    .line 17
    .line 18
    .line 19
    const-wide/16 v4, 0x0

    .line 20
    .line 21
    cmp-long v6, v1, v4

    .line 22
    .line 23
    if-nez v6, :cond_0

    .line 24
    .line 25
    goto :goto_2

    .line 26
    :cond_0
    array-length v6, p0

    .line 27
    cmp-long v7, v1, v4

    .line 28
    .line 29
    if-lez v7, :cond_1

    .line 30
    .line 31
    int-to-long v7, v6

    .line 32
    cmp-long v9, v1, v7

    .line 33
    .line 34
    if-gez v9, :cond_1

    .line 35
    .line 36
    long-to-int v7, v1

    .line 37
    goto :goto_0

    .line 38
    :cond_1
    move v7, v6

    .line 39
    :goto_0
    move-wide v8, v4

    .line 40
    :cond_2
    :goto_1
    if-lez v7, :cond_3

    .line 41
    .line 42
    invoke-virtual {p1, p0, v3, v7}, Ljava/io/InputStream;->read([BII)I

    .line 43
    .line 44
    .line 45
    move-result v10

    .line 46
    const/4 v11, -0x1

    .line 47
    if-eq v11, v10, :cond_3

    .line 48
    .line 49
    invoke-virtual {v0, p0, v3, v10}, Ljava/io/OutputStream;->write([BII)V

    .line 50
    .line 51
    .line 52
    int-to-long v10, v10

    .line 53
    add-long/2addr v8, v10

    .line 54
    cmp-long v10, v1, v4

    .line 55
    .line 56
    if-lez v10, :cond_2

    .line 57
    .line 58
    sub-long v10, v1, v8

    .line 59
    .line 60
    int-to-long v12, v6

    .line 61
    invoke-static {v10, v11, v12, v13}, Ljava/lang/Math;->min(JJ)J

    .line 62
    .line 63
    .line 64
    move-result-wide v10

    .line 65
    long-to-int v7, v10

    .line 66
    goto :goto_1

    .line 67
    :cond_3
    :goto_2
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    .line 68
    .line 69
    .line 70
    move-result-object p0

    .line 71
    return-object p0
.end method
