.class public final Lhe/a;
.super Lhe/f;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 1

    const-string v0, "Connection timeout"

    .line 1
    invoke-direct {p0, v0}, Lhe/f;-><init>(Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Ljava/net/SocketTimeoutException;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1}, Lhe/f;-><init>(Ljava/lang/Exception;)V

    return-void
.end method
