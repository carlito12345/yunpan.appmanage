.class Lcom/hierynomus/security/bc/BCDerivationFunctionFactory$1$1;
.super Lcom/hierynomus/security/bc/BCDerivationFunctionFactory$BCDerivationFunction;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/hierynomus/security/bc/BCDerivationFunctionFactory$1;->create()Lcom/hierynomus/security/DerivationFunction;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/hierynomus/security/bc/BCDerivationFunctionFactory$1;


# direct methods
.method public constructor <init>(Lcom/hierynomus/security/bc/BCDerivationFunctionFactory$1;Lorg/bouncycastle/crypto/DerivationFunction;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/hierynomus/security/bc/BCDerivationFunctionFactory$1$1;->this$0:Lcom/hierynomus/security/bc/BCDerivationFunctionFactory$1;

    .line 2
    .line 3
    invoke-direct {p0, p2}, Lcom/hierynomus/security/bc/BCDerivationFunctionFactory$BCDerivationFunction;-><init>(Lorg/bouncycastle/crypto/DerivationFunction;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public createParams(Lcom/hierynomus/security/jce/derivationfunction/DerivationParameters;)Lorg/bouncycastle/crypto/DerivationParameters;
    .locals 3

    .line 1
    instance-of v0, p1, Lcom/hierynomus/security/jce/derivationfunction/CounterDerivationParameters;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    check-cast p1, Lcom/hierynomus/security/jce/derivationfunction/CounterDerivationParameters;

    .line 6
    .line 7
    new-instance v0, Lorg/bouncycastle/crypto/params/KDFCounterParameters;

    .line 8
    .line 9
    invoke-virtual {p1}, Lcom/hierynomus/security/jce/derivationfunction/CounterDerivationParameters;->getSeed()[B

    .line 10
    .line 11
    .line 12
    move-result-object v1

    .line 13
    invoke-virtual {p1}, Lcom/hierynomus/security/jce/derivationfunction/CounterDerivationParameters;->getFixedCounterSuffix()[B

    .line 14
    .line 15
    .line 16
    move-result-object v2

    .line 17
    invoke-virtual {p1}, Lcom/hierynomus/security/jce/derivationfunction/CounterDerivationParameters;->getCounterLength()I

    .line 18
    .line 19
    .line 20
    move-result p1

    .line 21
    invoke-direct {v0, v1, v2, p1}, Lorg/bouncycastle/crypto/params/KDFCounterParameters;-><init>([B[BI)V

    .line 22
    .line 23
    .line 24
    return-object v0

    .line 25
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 26
    .line 27
    const-string v0, "Parameters should be a CounterDerivationParameters"

    .line 28
    .line 29
    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 30
    .line 31
    .line 32
    throw p1
.end method
