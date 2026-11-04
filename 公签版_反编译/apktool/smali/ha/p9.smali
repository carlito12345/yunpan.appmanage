.class public final synthetic Lha/p9;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lc6/e;
.implements Lc6/f;
.implements Lcom/owen/tvrecyclerview/widget/TvRecyclerView$OnInBorderKeyEventListener;
.implements Lea/e;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Lha/q9;


# direct methods
.method public synthetic constructor <init>(Lha/q9;I)V
    .locals 0

    .line 1
    iput p2, p0, Lha/p9;->a:I

    iput-object p1, p0, Lha/p9;->b:Lha/q9;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public c(ILandroid/view/View;)Z
    .locals 3

    .line 1
    iget-object p2, p0, Lha/p9;->b:Lha/q9;

    .line 2
    .line 3
    iget-object v0, p2, Lha/q9;->m:Lx9/u0;

    .line 4
    .line 5
    invoke-virtual {v0}, Lc6/g;->b()I

    .line 6
    .line 7
    .line 8
    move-result v1

    .line 9
    const/4 v2, 0x1

    .line 10
    if-ne v1, v2, :cond_0

    .line 11
    .line 12
    const/4 v1, -0x1

    .line 13
    iput v1, p2, Lha/q9;->i:I

    .line 14
    .line 15
    new-instance v1, Ljava/util/ArrayList;

    .line 16
    .line 17
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 18
    .line 19
    .line 20
    iget-object v2, p2, Lha/q9;->p:Lx9/t2;

    .line 21
    .line 22
    invoke-virtual {v2, v1}, Lc6/g;->E(Ljava/util/List;)V

    .line 23
    .line 24
    .line 25
    iget-object v1, p2, Lha/q9;->j:Lcom/owen/tvrecyclerview/widget/TvRecyclerView;

    .line 26
    .line 27
    invoke-virtual {v1}, Landroid/view/View;->requestFocus()Z

    .line 28
    .line 29
    .line 30
    goto :goto_0

    .line 31
    :cond_0
    if-nez p1, :cond_1

    .line 32
    .line 33
    iput v2, p2, Lha/q9;->i:I

    .line 34
    .line 35
    invoke-virtual {p2, v2}, Lha/q9;->a(I)V

    .line 36
    .line 37
    .line 38
    goto :goto_0

    .line 39
    :cond_1
    add-int/lit8 v1, p1, -0x1

    .line 40
    .line 41
    iput v1, p2, Lha/q9;->i:I

    .line 42
    .line 43
    invoke-virtual {p2, v1}, Lha/q9;->a(I)V

    .line 44
    .line 45
    .line 46
    :goto_0
    invoke-virtual {v0, p1}, Lc6/g;->t(I)Ljava/lang/Object;

    .line 47
    .line 48
    .line 49
    move-result-object v1

    .line 50
    check-cast v1, Lcom/yunpan/appmanage/bean/StrIntBoolBean;

    .line 51
    .line 52
    iget v1, v1, Lcom/yunpan/appmanage/bean/StrIntBoolBean;->intValue:I

    .line 53
    .line 54
    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 55
    .line 56
    .line 57
    move-result-object v1

    .line 58
    iget-object p2, p2, Lha/q9;->h:Lz7/s;

    .line 59
    .line 60
    invoke-virtual {p2, v1}, Lz7/s;->r(Ljava/lang/String;)V

    .line 61
    .line 62
    .line 63
    invoke-virtual {v0, p1}, Lc6/g;->C(I)V

    .line 64
    .line 65
    .line 66
    const-string p1, "\u5220\u9664\u6210\u529f"

    .line 67
    .line 68
    invoke-static {p1}, Lcom/yunpan/appmanage/util/a0;->w(Ljava/lang/String;)V

    .line 69
    .line 70
    .line 71
    const/4 p1, 0x0

    .line 72
    return p1
.end method

.method public k(Lz7/s;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lha/p9;->b:Lha/q9;

    .line 2
    .line 3
    iget-object v1, v0, Lha/q9;->p:Lx9/t2;

    .line 4
    .line 5
    invoke-virtual {v1, p1}, Lc6/g;->q(Ljava/lang/Object;)V

    .line 6
    .line 7
    .line 8
    iget-object v1, v0, Lha/q9;->m:Lx9/u0;

    .line 9
    .line 10
    iget v2, v0, Lha/q9;->i:I

    .line 11
    .line 12
    invoke-virtual {v1, v2}, Lc6/g;->t(I)Ljava/lang/Object;

    .line 13
    .line 14
    .line 15
    move-result-object v1

    .line 16
    check-cast v1, Lcom/yunpan/appmanage/bean/StrIntBoolBean;

    .line 17
    .line 18
    iget v1, v1, Lcom/yunpan/appmanage/bean/StrIntBoolBean;->intValue:I

    .line 19
    .line 20
    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 21
    .line 22
    .line 23
    move-result-object v1

    .line 24
    iget-object v0, v0, Lha/q9;->h:Lz7/s;

    .line 25
    .line 26
    invoke-virtual {v0, v1}, Lz7/s;->q(Ljava/lang/String;)Lz7/s;

    .line 27
    .line 28
    .line 29
    move-result-object v0

    .line 30
    const-string v1, "maps"

    .line 31
    .line 32
    invoke-virtual {v0, v1}, Lz7/s;->p(Ljava/lang/String;)Lz7/o;

    .line 33
    .line 34
    .line 35
    move-result-object v0

    .line 36
    invoke-virtual {v0, p1}, Lz7/o;->k(Lz7/p;)V

    .line 37
    .line 38
    .line 39
    return-void
.end method

.method public onInBorderKeyEvent(ILandroid/view/View;)Z
    .locals 1

    .line 1
    iget p2, p0, Lha/p9;->a:I

    .line 2
    .line 3
    packed-switch p2, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    const/16 p2, 0x42

    .line 7
    .line 8
    iget-object v0, p0, Lha/p9;->b:Lha/q9;

    .line 9
    .line 10
    if-ne p1, p2, :cond_1

    .line 11
    .line 12
    iget-object p1, v0, Lha/q9;->p:Lx9/t2;

    .line 13
    .line 14
    invoke-virtual {p1}, Lc6/g;->b()I

    .line 15
    .line 16
    .line 17
    move-result p1

    .line 18
    if-lez p1, :cond_0

    .line 19
    .line 20
    iget-object p1, v0, Lha/q9;->n:Lcom/owen/tvrecyclerview/widget/TvRecyclerView;

    .line 21
    .line 22
    invoke-virtual {p1}, Landroid/view/View;->requestFocus()Z

    .line 23
    .line 24
    .line 25
    goto :goto_0

    .line 26
    :cond_0
    iget-object p1, v0, Lha/q9;->j:Lcom/owen/tvrecyclerview/widget/TvRecyclerView;

    .line 27
    .line 28
    const/4 p2, 0x2

    .line 29
    invoke-virtual {p1, p2}, Lcom/owen/tvrecyclerview/widget/TvRecyclerView;->setSelectionWithSmooth(I)V

    .line 30
    .line 31
    .line 32
    :goto_0
    const/4 p1, 0x1

    .line 33
    goto :goto_1

    .line 34
    :cond_1
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 35
    .line 36
    .line 37
    const/4 p1, 0x0

    .line 38
    :goto_1
    return p1

    .line 39
    :pswitch_0
    const/16 p2, 0x82

    .line 40
    .line 41
    iget-object v0, p0, Lha/p9;->b:Lha/q9;

    .line 42
    .line 43
    if-ne p1, p2, :cond_3

    .line 44
    .line 45
    iget-object p1, v0, Lha/q9;->m:Lx9/u0;

    .line 46
    .line 47
    invoke-virtual {p1}, Lc6/g;->b()I

    .line 48
    .line 49
    .line 50
    move-result p1

    .line 51
    if-lez p1, :cond_2

    .line 52
    .line 53
    iget-object p1, v0, Lha/q9;->l:Lcom/owen/tvrecyclerview/widget/TvRecyclerView;

    .line 54
    .line 55
    invoke-virtual {p1}, Landroid/view/View;->requestFocus()Z

    .line 56
    .line 57
    .line 58
    :cond_2
    const/4 p1, 0x1

    .line 59
    goto :goto_2

    .line 60
    :cond_3
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 61
    .line 62
    .line 63
    const/4 p1, 0x0

    .line 64
    :goto_2
    return p1

    .line 65
    :pswitch_data_0
    .packed-switch 0x3
        :pswitch_0
    .end packed-switch
.end method

.method public x(Lc6/g;Landroid/view/View;I)V
    .locals 2

    .line 1
    iget p1, p0, Lha/p9;->a:I

    .line 2
    .line 3
    packed-switch p1, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    iget-object p1, p0, Lha/p9;->b:Lha/q9;

    .line 7
    .line 8
    iget-object p2, p1, Lha/q9;->p:Lx9/t2;

    .line 9
    .line 10
    invoke-virtual {p2}, Lc6/g;->b()I

    .line 11
    .line 12
    .line 13
    move-result v0

    .line 14
    const/4 v1, 0x1

    .line 15
    if-ne v0, v1, :cond_0

    .line 16
    .line 17
    iget-object v0, p1, Lha/q9;->j:Lcom/owen/tvrecyclerview/widget/TvRecyclerView;

    .line 18
    .line 19
    invoke-virtual {v0}, Landroid/view/View;->requestFocus()Z

    .line 20
    .line 21
    .line 22
    :cond_0
    invoke-virtual {p2, p3}, Lc6/g;->C(I)V

    .line 23
    .line 24
    .line 25
    iget-object p2, p1, Lha/q9;->m:Lx9/u0;

    .line 26
    .line 27
    iget v0, p1, Lha/q9;->i:I

    .line 28
    .line 29
    invoke-virtual {p2, v0}, Lc6/g;->t(I)Ljava/lang/Object;

    .line 30
    .line 31
    .line 32
    move-result-object p2

    .line 33
    check-cast p2, Lcom/yunpan/appmanage/bean/StrIntBoolBean;

    .line 34
    .line 35
    iget p2, p2, Lcom/yunpan/appmanage/bean/StrIntBoolBean;->intValue:I

    .line 36
    .line 37
    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 38
    .line 39
    .line 40
    move-result-object p2

    .line 41
    iget-object p1, p1, Lha/q9;->h:Lz7/s;

    .line 42
    .line 43
    invoke-virtual {p1, p2}, Lz7/s;->q(Ljava/lang/String;)Lz7/s;

    .line 44
    .line 45
    .line 46
    move-result-object p1

    .line 47
    const-string p2, "maps"

    .line 48
    .line 49
    invoke-virtual {p1, p2}, Lz7/s;->p(Ljava/lang/String;)Lz7/o;

    .line 50
    .line 51
    .line 52
    move-result-object p1

    .line 53
    invoke-virtual {p1, p3}, Lz7/o;->n(I)V

    .line 54
    .line 55
    .line 56
    return-void

    .line 57
    :pswitch_0
    iget-object p1, p0, Lha/p9;->b:Lha/q9;

    .line 58
    .line 59
    invoke-virtual {p1, p3}, Lha/q9;->a(I)V

    .line 60
    .line 61
    .line 62
    return-void

    .line 63
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
