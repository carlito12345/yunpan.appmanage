.class public final Lua/m8;
.super Lha/l2;
.source "SourceFile"


# instance fields
.field public final synthetic b:I

.field public final synthetic c:Lua/q8;


# direct methods
.method public synthetic constructor <init>(Lua/q8;I)V
    .locals 0

    .line 1
    iput p2, p0, Lua/m8;->b:I

    iput-object p1, p0, Lua/m8;->c:Lua/q8;

    const/16 p1, 0x1c

    invoke-direct {p0, p1}, Lha/l2;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final B(Ljava/lang/Throwable;)V
    .locals 4

    .line 1
    iget v0, p0, Lua/m8;->b:I

    .line 2
    .line 3
    packed-switch v0, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lua/m8;->c:Lua/q8;

    .line 7
    .line 8
    iget-object v1, v0, Lua/q8;->g:Lha/u9;

    .line 9
    .line 10
    invoke-virtual {v1}, Lha/u9;->a()V

    .line 11
    .line 12
    .line 13
    new-instance v1, Lha/r5;

    .line 14
    .line 15
    iget-object v2, v0, Lda/h;->f:Landroid/app/Activity;

    .line 16
    .line 17
    iget-object v3, v0, Lda/h;->e:Landroid/content/Context;

    .line 18
    .line 19
    check-cast p1, Lqa/b;

    .line 20
    .line 21
    iget-object p1, p1, Lqa/b;->a:Ljava/util/ArrayList;

    .line 22
    .line 23
    invoke-direct {v1, v2, v3, p1}, Lha/r5;-><init>(Landroid/app/Activity;Landroid/content/Context;Ljava/util/ArrayList;)V

    .line 24
    .line 25
    .line 26
    invoke-virtual {v1}, Lha/a4;->show()V

    .line 27
    .line 28
    .line 29
    iget-object p1, v0, Lua/q8;->k:Lcom/owen/tvrecyclerview/widget/TvRecyclerView;

    .line 30
    .line 31
    invoke-virtual {p1}, Landroid/view/View;->requestFocus()Z

    .line 32
    .line 33
    .line 34
    iget-object p1, v0, Lua/q8;->l:Lx9/g0;

    .line 35
    .line 36
    const/4 v1, 0x1

    .line 37
    invoke-static {p1, v1}, Lg/b;->d(Lx9/g0;I)Ljava/lang/Object;

    .line 38
    .line 39
    .line 40
    move-result-object p1

    .line 41
    check-cast p1, Lx9/w3;

    .line 42
    .line 43
    invoke-virtual {v0, p1, v1}, Lua/q8;->v(Lx9/w3;Z)V

    .line 44
    .line 45
    .line 46
    return-void

    .line 47
    :pswitch_0
    iget-object v0, p0, Lua/m8;->c:Lua/q8;

    .line 48
    .line 49
    invoke-static {v0}, Lua/q8;->n(Lua/q8;)V

    .line 50
    .line 51
    .line 52
    new-instance v1, Lha/r5;

    .line 53
    .line 54
    iget-object v2, v0, Lda/h;->f:Landroid/app/Activity;

    .line 55
    .line 56
    iget-object v0, v0, Lda/h;->e:Landroid/content/Context;

    .line 57
    .line 58
    check-cast p1, Lqa/b;

    .line 59
    .line 60
    iget-object p1, p1, Lqa/b;->a:Ljava/util/ArrayList;

    .line 61
    .line 62
    invoke-direct {v1, v2, v0, p1}, Lha/r5;-><init>(Landroid/app/Activity;Landroid/content/Context;Ljava/util/ArrayList;)V

    .line 63
    .line 64
    .line 65
    invoke-virtual {v1}, Lha/a4;->show()V

    .line 66
    .line 67
    .line 68
    return-void

    .line 69
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public final E(Ljava/lang/Object;)V
    .locals 1

    .line 1
    iget v0, p0, Lua/m8;->b:I

    .line 2
    .line 3
    packed-switch v0, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lua/m8;->c:Lua/q8;

    .line 7
    .line 8
    iget-object v0, v0, Lua/q8;->g:Lha/u9;

    .line 9
    .line 10
    check-cast p1, Ljava/lang/String;

    .line 11
    .line 12
    invoke-virtual {v0, p1}, Lha/u9;->b(Ljava/lang/String;)V

    .line 13
    .line 14
    .line 15
    return-void

    .line 16
    :pswitch_0
    iget-object v0, p0, Lua/m8;->c:Lua/q8;

    .line 17
    .line 18
    iget-object v0, v0, Lua/q8;->g:Lha/u9;

    .line 19
    .line 20
    check-cast p1, Ljava/lang/String;

    .line 21
    .line 22
    invoke-virtual {v0, p1}, Lha/u9;->b(Ljava/lang/String;)V

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
    .locals 3

    .line 1
    iget v0, p0, Lua/m8;->b:I

    .line 2
    .line 3
    packed-switch v0, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lua/m8;->c:Lua/q8;

    .line 7
    .line 8
    iget-object v1, v0, Lua/q8;->g:Lha/u9;

    .line 9
    .line 10
    invoke-virtual {v1}, Lha/u9;->a()V

    .line 11
    .line 12
    .line 13
    iget-object v1, v0, Lua/q8;->I:Landroid/widget/LinearLayout;

    .line 14
    .line 15
    invoke-virtual {v1}, Landroid/view/View;->getVisibility()I

    .line 16
    .line 17
    .line 18
    move-result v1

    .line 19
    if-nez v1, :cond_0

    .line 20
    .line 21
    iget-object v1, v0, Lua/q8;->I:Landroid/widget/LinearLayout;

    .line 22
    .line 23
    const/16 v2, 0x8

    .line 24
    .line 25
    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 26
    .line 27
    .line 28
    iget-object v1, v0, Lua/q8;->K:Landroid/widget/TextView;

    .line 29
    .line 30
    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 31
    .line 32
    .line 33
    :cond_0
    iget-object v1, v0, Lua/q8;->k:Lcom/owen/tvrecyclerview/widget/TvRecyclerView;

    .line 34
    .line 35
    invoke-virtual {v1}, Landroid/view/View;->requestFocus()Z

    .line 36
    .line 37
    .line 38
    iget-object v1, v0, Lua/q8;->l:Lx9/g0;

    .line 39
    .line 40
    const/4 v2, 0x1

    .line 41
    invoke-static {v1, v2}, Lg/b;->d(Lx9/g0;I)Ljava/lang/Object;

    .line 42
    .line 43
    .line 44
    move-result-object v1

    .line 45
    check-cast v1, Lx9/w3;

    .line 46
    .line 47
    invoke-virtual {v0, v1, v2}, Lua/q8;->v(Lx9/w3;Z)V

    .line 48
    .line 49
    .line 50
    return-void

    .line 51
    :pswitch_0
    iget-object v0, p0, Lua/m8;->c:Lua/q8;

    .line 52
    .line 53
    invoke-static {v0}, Lua/q8;->n(Lua/q8;)V

    .line 54
    .line 55
    .line 56
    return-void

    .line 57
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
