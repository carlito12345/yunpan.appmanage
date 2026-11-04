.class public Lorg/mozilla/universalchardet/prober/GB18030Prober;
.super Lorg/mozilla/universalchardet/prober/CharsetProber;
.source "SourceFile"


# static fields
.field private static final smModel:Lorg/mozilla/universalchardet/prober/statemachine/SMModel;


# instance fields
.field private codingSM:Lorg/mozilla/universalchardet/prober/statemachine/CodingStateMachine;

.field private distributionAnalyzer:Lorg/mozilla/universalchardet/prober/distributionanalysis/GB2312DistributionAnalysis;

.field private lastChar:[B

.field private state:Lorg/mozilla/universalchardet/prober/CharsetProber$ProbingState;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lorg/mozilla/universalchardet/prober/statemachine/GB18030SMModel;

    .line 2
    .line 3
    invoke-direct {v0}, Lorg/mozilla/universalchardet/prober/statemachine/GB18030SMModel;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lorg/mozilla/universalchardet/prober/GB18030Prober;->smModel:Lorg/mozilla/universalchardet/prober/statemachine/SMModel;

    .line 7
    .line 8
    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Lorg/mozilla/universalchardet/prober/CharsetProber;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Lorg/mozilla/universalchardet/prober/statemachine/CodingStateMachine;

    .line 5
    .line 6
    sget-object v1, Lorg/mozilla/universalchardet/prober/GB18030Prober;->smModel:Lorg/mozilla/universalchardet/prober/statemachine/SMModel;

    .line 7
    .line 8
    invoke-direct {v0, v1}, Lorg/mozilla/universalchardet/prober/statemachine/CodingStateMachine;-><init>(Lorg/mozilla/universalchardet/prober/statemachine/SMModel;)V

    .line 9
    .line 10
    .line 11
    iput-object v0, p0, Lorg/mozilla/universalchardet/prober/GB18030Prober;->codingSM:Lorg/mozilla/universalchardet/prober/statemachine/CodingStateMachine;

    .line 12
    .line 13
    new-instance v0, Lorg/mozilla/universalchardet/prober/distributionanalysis/GB2312DistributionAnalysis;

    .line 14
    .line 15
    invoke-direct {v0}, Lorg/mozilla/universalchardet/prober/distributionanalysis/GB2312DistributionAnalysis;-><init>()V

    .line 16
    .line 17
    .line 18
    iput-object v0, p0, Lorg/mozilla/universalchardet/prober/GB18030Prober;->distributionAnalyzer:Lorg/mozilla/universalchardet/prober/distributionanalysis/GB2312DistributionAnalysis;

    .line 19
    .line 20
    const/4 v0, 0x2

    .line 21
    new-array v0, v0, [B

    .line 22
    .line 23
    iput-object v0, p0, Lorg/mozilla/universalchardet/prober/GB18030Prober;->lastChar:[B

    .line 24
    .line 25
    invoke-virtual {p0}, Lorg/mozilla/universalchardet/prober/GB18030Prober;->reset()V

    .line 26
    .line 27
    .line 28
    return-void
.end method


# virtual methods
.method public getCharSetName()Ljava/lang/String;
    .locals 1

    .line 1
    sget-object v0, Lorg/mozilla/universalchardet/Constants;->CHARSET_GB18030:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public getConfidence()F
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/mozilla/universalchardet/prober/GB18030Prober;->distributionAnalyzer:Lorg/mozilla/universalchardet/prober/distributionanalysis/GB2312DistributionAnalysis;

    .line 2
    .line 3
    invoke-virtual {v0}, Lorg/mozilla/universalchardet/prober/distributionanalysis/CharDistributionAnalysis;->getConfidence()F

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    return v0
.end method

.method public getState()Lorg/mozilla/universalchardet/prober/CharsetProber$ProbingState;
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/mozilla/universalchardet/prober/GB18030Prober;->state:Lorg/mozilla/universalchardet/prober/CharsetProber$ProbingState;

    .line 2
    .line 3
    return-object v0
.end method

.method public handleData([BII)Lorg/mozilla/universalchardet/prober/CharsetProber$ProbingState;
    .locals 6

    .line 1
    add-int/2addr p3, p2

    .line 2
    move v0, p2

    .line 3
    :goto_0
    const/4 v1, 0x0

    .line 4
    const/4 v2, 0x1

    .line 5
    if-ge v0, p3, :cond_4

    .line 6
    .line 7
    iget-object v3, p0, Lorg/mozilla/universalchardet/prober/GB18030Prober;->codingSM:Lorg/mozilla/universalchardet/prober/statemachine/CodingStateMachine;

    .line 8
    .line 9
    aget-byte v4, p1, v0

    .line 10
    .line 11
    invoke-virtual {v3, v4}, Lorg/mozilla/universalchardet/prober/statemachine/CodingStateMachine;->nextState(B)I

    .line 12
    .line 13
    .line 14
    move-result v3

    .line 15
    if-ne v3, v2, :cond_0

    .line 16
    .line 17
    sget-object p2, Lorg/mozilla/universalchardet/prober/CharsetProber$ProbingState;->NOT_ME:Lorg/mozilla/universalchardet/prober/CharsetProber$ProbingState;

    .line 18
    .line 19
    iput-object p2, p0, Lorg/mozilla/universalchardet/prober/GB18030Prober;->state:Lorg/mozilla/universalchardet/prober/CharsetProber$ProbingState;

    .line 20
    .line 21
    goto :goto_2

    .line 22
    :cond_0
    const/4 v4, 0x2

    .line 23
    if-ne v3, v4, :cond_1

    .line 24
    .line 25
    sget-object p2, Lorg/mozilla/universalchardet/prober/CharsetProber$ProbingState;->FOUND_IT:Lorg/mozilla/universalchardet/prober/CharsetProber$ProbingState;

    .line 26
    .line 27
    iput-object p2, p0, Lorg/mozilla/universalchardet/prober/GB18030Prober;->state:Lorg/mozilla/universalchardet/prober/CharsetProber$ProbingState;

    .line 28
    .line 29
    goto :goto_2

    .line 30
    :cond_1
    if-nez v3, :cond_3

    .line 31
    .line 32
    iget-object v3, p0, Lorg/mozilla/universalchardet/prober/GB18030Prober;->codingSM:Lorg/mozilla/universalchardet/prober/statemachine/CodingStateMachine;

    .line 33
    .line 34
    invoke-virtual {v3}, Lorg/mozilla/universalchardet/prober/statemachine/CodingStateMachine;->getCurrentCharLen()I

    .line 35
    .line 36
    .line 37
    move-result v3

    .line 38
    if-ne v0, p2, :cond_2

    .line 39
    .line 40
    iget-object v4, p0, Lorg/mozilla/universalchardet/prober/GB18030Prober;->lastChar:[B

    .line 41
    .line 42
    aget-byte v5, p1, p2

    .line 43
    .line 44
    aput-byte v5, v4, v2

    .line 45
    .line 46
    iget-object v2, p0, Lorg/mozilla/universalchardet/prober/GB18030Prober;->distributionAnalyzer:Lorg/mozilla/universalchardet/prober/distributionanalysis/GB2312DistributionAnalysis;

    .line 47
    .line 48
    invoke-virtual {v2, v4, v1, v3}, Lorg/mozilla/universalchardet/prober/distributionanalysis/CharDistributionAnalysis;->handleOneChar([BII)V

    .line 49
    .line 50
    .line 51
    goto :goto_1

    .line 52
    :cond_2
    iget-object v1, p0, Lorg/mozilla/universalchardet/prober/GB18030Prober;->distributionAnalyzer:Lorg/mozilla/universalchardet/prober/distributionanalysis/GB2312DistributionAnalysis;

    .line 53
    .line 54
    add-int/lit8 v2, v0, -0x1

    .line 55
    .line 56
    invoke-virtual {v1, p1, v2, v3}, Lorg/mozilla/universalchardet/prober/distributionanalysis/CharDistributionAnalysis;->handleOneChar([BII)V

    .line 57
    .line 58
    .line 59
    :cond_3
    :goto_1
    add-int/lit8 v0, v0, 0x1

    .line 60
    .line 61
    goto :goto_0

    .line 62
    :cond_4
    :goto_2
    iget-object p2, p0, Lorg/mozilla/universalchardet/prober/GB18030Prober;->lastChar:[B

    .line 63
    .line 64
    sub-int/2addr p3, v2

    .line 65
    aget-byte p1, p1, p3

    .line 66
    .line 67
    aput-byte p1, p2, v1

    .line 68
    .line 69
    iget-object p1, p0, Lorg/mozilla/universalchardet/prober/GB18030Prober;->state:Lorg/mozilla/universalchardet/prober/CharsetProber$ProbingState;

    .line 70
    .line 71
    sget-object p2, Lorg/mozilla/universalchardet/prober/CharsetProber$ProbingState;->DETECTING:Lorg/mozilla/universalchardet/prober/CharsetProber$ProbingState;

    .line 72
    .line 73
    if-ne p1, p2, :cond_5

    .line 74
    .line 75
    iget-object p1, p0, Lorg/mozilla/universalchardet/prober/GB18030Prober;->distributionAnalyzer:Lorg/mozilla/universalchardet/prober/distributionanalysis/GB2312DistributionAnalysis;

    .line 76
    .line 77
    invoke-virtual {p1}, Lorg/mozilla/universalchardet/prober/distributionanalysis/CharDistributionAnalysis;->gotEnoughData()Z

    .line 78
    .line 79
    .line 80
    move-result p1

    .line 81
    if-eqz p1, :cond_5

    .line 82
    .line 83
    invoke-virtual {p0}, Lorg/mozilla/universalchardet/prober/GB18030Prober;->getConfidence()F

    .line 84
    .line 85
    .line 86
    move-result p1

    .line 87
    const p2, 0x3f733333    # 0.95f

    .line 88
    .line 89
    .line 90
    cmpl-float p1, p1, p2

    .line 91
    .line 92
    if-lez p1, :cond_5

    .line 93
    .line 94
    sget-object p1, Lorg/mozilla/universalchardet/prober/CharsetProber$ProbingState;->FOUND_IT:Lorg/mozilla/universalchardet/prober/CharsetProber$ProbingState;

    .line 95
    .line 96
    iput-object p1, p0, Lorg/mozilla/universalchardet/prober/GB18030Prober;->state:Lorg/mozilla/universalchardet/prober/CharsetProber$ProbingState;

    .line 97
    .line 98
    :cond_5
    iget-object p1, p0, Lorg/mozilla/universalchardet/prober/GB18030Prober;->state:Lorg/mozilla/universalchardet/prober/CharsetProber$ProbingState;

    .line 99
    .line 100
    return-object p1
.end method

.method public final reset()V
    .locals 2

    .line 1
    iget-object v0, p0, Lorg/mozilla/universalchardet/prober/GB18030Prober;->codingSM:Lorg/mozilla/universalchardet/prober/statemachine/CodingStateMachine;

    .line 2
    .line 3
    invoke-virtual {v0}, Lorg/mozilla/universalchardet/prober/statemachine/CodingStateMachine;->reset()V

    .line 4
    .line 5
    .line 6
    sget-object v0, Lorg/mozilla/universalchardet/prober/CharsetProber$ProbingState;->DETECTING:Lorg/mozilla/universalchardet/prober/CharsetProber$ProbingState;

    .line 7
    .line 8
    iput-object v0, p0, Lorg/mozilla/universalchardet/prober/GB18030Prober;->state:Lorg/mozilla/universalchardet/prober/CharsetProber$ProbingState;

    .line 9
    .line 10
    iget-object v0, p0, Lorg/mozilla/universalchardet/prober/GB18030Prober;->distributionAnalyzer:Lorg/mozilla/universalchardet/prober/distributionanalysis/GB2312DistributionAnalysis;

    .line 11
    .line 12
    invoke-virtual {v0}, Lorg/mozilla/universalchardet/prober/distributionanalysis/CharDistributionAnalysis;->reset()V

    .line 13
    .line 14
    .line 15
    iget-object v0, p0, Lorg/mozilla/universalchardet/prober/GB18030Prober;->lastChar:[B

    .line 16
    .line 17
    const/4 v1, 0x0

    .line 18
    invoke-static {v0, v1}, Ljava/util/Arrays;->fill([BB)V

    .line 19
    .line 20
    .line 21
    return-void
.end method

.method public setOption()V
    .locals 0

    return-void
.end method
