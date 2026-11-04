.class public Lorg/mozilla/universalchardet/prober/UTF8Prober;
.super Lorg/mozilla/universalchardet/prober/CharsetProber;
.source "SourceFile"


# static fields
.field public static final ONE_CHAR_PROB:F = 0.5f

.field private static final smModel:Lorg/mozilla/universalchardet/prober/statemachine/SMModel;


# instance fields
.field private codingSM:Lorg/mozilla/universalchardet/prober/statemachine/CodingStateMachine;

.field private numOfMBChar:I

.field private state:Lorg/mozilla/universalchardet/prober/CharsetProber$ProbingState;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lorg/mozilla/universalchardet/prober/statemachine/UTF8SMModel;

    .line 2
    .line 3
    invoke-direct {v0}, Lorg/mozilla/universalchardet/prober/statemachine/UTF8SMModel;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lorg/mozilla/universalchardet/prober/UTF8Prober;->smModel:Lorg/mozilla/universalchardet/prober/statemachine/SMModel;

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
    const/4 v0, 0x0

    .line 5
    iput v0, p0, Lorg/mozilla/universalchardet/prober/UTF8Prober;->numOfMBChar:I

    .line 6
    .line 7
    new-instance v0, Lorg/mozilla/universalchardet/prober/statemachine/CodingStateMachine;

    .line 8
    .line 9
    sget-object v1, Lorg/mozilla/universalchardet/prober/UTF8Prober;->smModel:Lorg/mozilla/universalchardet/prober/statemachine/SMModel;

    .line 10
    .line 11
    invoke-direct {v0, v1}, Lorg/mozilla/universalchardet/prober/statemachine/CodingStateMachine;-><init>(Lorg/mozilla/universalchardet/prober/statemachine/SMModel;)V

    .line 12
    .line 13
    .line 14
    iput-object v0, p0, Lorg/mozilla/universalchardet/prober/UTF8Prober;->codingSM:Lorg/mozilla/universalchardet/prober/statemachine/CodingStateMachine;

    .line 15
    .line 16
    invoke-virtual {p0}, Lorg/mozilla/universalchardet/prober/UTF8Prober;->reset()V

    .line 17
    .line 18
    .line 19
    return-void
.end method


# virtual methods
.method public getCharSetName()Ljava/lang/String;
    .locals 1

    .line 1
    sget-object v0, Lorg/mozilla/universalchardet/Constants;->CHARSET_UTF_8:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public getConfidence()F
    .locals 3

    .line 1
    iget v0, p0, Lorg/mozilla/universalchardet/prober/UTF8Prober;->numOfMBChar:I

    .line 2
    .line 3
    const/4 v1, 0x6

    .line 4
    const v2, 0x3f7d70a4    # 0.99f

    .line 5
    .line 6
    .line 7
    if-ge v0, v1, :cond_1

    .line 8
    .line 9
    const/4 v0, 0x0

    .line 10
    :goto_0
    iget v1, p0, Lorg/mozilla/universalchardet/prober/UTF8Prober;->numOfMBChar:I

    .line 11
    .line 12
    if-ge v0, v1, :cond_0

    .line 13
    .line 14
    const/high16 v1, 0x3f000000    # 0.5f

    .line 15
    .line 16
    mul-float v2, v2, v1

    .line 17
    .line 18
    add-int/lit8 v0, v0, 0x1

    .line 19
    .line 20
    goto :goto_0

    .line 21
    :cond_0
    const/high16 v0, 0x3f800000    # 1.0f

    .line 22
    .line 23
    sub-float/2addr v0, v2

    .line 24
    return v0

    .line 25
    :cond_1
    return v2
.end method

.method public getState()Lorg/mozilla/universalchardet/prober/CharsetProber$ProbingState;
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/mozilla/universalchardet/prober/UTF8Prober;->state:Lorg/mozilla/universalchardet/prober/CharsetProber$ProbingState;

    .line 2
    .line 3
    return-object v0
.end method

.method public handleData([BII)Lorg/mozilla/universalchardet/prober/CharsetProber$ProbingState;
    .locals 3

    .line 1
    add-int/2addr p3, p2

    .line 2
    :goto_0
    if-ge p2, p3, :cond_3

    .line 3
    .line 4
    iget-object v0, p0, Lorg/mozilla/universalchardet/prober/UTF8Prober;->codingSM:Lorg/mozilla/universalchardet/prober/statemachine/CodingStateMachine;

    .line 5
    .line 6
    aget-byte v1, p1, p2

    .line 7
    .line 8
    invoke-virtual {v0, v1}, Lorg/mozilla/universalchardet/prober/statemachine/CodingStateMachine;->nextState(B)I

    .line 9
    .line 10
    .line 11
    move-result v0

    .line 12
    const/4 v1, 0x1

    .line 13
    if-ne v0, v1, :cond_0

    .line 14
    .line 15
    sget-object p1, Lorg/mozilla/universalchardet/prober/CharsetProber$ProbingState;->NOT_ME:Lorg/mozilla/universalchardet/prober/CharsetProber$ProbingState;

    .line 16
    .line 17
    iput-object p1, p0, Lorg/mozilla/universalchardet/prober/UTF8Prober;->state:Lorg/mozilla/universalchardet/prober/CharsetProber$ProbingState;

    .line 18
    .line 19
    goto :goto_1

    .line 20
    :cond_0
    const/4 v2, 0x2

    .line 21
    if-ne v0, v2, :cond_1

    .line 22
    .line 23
    sget-object p1, Lorg/mozilla/universalchardet/prober/CharsetProber$ProbingState;->FOUND_IT:Lorg/mozilla/universalchardet/prober/CharsetProber$ProbingState;

    .line 24
    .line 25
    iput-object p1, p0, Lorg/mozilla/universalchardet/prober/UTF8Prober;->state:Lorg/mozilla/universalchardet/prober/CharsetProber$ProbingState;

    .line 26
    .line 27
    goto :goto_1

    .line 28
    :cond_1
    if-nez v0, :cond_2

    .line 29
    .line 30
    iget-object v0, p0, Lorg/mozilla/universalchardet/prober/UTF8Prober;->codingSM:Lorg/mozilla/universalchardet/prober/statemachine/CodingStateMachine;

    .line 31
    .line 32
    invoke-virtual {v0}, Lorg/mozilla/universalchardet/prober/statemachine/CodingStateMachine;->getCurrentCharLen()I

    .line 33
    .line 34
    .line 35
    move-result v0

    .line 36
    if-lt v0, v2, :cond_2

    .line 37
    .line 38
    iget v0, p0, Lorg/mozilla/universalchardet/prober/UTF8Prober;->numOfMBChar:I

    .line 39
    .line 40
    add-int/2addr v0, v1

    .line 41
    iput v0, p0, Lorg/mozilla/universalchardet/prober/UTF8Prober;->numOfMBChar:I

    .line 42
    .line 43
    :cond_2
    add-int/lit8 p2, p2, 0x1

    .line 44
    .line 45
    goto :goto_0

    .line 46
    :cond_3
    :goto_1
    iget-object p1, p0, Lorg/mozilla/universalchardet/prober/UTF8Prober;->state:Lorg/mozilla/universalchardet/prober/CharsetProber$ProbingState;

    .line 47
    .line 48
    sget-object p2, Lorg/mozilla/universalchardet/prober/CharsetProber$ProbingState;->DETECTING:Lorg/mozilla/universalchardet/prober/CharsetProber$ProbingState;

    .line 49
    .line 50
    if-ne p1, p2, :cond_4

    .line 51
    .line 52
    invoke-virtual {p0}, Lorg/mozilla/universalchardet/prober/UTF8Prober;->getConfidence()F

    .line 53
    .line 54
    .line 55
    move-result p1

    .line 56
    const p2, 0x3f733333    # 0.95f

    .line 57
    .line 58
    .line 59
    cmpl-float p1, p1, p2

    .line 60
    .line 61
    if-lez p1, :cond_4

    .line 62
    .line 63
    sget-object p1, Lorg/mozilla/universalchardet/prober/CharsetProber$ProbingState;->FOUND_IT:Lorg/mozilla/universalchardet/prober/CharsetProber$ProbingState;

    .line 64
    .line 65
    iput-object p1, p0, Lorg/mozilla/universalchardet/prober/UTF8Prober;->state:Lorg/mozilla/universalchardet/prober/CharsetProber$ProbingState;

    .line 66
    .line 67
    :cond_4
    iget-object p1, p0, Lorg/mozilla/universalchardet/prober/UTF8Prober;->state:Lorg/mozilla/universalchardet/prober/CharsetProber$ProbingState;

    .line 68
    .line 69
    return-object p1
.end method

.method public final reset()V
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/mozilla/universalchardet/prober/UTF8Prober;->codingSM:Lorg/mozilla/universalchardet/prober/statemachine/CodingStateMachine;

    .line 2
    .line 3
    invoke-virtual {v0}, Lorg/mozilla/universalchardet/prober/statemachine/CodingStateMachine;->reset()V

    .line 4
    .line 5
    .line 6
    const/4 v0, 0x0

    .line 7
    iput v0, p0, Lorg/mozilla/universalchardet/prober/UTF8Prober;->numOfMBChar:I

    .line 8
    .line 9
    sget-object v0, Lorg/mozilla/universalchardet/prober/CharsetProber$ProbingState;->DETECTING:Lorg/mozilla/universalchardet/prober/CharsetProber$ProbingState;

    .line 10
    .line 11
    iput-object v0, p0, Lorg/mozilla/universalchardet/prober/UTF8Prober;->state:Lorg/mozilla/universalchardet/prober/CharsetProber$ProbingState;

    .line 12
    .line 13
    return-void
.end method

.method public setOption()V
    .locals 0

    return-void
.end method
