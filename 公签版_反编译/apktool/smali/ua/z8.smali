.class public final Lua/z8;
.super Lha/l2;
.source "SourceFile"


# instance fields
.field public final synthetic b:I

.field public final synthetic c:I

.field public final synthetic d:Lua/i9;


# direct methods
.method public synthetic constructor <init>(Lua/i9;II)V
    .locals 0

    .line 1
    iput p3, p0, Lua/z8;->b:I

    iput-object p1, p0, Lua/z8;->d:Lua/i9;

    iput p2, p0, Lua/z8;->c:I

    const/16 p1, 0x1c

    invoke-direct {p0, p1}, Lha/l2;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final B(Ljava/lang/Throwable;)V
    .locals 2

    .line 1
    iget v0, p0, Lua/z8;->b:I

    .line 2
    .line 3
    packed-switch v0, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lua/z8;->d:Lua/i9;

    .line 7
    .line 8
    iget-object v0, v0, Lua/i9;->h:Lha/u9;

    .line 9
    .line 10
    const-string v1, "\u5931\u8d25\uff1a"

    .line 11
    .line 12
    invoke-static {v0, v1}, Ll2/z;->r(Lha/u9;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 17
    .line 18
    .line 19
    move-result-object p1

    .line 20
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 21
    .line 22
    .line 23
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 24
    .line 25
    .line 26
    move-result-object p1

    .line 27
    invoke-static {p1}, Lcom/yunpan/appmanage/util/a0;->t(Ljava/lang/String;)V

    .line 28
    .line 29
    .line 30
    return-void

    .line 31
    :pswitch_0
    iget-object v0, p0, Lua/z8;->d:Lua/i9;

    .line 32
    .line 33
    iget-object v0, v0, Lua/i9;->h:Lha/u9;

    .line 34
    .line 35
    const-string v1, ""

    .line 36
    .line 37
    invoke-static {v0, v1}, Ll2/z;->r(Lha/u9;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 38
    .line 39
    .line 40
    move-result-object v0

    .line 41
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 42
    .line 43
    .line 44
    move-result-object p1

    .line 45
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 46
    .line 47
    .line 48
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 49
    .line 50
    .line 51
    move-result-object p1

    .line 52
    invoke-static {p1}, Lcom/yunpan/appmanage/util/a0;->t(Ljava/lang/String;)V

    .line 53
    .line 54
    .line 55
    return-void

    .line 56
    nop

    .line 57
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public final b(Lgc/b;)V
    .locals 1

    .line 1
    iget p1, p0, Lua/z8;->b:I

    .line 2
    .line 3
    packed-switch p1, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    iget-object p1, p0, Lua/z8;->d:Lua/i9;

    .line 7
    .line 8
    iget-object p1, p1, Lua/i9;->h:Lha/u9;

    .line 9
    .line 10
    const-string v0, "\u79fb\u52a8\u4e2d"

    .line 11
    .line 12
    invoke-virtual {p1, v0}, Lha/u9;->c(Ljava/lang/String;)V

    .line 13
    .line 14
    .line 15
    return-void

    .line 16
    :pswitch_0
    iget-object p1, p0, Lua/z8;->d:Lua/i9;

    .line 17
    .line 18
    iget-object p1, p1, Lua/i9;->h:Lha/u9;

    .line 19
    .line 20
    const-string v0, "\u5220\u9664\u4e2d"

    .line 21
    .line 22
    invoke-virtual {p1, v0}, Lha/u9;->c(Ljava/lang/String;)V

    .line 23
    .line 24
    .line 25
    return-void

    .line 26
    nop

    .line 27
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public final onComplete()V
    .locals 4

    .line 1
    iget v0, p0, Lua/z8;->b:I

    .line 2
    .line 3
    packed-switch v0, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lua/z8;->d:Lua/i9;

    .line 7
    .line 8
    iget-object v1, v0, Lua/i9;->h:Lha/u9;

    .line 9
    .line 10
    invoke-virtual {v1}, Lha/u9;->a()V

    .line 11
    .line 12
    .line 13
    const-string v1, "\u79fb\u52a8\u76ee\u5f55\u6210\u529f"

    .line 14
    .line 15
    invoke-static {v1}, Lcom/hjq/toast/Toaster;->show(Ljava/lang/CharSequence;)V

    .line 16
    .line 17
    .line 18
    iget-object v1, v0, Lua/i9;->q:Lx9/y5;

    .line 19
    .line 20
    invoke-virtual {v1}, Lc6/g;->b()I

    .line 21
    .line 22
    .line 23
    move-result v1

    .line 24
    const/4 v2, 0x1

    .line 25
    if-ne v1, v2, :cond_0

    .line 26
    .line 27
    iget-object v1, v0, Lua/i9;->m:Lcom/owen/tvrecyclerview/widget/TvRecyclerView;

    .line 28
    .line 29
    invoke-virtual {v1}, Landroid/view/View;->requestFocus()Z

    .line 30
    .line 31
    .line 32
    const v1, 0x7f08029f

    .line 33
    .line 34
    .line 35
    const-string v3, "\u7a7a\u76ee\u5f55"

    .line 36
    .line 37
    invoke-virtual {v0, v3, v1, v2}, Lua/i9;->u(Ljava/lang/String;IZ)V

    .line 38
    .line 39
    .line 40
    :cond_0
    iget-object v0, v0, Lua/i9;->q:Lx9/y5;

    .line 41
    .line 42
    iget v1, p0, Lua/z8;->c:I

    .line 43
    .line 44
    invoke-virtual {v0, v1}, Lc6/g;->C(I)V

    .line 45
    .line 46
    .line 47
    return-void

    .line 48
    :pswitch_0
    iget-object v0, p0, Lua/z8;->d:Lua/i9;

    .line 49
    .line 50
    iget-object v1, v0, Lua/i9;->h:Lha/u9;

    .line 51
    .line 52
    invoke-virtual {v1}, Lha/u9;->a()V

    .line 53
    .line 54
    .line 55
    const-string v1, "\u5220\u9664\u6210\u529f"

    .line 56
    .line 57
    invoke-static {v1}, Lcom/hjq/toast/Toaster;->show(Ljava/lang/CharSequence;)V

    .line 58
    .line 59
    .line 60
    iget-object v1, v0, Lua/i9;->q:Lx9/y5;

    .line 61
    .line 62
    invoke-virtual {v1}, Lc6/g;->b()I

    .line 63
    .line 64
    .line 65
    move-result v1

    .line 66
    const/4 v2, 0x1

    .line 67
    if-ne v1, v2, :cond_1

    .line 68
    .line 69
    iget-object v1, v0, Lua/i9;->m:Lcom/owen/tvrecyclerview/widget/TvRecyclerView;

    .line 70
    .line 71
    invoke-virtual {v1}, Landroid/view/View;->requestFocus()Z

    .line 72
    .line 73
    .line 74
    const v1, 0x7f08029f

    .line 75
    .line 76
    .line 77
    const-string v3, "\u7a7a\u76ee\u5f55"

    .line 78
    .line 79
    invoke-virtual {v0, v3, v1, v2}, Lua/i9;->u(Ljava/lang/String;IZ)V

    .line 80
    .line 81
    .line 82
    :cond_1
    iget-object v0, v0, Lua/i9;->q:Lx9/y5;

    .line 83
    .line 84
    iget v1, p0, Lua/z8;->c:I

    .line 85
    .line 86
    invoke-virtual {v0, v1}, Lc6/g;->C(I)V

    .line 87
    .line 88
    .line 89
    return-void

    .line 90
    nop

    .line 91
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
