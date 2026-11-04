.class abstract Lcom/hierynomus/security/bc/BCAEADCipherFactory$BCAEADBlockCipher;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/hierynomus/security/AEADBlockCipher;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/hierynomus/security/bc/BCAEADCipherFactory;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "BCAEADBlockCipher"
.end annotation


# instance fields
.field private wrappedCipher:Lorg/bouncycastle/crypto/modes/AEADBlockCipher;


# direct methods
.method public constructor <init>(Lorg/bouncycastle/crypto/modes/AEADBlockCipher;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/hierynomus/security/bc/BCAEADCipherFactory$BCAEADBlockCipher;->wrappedCipher:Lorg/bouncycastle/crypto/modes/AEADBlockCipher;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public abstract createParams([BLjavax/crypto/spec/GCMParameterSpec;)Lorg/bouncycastle/crypto/CipherParameters;
.end method

.method public doFinal([BII)[B
    .locals 7

    .line 1
    iget-object v0, p0, Lcom/hierynomus/security/bc/BCAEADCipherFactory$BCAEADBlockCipher;->wrappedCipher:Lorg/bouncycastle/crypto/modes/AEADBlockCipher;

    .line 2
    .line 3
    invoke-interface {v0, p3}, Lorg/bouncycastle/crypto/modes/AEADCipher;->getOutputSize(I)I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    new-array v0, v0, [B

    .line 8
    .line 9
    iget-object v1, p0, Lcom/hierynomus/security/bc/BCAEADCipherFactory$BCAEADBlockCipher;->wrappedCipher:Lorg/bouncycastle/crypto/modes/AEADBlockCipher;

    .line 10
    .line 11
    const/4 v6, 0x0

    .line 12
    move-object v2, p1

    .line 13
    move v3, p2

    .line 14
    move v4, p3

    .line 15
    move-object v5, v0

    .line 16
    invoke-interface/range {v1 .. v6}, Lorg/bouncycastle/crypto/modes/AEADCipher;->processBytes([BII[BI)I

    .line 17
    .line 18
    .line 19
    move-result p1

    .line 20
    :try_start_0
    iget-object p2, p0, Lcom/hierynomus/security/bc/BCAEADCipherFactory$BCAEADBlockCipher;->wrappedCipher:Lorg/bouncycastle/crypto/modes/AEADBlockCipher;

    .line 21
    .line 22
    invoke-interface {p2, v0, p1}, Lorg/bouncycastle/crypto/modes/AEADCipher;->doFinal([BI)I
    :try_end_0
    .catch Lorg/bouncycastle/crypto/InvalidCipherTextException; {:try_start_0 .. :try_end_0} :catch_0

    .line 23
    .line 24
    .line 25
    return-object v0

    .line 26
    :catch_0
    move-exception p1

    .line 27
    new-instance p2, Lcom/hierynomus/security/SecurityException;

    .line 28
    .line 29
    invoke-direct {p2, p1}, Lcom/hierynomus/security/SecurityException;-><init>(Ljava/lang/Exception;)V

    .line 30
    .line 31
    .line 32
    throw p2
.end method

.method public init(Lcom/hierynomus/security/Cipher$CryptMode;[BLjavax/crypto/spec/GCMParameterSpec;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/hierynomus/security/bc/BCAEADCipherFactory$BCAEADBlockCipher;->wrappedCipher:Lorg/bouncycastle/crypto/modes/AEADBlockCipher;

    .line 2
    .line 3
    sget-object v1, Lcom/hierynomus/security/Cipher$CryptMode;->ENCRYPT:Lcom/hierynomus/security/Cipher$CryptMode;

    .line 4
    .line 5
    if-ne p1, v1, :cond_0

    .line 6
    .line 7
    const/4 p1, 0x1

    .line 8
    goto :goto_0

    .line 9
    :cond_0
    const/4 p1, 0x0

    .line 10
    :goto_0
    invoke-virtual {p0, p2, p3}, Lcom/hierynomus/security/bc/BCAEADCipherFactory$BCAEADBlockCipher;->createParams([BLjavax/crypto/spec/GCMParameterSpec;)Lorg/bouncycastle/crypto/CipherParameters;

    .line 11
    .line 12
    .line 13
    move-result-object p2

    .line 14
    invoke-interface {v0, p1, p2}, Lorg/bouncycastle/crypto/modes/AEADCipher;->init(ZLorg/bouncycastle/crypto/CipherParameters;)V

    .line 15
    .line 16
    .line 17
    return-void
.end method

.method public reset()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/hierynomus/security/bc/BCAEADCipherFactory$BCAEADBlockCipher;->wrappedCipher:Lorg/bouncycastle/crypto/modes/AEADBlockCipher;

    .line 2
    .line 3
    invoke-interface {v0}, Lorg/bouncycastle/crypto/modes/AEADCipher;->reset()V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public update([BII)[B
    .locals 7

    .line 1
    iget-object v0, p0, Lcom/hierynomus/security/bc/BCAEADCipherFactory$BCAEADBlockCipher;->wrappedCipher:Lorg/bouncycastle/crypto/modes/AEADBlockCipher;

    .line 2
    .line 3
    invoke-interface {v0, p3}, Lorg/bouncycastle/crypto/modes/AEADCipher;->getUpdateOutputSize(I)I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    new-array v0, v0, [B

    .line 8
    .line 9
    iget-object v1, p0, Lcom/hierynomus/security/bc/BCAEADCipherFactory$BCAEADBlockCipher;->wrappedCipher:Lorg/bouncycastle/crypto/modes/AEADBlockCipher;

    .line 10
    .line 11
    const/4 v6, 0x0

    .line 12
    move-object v2, p1

    .line 13
    move v3, p2

    .line 14
    move v4, p3

    .line 15
    move-object v5, v0

    .line 16
    invoke-interface/range {v1 .. v6}, Lorg/bouncycastle/crypto/modes/AEADCipher;->processBytes([BII[BI)I

    .line 17
    .line 18
    .line 19
    return-object v0
.end method

.method public updateAAD([BII)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/hierynomus/security/bc/BCAEADCipherFactory$BCAEADBlockCipher;->wrappedCipher:Lorg/bouncycastle/crypto/modes/AEADBlockCipher;

    .line 2
    .line 3
    invoke-interface {v0, p1, p2, p3}, Lorg/bouncycastle/crypto/modes/AEADCipher;->processAADBytes([BII)V

    .line 4
    .line 5
    .line 6
    return-void
.end method
