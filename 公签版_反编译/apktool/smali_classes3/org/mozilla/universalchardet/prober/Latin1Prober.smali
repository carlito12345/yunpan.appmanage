.class public Lorg/mozilla/universalchardet/prober/Latin1Prober;
.super Lorg/mozilla/universalchardet/prober/CharsetProber;
.source "SourceFile"


# static fields
.field public static final ACO:B = 0x5t

.field public static final ACV:B = 0x4t

.field public static final ASC:B = 0x2t

.field public static final ASO:B = 0x7t

.field public static final ASS:B = 0x3t

.field public static final ASV:B = 0x6t

.field public static final CLASS_NUM:I = 0x8

.field public static final FREQ_CAT_NUM:I = 0x4

.field public static final OTH:B = 0x1t

.field public static final UDF:B

.field private static final latin1CharToClass:[B

.field private static final latin1ClassModel:[B


# instance fields
.field private freqCounter:[I

.field private lastCharClass:B

.field private state:Lorg/mozilla/universalchardet/prober/CharsetProber$ProbingState;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    const/16 v0, 0x100

    .line 2
    .line 3
    new-array v0, v0, [B

    .line 4
    .line 5
    fill-array-data v0, :array_0

    .line 6
    .line 7
    .line 8
    sput-object v0, Lorg/mozilla/universalchardet/prober/Latin1Prober;->latin1CharToClass:[B

    .line 9
    .line 10
    const/16 v0, 0x40

    .line 11
    .line 12
    new-array v0, v0, [B

    .line 13
    .line 14
    fill-array-data v0, :array_1

    .line 15
    .line 16
    .line 17
    sput-object v0, Lorg/mozilla/universalchardet/prober/Latin1Prober;->latin1ClassModel:[B

    .line 18
    .line 19
    return-void

    .line 20
    nop

    .line 21
    :array_0
    .array-data 1
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x2t
        0x2t
        0x2t
        0x2t
        0x2t
        0x2t
        0x2t
        0x2t
        0x2t
        0x2t
        0x2t
        0x2t
        0x2t
        0x2t
        0x2t
        0x2t
        0x2t
        0x2t
        0x2t
        0x2t
        0x2t
        0x2t
        0x2t
        0x2t
        0x2t
        0x2t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x3t
        0x3t
        0x3t
        0x3t
        0x3t
        0x3t
        0x3t
        0x3t
        0x3t
        0x3t
        0x3t
        0x3t
        0x3t
        0x3t
        0x3t
        0x3t
        0x3t
        0x3t
        0x3t
        0x3t
        0x3t
        0x3t
        0x3t
        0x3t
        0x3t
        0x3t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x0t
        0x1t
        0x7t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x5t
        0x1t
        0x5t
        0x0t
        0x5t
        0x0t
        0x0t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x7t
        0x1t
        0x7t
        0x0t
        0x7t
        0x5t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x4t
        0x4t
        0x4t
        0x4t
        0x4t
        0x4t
        0x5t
        0x5t
        0x4t
        0x4t
        0x4t
        0x4t
        0x4t
        0x4t
        0x4t
        0x4t
        0x5t
        0x5t
        0x4t
        0x4t
        0x4t
        0x4t
        0x4t
        0x1t
        0x4t
        0x4t
        0x4t
        0x4t
        0x4t
        0x5t
        0x5t
        0x5t
        0x6t
        0x6t
        0x6t
        0x6t
        0x6t
        0x6t
        0x7t
        0x7t
        0x6t
        0x6t
        0x6t
        0x6t
        0x6t
        0x6t
        0x6t
        0x6t
        0x7t
        0x7t
        0x6t
        0x6t
        0x6t
        0x6t
        0x6t
        0x1t
        0x6t
        0x6t
        0x6t
        0x6t
        0x6t
        0x7t
        0x7t
        0x7t
    .end array-data

    .line 22
    .line 23
    .line 24
    .line 25
    .line 26
    .line 27
    .line 28
    .line 29
    .line 30
    .line 31
    .line 32
    .line 33
    .line 34
    .line 35
    .line 36
    .line 37
    .line 38
    .line 39
    .line 40
    .line 41
    .line 42
    .line 43
    .line 44
    .line 45
    .line 46
    .line 47
    .line 48
    .line 49
    .line 50
    .line 51
    .line 52
    .line 53
    .line 54
    .line 55
    .line 56
    .line 57
    .line 58
    .line 59
    .line 60
    .line 61
    .line 62
    .line 63
    .line 64
    .line 65
    .line 66
    .line 67
    .line 68
    .line 69
    .line 70
    .line 71
    .line 72
    .line 73
    .line 74
    .line 75
    .line 76
    .line 77
    .line 78
    .line 79
    .line 80
    .line 81
    .line 82
    .line 83
    .line 84
    .line 85
    .line 86
    .line 87
    .line 88
    .line 89
    .line 90
    .line 91
    .line 92
    .line 93
    .line 94
    .line 95
    .line 96
    .line 97
    .line 98
    .line 99
    .line 100
    .line 101
    .line 102
    .line 103
    .line 104
    .line 105
    .line 106
    .line 107
    .line 108
    .line 109
    .line 110
    .line 111
    .line 112
    .line 113
    :array_1
    .array-data 1
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x3t
        0x3t
        0x3t
        0x3t
        0x3t
        0x3t
        0x3t
        0x0t
        0x3t
        0x3t
        0x3t
        0x3t
        0x3t
        0x3t
        0x3t
        0x0t
        0x3t
        0x3t
        0x3t
        0x1t
        0x1t
        0x3t
        0x3t
        0x0t
        0x3t
        0x3t
        0x3t
        0x1t
        0x2t
        0x1t
        0x2t
        0x0t
        0x3t
        0x3t
        0x3t
        0x3t
        0x3t
        0x3t
        0x3t
        0x0t
        0x3t
        0x1t
        0x3t
        0x1t
        0x1t
        0x1t
        0x3t
        0x0t
        0x3t
        0x1t
        0x3t
        0x1t
        0x1t
        0x3t
        0x3t
    .end array-data
.end method

.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lorg/mozilla/universalchardet/prober/CharsetProber;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x4

    .line 5
    new-array v0, v0, [I

    .line 6
    .line 7
    iput-object v0, p0, Lorg/mozilla/universalchardet/prober/Latin1Prober;->freqCounter:[I

    .line 8
    .line 9
    invoke-virtual {p0}, Lorg/mozilla/universalchardet/prober/Latin1Prober;->reset()V

    .line 10
    .line 11
    .line 12
    return-void
.end method


# virtual methods
.method public getCharSetName()Ljava/lang/String;
    .locals 1

    .line 1
    sget-object v0, Lorg/mozilla/universalchardet/Constants;->CHARSET_WINDOWS_1252:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public getConfidence()F
    .locals 5

    .line 1
    iget-object v0, p0, Lorg/mozilla/universalchardet/prober/Latin1Prober;->state:Lorg/mozilla/universalchardet/prober/CharsetProber$ProbingState;

    .line 2
    .line 3
    sget-object v1, Lorg/mozilla/universalchardet/prober/CharsetProber$ProbingState;->NOT_ME:Lorg/mozilla/universalchardet/prober/CharsetProber$ProbingState;

    .line 4
    .line 5
    if-ne v0, v1, :cond_0

    .line 6
    .line 7
    const v0, 0x3c23d70a    # 0.01f

    .line 8
    .line 9
    .line 10
    return v0

    .line 11
    :cond_0
    const/4 v0, 0x0

    .line 12
    const/4 v1, 0x0

    .line 13
    :goto_0
    iget-object v2, p0, Lorg/mozilla/universalchardet/prober/Latin1Prober;->freqCounter:[I

    .line 14
    .line 15
    array-length v3, v2

    .line 16
    if-ge v0, v3, :cond_1

    .line 17
    .line 18
    aget v2, v2, v0

    .line 19
    .line 20
    add-int/2addr v1, v2

    .line 21
    add-int/lit8 v0, v0, 0x1

    .line 22
    .line 23
    goto :goto_0

    .line 24
    :cond_1
    const/4 v0, 0x0

    .line 25
    if-gtz v1, :cond_2

    .line 26
    .line 27
    const/4 v3, 0x0

    .line 28
    goto :goto_1

    .line 29
    :cond_2
    const/4 v3, 0x3

    .line 30
    aget v3, v2, v3

    .line 31
    .line 32
    int-to-float v3, v3

    .line 33
    const/high16 v4, 0x3f800000    # 1.0f

    .line 34
    .line 35
    mul-float v3, v3, v4

    .line 36
    .line 37
    int-to-float v1, v1

    .line 38
    div-float/2addr v3, v1

    .line 39
    const/4 v4, 0x1

    .line 40
    aget v2, v2, v4

    .line 41
    .line 42
    int-to-float v2, v2

    .line 43
    const/high16 v4, 0x41a00000    # 20.0f

    .line 44
    .line 45
    mul-float v2, v2, v4

    .line 46
    .line 47
    div-float/2addr v2, v1

    .line 48
    sub-float/2addr v3, v2

    .line 49
    :goto_1
    cmpg-float v1, v3, v0

    .line 50
    .line 51
    if-gez v1, :cond_3

    .line 52
    .line 53
    goto :goto_2

    .line 54
    :cond_3
    move v0, v3

    .line 55
    :goto_2
    const/high16 v1, 0x3f000000    # 0.5f

    .line 56
    .line 57
    mul-float v0, v0, v1

    .line 58
    .line 59
    return v0
.end method

.method public getState()Lorg/mozilla/universalchardet/prober/CharsetProber$ProbingState;
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/mozilla/universalchardet/prober/Latin1Prober;->state:Lorg/mozilla/universalchardet/prober/CharsetProber$ProbingState;

    .line 2
    .line 3
    return-object v0
.end method

.method public handleData([BII)Lorg/mozilla/universalchardet/prober/CharsetProber$ProbingState;
    .locals 4

    .line 1
    invoke-virtual {p0, p1, p2, p3}, Lorg/mozilla/universalchardet/prober/CharsetProber;->filterWithEnglishLetters([BII)Ljava/nio/ByteBuffer;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->array()[B

    .line 6
    .line 7
    .line 8
    move-result-object p2

    .line 9
    invoke-virtual {p1}, Ljava/nio/Buffer;->position()I

    .line 10
    .line 11
    .line 12
    move-result p1

    .line 13
    const/4 p3, 0x0

    .line 14
    :goto_0
    if-ge p3, p1, :cond_1

    .line 15
    .line 16
    aget-byte v0, p2, p3

    .line 17
    .line 18
    and-int/lit16 v0, v0, 0xff

    .line 19
    .line 20
    sget-object v1, Lorg/mozilla/universalchardet/prober/Latin1Prober;->latin1CharToClass:[B

    .line 21
    .line 22
    aget-byte v0, v1, v0

    .line 23
    .line 24
    sget-object v1, Lorg/mozilla/universalchardet/prober/Latin1Prober;->latin1ClassModel:[B

    .line 25
    .line 26
    iget-byte v2, p0, Lorg/mozilla/universalchardet/prober/Latin1Prober;->lastCharClass:B

    .line 27
    .line 28
    mul-int/lit8 v2, v2, 0x8

    .line 29
    .line 30
    add-int/2addr v2, v0

    .line 31
    aget-byte v1, v1, v2

    .line 32
    .line 33
    if-nez v1, :cond_0

    .line 34
    .line 35
    sget-object p1, Lorg/mozilla/universalchardet/prober/CharsetProber$ProbingState;->NOT_ME:Lorg/mozilla/universalchardet/prober/CharsetProber$ProbingState;

    .line 36
    .line 37
    iput-object p1, p0, Lorg/mozilla/universalchardet/prober/Latin1Prober;->state:Lorg/mozilla/universalchardet/prober/CharsetProber$ProbingState;

    .line 38
    .line 39
    goto :goto_1

    .line 40
    :cond_0
    iget-object v2, p0, Lorg/mozilla/universalchardet/prober/Latin1Prober;->freqCounter:[I

    .line 41
    .line 42
    aget v3, v2, v1

    .line 43
    .line 44
    add-int/lit8 v3, v3, 0x1

    .line 45
    .line 46
    aput v3, v2, v1

    .line 47
    .line 48
    iput-byte v0, p0, Lorg/mozilla/universalchardet/prober/Latin1Prober;->lastCharClass:B

    .line 49
    .line 50
    add-int/lit8 p3, p3, 0x1

    .line 51
    .line 52
    goto :goto_0

    .line 53
    :cond_1
    :goto_1
    iget-object p1, p0, Lorg/mozilla/universalchardet/prober/Latin1Prober;->state:Lorg/mozilla/universalchardet/prober/CharsetProber$ProbingState;

    .line 54
    .line 55
    return-object p1
.end method

.method public final reset()V
    .locals 4

    .line 1
    sget-object v0, Lorg/mozilla/universalchardet/prober/CharsetProber$ProbingState;->DETECTING:Lorg/mozilla/universalchardet/prober/CharsetProber$ProbingState;

    .line 2
    .line 3
    iput-object v0, p0, Lorg/mozilla/universalchardet/prober/Latin1Prober;->state:Lorg/mozilla/universalchardet/prober/CharsetProber$ProbingState;

    .line 4
    .line 5
    const/4 v0, 0x1

    .line 6
    iput-byte v0, p0, Lorg/mozilla/universalchardet/prober/Latin1Prober;->lastCharClass:B

    .line 7
    .line 8
    const/4 v0, 0x0

    .line 9
    const/4 v1, 0x0

    .line 10
    :goto_0
    iget-object v2, p0, Lorg/mozilla/universalchardet/prober/Latin1Prober;->freqCounter:[I

    .line 11
    .line 12
    array-length v3, v2

    .line 13
    if-ge v1, v3, :cond_0

    .line 14
    .line 15
    aput v0, v2, v1

    .line 16
    .line 17
    add-int/lit8 v1, v1, 0x1

    .line 18
    .line 19
    goto :goto_0

    .line 20
    :cond_0
    return-void
.end method

.method public setOption()V
    .locals 0

    return-void
.end method
