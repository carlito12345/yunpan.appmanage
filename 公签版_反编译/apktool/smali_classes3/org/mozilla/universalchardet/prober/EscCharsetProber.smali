.class public Lorg/mozilla/universalchardet/prober/EscCharsetProber;
.super Lorg/mozilla/universalchardet/prober/CharsetProber;
.source "SourceFile"


# static fields
.field private static final hzsModel:Lorg/mozilla/universalchardet/prober/statemachine/HZSMModel;

.field private static final iso2022cnModel:Lorg/mozilla/universalchardet/prober/statemachine/ISO2022CNSMModel;

.field private static final iso2022jpModel:Lorg/mozilla/universalchardet/prober/statemachine/ISO2022JPSMModel;

.field private static final iso2022krModel:Lorg/mozilla/universalchardet/prober/statemachine/ISO2022KRSMModel;


# instance fields
.field private activeSM:I

.field private codingSM:[Lorg/mozilla/universalchardet/prober/statemachine/CodingStateMachine;

.field private detectedCharset:Ljava/lang/String;

.field private state:Lorg/mozilla/universalchardet/prober/CharsetProber$ProbingState;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lorg/mozilla/universalchardet/prober/statemachine/HZSMModel;

    .line 2
    .line 3
    invoke-direct {v0}, Lorg/mozilla/universalchardet/prober/statemachine/HZSMModel;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lorg/mozilla/universalchardet/prober/EscCharsetProber;->hzsModel:Lorg/mozilla/universalchardet/prober/statemachine/HZSMModel;

    .line 7
    .line 8
    new-instance v0, Lorg/mozilla/universalchardet/prober/statemachine/ISO2022CNSMModel;

    .line 9
    .line 10
    invoke-direct {v0}, Lorg/mozilla/universalchardet/prober/statemachine/ISO2022CNSMModel;-><init>()V

    .line 11
    .line 12
    .line 13
    sput-object v0, Lorg/mozilla/universalchardet/prober/EscCharsetProber;->iso2022cnModel:Lorg/mozilla/universalchardet/prober/statemachine/ISO2022CNSMModel;

    .line 14
    .line 15
    new-instance v0, Lorg/mozilla/universalchardet/prober/statemachine/ISO2022JPSMModel;

    .line 16
    .line 17
    invoke-direct {v0}, Lorg/mozilla/universalchardet/prober/statemachine/ISO2022JPSMModel;-><init>()V

    .line 18
    .line 19
    .line 20
    sput-object v0, Lorg/mozilla/universalchardet/prober/EscCharsetProber;->iso2022jpModel:Lorg/mozilla/universalchardet/prober/statemachine/ISO2022JPSMModel;

    .line 21
    .line 22
    new-instance v0, Lorg/mozilla/universalchardet/prober/statemachine/ISO2022KRSMModel;

    .line 23
    .line 24
    invoke-direct {v0}, Lorg/mozilla/universalchardet/prober/statemachine/ISO2022KRSMModel;-><init>()V

    .line 25
    .line 26
    .line 27
    sput-object v0, Lorg/mozilla/universalchardet/prober/EscCharsetProber;->iso2022krModel:Lorg/mozilla/universalchardet/prober/statemachine/ISO2022KRSMModel;

    .line 28
    .line 29
    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .line 1
    invoke-direct {p0}, Lorg/mozilla/universalchardet/prober/CharsetProber;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x4

    .line 5
    new-array v0, v0, [Lorg/mozilla/universalchardet/prober/statemachine/CodingStateMachine;

    .line 6
    .line 7
    iput-object v0, p0, Lorg/mozilla/universalchardet/prober/EscCharsetProber;->codingSM:[Lorg/mozilla/universalchardet/prober/statemachine/CodingStateMachine;

    .line 8
    .line 9
    new-instance v1, Lorg/mozilla/universalchardet/prober/statemachine/CodingStateMachine;

    .line 10
    .line 11
    sget-object v2, Lorg/mozilla/universalchardet/prober/EscCharsetProber;->hzsModel:Lorg/mozilla/universalchardet/prober/statemachine/HZSMModel;

    .line 12
    .line 13
    invoke-direct {v1, v2}, Lorg/mozilla/universalchardet/prober/statemachine/CodingStateMachine;-><init>(Lorg/mozilla/universalchardet/prober/statemachine/SMModel;)V

    .line 14
    .line 15
    .line 16
    const/4 v2, 0x0

    .line 17
    aput-object v1, v0, v2

    .line 18
    .line 19
    iget-object v0, p0, Lorg/mozilla/universalchardet/prober/EscCharsetProber;->codingSM:[Lorg/mozilla/universalchardet/prober/statemachine/CodingStateMachine;

    .line 20
    .line 21
    new-instance v1, Lorg/mozilla/universalchardet/prober/statemachine/CodingStateMachine;

    .line 22
    .line 23
    sget-object v2, Lorg/mozilla/universalchardet/prober/EscCharsetProber;->iso2022cnModel:Lorg/mozilla/universalchardet/prober/statemachine/ISO2022CNSMModel;

    .line 24
    .line 25
    invoke-direct {v1, v2}, Lorg/mozilla/universalchardet/prober/statemachine/CodingStateMachine;-><init>(Lorg/mozilla/universalchardet/prober/statemachine/SMModel;)V

    .line 26
    .line 27
    .line 28
    const/4 v2, 0x1

    .line 29
    aput-object v1, v0, v2

    .line 30
    .line 31
    iget-object v0, p0, Lorg/mozilla/universalchardet/prober/EscCharsetProber;->codingSM:[Lorg/mozilla/universalchardet/prober/statemachine/CodingStateMachine;

    .line 32
    .line 33
    new-instance v1, Lorg/mozilla/universalchardet/prober/statemachine/CodingStateMachine;

    .line 34
    .line 35
    sget-object v2, Lorg/mozilla/universalchardet/prober/EscCharsetProber;->iso2022jpModel:Lorg/mozilla/universalchardet/prober/statemachine/ISO2022JPSMModel;

    .line 36
    .line 37
    invoke-direct {v1, v2}, Lorg/mozilla/universalchardet/prober/statemachine/CodingStateMachine;-><init>(Lorg/mozilla/universalchardet/prober/statemachine/SMModel;)V

    .line 38
    .line 39
    .line 40
    const/4 v2, 0x2

    .line 41
    aput-object v1, v0, v2

    .line 42
    .line 43
    iget-object v0, p0, Lorg/mozilla/universalchardet/prober/EscCharsetProber;->codingSM:[Lorg/mozilla/universalchardet/prober/statemachine/CodingStateMachine;

    .line 44
    .line 45
    new-instance v1, Lorg/mozilla/universalchardet/prober/statemachine/CodingStateMachine;

    .line 46
    .line 47
    sget-object v2, Lorg/mozilla/universalchardet/prober/EscCharsetProber;->iso2022krModel:Lorg/mozilla/universalchardet/prober/statemachine/ISO2022KRSMModel;

    .line 48
    .line 49
    invoke-direct {v1, v2}, Lorg/mozilla/universalchardet/prober/statemachine/CodingStateMachine;-><init>(Lorg/mozilla/universalchardet/prober/statemachine/SMModel;)V

    .line 50
    .line 51
    .line 52
    const/4 v2, 0x3

    .line 53
    aput-object v1, v0, v2

    .line 54
    .line 55
    invoke-virtual {p0}, Lorg/mozilla/universalchardet/prober/EscCharsetProber;->reset()V

    .line 56
    .line 57
    .line 58
    return-void
.end method


# virtual methods
.method public getCharSetName()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/mozilla/universalchardet/prober/EscCharsetProber;->detectedCharset:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public getConfidence()F
    .locals 1

    const v0, 0x3f7d70a4    # 0.99f

    return v0
.end method

.method public getState()Lorg/mozilla/universalchardet/prober/CharsetProber$ProbingState;
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/mozilla/universalchardet/prober/EscCharsetProber;->state:Lorg/mozilla/universalchardet/prober/CharsetProber$ProbingState;

    .line 2
    .line 3
    return-object v0
.end method

.method public handleData([BII)Lorg/mozilla/universalchardet/prober/CharsetProber$ProbingState;
    .locals 6

    .line 1
    add-int/2addr p3, p2

    .line 2
    :goto_0
    if-ge p2, p3, :cond_4

    .line 3
    .line 4
    iget-object v0, p0, Lorg/mozilla/universalchardet/prober/EscCharsetProber;->state:Lorg/mozilla/universalchardet/prober/CharsetProber$ProbingState;

    .line 5
    .line 6
    sget-object v1, Lorg/mozilla/universalchardet/prober/CharsetProber$ProbingState;->DETECTING:Lorg/mozilla/universalchardet/prober/CharsetProber$ProbingState;

    .line 7
    .line 8
    if-ne v0, v1, :cond_4

    .line 9
    .line 10
    iget v0, p0, Lorg/mozilla/universalchardet/prober/EscCharsetProber;->activeSM:I

    .line 11
    .line 12
    const/4 v1, 0x1

    .line 13
    sub-int/2addr v0, v1

    .line 14
    :goto_1
    if-ltz v0, :cond_3

    .line 15
    .line 16
    iget-object v2, p0, Lorg/mozilla/universalchardet/prober/EscCharsetProber;->codingSM:[Lorg/mozilla/universalchardet/prober/statemachine/CodingStateMachine;

    .line 17
    .line 18
    aget-object v2, v2, v0

    .line 19
    .line 20
    aget-byte v3, p1, p2

    .line 21
    .line 22
    invoke-virtual {v2, v3}, Lorg/mozilla/universalchardet/prober/statemachine/CodingStateMachine;->nextState(B)I

    .line 23
    .line 24
    .line 25
    move-result v2

    .line 26
    if-ne v2, v1, :cond_1

    .line 27
    .line 28
    iget v2, p0, Lorg/mozilla/universalchardet/prober/EscCharsetProber;->activeSM:I

    .line 29
    .line 30
    sub-int/2addr v2, v1

    .line 31
    iput v2, p0, Lorg/mozilla/universalchardet/prober/EscCharsetProber;->activeSM:I

    .line 32
    .line 33
    if-gtz v2, :cond_0

    .line 34
    .line 35
    sget-object p1, Lorg/mozilla/universalchardet/prober/CharsetProber$ProbingState;->NOT_ME:Lorg/mozilla/universalchardet/prober/CharsetProber$ProbingState;

    .line 36
    .line 37
    iput-object p1, p0, Lorg/mozilla/universalchardet/prober/EscCharsetProber;->state:Lorg/mozilla/universalchardet/prober/CharsetProber$ProbingState;

    .line 38
    .line 39
    return-object p1

    .line 40
    :cond_0
    if-eq v0, v2, :cond_2

    .line 41
    .line 42
    iget-object v3, p0, Lorg/mozilla/universalchardet/prober/EscCharsetProber;->codingSM:[Lorg/mozilla/universalchardet/prober/statemachine/CodingStateMachine;

    .line 43
    .line 44
    aget-object v4, v3, v2

    .line 45
    .line 46
    aget-object v5, v3, v0

    .line 47
    .line 48
    aput-object v5, v3, v2

    .line 49
    .line 50
    aput-object v4, v3, v0

    .line 51
    .line 52
    goto :goto_2

    .line 53
    :cond_1
    const/4 v3, 0x2

    .line 54
    if-ne v2, v3, :cond_2

    .line 55
    .line 56
    sget-object p1, Lorg/mozilla/universalchardet/prober/CharsetProber$ProbingState;->FOUND_IT:Lorg/mozilla/universalchardet/prober/CharsetProber$ProbingState;

    .line 57
    .line 58
    iput-object p1, p0, Lorg/mozilla/universalchardet/prober/EscCharsetProber;->state:Lorg/mozilla/universalchardet/prober/CharsetProber$ProbingState;

    .line 59
    .line 60
    iget-object p1, p0, Lorg/mozilla/universalchardet/prober/EscCharsetProber;->codingSM:[Lorg/mozilla/universalchardet/prober/statemachine/CodingStateMachine;

    .line 61
    .line 62
    aget-object p1, p1, v0

    .line 63
    .line 64
    invoke-virtual {p1}, Lorg/mozilla/universalchardet/prober/statemachine/CodingStateMachine;->getCodingStateMachine()Ljava/lang/String;

    .line 65
    .line 66
    .line 67
    move-result-object p1

    .line 68
    iput-object p1, p0, Lorg/mozilla/universalchardet/prober/EscCharsetProber;->detectedCharset:Ljava/lang/String;

    .line 69
    .line 70
    iget-object p1, p0, Lorg/mozilla/universalchardet/prober/EscCharsetProber;->state:Lorg/mozilla/universalchardet/prober/CharsetProber$ProbingState;

    .line 71
    .line 72
    return-object p1

    .line 73
    :cond_2
    :goto_2
    add-int/lit8 v0, v0, -0x1

    .line 74
    .line 75
    goto :goto_1

    .line 76
    :cond_3
    add-int/lit8 p2, p2, 0x1

    .line 77
    .line 78
    goto :goto_0

    .line 79
    :cond_4
    iget-object p1, p0, Lorg/mozilla/universalchardet/prober/EscCharsetProber;->state:Lorg/mozilla/universalchardet/prober/CharsetProber$ProbingState;

    .line 80
    .line 81
    return-object p1
.end method

.method public final reset()V
    .locals 3

    .line 1
    sget-object v0, Lorg/mozilla/universalchardet/prober/CharsetProber$ProbingState;->DETECTING:Lorg/mozilla/universalchardet/prober/CharsetProber$ProbingState;

    .line 2
    .line 3
    iput-object v0, p0, Lorg/mozilla/universalchardet/prober/EscCharsetProber;->state:Lorg/mozilla/universalchardet/prober/CharsetProber$ProbingState;

    .line 4
    .line 5
    const/4 v0, 0x0

    .line 6
    :goto_0
    iget-object v1, p0, Lorg/mozilla/universalchardet/prober/EscCharsetProber;->codingSM:[Lorg/mozilla/universalchardet/prober/statemachine/CodingStateMachine;

    .line 7
    .line 8
    array-length v2, v1

    .line 9
    if-ge v0, v2, :cond_0

    .line 10
    .line 11
    aget-object v1, v1, v0

    .line 12
    .line 13
    invoke-virtual {v1}, Lorg/mozilla/universalchardet/prober/statemachine/CodingStateMachine;->reset()V

    .line 14
    .line 15
    .line 16
    add-int/lit8 v0, v0, 0x1

    .line 17
    .line 18
    goto :goto_0

    .line 19
    :cond_0
    array-length v0, v1

    .line 20
    iput v0, p0, Lorg/mozilla/universalchardet/prober/EscCharsetProber;->activeSM:I

    .line 21
    .line 22
    const/4 v0, 0x0

    .line 23
    iput-object v0, p0, Lorg/mozilla/universalchardet/prober/EscCharsetProber;->detectedCharset:Ljava/lang/String;

    .line 24
    .line 25
    return-void
.end method

.method public setOption()V
    .locals 0

    return-void
.end method
