.class Lcom/hierynomus/security/bc/BCAEADCipherFactory$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/hierynomus/protocol/commons/Factory;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/hierynomus/security/bc/BCAEADCipherFactory;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/hierynomus/protocol/commons/Factory<",
        "Lcom/hierynomus/security/AEADBlockCipher;",
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
.method public create()Lcom/hierynomus/security/AEADBlockCipher;
    .locals 3

    .line 2
    new-instance v0, Lcom/hierynomus/security/bc/BCAEADCipherFactory$2$1;

    new-instance v1, Lorg/bouncycastle/crypto/modes/GCMBlockCipher;

    new-instance v2, Lorg/bouncycastle/crypto/engines/AESEngine;

    invoke-direct {v2}, Lorg/bouncycastle/crypto/engines/AESEngine;-><init>()V

    invoke-direct {v1, v2}, Lorg/bouncycastle/crypto/modes/GCMBlockCipher;-><init>(Lorg/bouncycastle/crypto/BlockCipher;)V

    invoke-direct {v0, p0, v1}, Lcom/hierynomus/security/bc/BCAEADCipherFactory$2$1;-><init>(Lcom/hierynomus/security/bc/BCAEADCipherFactory$2;Lorg/bouncycastle/crypto/modes/AEADBlockCipher;)V

    return-object v0
.end method

.method public bridge synthetic create()Ljava/lang/Object;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/hierynomus/security/bc/BCAEADCipherFactory$2;->create()Lcom/hierynomus/security/AEADBlockCipher;

    move-result-object v0

    return-object v0
.end method
