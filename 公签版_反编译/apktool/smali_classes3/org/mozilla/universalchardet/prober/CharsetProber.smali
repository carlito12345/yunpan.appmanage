.class public abstract Lorg/mozilla/universalchardet/prober/CharsetProber;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/mozilla/universalchardet/prober/CharsetProber$ProbingState;
    }
.end annotation


# static fields
.field public static final ASCII_A:I = 0x61

.field public static final ASCII_A_CAPITAL:I = 0x41

.field public static final ASCII_GT:I = 0x3e

.field public static final ASCII_LT:I = 0x3c

.field public static final ASCII_SP:I = 0x20

.field public static final ASCII_Z:I = 0x7a

.field public static final ASCII_Z_CAPITAL:I = 0x5a

.field public static final SHORTCUT_THRESHOLD:F = 0.95f


# instance fields
.field private active:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x1

    .line 5
    iput-boolean v0, p0, Lorg/mozilla/universalchardet/prober/CharsetProber;->active:Z

    .line 6
    .line 7
    return-void
.end method

.method private isAscii(B)Z
    .locals 0

    and-int/lit16 p1, p1, 0x80

    if-nez p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method private isAsciiSymbol(B)Z
    .locals 1

    and-int/lit16 p1, p1, 0xff

    const/16 v0, 0x41

    if-lt p1, v0, :cond_2

    const/16 v0, 0x5a

    if-le p1, v0, :cond_0

    const/16 v0, 0x61

    if-lt p1, v0, :cond_2

    :cond_0
    const/16 v0, 0x7a

    if-le p1, v0, :cond_1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    goto :goto_1

    :cond_2
    :goto_0
    const/4 p1, 0x1

    :goto_1
    return p1
.end method


# virtual methods
.method public filterWithEnglishLetters([BII)Ljava/nio/ByteBuffer;
    .locals 6

    .line 1
    invoke-static {p3}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    add-int/2addr p3, p2

    .line 6
    const/4 v1, 0x0

    .line 7
    move v2, p2

    .line 8
    const/4 v3, 0x0

    .line 9
    :goto_0
    if-ge p2, p3, :cond_4

    .line 10
    .line 11
    aget-byte v4, p1, p2

    .line 12
    .line 13
    const/16 v5, 0x3e

    .line 14
    .line 15
    if-ne v4, v5, :cond_0

    .line 16
    .line 17
    const/4 v3, 0x0

    .line 18
    goto :goto_1

    .line 19
    :cond_0
    const/16 v5, 0x3c

    .line 20
    .line 21
    if-ne v4, v5, :cond_1

    .line 22
    .line 23
    const/4 v3, 0x1

    .line 24
    :cond_1
    :goto_1
    invoke-direct {p0, v4}, Lorg/mozilla/universalchardet/prober/CharsetProber;->isAscii(B)Z

    .line 25
    .line 26
    .line 27
    move-result v5

    .line 28
    if-eqz v5, :cond_3

    .line 29
    .line 30
    invoke-direct {p0, v4}, Lorg/mozilla/universalchardet/prober/CharsetProber;->isAsciiSymbol(B)Z

    .line 31
    .line 32
    .line 33
    move-result v4

    .line 34
    if-eqz v4, :cond_3

    .line 35
    .line 36
    if-le p2, v2, :cond_2

    .line 37
    .line 38
    if-nez v3, :cond_2

    .line 39
    .line 40
    sub-int v4, p2, v2

    .line 41
    .line 42
    invoke-virtual {v0, p1, v2, v4}, Ljava/nio/ByteBuffer;->put([BII)Ljava/nio/ByteBuffer;

    .line 43
    .line 44
    .line 45
    const/16 v2, 0x20

    .line 46
    .line 47
    invoke-virtual {v0, v2}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 48
    .line 49
    .line 50
    :cond_2
    add-int/lit8 v2, p2, 0x1

    .line 51
    .line 52
    :cond_3
    add-int/lit8 p2, p2, 0x1

    .line 53
    .line 54
    goto :goto_0

    .line 55
    :cond_4
    if-nez v3, :cond_5

    .line 56
    .line 57
    if-le p2, v2, :cond_5

    .line 58
    .line 59
    sub-int/2addr p2, v2

    .line 60
    invoke-virtual {v0, p1, v2, p2}, Ljava/nio/ByteBuffer;->put([BII)Ljava/nio/ByteBuffer;

    .line 61
    .line 62
    .line 63
    :cond_5
    return-object v0
.end method

.method public filterWithoutEnglishLetters([BII)Ljava/nio/ByteBuffer;
    .locals 6

    .line 1
    invoke-static {p3}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    add-int/2addr p3, p2

    .line 6
    const/4 v1, 0x0

    .line 7
    move v2, p2

    .line 8
    const/4 v3, 0x0

    .line 9
    :goto_0
    if-ge p2, p3, :cond_3

    .line 10
    .line 11
    aget-byte v4, p1, p2

    .line 12
    .line 13
    invoke-direct {p0, v4}, Lorg/mozilla/universalchardet/prober/CharsetProber;->isAscii(B)Z

    .line 14
    .line 15
    .line 16
    move-result v5

    .line 17
    if-nez v5, :cond_0

    .line 18
    .line 19
    const/4 v3, 0x1

    .line 20
    goto :goto_1

    .line 21
    :cond_0
    invoke-direct {p0, v4}, Lorg/mozilla/universalchardet/prober/CharsetProber;->isAsciiSymbol(B)Z

    .line 22
    .line 23
    .line 24
    move-result v4

    .line 25
    if-eqz v4, :cond_2

    .line 26
    .line 27
    if-eqz v3, :cond_1

    .line 28
    .line 29
    if-le p2, v2, :cond_1

    .line 30
    .line 31
    sub-int v3, p2, v2

    .line 32
    .line 33
    invoke-virtual {v0, p1, v2, v3}, Ljava/nio/ByteBuffer;->put([BII)Ljava/nio/ByteBuffer;

    .line 34
    .line 35
    .line 36
    const/16 v2, 0x20

    .line 37
    .line 38
    invoke-virtual {v0, v2}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 39
    .line 40
    .line 41
    add-int/lit8 v2, p2, 0x1

    .line 42
    .line 43
    const/4 v3, 0x0

    .line 44
    goto :goto_1

    .line 45
    :cond_1
    add-int/lit8 v2, p2, 0x1

    .line 46
    .line 47
    :cond_2
    :goto_1
    add-int/lit8 p2, p2, 0x1

    .line 48
    .line 49
    goto :goto_0

    .line 50
    :cond_3
    if-eqz v3, :cond_4

    .line 51
    .line 52
    if-le p2, v2, :cond_4

    .line 53
    .line 54
    sub-int/2addr p2, v2

    .line 55
    invoke-virtual {v0, p1, v2, p2}, Ljava/nio/ByteBuffer;->put([BII)Ljava/nio/ByteBuffer;

    .line 56
    .line 57
    .line 58
    :cond_4
    return-object v0
.end method

.method public abstract getCharSetName()Ljava/lang/String;
.end method

.method public abstract getConfidence()F
.end method

.method public abstract getState()Lorg/mozilla/universalchardet/prober/CharsetProber$ProbingState;
.end method

.method public abstract handleData([BII)Lorg/mozilla/universalchardet/prober/CharsetProber$ProbingState;
.end method

.method public isActive()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lorg/mozilla/universalchardet/prober/CharsetProber;->active:Z

    .line 2
    .line 3
    return v0
.end method

.method public abstract reset()V
.end method

.method public setActive(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lorg/mozilla/universalchardet/prober/CharsetProber;->active:Z

    .line 2
    .line 3
    return-void
.end method

.method public abstract setOption()V
.end method
