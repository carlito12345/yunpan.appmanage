.class public final Lzd/a;
.super Lnh/b;
.source "SourceFile"


# instance fields
.field public b:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lnh/b;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x0

    .line 5
    iput v0, p0, Lzd/a;->b:I

    .line 6
    .line 7
    return-void
.end method


# virtual methods
.method public final s(Ls3/d0;)V
    .locals 0

    .line 1
    invoke-virtual {p1}, Ls3/d0;->c()I

    .line 2
    .line 3
    .line 4
    move-result p1

    .line 5
    iput p1, p0, Lzd/a;->b:I

    .line 6
    .line 7
    return-void
.end method

.method public final v(Ls3/d0;)V
    .locals 1

    .line 1
    iget v0, p0, Lzd/a;->b:I

    .line 2
    .line 3
    invoke-virtual {p1, v0}, Ls3/d0;->h(I)V

    .line 4
    .line 5
    .line 6
    return-void
.end method
