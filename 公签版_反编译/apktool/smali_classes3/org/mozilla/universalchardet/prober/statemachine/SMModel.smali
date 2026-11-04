.class public abstract Lorg/mozilla/universalchardet/prober/statemachine/SMModel;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final ERROR:I = 0x1

.field public static final ITSME:I = 0x2

.field public static final START:I


# instance fields
.field protected charLenTable:[I

.field protected classFactor:I

.field protected classTable:Lorg/mozilla/universalchardet/prober/statemachine/PkgInt;

.field protected name:Ljava/lang/String;

.field protected stateTable:Lorg/mozilla/universalchardet/prober/statemachine/PkgInt;


# direct methods
.method public constructor <init>(Lorg/mozilla/universalchardet/prober/statemachine/PkgInt;ILorg/mozilla/universalchardet/prober/statemachine/PkgInt;[ILjava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lorg/mozilla/universalchardet/prober/statemachine/SMModel;->classTable:Lorg/mozilla/universalchardet/prober/statemachine/PkgInt;

    .line 5
    .line 6
    iput p2, p0, Lorg/mozilla/universalchardet/prober/statemachine/SMModel;->classFactor:I

    .line 7
    .line 8
    iput-object p3, p0, Lorg/mozilla/universalchardet/prober/statemachine/SMModel;->stateTable:Lorg/mozilla/universalchardet/prober/statemachine/PkgInt;

    .line 9
    .line 10
    invoke-virtual {p4}, [I->clone()Ljava/lang/Object;

    .line 11
    .line 12
    .line 13
    move-result-object p1

    .line 14
    check-cast p1, [I

    .line 15
    .line 16
    iput-object p1, p0, Lorg/mozilla/universalchardet/prober/statemachine/SMModel;->charLenTable:[I

    .line 17
    .line 18
    iput-object p5, p0, Lorg/mozilla/universalchardet/prober/statemachine/SMModel;->name:Ljava/lang/String;

    .line 19
    .line 20
    return-void
.end method


# virtual methods
.method public getCharLen(I)I
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/mozilla/universalchardet/prober/statemachine/SMModel;->charLenTable:[I

    .line 2
    .line 3
    aget p1, v0, p1

    .line 4
    .line 5
    return p1
.end method

.method public getClass(B)I
    .locals 1

    .line 1
    and-int/lit16 p1, p1, 0xff

    .line 2
    .line 3
    iget-object v0, p0, Lorg/mozilla/universalchardet/prober/statemachine/SMModel;->classTable:Lorg/mozilla/universalchardet/prober/statemachine/PkgInt;

    .line 4
    .line 5
    invoke-virtual {v0, p1}, Lorg/mozilla/universalchardet/prober/statemachine/PkgInt;->unpack(I)I

    .line 6
    .line 7
    .line 8
    move-result p1

    .line 9
    return p1
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/mozilla/universalchardet/prober/statemachine/SMModel;->name:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public getNextState(II)I
    .locals 2

    .line 1
    iget-object v0, p0, Lorg/mozilla/universalchardet/prober/statemachine/SMModel;->stateTable:Lorg/mozilla/universalchardet/prober/statemachine/PkgInt;

    .line 2
    .line 3
    iget v1, p0, Lorg/mozilla/universalchardet/prober/statemachine/SMModel;->classFactor:I

    .line 4
    .line 5
    mul-int p2, p2, v1

    .line 6
    .line 7
    add-int/2addr p2, p1

    .line 8
    invoke-virtual {v0, p2}, Lorg/mozilla/universalchardet/prober/statemachine/PkgInt;->unpack(I)I

    .line 9
    .line 10
    .line 11
    move-result p1

    .line 12
    return p1
.end method
