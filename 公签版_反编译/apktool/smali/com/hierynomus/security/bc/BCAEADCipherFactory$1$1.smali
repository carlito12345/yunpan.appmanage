.class Lcom/hierynomus/security/bc/BCAEADCipherFactory$1$1;
.super Lcom/hierynomus/security/bc/BCAEADCipherFactory$BCAEADBlockCipher;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/hierynomus/security/bc/BCAEADCipherFactory$1;->create()Lcom/hierynomus/security/AEADBlockCipher;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/hierynomus/security/bc/BCAEADCipherFactory$1;


# direct methods
.method public constructor <init>(Lcom/hierynomus/security/bc/BCAEADCipherFactory$1;Lorg/bouncycastle/crypto/modes/AEADBlockCipher;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/hierynomus/security/bc/BCAEADCipherFactory$1$1;->this$0:Lcom/hierynomus/security/bc/BCAEADCipherFactory$1;

    .line 2
    .line 3
    invoke-direct {p0, p2}, Lcom/hierynomus/security/bc/BCAEADCipherFactory$BCAEADBlockCipher;-><init>(Lorg/bouncycastle/crypto/modes/AEADBlockCipher;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public createParams([BLjavax/crypto/spec/GCMParameterSpec;)Lorg/bouncycastle/crypto/CipherParameters;
    .locals 2

    .line 1
    new-instance v0, Lorg/bouncycastle/crypto/params/AEADParameters;

    .line 2
    .line 3
    new-instance v1, Lorg/bouncycastle/crypto/params/KeyParameter;

    .line 4
    .line 5
    invoke-direct {v1, p1}, Lorg/bouncycastle/crypto/params/KeyParameter;-><init>([B)V

    .line 6
    .line 7
    .line 8
    invoke-static {p2}, La2/p0;->a(Ljavax/crypto/spec/GCMParameterSpec;)I

    .line 9
    .line 10
    .line 11
    move-result p1

    .line 12
    invoke-static {p2}, La2/p0;->x(Ljavax/crypto/spec/GCMParameterSpec;)[B

    .line 13
    .line 14
    .line 15
    move-result-object p2

    .line 16
    invoke-direct {v0, v1, p1, p2}, Lorg/bouncycastle/crypto/params/AEADParameters;-><init>(Lorg/bouncycastle/crypto/params/KeyParameter;I[B)V

    .line 17
    .line 18
    .line 19
    return-object v0
.end method
