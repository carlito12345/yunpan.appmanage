.class Lcom/hierynomus/security/bc/BCDerivationFunctionFactory$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/hierynomus/protocol/commons/Factory;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/hierynomus/security/bc/BCDerivationFunctionFactory;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/hierynomus/protocol/commons/Factory<",
        "Lcom/hierynomus/security/DerivationFunction;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method


# virtual methods
.method public create()Lcom/hierynomus/security/DerivationFunction;
    .locals 4

    .line 2
    new-instance v0, Lcom/hierynomus/security/bc/BCDerivationFunctionFactory$1$1;

    new-instance v1, Lorg/bouncycastle/crypto/generators/KDFCounterBytesGenerator;

    new-instance v2, Lorg/bouncycastle/crypto/macs/HMac;

    new-instance v3, Lorg/bouncycastle/crypto/digests/SHA256Digest;

    invoke-direct {v3}, Lorg/bouncycastle/crypto/digests/SHA256Digest;-><init>()V

    invoke-direct {v2, v3}, Lorg/bouncycastle/crypto/macs/HMac;-><init>(Lorg/bouncycastle/crypto/Digest;)V

    invoke-direct {v1, v2}, Lorg/bouncycastle/crypto/generators/KDFCounterBytesGenerator;-><init>(Lorg/bouncycastle/crypto/Mac;)V

    invoke-direct {v0, p0, v1}, Lcom/hierynomus/security/bc/BCDerivationFunctionFactory$1$1;-><init>(Lcom/hierynomus/security/bc/BCDerivationFunctionFactory$1;Lorg/bouncycastle/crypto/DerivationFunction;)V

    return-object v0
.end method

.method public bridge synthetic create()Ljava/lang/Object;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/hierynomus/security/bc/BCDerivationFunctionFactory$1;->create()Lcom/hierynomus/security/DerivationFunction;

    move-result-object v0

    return-object v0
.end method
