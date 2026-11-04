.class public final Lc2/d;
.super Lx1/e;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 1

    const-string v0, "Provided decoder factory can\'t create decoder for format."

    .line 1
    invoke-direct {p0, v0}, Lx1/e;-><init>(Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Ljava/io/IOException;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1}, Lx1/e;-><init>(Ljava/io/IOException;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 0

    .line 3
    invoke-direct {p0, p1, p2}, Lx1/e;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method
