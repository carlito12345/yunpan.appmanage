.class public final synthetic Lha/mb;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lc6/e;
.implements Lcom/owen/tvrecyclerview/widget/TvRecyclerView$OnInBorderKeyEventListener;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Lha/nb;


# direct methods
.method public synthetic constructor <init>(Lha/nb;I)V
    .locals 0

    .line 1
    iput p2, p0, Lha/mb;->a:I

    iput-object p1, p0, Lha/mb;->b:Lha/nb;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onInBorderKeyEvent(ILandroid/view/View;)Z
    .locals 1

    .line 1
    iget p2, p0, Lha/mb;->a:I

    .line 2
    .line 3
    packed-switch p2, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    const/16 p2, 0x82

    .line 7
    .line 8
    iget-object v0, p0, Lha/mb;->b:Lha/nb;

    .line 9
    .line 10
    if-ne p1, p2, :cond_0

    .line 11
    .line 12
    iget-object p1, v0, Lha/nb;->l:Landroid/widget/TextView;

    .line 13
    .line 14
    invoke-virtual {p1}, Landroid/view/View;->requestFocus()Z

    .line 15
    .line 16
    .line 17
    const/4 p1, 0x1

    .line 18
    goto :goto_0

    .line 19
    :cond_0
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 20
    .line 21
    .line 22
    const/4 p1, 0x0

    .line 23
    :goto_0
    return p1

    .line 24
    :pswitch_0
    const/16 p2, 0x82

    .line 25
    .line 26
    iget-object v0, p0, Lha/mb;->b:Lha/nb;

    .line 27
    .line 28
    if-ne p1, p2, :cond_2

    .line 29
    .line 30
    iget-object p1, v0, Lha/nb;->k:Lx9/e0;

    .line 31
    .line 32
    invoke-virtual {p1}, Lc6/g;->b()I

    .line 33
    .line 34
    .line 35
    move-result p1

    .line 36
    if-lez p1, :cond_1

    .line 37
    .line 38
    iget-object p1, v0, Lha/nb;->j:Lcom/owen/tvrecyclerview/widget/TvRecyclerView;

    .line 39
    .line 40
    invoke-virtual {p1}, Landroid/view/View;->requestFocus()Z

    .line 41
    .line 42
    .line 43
    goto :goto_1

    .line 44
    :cond_1
    iget-object p1, v0, Lha/nb;->l:Landroid/widget/TextView;

    .line 45
    .line 46
    invoke-virtual {p1}, Landroid/view/View;->requestFocus()Z

    .line 47
    .line 48
    .line 49
    :goto_1
    const/4 p1, 0x1

    .line 50
    goto :goto_2

    .line 51
    :cond_2
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 52
    .line 53
    .line 54
    const/4 p1, 0x0

    .line 55
    :goto_2
    return p1

    .line 56
    nop

    .line 57
    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
    .end packed-switch
.end method

.method public x(Lc6/g;Landroid/view/View;I)V
    .locals 1

    .line 1
    iget p1, p0, Lha/mb;->a:I

    .line 2
    .line 3
    packed-switch p1, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    iget-object p1, p0, Lha/mb;->b:Lha/nb;

    .line 7
    .line 8
    iget-object p2, p1, Lha/nb;->k:Lx9/e0;

    .line 9
    .line 10
    invoke-virtual {p2, p3}, Lc6/g;->t(I)Ljava/lang/Object;

    .line 11
    .line 12
    .line 13
    move-result-object p2

    .line 14
    check-cast p2, Lx9/w3;

    .line 15
    .line 16
    iget-object p3, p1, Lha/nb;->i:Lx9/g0;

    .line 17
    .line 18
    invoke-virtual {p3, p2}, Lc6/g;->q(Ljava/lang/Object;)V

    .line 19
    .line 20
    .line 21
    invoke-virtual {p1}, Lha/nb;->a()V

    .line 22
    .line 23
    .line 24
    return-void

    .line 25
    :pswitch_0
    iget-object p1, p0, Lha/mb;->b:Lha/nb;

    .line 26
    .line 27
    iget-object p2, p1, Lha/nb;->i:Lx9/g0;

    .line 28
    .line 29
    invoke-virtual {p2}, Lc6/g;->b()I

    .line 30
    .line 31
    .line 32
    move-result v0

    .line 33
    add-int/lit8 v0, v0, -0x1

    .line 34
    .line 35
    if-eq p3, v0, :cond_1

    .line 36
    .line 37
    invoke-virtual {p2}, Lc6/g;->b()I

    .line 38
    .line 39
    .line 40
    move-result v0

    .line 41
    add-int/lit8 v0, v0, -0x1

    .line 42
    .line 43
    :goto_0
    if-le v0, p3, :cond_0

    .line 44
    .line 45
    invoke-virtual {p2, v0}, Lc6/g;->C(I)V

    .line 46
    .line 47
    .line 48
    add-int/lit8 v0, v0, -0x1

    .line 49
    .line 50
    goto :goto_0

    .line 51
    :cond_0
    invoke-virtual {p1}, Lha/nb;->a()V

    .line 52
    .line 53
    .line 54
    :cond_1
    return-void

    .line 55
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
