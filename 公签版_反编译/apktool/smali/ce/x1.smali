.class public final Lce/x1;
.super Lce/v0;
.source "SourceFile"


# instance fields
.field public final l:Lce/w0;

.field public final m:[B

.field public final n:Z


# direct methods
.method public constructor <init>(Lce/w0;)V
    .locals 2

    .line 1
    iget v0, p1, Lce/w0;->D:I

    .line 2
    .line 3
    const v1, -0xff01

    .line 4
    .line 5
    .line 6
    and-int/2addr v0, v1

    .line 7
    or-int/lit8 v0, v0, 0x20

    .line 8
    .line 9
    invoke-direct {p0, p1, v0}, Lce/v0;-><init>(Lce/t0;I)V

    .line 10
    .line 11
    .line 12
    const/4 v0, 0x1

    .line 13
    new-array v1, v0, [B

    .line 14
    .line 15
    iput-object v1, p0, Lce/x1;->m:[B

    .line 16
    .line 17
    iput-object p1, p0, Lce/x1;->l:Lce/w0;

    .line 18
    .line 19
    iget p1, p1, Lce/w0;->D:I

    .line 20
    .line 21
    const/16 v1, 0x600

    .line 22
    .line 23
    and-int/2addr p1, v1

    .line 24
    if-ne p1, v1, :cond_0

    .line 25
    .line 26
    goto :goto_0

    .line 27
    :cond_0
    const/4 v0, 0x0

    .line 28
    :goto_0
    iput-boolean v0, p0, Lce/x1;->n:Z

    .line 29
    .line 30
    return-void
.end method


# virtual methods
.method public final close()V
    .locals 1

    .line 1
    iget-object v0, p0, Lce/x1;->l:Lce/w0;

    .line 2
    .line 3
    invoke-virtual {v0}, Lce/t0;->b()V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public final write(I)V
    .locals 2

    int-to-byte p1, p1

    .line 1
    iget-object v0, p0, Lce/x1;->m:[B

    const/4 v1, 0x0

    aput-byte p1, v0, v1

    const/4 p1, 0x1

    .line 2
    invoke-virtual {p0, v0, v1, p1}, Lce/x1;->write([BII)V

    return-void
.end method

.method public final write([B)V
    .locals 2

    .line 3
    array-length v0, p1

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v1, v0}, Lce/x1;->write([BII)V

    return-void
.end method

.method public final write([BII)V
    .locals 3

    if-gez p3, :cond_0

    const/4 p3, 0x0

    .line 4
    :cond_0
    iget-object v0, p0, Lce/x1;->l:Lce/w0;

    iget v1, v0, Lce/w0;->D:I

    const/16 v2, 0x200

    and-int/2addr v1, v2

    if-ne v1, v2, :cond_2

    .line 5
    invoke-virtual {p0}, Lce/v0;->r()V

    .line 6
    new-instance v1, Lce/u1;

    iget v2, v0, Lce/t0;->q:I

    invoke-direct {v1, v2, p1, p2, p3}, Lce/u1;-><init>(I[BII)V

    .line 7
    iget-boolean p1, p0, Lce/x1;->n:Z

    if-eqz p1, :cond_1

    const/16 p1, 0x400

    .line 8
    iput p1, v1, Lce/i0;->S:I

    .line 9
    :cond_1
    new-instance p1, Lce/m1;

    invoke-direct {p1, v0}, Lce/m1;-><init>(Lce/w0;)V

    invoke-virtual {v0, v1, p1}, Lce/t0;->F(Lce/q;Lce/q;)V

    :cond_2
    return-void
.end method
