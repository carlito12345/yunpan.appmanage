.class public final Lvd/i0;
.super Lvd/r;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    const-string v0, "Operation is not supported with the negotiated capabilities"

    invoke-direct {p0, v0}, Lvd/r;-><init>(Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1}, Lvd/r;-><init>(Ljava/lang/String;)V

    return-void
.end method
