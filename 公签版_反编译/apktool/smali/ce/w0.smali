.class public final Lce/w0;
.super Lce/t0;
.source "SourceFile"


# instance fields
.field public B:Lce/u0;

.field public C:Lce/v0;

.field public final D:I


# direct methods
.method public constructor <init>(Ljava/lang/String;Lce/p;)V
    .locals 3

    .line 1
    new-instance v0, Ljava/net/URL;

    .line 2
    .line 3
    sget-object v1, Lce/h;->a:Lce/h;

    .line 4
    .line 5
    const/4 v2, 0x0

    .line 6
    invoke-direct {v0, v2, p1, v1}, Ljava/net/URL;-><init>(Ljava/net/URL;Ljava/lang/String;Ljava/net/URLStreamHandler;)V

    .line 7
    .line 8
    .line 9
    invoke-direct {p0, v0, p2}, Lce/t0;-><init>(Ljava/net/URL;Lce/p;)V

    .line 10
    .line 11
    .line 12
    const p1, 0x19f0603

    .line 13
    .line 14
    .line 15
    iput p1, p0, Lce/w0;->D:I

    .line 16
    .line 17
    const/16 p1, 0x10

    .line 18
    .line 19
    iput p1, p0, Lce/t0;->r:I

    .line 20
    .line 21
    return-void
.end method
