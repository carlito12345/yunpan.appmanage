.class public final Lyf/e;
.super Lyf/b;
.source "SourceFile"


# instance fields
.field public final synthetic e:I


# direct methods
.method public constructor <init>(Lyf/i;Lag/g;[C)V
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, Lyf/e;->e:I

    const/4 v0, 0x1

    .line 1
    invoke-direct {p0, p1, p2, p3, v0}, Lyf/b;-><init>(Lyf/i;Lag/g;[CZ)V

    return-void
.end method

.method public constructor <init>(Lyf/i;Lag/g;[CZ)V
    .locals 1

    const/4 v0, 0x1

    iput v0, p0, Lyf/e;->e:I

    .line 2
    invoke-direct {p0, p1, p2, p3, p4}, Lyf/b;-><init>(Lyf/i;Lag/g;[CZ)V

    return-void
.end method


# virtual methods
.method public final A(Lag/g;[CZ)Ltf/c;
    .locals 9

    .line 1
    iget v0, p0, Lyf/e;->e:I

    .line 2
    .line 3
    packed-switch v0, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    new-instance v0, Ll5/y;

    .line 7
    .line 8
    iget-wide v3, p1, Lag/b;->g:J

    .line 9
    .line 10
    iget-wide v5, p1, Lag/b;->f:J

    .line 11
    .line 12
    const/16 p1, 0xc

    .line 13
    .line 14
    new-array v7, p1, [B

    .line 15
    .line 16
    invoke-virtual {p0, v7}, Lyf/b;->J([B)V

    .line 17
    .line 18
    .line 19
    move-object v1, v0

    .line 20
    move-object v2, p2

    .line 21
    move v8, p3

    .line 22
    invoke-direct/range {v1 .. v8}, Ll5/y;-><init>([CJJ[BZ)V

    .line 23
    .line 24
    .line 25
    return-object v0

    .line 26
    :pswitch_0
    new-instance p1, Ls5/c;

    .line 27
    .line 28
    const/16 p2, 0x1d

    .line 29
    .line 30
    invoke-direct {p1, p2}, Ls5/c;-><init>(I)V

    .line 31
    .line 32
    .line 33
    return-object p1

    .line 34
    nop

    .line 35
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
