.class public final Lh/h;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lh/e;


# instance fields
.field public a:Lh/w;

.field public b:Ljavax/security/auth/x500/X500Principal;


# direct methods
.method public constructor <init>(Lh/w;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lh/h;->a:Lh/w;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final a(Lg/f;)V
    .locals 2

    .line 1
    new-instance v0, Lg/f;

    .line 2
    .line 3
    invoke-direct {v0}, Lg/f;-><init>()V

    .line 4
    .line 5
    .line 6
    iget-object v1, p0, Lh/h;->a:Lh/w;

    .line 7
    .line 8
    invoke-virtual {v1, v0}, Lh/w;->b(Lg/f;)V

    .line 9
    .line 10
    .line 11
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    invoke-virtual {p1, v0}, Ljava/io/OutputStream;->write([B)V

    .line 16
    .line 17
    .line 18
    return-void
.end method

.method public final getName()Ljava/lang/String;
    .locals 1

    .line 1
    const-string v0, "issuer"

    .line 2
    .line 3
    return-object v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lh/h;->a:Lh/w;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    const-string v0, ""

    .line 6
    .line 7
    return-object v0

    .line 8
    :cond_0
    invoke-virtual {v0}, Lh/w;->toString()Ljava/lang/String;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    return-object v0
.end method
