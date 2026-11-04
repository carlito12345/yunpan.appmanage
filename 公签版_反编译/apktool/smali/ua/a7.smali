.class public final synthetic Lua/a7;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lc6/e;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Lcom/yunpan/appmanage/ui/ActivitySystemAnimator;


# direct methods
.method public synthetic constructor <init>(Lcom/yunpan/appmanage/ui/ActivitySystemAnimator;I)V
    .locals 0

    .line 1
    iput p2, p0, Lua/a7;->a:I

    iput-object p1, p0, Lua/a7;->b:Lcom/yunpan/appmanage/ui/ActivitySystemAnimator;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final x(Lc6/g;Landroid/view/View;I)V
    .locals 0

    .line 1
    iget p1, p0, Lua/a7;->a:I

    .line 2
    .line 3
    packed-switch p1, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    iget-object p1, p0, Lua/a7;->b:Lcom/yunpan/appmanage/ui/ActivitySystemAnimator;

    .line 7
    .line 8
    iget-object p2, p1, Lcom/yunpan/appmanage/ui/ActivitySystemAnimator;->I:Lx9/c0;

    .line 9
    .line 10
    invoke-virtual {p2, p3}, Lc6/g;->t(I)Ljava/lang/Object;

    .line 11
    .line 12
    .line 13
    move-result-object p2

    .line 14
    check-cast p2, Lx9/x0;

    .line 15
    .line 16
    iget-boolean p2, p2, Lx9/x0;->b:Z

    .line 17
    .line 18
    if-eqz p2, :cond_0

    .line 19
    .line 20
    goto :goto_0

    .line 21
    :cond_0
    const/4 p2, 0x2

    .line 22
    invoke-virtual {p1, p2, p3}, Lcom/yunpan/appmanage/ui/ActivitySystemAnimator;->x(II)V

    .line 23
    .line 24
    .line 25
    :goto_0
    return-void

    .line 26
    :pswitch_0
    iget-object p1, p0, Lua/a7;->b:Lcom/yunpan/appmanage/ui/ActivitySystemAnimator;

    .line 27
    .line 28
    iget-object p2, p1, Lcom/yunpan/appmanage/ui/ActivitySystemAnimator;->G:Lx9/c0;

    .line 29
    .line 30
    invoke-virtual {p2, p3}, Lc6/g;->t(I)Ljava/lang/Object;

    .line 31
    .line 32
    .line 33
    move-result-object p2

    .line 34
    check-cast p2, Lx9/x0;

    .line 35
    .line 36
    iget-boolean p2, p2, Lx9/x0;->b:Z

    .line 37
    .line 38
    if-eqz p2, :cond_1

    .line 39
    .line 40
    goto :goto_1

    .line 41
    :cond_1
    const/4 p2, 0x1

    .line 42
    invoke-virtual {p1, p2, p3}, Lcom/yunpan/appmanage/ui/ActivitySystemAnimator;->x(II)V

    .line 43
    .line 44
    .line 45
    :goto_1
    return-void

    .line 46
    :pswitch_1
    iget-object p1, p0, Lua/a7;->b:Lcom/yunpan/appmanage/ui/ActivitySystemAnimator;

    .line 47
    .line 48
    iget-object p2, p1, Lcom/yunpan/appmanage/ui/ActivitySystemAnimator;->E:Lx9/c0;

    .line 49
    .line 50
    invoke-virtual {p2, p3}, Lc6/g;->t(I)Ljava/lang/Object;

    .line 51
    .line 52
    .line 53
    move-result-object p2

    .line 54
    check-cast p2, Lx9/x0;

    .line 55
    .line 56
    iget-boolean p2, p2, Lx9/x0;->b:Z

    .line 57
    .line 58
    if-eqz p2, :cond_2

    .line 59
    .line 60
    goto :goto_2

    .line 61
    :cond_2
    const/4 p2, 0x0

    .line 62
    invoke-virtual {p1, p2, p3}, Lcom/yunpan/appmanage/ui/ActivitySystemAnimator;->x(II)V

    .line 63
    .line 64
    .line 65
    :goto_2
    return-void

    .line 66
    nop

    .line 67
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
