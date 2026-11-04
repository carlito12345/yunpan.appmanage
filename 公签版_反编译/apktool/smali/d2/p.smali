.class public Ld2/p;
.super Lx1/e;
.source "SourceFile"


# instance fields
.field public final a:I


# direct methods
.method public constructor <init>(Ljava/lang/IllegalStateException;Ld2/q;)V
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    const-string v1, "Decoder failed: "

    .line 4
    .line 5
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    if-nez p2, :cond_0

    .line 9
    .line 10
    const/4 p2, 0x0

    .line 11
    goto :goto_0

    .line 12
    :cond_0
    iget-object p2, p2, Ld2/q;->a:Ljava/lang/String;

    .line 13
    .line 14
    :goto_0
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 15
    .line 16
    .line 17
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 18
    .line 19
    .line 20
    move-result-object p2

    .line 21
    invoke-direct {p0, p2, p1}, Lx1/e;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 22
    .line 23
    .line 24
    invoke-static {p1}, Ld2/a;->A(Ljava/lang/Throwable;)Z

    .line 25
    .line 26
    .line 27
    move-result p2

    .line 28
    if-eqz p2, :cond_1

    .line 29
    .line 30
    invoke-static {p1}, Ld2/a;->f(Ljava/lang/Throwable;)Landroid/media/MediaCodec$CodecException;

    .line 31
    .line 32
    .line 33
    move-result-object p2

    .line 34
    invoke-static {p2}, Ld2/a;->q(Landroid/media/MediaCodec$CodecException;)V

    .line 35
    .line 36
    .line 37
    :cond_1
    invoke-static {p1}, Ld2/a;->A(Ljava/lang/Throwable;)Z

    .line 38
    .line 39
    .line 40
    move-result p2

    .line 41
    if-eqz p2, :cond_2

    .line 42
    .line 43
    invoke-static {p1}, Ld2/a;->f(Ljava/lang/Throwable;)Landroid/media/MediaCodec$CodecException;

    .line 44
    .line 45
    .line 46
    move-result-object p1

    .line 47
    invoke-static {p1}, Ld2/c;->d(Landroid/media/MediaCodec$CodecException;)I

    .line 48
    .line 49
    .line 50
    move-result p1

    .line 51
    goto :goto_1

    .line 52
    :cond_2
    const/4 p1, 0x0

    .line 53
    :goto_1
    iput p1, p0, Ld2/p;->a:I

    .line 54
    .line 55
    return-void
.end method
