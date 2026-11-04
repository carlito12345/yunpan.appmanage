.class public abstract Lorg/mozilla/universalchardet/prober/sequence/SequenceModel;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field protected charToOrderMap:[S

.field protected charsetName:Ljava/lang/String;

.field protected keepEnglishLetter:Z

.field protected precedenceMatrix:[B

.field protected typicalPositiveRatio:F


# direct methods
.method public constructor <init>([S[BFZLjava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    invoke-virtual {p1}, [S->clone()Ljava/lang/Object;

    .line 5
    .line 6
    .line 7
    move-result-object p1

    .line 8
    check-cast p1, [S

    .line 9
    .line 10
    iput-object p1, p0, Lorg/mozilla/universalchardet/prober/sequence/SequenceModel;->charToOrderMap:[S

    .line 11
    .line 12
    invoke-virtual {p2}, [B->clone()Ljava/lang/Object;

    .line 13
    .line 14
    .line 15
    move-result-object p1

    .line 16
    check-cast p1, [B

    .line 17
    .line 18
    iput-object p1, p0, Lorg/mozilla/universalchardet/prober/sequence/SequenceModel;->precedenceMatrix:[B

    .line 19
    .line 20
    iput p3, p0, Lorg/mozilla/universalchardet/prober/sequence/SequenceModel;->typicalPositiveRatio:F

    .line 21
    .line 22
    iput-boolean p4, p0, Lorg/mozilla/universalchardet/prober/sequence/SequenceModel;->keepEnglishLetter:Z

    .line 23
    .line 24
    iput-object p5, p0, Lorg/mozilla/universalchardet/prober/sequence/SequenceModel;->charsetName:Ljava/lang/String;

    .line 25
    .line 26
    return-void
.end method


# virtual methods
.method public getCharsetName()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/mozilla/universalchardet/prober/sequence/SequenceModel;->charsetName:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public getKeepEnglishLetter()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lorg/mozilla/universalchardet/prober/sequence/SequenceModel;->keepEnglishLetter:Z

    .line 2
    .line 3
    return v0
.end method

.method public getOrder(B)S
    .locals 1

    .line 1
    and-int/lit16 p1, p1, 0xff

    .line 2
    .line 3
    iget-object v0, p0, Lorg/mozilla/universalchardet/prober/sequence/SequenceModel;->charToOrderMap:[S

    .line 4
    .line 5
    aget-short p1, v0, p1

    .line 6
    .line 7
    return p1
.end method

.method public getPrecedence(I)B
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/mozilla/universalchardet/prober/sequence/SequenceModel;->precedenceMatrix:[B

    .line 2
    .line 3
    aget-byte p1, v0, p1

    .line 4
    .line 5
    return p1
.end method

.method public getTypicalPositiveRatio()F
    .locals 1

    .line 1
    iget v0, p0, Lorg/mozilla/universalchardet/prober/sequence/SequenceModel;->typicalPositiveRatio:F

    .line 2
    .line 3
    return v0
.end method
