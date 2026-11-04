.class public final Lzf/f;
.super Lzf/b;
.source "SourceFile"


# instance fields
.field public final synthetic c:I


# direct methods
.method public constructor <init>(Lzf/i;Lag/m;)V
    .locals 2

    const/4 v0, 0x0

    iput v0, p0, Lzf/f;->c:I

    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 1
    invoke-direct {p0, p1, p2, v0, v1}, Lzf/b;-><init>(Lzf/i;Lag/m;[CZ)V

    return-void
.end method

.method public constructor <init>(Lzf/i;Lag/m;[CZ)V
    .locals 1

    const/4 v0, 0x1

    iput v0, p0, Lzf/f;->c:I

    .line 2
    invoke-direct {p0, p1, p2, p3, p4}, Lzf/b;-><init>(Lzf/i;Lag/m;[CZ)V

    return-void
.end method


# virtual methods
.method public final A(Lag/m;[CZ)Ltf/d;
    .locals 4

    .line 1
    iget v0, p0, Lzf/f;->c:I

    .line 2
    .line 3
    packed-switch v0, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    iget-boolean v0, p1, Lag/m;->j:Z

    .line 7
    .line 8
    if-eqz v0, :cond_0

    .line 9
    .line 10
    iget-wide v0, p1, Lag/m;->h:J

    .line 11
    .line 12
    invoke-static {v0, v1}, Leg/c;->d(J)J

    .line 13
    .line 14
    .line 15
    move-result-wide v0

    .line 16
    const-wide/32 v2, 0xffff

    .line 17
    .line 18
    .line 19
    and-long/2addr v0, v2

    .line 20
    const/16 p1, 0x10

    .line 21
    .line 22
    shl-long/2addr v0, p1

    .line 23
    goto :goto_0

    .line 24
    :cond_0
    const-wide/16 v0, 0x0

    .line 25
    .line 26
    :goto_0
    new-instance p1, Lkf/d;

    .line 27
    .line 28
    invoke-direct {p1, p2, v0, v1, p3}, Lkf/d;-><init>([CJZ)V

    .line 29
    .line 30
    .line 31
    iget-object p2, p1, Lkf/d;->c:Ljava/lang/Object;

    .line 32
    .line 33
    check-cast p2, [B

    .line 34
    .line 35
    iget-object p3, p0, Lzf/b;->a:Lzf/i;

    .line 36
    .line 37
    invoke-virtual {p3, p2}, Lzf/i;->write([B)V

    .line 38
    .line 39
    .line 40
    return-object p1

    .line 41
    :pswitch_0
    new-instance p1, Ls9/a;

    .line 42
    .line 43
    const/16 p2, 0x1d

    .line 44
    .line 45
    const/4 p3, 0x0

    .line 46
    invoke-direct {p1, p2, p3}, Ls9/a;-><init>(IZ)V

    .line 47
    .line 48
    .line 49
    return-object p1

    .line 50
    nop

    .line 51
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public write(I)V
    .locals 3

    const/4 v0, 0x0

    const/4 v1, 0x1

    iget v2, p0, Lzf/f;->c:I

    packed-switch v2, :pswitch_data_0

    invoke-super {p0, p1}, Lzf/b;->write(I)V

    return-void

    :pswitch_0
    int-to-byte p1, p1

    .line 1
    new-array v2, v1, [B

    aput-byte p1, v2, v0

    .line 2
    invoke-super {p0, v2, v0, v1}, Lzf/b;->write([BII)V

    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method public write([B)V
    .locals 2

    iget v0, p0, Lzf/f;->c:I

    packed-switch v0, :pswitch_data_0

    invoke-super {p0, p1}, Lzf/b;->write([B)V

    return-void

    .line 3
    :pswitch_0
    array-length v0, p1

    const/4 v1, 0x0

    .line 4
    invoke-super {p0, p1, v1, v0}, Lzf/b;->write([BII)V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method
