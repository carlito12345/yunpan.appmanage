.class public final Lvd/p;
.super Lvd/r;
.source "SourceFile"


# direct methods
.method public constructor <init>(I)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lvd/r;-><init>(I)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1}, Lvd/r;-><init>(Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Lvd/r;)V
    .locals 1

    const-string v0, "Login failed"

    .line 3
    invoke-direct {p0, v0, p1}, Lvd/r;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    return-void
.end method
