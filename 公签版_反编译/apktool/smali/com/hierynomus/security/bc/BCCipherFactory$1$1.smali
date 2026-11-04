.class Lcom/hierynomus/security/bc/BCCipherFactory$1$1;
.super Lcom/hierynomus/security/bc/BCCipherFactory$BCBlockCipher;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/hierynomus/security/bc/BCCipherFactory$1;->create()Lcom/hierynomus/security/Cipher;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/hierynomus/security/bc/BCCipherFactory$1;


# direct methods
.method public constructor <init>(Lcom/hierynomus/security/bc/BCCipherFactory$1;Lorg/bouncycastle/crypto/BufferedBlockCipher;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/hierynomus/security/bc/BCCipherFactory$1$1;->this$0:Lcom/hierynomus/security/bc/BCCipherFactory$1;

    .line 2
    .line 3
    invoke-direct {p0, p2}, Lcom/hierynomus/security/bc/BCCipherFactory$BCBlockCipher;-><init>(Lorg/bouncycastle/crypto/BufferedBlockCipher;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public createParams([B)Lorg/bouncycastle/crypto/CipherParameters;
    .locals 1

    .line 1
    new-instance v0, Lorg/bouncycastle/crypto/params/DESedeParameters;

    .line 2
    .line 3
    invoke-direct {v0, p1}, Lorg/bouncycastle/crypto/params/DESedeParameters;-><init>([B)V

    .line 4
    .line 5
    .line 6
    return-object v0
.end method
