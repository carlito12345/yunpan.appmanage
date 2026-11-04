.class abstract Lcom/hierynomus/security/bc/BCDerivationFunctionFactory$BCDerivationFunction;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/hierynomus/security/DerivationFunction;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/hierynomus/security/bc/BCDerivationFunctionFactory;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "BCDerivationFunction"
.end annotation


# instance fields
.field private final function:Lorg/bouncycastle/crypto/DerivationFunction;


# direct methods
.method public constructor <init>(Lorg/bouncycastle/crypto/DerivationFunction;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/hierynomus/security/bc/BCDerivationFunctionFactory$BCDerivationFunction;->function:Lorg/bouncycastle/crypto/DerivationFunction;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public abstract createParams(Lcom/hierynomus/security/jce/derivationfunction/DerivationParameters;)Lorg/bouncycastle/crypto/DerivationParameters;
.end method

.method public generateBytes([BII)I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/hierynomus/security/bc/BCDerivationFunctionFactory$BCDerivationFunction;->function:Lorg/bouncycastle/crypto/DerivationFunction;

    .line 2
    .line 3
    invoke-interface {v0, p1, p2, p3}, Lorg/bouncycastle/crypto/DerivationFunction;->generateBytes([BII)I

    .line 4
    .line 5
    .line 6
    move-result p1

    .line 7
    return p1
.end method

.method public init(Lcom/hierynomus/security/jce/derivationfunction/DerivationParameters;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/hierynomus/security/bc/BCDerivationFunctionFactory$BCDerivationFunction;->function:Lorg/bouncycastle/crypto/DerivationFunction;

    .line 2
    .line 3
    invoke-virtual {p0, p1}, Lcom/hierynomus/security/bc/BCDerivationFunctionFactory$BCDerivationFunction;->createParams(Lcom/hierynomus/security/jce/derivationfunction/DerivationParameters;)Lorg/bouncycastle/crypto/DerivationParameters;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    invoke-interface {v0, p1}, Lorg/bouncycastle/crypto/DerivationFunction;->init(Lorg/bouncycastle/crypto/DerivationParameters;)V

    .line 8
    .line 9
    .line 10
    return-void
.end method
