.class public final Ls4/v;
.super Ls4/l;
.source "SourceFile"


# instance fields
.field public final e:Ls4/f;


# direct methods
.method public constructor <init>(Ls4/j;Lw4/p;Lw4/l;Ls4/f;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2, p3}, Ls4/l;-><init>(Ls4/j;Lw4/p;Lw4/l;)V

    .line 2
    .line 3
    .line 4
    if-eqz p4, :cond_0

    .line 5
    .line 6
    iput-object p4, p0, Ls4/v;->e:Ls4/f;

    .line 7
    .line 8
    return-void

    .line 9
    :cond_0
    new-instance p1, Ljava/lang/NullPointerException;

    .line 10
    .line 11
    const-string p2, "target == null"

    .line 12
    .line 13
    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    .line 14
    .line 15
    .line 16
    throw p1
.end method


# virtual methods
.method public final a()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Ls4/v;->e:Ls4/f;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    const-string v0, "????"

    .line 6
    .line 7
    return-object v0

    .line 8
    :cond_0
    invoke-virtual {v0}, Ls4/h;->f()Ljava/lang/String;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    return-object v0
.end method

.method public final i(Ls4/j;)Ls4/h;
    .locals 4

    .line 1
    new-instance v0, Ls4/v;

    .line 2
    .line 3
    iget-object v1, p0, Ls4/v;->e:Ls4/f;

    .line 4
    .line 5
    iget-object v2, p0, Ls4/h;->c:Lw4/p;

    .line 6
    .line 7
    iget-object v3, p0, Ls4/h;->d:Lw4/l;

    .line 8
    .line 9
    invoke-direct {v0, p1, v2, v3, v1}, Ls4/v;-><init>(Ls4/j;Lw4/p;Lw4/l;Ls4/f;)V

    .line 10
    .line 11
    .line 12
    return-object v0
.end method

.method public final k(Lw4/l;)Ls4/h;
    .locals 4

    .line 1
    new-instance v0, Ls4/v;

    .line 2
    .line 3
    iget-object v1, p0, Ls4/v;->e:Ls4/f;

    .line 4
    .line 5
    iget-object v2, p0, Ls4/h;->b:Ls4/j;

    .line 6
    .line 7
    iget-object v3, p0, Ls4/h;->c:Lw4/p;

    .line 8
    .line 9
    invoke-direct {v0, v2, v3, p1, v1}, Ls4/v;-><init>(Ls4/j;Lw4/p;Lw4/l;Ls4/f;)V

    .line 10
    .line 11
    .line 12
    return-object v0
.end method

.method public final m()I
    .locals 2

    .line 1
    iget-object v0, p0, Ls4/v;->e:Ls4/f;

    .line 2
    .line 3
    invoke-virtual {v0}, Ls4/h;->e()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    invoke-virtual {p0}, Ls4/h;->e()I

    .line 8
    .line 9
    .line 10
    move-result v1

    .line 11
    sub-int/2addr v0, v1

    .line 12
    return v0
.end method

.method public final n()Z
    .locals 1

    .line 1
    iget v0, p0, Ls4/h;->a:I

    .line 2
    .line 3
    if-ltz v0, :cond_0

    .line 4
    .line 5
    iget-object v0, p0, Ls4/v;->e:Ls4/f;

    .line 6
    .line 7
    iget v0, v0, Ls4/h;->a:I

    .line 8
    .line 9
    if-ltz v0, :cond_0

    .line 10
    .line 11
    const/4 v0, 0x1

    .line 12
    goto :goto_0

    .line 13
    :cond_0
    const/4 v0, 0x0

    .line 14
    :goto_0
    return v0
.end method

.method public final o(Ls4/f;)Ls4/v;
    .locals 4

    .line 1
    iget-object v0, p0, Ls4/h;->b:Ls4/j;

    .line 2
    .line 3
    iget v1, v0, Ls4/j;->a:I

    .line 4
    .line 5
    packed-switch v1, :pswitch_data_0

    .line 6
    .line 7
    .line 8
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 9
    .line 10
    new-instance v1, Ljava/lang/StringBuilder;

    .line 11
    .line 12
    const-string v2, "bogus opcode: "

    .line 13
    .line 14
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 15
    .line 16
    .line 17
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 18
    .line 19
    .line 20
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 21
    .line 22
    .line 23
    move-result-object v0

    .line 24
    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 25
    .line 26
    .line 27
    throw p1

    .line 28
    :pswitch_0
    sget-object v0, Ls4/k;->Z:Ls4/j;

    .line 29
    .line 30
    goto :goto_0

    .line 31
    :pswitch_1
    sget-object v0, Ls4/k;->a0:Ls4/j;

    .line 32
    .line 33
    goto :goto_0

    .line 34
    :pswitch_2
    sget-object v0, Ls4/k;->X:Ls4/j;

    .line 35
    .line 36
    goto :goto_0

    .line 37
    :pswitch_3
    sget-object v0, Ls4/k;->Y:Ls4/j;

    .line 38
    .line 39
    goto :goto_0

    .line 40
    :pswitch_4
    sget-object v0, Ls4/k;->V:Ls4/j;

    .line 41
    .line 42
    goto :goto_0

    .line 43
    :pswitch_5
    sget-object v0, Ls4/k;->W:Ls4/j;

    .line 44
    .line 45
    goto :goto_0

    .line 46
    :pswitch_6
    sget-object v0, Ls4/k;->T:Ls4/j;

    .line 47
    .line 48
    goto :goto_0

    .line 49
    :pswitch_7
    sget-object v0, Ls4/k;->U:Ls4/j;

    .line 50
    .line 51
    goto :goto_0

    .line 52
    :pswitch_8
    sget-object v0, Ls4/k;->R:Ls4/j;

    .line 53
    .line 54
    goto :goto_0

    .line 55
    :pswitch_9
    sget-object v0, Ls4/k;->S:Ls4/j;

    .line 56
    .line 57
    goto :goto_0

    .line 58
    :pswitch_a
    sget-object v0, Ls4/k;->P:Ls4/j;

    .line 59
    .line 60
    goto :goto_0

    .line 61
    :pswitch_b
    sget-object v0, Ls4/k;->Q:Ls4/j;

    .line 62
    .line 63
    :goto_0
    new-instance v1, Ls4/v;

    .line 64
    .line 65
    iget-object v2, p0, Ls4/h;->c:Lw4/p;

    .line 66
    .line 67
    iget-object v3, p0, Ls4/h;->d:Lw4/l;

    .line 68
    .line 69
    invoke-direct {v1, v0, v2, v3, p1}, Ls4/v;-><init>(Ls4/j;Lw4/p;Lw4/l;Ls4/f;)V

    .line 70
    .line 71
    .line 72
    return-object v1

    .line 73
    :pswitch_data_0
    .packed-switch 0x32
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
