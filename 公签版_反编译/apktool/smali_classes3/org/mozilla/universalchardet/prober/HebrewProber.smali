.class public Lorg/mozilla/universalchardet/prober/HebrewProber;
.super Lorg/mozilla/universalchardet/prober/CharsetProber;
.source "SourceFile"


# static fields
.field public static final FINAL_KAF:I = 0xea

.field public static final FINAL_MEM:I = 0xed

.field public static final FINAL_NUN:I = 0xef

.field public static final FINAL_PE:I = 0xf3

.field public static final FINAL_TSADI:I = 0xf5

.field public static final MIN_FINAL_CHAR_DISTANCE:I = 0x5

.field public static final MIN_MODEL_DISTANCE:F = 0.01f

.field public static final NORMAL_KAF:I = 0xeb

.field public static final NORMAL_MEM:I = 0xee

.field public static final NORMAL_NUN:I = 0xf0

.field public static final NORMAL_PE:I = 0xf4

.field public static final NORMAL_TSADI:I = 0xf6

.field public static final SPACE:B = 0x20t


# instance fields
.field private beforePrev:B

.field private finalCharLogicalScore:I

.field private finalCharVisualScore:I

.field private logicalProber:Lorg/mozilla/universalchardet/prober/CharsetProber;

.field private prev:B

.field private visualProber:Lorg/mozilla/universalchardet/prober/CharsetProber;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lorg/mozilla/universalchardet/prober/CharsetProber;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x0

    .line 5
    iput-object v0, p0, Lorg/mozilla/universalchardet/prober/HebrewProber;->logicalProber:Lorg/mozilla/universalchardet/prober/CharsetProber;

    .line 6
    .line 7
    iput-object v0, p0, Lorg/mozilla/universalchardet/prober/HebrewProber;->visualProber:Lorg/mozilla/universalchardet/prober/CharsetProber;

    .line 8
    .line 9
    invoke-virtual {p0}, Lorg/mozilla/universalchardet/prober/HebrewProber;->reset()V

    .line 10
    .line 11
    .line 12
    return-void
.end method

.method public static isFinal(B)Z
    .locals 1

    and-int/lit16 p0, p0, 0xff

    const/16 v0, 0xea

    if-eq p0, v0, :cond_1

    const/16 v0, 0xed

    if-eq p0, v0, :cond_1

    const/16 v0, 0xef

    if-eq p0, v0, :cond_1

    const/16 v0, 0xf3

    if-eq p0, v0, :cond_1

    const/16 v0, 0xf5

    if-ne p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method public static isNonFinal(B)Z
    .locals 1

    and-int/lit16 p0, p0, 0xff

    const/16 v0, 0xeb

    if-eq p0, v0, :cond_1

    const/16 v0, 0xee

    if-eq p0, v0, :cond_1

    const/16 v0, 0xf0

    if-eq p0, v0, :cond_1

    const/16 v0, 0xf4

    if-ne p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method


# virtual methods
.method public getCharSetName()Ljava/lang/String;
    .locals 3

    .line 1
    iget v0, p0, Lorg/mozilla/universalchardet/prober/HebrewProber;->finalCharLogicalScore:I

    .line 2
    .line 3
    iget v1, p0, Lorg/mozilla/universalchardet/prober/HebrewProber;->finalCharVisualScore:I

    .line 4
    .line 5
    sub-int/2addr v0, v1

    .line 6
    const/4 v1, 0x5

    .line 7
    if-lt v0, v1, :cond_0

    .line 8
    .line 9
    sget-object v0, Lorg/mozilla/universalchardet/Constants;->CHARSET_WINDOWS_1255:Ljava/lang/String;

    .line 10
    .line 11
    return-object v0

    .line 12
    :cond_0
    const/4 v1, -0x5

    .line 13
    if-gt v0, v1, :cond_1

    .line 14
    .line 15
    sget-object v0, Lorg/mozilla/universalchardet/Constants;->CHARSET_ISO_8859_8:Ljava/lang/String;

    .line 16
    .line 17
    return-object v0

    .line 18
    :cond_1
    iget-object v1, p0, Lorg/mozilla/universalchardet/prober/HebrewProber;->logicalProber:Lorg/mozilla/universalchardet/prober/CharsetProber;

    .line 19
    .line 20
    invoke-virtual {v1}, Lorg/mozilla/universalchardet/prober/CharsetProber;->getConfidence()F

    .line 21
    .line 22
    .line 23
    move-result v1

    .line 24
    iget-object v2, p0, Lorg/mozilla/universalchardet/prober/HebrewProber;->visualProber:Lorg/mozilla/universalchardet/prober/CharsetProber;

    .line 25
    .line 26
    invoke-virtual {v2}, Lorg/mozilla/universalchardet/prober/CharsetProber;->getConfidence()F

    .line 27
    .line 28
    .line 29
    move-result v2

    .line 30
    sub-float/2addr v1, v2

    .line 31
    const v2, 0x3c23d70a    # 0.01f

    .line 32
    .line 33
    .line 34
    cmpl-float v2, v1, v2

    .line 35
    .line 36
    if-lez v2, :cond_2

    .line 37
    .line 38
    sget-object v0, Lorg/mozilla/universalchardet/Constants;->CHARSET_WINDOWS_1255:Ljava/lang/String;

    .line 39
    .line 40
    return-object v0

    .line 41
    :cond_2
    const v2, -0x43dc28f6    # -0.01f

    .line 42
    .line 43
    .line 44
    cmpg-float v1, v1, v2

    .line 45
    .line 46
    if-gez v1, :cond_3

    .line 47
    .line 48
    sget-object v0, Lorg/mozilla/universalchardet/Constants;->CHARSET_ISO_8859_8:Ljava/lang/String;

    .line 49
    .line 50
    return-object v0

    .line 51
    :cond_3
    if-gez v0, :cond_4

    .line 52
    .line 53
    sget-object v0, Lorg/mozilla/universalchardet/Constants;->CHARSET_ISO_8859_8:Ljava/lang/String;

    .line 54
    .line 55
    return-object v0

    .line 56
    :cond_4
    sget-object v0, Lorg/mozilla/universalchardet/Constants;->CHARSET_WINDOWS_1255:Ljava/lang/String;

    .line 57
    .line 58
    return-object v0
.end method

.method public getConfidence()F
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getState()Lorg/mozilla/universalchardet/prober/CharsetProber$ProbingState;
    .locals 2

    .line 1
    iget-object v0, p0, Lorg/mozilla/universalchardet/prober/HebrewProber;->logicalProber:Lorg/mozilla/universalchardet/prober/CharsetProber;

    .line 2
    .line 3
    invoke-virtual {v0}, Lorg/mozilla/universalchardet/prober/CharsetProber;->getState()Lorg/mozilla/universalchardet/prober/CharsetProber$ProbingState;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    sget-object v1, Lorg/mozilla/universalchardet/prober/CharsetProber$ProbingState;->NOT_ME:Lorg/mozilla/universalchardet/prober/CharsetProber$ProbingState;

    .line 8
    .line 9
    if-ne v0, v1, :cond_0

    .line 10
    .line 11
    iget-object v0, p0, Lorg/mozilla/universalchardet/prober/HebrewProber;->visualProber:Lorg/mozilla/universalchardet/prober/CharsetProber;

    .line 12
    .line 13
    invoke-virtual {v0}, Lorg/mozilla/universalchardet/prober/CharsetProber;->getState()Lorg/mozilla/universalchardet/prober/CharsetProber$ProbingState;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    if-ne v0, v1, :cond_0

    .line 18
    .line 19
    return-object v1

    .line 20
    :cond_0
    sget-object v0, Lorg/mozilla/universalchardet/prober/CharsetProber$ProbingState;->DETECTING:Lorg/mozilla/universalchardet/prober/CharsetProber$ProbingState;

    .line 21
    .line 22
    return-object v0
.end method

.method public handleData([BII)Lorg/mozilla/universalchardet/prober/CharsetProber$ProbingState;
    .locals 3

    .line 1
    invoke-virtual {p0}, Lorg/mozilla/universalchardet/prober/HebrewProber;->getState()Lorg/mozilla/universalchardet/prober/CharsetProber$ProbingState;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    sget-object v1, Lorg/mozilla/universalchardet/prober/CharsetProber$ProbingState;->NOT_ME:Lorg/mozilla/universalchardet/prober/CharsetProber$ProbingState;

    .line 6
    .line 7
    if-ne v0, v1, :cond_0

    .line 8
    .line 9
    return-object v1

    .line 10
    :cond_0
    add-int/2addr p3, p2

    .line 11
    :goto_0
    if-ge p2, p3, :cond_4

    .line 12
    .line 13
    aget-byte v0, p1, p2

    .line 14
    .line 15
    const/16 v1, 0x20

    .line 16
    .line 17
    if-ne v0, v1, :cond_2

    .line 18
    .line 19
    iget-byte v2, p0, Lorg/mozilla/universalchardet/prober/HebrewProber;->beforePrev:B

    .line 20
    .line 21
    if-eq v2, v1, :cond_3

    .line 22
    .line 23
    iget-byte v1, p0, Lorg/mozilla/universalchardet/prober/HebrewProber;->prev:B

    .line 24
    .line 25
    invoke-static {v1}, Lorg/mozilla/universalchardet/prober/HebrewProber;->isFinal(B)Z

    .line 26
    .line 27
    .line 28
    move-result v1

    .line 29
    if-eqz v1, :cond_1

    .line 30
    .line 31
    iget v1, p0, Lorg/mozilla/universalchardet/prober/HebrewProber;->finalCharLogicalScore:I

    .line 32
    .line 33
    add-int/lit8 v1, v1, 0x1

    .line 34
    .line 35
    iput v1, p0, Lorg/mozilla/universalchardet/prober/HebrewProber;->finalCharLogicalScore:I

    .line 36
    .line 37
    goto :goto_1

    .line 38
    :cond_1
    iget-byte v1, p0, Lorg/mozilla/universalchardet/prober/HebrewProber;->prev:B

    .line 39
    .line 40
    invoke-static {v1}, Lorg/mozilla/universalchardet/prober/HebrewProber;->isNonFinal(B)Z

    .line 41
    .line 42
    .line 43
    move-result v1

    .line 44
    if-eqz v1, :cond_3

    .line 45
    .line 46
    iget v1, p0, Lorg/mozilla/universalchardet/prober/HebrewProber;->finalCharVisualScore:I

    .line 47
    .line 48
    add-int/lit8 v1, v1, 0x1

    .line 49
    .line 50
    iput v1, p0, Lorg/mozilla/universalchardet/prober/HebrewProber;->finalCharVisualScore:I

    .line 51
    .line 52
    goto :goto_1

    .line 53
    :cond_2
    iget-byte v2, p0, Lorg/mozilla/universalchardet/prober/HebrewProber;->beforePrev:B

    .line 54
    .line 55
    if-ne v2, v1, :cond_3

    .line 56
    .line 57
    iget-byte v2, p0, Lorg/mozilla/universalchardet/prober/HebrewProber;->prev:B

    .line 58
    .line 59
    invoke-static {v2}, Lorg/mozilla/universalchardet/prober/HebrewProber;->isFinal(B)Z

    .line 60
    .line 61
    .line 62
    move-result v2

    .line 63
    if-eqz v2, :cond_3

    .line 64
    .line 65
    if-eq v0, v1, :cond_3

    .line 66
    .line 67
    iget v1, p0, Lorg/mozilla/universalchardet/prober/HebrewProber;->finalCharVisualScore:I

    .line 68
    .line 69
    add-int/lit8 v1, v1, 0x1

    .line 70
    .line 71
    iput v1, p0, Lorg/mozilla/universalchardet/prober/HebrewProber;->finalCharVisualScore:I

    .line 72
    .line 73
    :cond_3
    :goto_1
    iget-byte v1, p0, Lorg/mozilla/universalchardet/prober/HebrewProber;->prev:B

    .line 74
    .line 75
    iput-byte v1, p0, Lorg/mozilla/universalchardet/prober/HebrewProber;->beforePrev:B

    .line 76
    .line 77
    iput-byte v0, p0, Lorg/mozilla/universalchardet/prober/HebrewProber;->prev:B

    .line 78
    .line 79
    add-int/lit8 p2, p2, 0x1

    .line 80
    .line 81
    goto :goto_0

    .line 82
    :cond_4
    sget-object p1, Lorg/mozilla/universalchardet/prober/CharsetProber$ProbingState;->DETECTING:Lorg/mozilla/universalchardet/prober/CharsetProber$ProbingState;

    .line 83
    .line 84
    return-object p1
.end method

.method public final reset()V
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    iput v0, p0, Lorg/mozilla/universalchardet/prober/HebrewProber;->finalCharLogicalScore:I

    .line 3
    .line 4
    iput v0, p0, Lorg/mozilla/universalchardet/prober/HebrewProber;->finalCharVisualScore:I

    .line 5
    .line 6
    const/16 v0, 0x20

    .line 7
    .line 8
    iput-byte v0, p0, Lorg/mozilla/universalchardet/prober/HebrewProber;->prev:B

    .line 9
    .line 10
    iput-byte v0, p0, Lorg/mozilla/universalchardet/prober/HebrewProber;->beforePrev:B

    .line 11
    .line 12
    return-void
.end method

.method public setModalProbers(Lorg/mozilla/universalchardet/prober/CharsetProber;Lorg/mozilla/universalchardet/prober/CharsetProber;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lorg/mozilla/universalchardet/prober/HebrewProber;->logicalProber:Lorg/mozilla/universalchardet/prober/CharsetProber;

    .line 2
    .line 3
    iput-object p2, p0, Lorg/mozilla/universalchardet/prober/HebrewProber;->visualProber:Lorg/mozilla/universalchardet/prober/CharsetProber;

    .line 4
    .line 5
    return-void
.end method

.method public setOption()V
    .locals 0

    return-void
.end method
