.class public Lorg/mozilla/universalchardet/prober/MBCSGroupProber;
.super Lorg/mozilla/universalchardet/prober/CharsetProber;
.source "SourceFile"


# instance fields
.field private activeNum:I

.field private bestGuess:Lorg/mozilla/universalchardet/prober/CharsetProber;

.field private probers:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/mozilla/universalchardet/prober/CharsetProber;",
            ">;"
        }
    .end annotation
.end field

.field private state:Lorg/mozilla/universalchardet/prober/CharsetProber$ProbingState;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Lorg/mozilla/universalchardet/prober/CharsetProber;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Ljava/util/ArrayList;

    .line 5
    .line 6
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Lorg/mozilla/universalchardet/prober/MBCSGroupProber;->probers:Ljava/util/List;

    .line 10
    .line 11
    new-instance v1, Lorg/mozilla/universalchardet/prober/GB18030Prober;

    .line 12
    .line 13
    invoke-direct {v1}, Lorg/mozilla/universalchardet/prober/GB18030Prober;-><init>()V

    .line 14
    .line 15
    .line 16
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 17
    .line 18
    .line 19
    iget-object v0, p0, Lorg/mozilla/universalchardet/prober/MBCSGroupProber;->probers:Ljava/util/List;

    .line 20
    .line 21
    new-instance v1, Lorg/mozilla/universalchardet/prober/UTF8Prober;

    .line 22
    .line 23
    invoke-direct {v1}, Lorg/mozilla/universalchardet/prober/UTF8Prober;-><init>()V

    .line 24
    .line 25
    .line 26
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 27
    .line 28
    .line 29
    iget-object v0, p0, Lorg/mozilla/universalchardet/prober/MBCSGroupProber;->probers:Ljava/util/List;

    .line 30
    .line 31
    new-instance v1, Lorg/mozilla/universalchardet/prober/Big5Prober;

    .line 32
    .line 33
    invoke-direct {v1}, Lorg/mozilla/universalchardet/prober/Big5Prober;-><init>()V

    .line 34
    .line 35
    .line 36
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 37
    .line 38
    .line 39
    iget-object v0, p0, Lorg/mozilla/universalchardet/prober/MBCSGroupProber;->probers:Ljava/util/List;

    .line 40
    .line 41
    new-instance v1, Lorg/mozilla/universalchardet/prober/SJISProber;

    .line 42
    .line 43
    invoke-direct {v1}, Lorg/mozilla/universalchardet/prober/SJISProber;-><init>()V

    .line 44
    .line 45
    .line 46
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 47
    .line 48
    .line 49
    iget-object v0, p0, Lorg/mozilla/universalchardet/prober/MBCSGroupProber;->probers:Ljava/util/List;

    .line 50
    .line 51
    new-instance v1, Lorg/mozilla/universalchardet/prober/EUCJPProber;

    .line 52
    .line 53
    invoke-direct {v1}, Lorg/mozilla/universalchardet/prober/EUCJPProber;-><init>()V

    .line 54
    .line 55
    .line 56
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 57
    .line 58
    .line 59
    iget-object v0, p0, Lorg/mozilla/universalchardet/prober/MBCSGroupProber;->probers:Ljava/util/List;

    .line 60
    .line 61
    new-instance v1, Lorg/mozilla/universalchardet/prober/EUCKRProber;

    .line 62
    .line 63
    invoke-direct {v1}, Lorg/mozilla/universalchardet/prober/EUCKRProber;-><init>()V

    .line 64
    .line 65
    .line 66
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 67
    .line 68
    .line 69
    iget-object v0, p0, Lorg/mozilla/universalchardet/prober/MBCSGroupProber;->probers:Ljava/util/List;

    .line 70
    .line 71
    new-instance v1, Lorg/mozilla/universalchardet/prober/EUCTWProber;

    .line 72
    .line 73
    invoke-direct {v1}, Lorg/mozilla/universalchardet/prober/EUCTWProber;-><init>()V

    .line 74
    .line 75
    .line 76
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 77
    .line 78
    .line 79
    invoke-virtual {p0}, Lorg/mozilla/universalchardet/prober/MBCSGroupProber;->reset()V

    .line 80
    .line 81
    .line 82
    return-void
.end method


# virtual methods
.method public getCharSetName()Ljava/lang/String;
    .locals 2

    .line 1
    iget-object v0, p0, Lorg/mozilla/universalchardet/prober/MBCSGroupProber;->bestGuess:Lorg/mozilla/universalchardet/prober/CharsetProber;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {p0}, Lorg/mozilla/universalchardet/prober/MBCSGroupProber;->getConfidence()F

    .line 6
    .line 7
    .line 8
    iget-object v0, p0, Lorg/mozilla/universalchardet/prober/MBCSGroupProber;->bestGuess:Lorg/mozilla/universalchardet/prober/CharsetProber;

    .line 9
    .line 10
    if-nez v0, :cond_0

    .line 11
    .line 12
    iget-object v0, p0, Lorg/mozilla/universalchardet/prober/MBCSGroupProber;->probers:Ljava/util/List;

    .line 13
    .line 14
    const/4 v1, 0x0

    .line 15
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    check-cast v0, Lorg/mozilla/universalchardet/prober/CharsetProber;

    .line 20
    .line 21
    iput-object v0, p0, Lorg/mozilla/universalchardet/prober/MBCSGroupProber;->bestGuess:Lorg/mozilla/universalchardet/prober/CharsetProber;

    .line 22
    .line 23
    :cond_0
    iget-object v0, p0, Lorg/mozilla/universalchardet/prober/MBCSGroupProber;->bestGuess:Lorg/mozilla/universalchardet/prober/CharsetProber;

    .line 24
    .line 25
    invoke-virtual {v0}, Lorg/mozilla/universalchardet/prober/CharsetProber;->getCharSetName()Ljava/lang/String;

    .line 26
    .line 27
    .line 28
    move-result-object v0

    .line 29
    return-object v0
.end method

.method public getConfidence()F
    .locals 5

    .line 1
    iget-object v0, p0, Lorg/mozilla/universalchardet/prober/MBCSGroupProber;->state:Lorg/mozilla/universalchardet/prober/CharsetProber$ProbingState;

    .line 2
    .line 3
    sget-object v1, Lorg/mozilla/universalchardet/prober/CharsetProber$ProbingState;->FOUND_IT:Lorg/mozilla/universalchardet/prober/CharsetProber$ProbingState;

    .line 4
    .line 5
    if-ne v0, v1, :cond_0

    .line 6
    .line 7
    const v0, 0x3f7d70a4    # 0.99f

    .line 8
    .line 9
    .line 10
    return v0

    .line 11
    :cond_0
    sget-object v1, Lorg/mozilla/universalchardet/prober/CharsetProber$ProbingState;->NOT_ME:Lorg/mozilla/universalchardet/prober/CharsetProber$ProbingState;

    .line 12
    .line 13
    if-ne v0, v1, :cond_1

    .line 14
    .line 15
    const v0, 0x3c23d70a    # 0.01f

    .line 16
    .line 17
    .line 18
    return v0

    .line 19
    :cond_1
    iget-object v0, p0, Lorg/mozilla/universalchardet/prober/MBCSGroupProber;->probers:Ljava/util/List;

    .line 20
    .line 21
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 22
    .line 23
    .line 24
    move-result-object v0

    .line 25
    const/4 v1, 0x0

    .line 26
    :cond_2
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 27
    .line 28
    .line 29
    move-result v2

    .line 30
    if-eqz v2, :cond_4

    .line 31
    .line 32
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 33
    .line 34
    .line 35
    move-result-object v2

    .line 36
    check-cast v2, Lorg/mozilla/universalchardet/prober/CharsetProber;

    .line 37
    .line 38
    invoke-virtual {v2}, Lorg/mozilla/universalchardet/prober/CharsetProber;->isActive()Z

    .line 39
    .line 40
    .line 41
    move-result v3

    .line 42
    if-nez v3, :cond_3

    .line 43
    .line 44
    goto :goto_0

    .line 45
    :cond_3
    invoke-virtual {v2}, Lorg/mozilla/universalchardet/prober/CharsetProber;->getConfidence()F

    .line 46
    .line 47
    .line 48
    move-result v3

    .line 49
    cmpg-float v4, v1, v3

    .line 50
    .line 51
    if-gez v4, :cond_2

    .line 52
    .line 53
    iput-object v2, p0, Lorg/mozilla/universalchardet/prober/MBCSGroupProber;->bestGuess:Lorg/mozilla/universalchardet/prober/CharsetProber;

    .line 54
    .line 55
    move v1, v3

    .line 56
    goto :goto_0

    .line 57
    :cond_4
    return v1
.end method

.method public getState()Lorg/mozilla/universalchardet/prober/CharsetProber$ProbingState;
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/mozilla/universalchardet/prober/MBCSGroupProber;->state:Lorg/mozilla/universalchardet/prober/CharsetProber$ProbingState;

    .line 2
    .line 3
    return-object v0
.end method

.method public handleData([BII)Lorg/mozilla/universalchardet/prober/CharsetProber$ProbingState;
    .locals 7

    .line 1
    new-array v0, p3, [B

    .line 2
    .line 3
    add-int/2addr p3, p2

    .line 4
    const/4 v1, 0x1

    .line 5
    const/4 v2, 0x0

    .line 6
    const/4 v3, 0x1

    .line 7
    const/4 v4, 0x0

    .line 8
    :goto_0
    if-ge p2, p3, :cond_2

    .line 9
    .line 10
    aget-byte v5, p1, p2

    .line 11
    .line 12
    and-int/lit16 v6, v5, 0x80

    .line 13
    .line 14
    if-eqz v6, :cond_0

    .line 15
    .line 16
    add-int/lit8 v3, v4, 0x1

    .line 17
    .line 18
    aput-byte v5, v0, v4

    .line 19
    .line 20
    move v4, v3

    .line 21
    const/4 v3, 0x1

    .line 22
    goto :goto_1

    .line 23
    :cond_0
    if-eqz v3, :cond_1

    .line 24
    .line 25
    add-int/lit8 v3, v4, 0x1

    .line 26
    .line 27
    aput-byte v5, v0, v4

    .line 28
    .line 29
    move v4, v3

    .line 30
    const/4 v3, 0x0

    .line 31
    :cond_1
    :goto_1
    add-int/lit8 p2, p2, 0x1

    .line 32
    .line 33
    goto :goto_0

    .line 34
    :cond_2
    iget-object p1, p0, Lorg/mozilla/universalchardet/prober/MBCSGroupProber;->probers:Ljava/util/List;

    .line 35
    .line 36
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 37
    .line 38
    .line 39
    move-result-object p1

    .line 40
    :cond_3
    :goto_2
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 41
    .line 42
    .line 43
    move-result p2

    .line 44
    if-eqz p2, :cond_7

    .line 45
    .line 46
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 47
    .line 48
    .line 49
    move-result-object p2

    .line 50
    check-cast p2, Lorg/mozilla/universalchardet/prober/CharsetProber;

    .line 51
    .line 52
    invoke-virtual {p2}, Lorg/mozilla/universalchardet/prober/CharsetProber;->isActive()Z

    .line 53
    .line 54
    .line 55
    move-result p3

    .line 56
    if-nez p3, :cond_4

    .line 57
    .line 58
    goto :goto_2

    .line 59
    :cond_4
    invoke-virtual {p2, v0, v2, v4}, Lorg/mozilla/universalchardet/prober/CharsetProber;->handleData([BII)Lorg/mozilla/universalchardet/prober/CharsetProber$ProbingState;

    .line 60
    .line 61
    .line 62
    move-result-object p3

    .line 63
    sget-object v3, Lorg/mozilla/universalchardet/prober/CharsetProber$ProbingState;->FOUND_IT:Lorg/mozilla/universalchardet/prober/CharsetProber$ProbingState;

    .line 64
    .line 65
    if-eq p3, v3, :cond_6

    .line 66
    .line 67
    const v5, 0x3f7d70a4    # 0.99f

    .line 68
    .line 69
    .line 70
    invoke-virtual {p2}, Lorg/mozilla/universalchardet/prober/CharsetProber;->getConfidence()F

    .line 71
    .line 72
    .line 73
    move-result v6

    .line 74
    cmpl-float v5, v5, v6

    .line 75
    .line 76
    if-nez v5, :cond_5

    .line 77
    .line 78
    goto :goto_3

    .line 79
    :cond_5
    sget-object v3, Lorg/mozilla/universalchardet/prober/CharsetProber$ProbingState;->NOT_ME:Lorg/mozilla/universalchardet/prober/CharsetProber$ProbingState;

    .line 80
    .line 81
    if-ne p3, v3, :cond_3

    .line 82
    .line 83
    invoke-virtual {p2, v2}, Lorg/mozilla/universalchardet/prober/CharsetProber;->setActive(Z)V

    .line 84
    .line 85
    .line 86
    iget p2, p0, Lorg/mozilla/universalchardet/prober/MBCSGroupProber;->activeNum:I

    .line 87
    .line 88
    sub-int/2addr p2, v1

    .line 89
    iput p2, p0, Lorg/mozilla/universalchardet/prober/MBCSGroupProber;->activeNum:I

    .line 90
    .line 91
    if-gtz p2, :cond_3

    .line 92
    .line 93
    iput-object v3, p0, Lorg/mozilla/universalchardet/prober/MBCSGroupProber;->state:Lorg/mozilla/universalchardet/prober/CharsetProber$ProbingState;

    .line 94
    .line 95
    goto :goto_4

    .line 96
    :cond_6
    :goto_3
    iput-object p2, p0, Lorg/mozilla/universalchardet/prober/MBCSGroupProber;->bestGuess:Lorg/mozilla/universalchardet/prober/CharsetProber;

    .line 97
    .line 98
    iput-object v3, p0, Lorg/mozilla/universalchardet/prober/MBCSGroupProber;->state:Lorg/mozilla/universalchardet/prober/CharsetProber$ProbingState;

    .line 99
    .line 100
    :cond_7
    :goto_4
    iget-object p1, p0, Lorg/mozilla/universalchardet/prober/MBCSGroupProber;->state:Lorg/mozilla/universalchardet/prober/CharsetProber$ProbingState;

    .line 101
    .line 102
    return-object p1
.end method

.method public final reset()V
    .locals 3

    .line 1
    const/4 v0, 0x0

    .line 2
    iput v0, p0, Lorg/mozilla/universalchardet/prober/MBCSGroupProber;->activeNum:I

    .line 3
    .line 4
    iget-object v0, p0, Lorg/mozilla/universalchardet/prober/MBCSGroupProber;->probers:Ljava/util/List;

    .line 5
    .line 6
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 11
    .line 12
    .line 13
    move-result v1

    .line 14
    if-eqz v1, :cond_0

    .line 15
    .line 16
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 17
    .line 18
    .line 19
    move-result-object v1

    .line 20
    check-cast v1, Lorg/mozilla/universalchardet/prober/CharsetProber;

    .line 21
    .line 22
    invoke-virtual {v1}, Lorg/mozilla/universalchardet/prober/CharsetProber;->reset()V

    .line 23
    .line 24
    .line 25
    const/4 v2, 0x1

    .line 26
    invoke-virtual {v1, v2}, Lorg/mozilla/universalchardet/prober/CharsetProber;->setActive(Z)V

    .line 27
    .line 28
    .line 29
    iget v1, p0, Lorg/mozilla/universalchardet/prober/MBCSGroupProber;->activeNum:I

    .line 30
    .line 31
    add-int/2addr v1, v2

    .line 32
    iput v1, p0, Lorg/mozilla/universalchardet/prober/MBCSGroupProber;->activeNum:I

    .line 33
    .line 34
    goto :goto_0

    .line 35
    :cond_0
    const/4 v0, 0x0

    .line 36
    iput-object v0, p0, Lorg/mozilla/universalchardet/prober/MBCSGroupProber;->bestGuess:Lorg/mozilla/universalchardet/prober/CharsetProber;

    .line 37
    .line 38
    sget-object v0, Lorg/mozilla/universalchardet/prober/CharsetProber$ProbingState;->DETECTING:Lorg/mozilla/universalchardet/prober/CharsetProber$ProbingState;

    .line 39
    .line 40
    iput-object v0, p0, Lorg/mozilla/universalchardet/prober/MBCSGroupProber;->state:Lorg/mozilla/universalchardet/prober/CharsetProber$ProbingState;

    .line 41
    .line 42
    return-void
.end method

.method public setOption()V
    .locals 0

    return-void
.end method
