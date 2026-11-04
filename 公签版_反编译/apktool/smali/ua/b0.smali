.class public final Lua/b0;
.super Lha/l2;
.source "SourceFile"


# instance fields
.field public final synthetic b:I

.field public final synthetic c:Lcom/yunpan/appmanage/ui/ActivityAppStorage;


# direct methods
.method public synthetic constructor <init>(Lcom/yunpan/appmanage/ui/ActivityAppStorage;I)V
    .locals 0

    .line 1
    iput p2, p0, Lua/b0;->b:I

    iput-object p1, p0, Lua/b0;->c:Lcom/yunpan/appmanage/ui/ActivityAppStorage;

    const/16 p1, 0x1c

    invoke-direct {p0, p1}, Lha/l2;-><init>(I)V

    return-void
.end method


# virtual methods
.method public E(Ljava/lang/Object;)V
    .locals 2

    .line 1
    iget v0, p0, Lua/b0;->b:I

    .line 2
    .line 3
    packed-switch v0, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    return-void

    .line 7
    :pswitch_0
    instance-of v0, p1, Lja/f;

    .line 8
    .line 9
    iget-object v1, p0, Lua/b0;->c:Lcom/yunpan/appmanage/ui/ActivityAppStorage;

    .line 10
    .line 11
    if-eqz v0, :cond_0

    .line 12
    .line 13
    check-cast p1, Lja/f;

    .line 14
    .line 15
    iget-object v0, v1, Lcom/yunpan/appmanage/ui/ActivityAppStorage;->D:Lx9/x;

    .line 16
    .line 17
    iget v1, p1, Lja/f;->a:I

    .line 18
    .line 19
    iget-object p1, p1, Lja/f;->b:Lx9/y;

    .line 20
    .line 21
    invoke-virtual {v0, v1, p1}, Lc6/g;->D(ILjava/lang/Object;)V

    .line 22
    .line 23
    .line 24
    goto :goto_0

    .line 25
    :cond_0
    iget-object v0, v1, Lcom/yunpan/appmanage/ui/ActivityAppStorage;->D:Lx9/x;

    .line 26
    .line 27
    check-cast p1, Ljava/lang/Integer;

    .line 28
    .line 29
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    .line 30
    .line 31
    .line 32
    move-result p1

    .line 33
    invoke-virtual {v0, p1}, Lc6/g;->C(I)V

    .line 34
    .line 35
    .line 36
    :goto_0
    return-void

    .line 37
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public b(Lgc/b;)V
    .locals 1

    .line 1
    iget p1, p0, Lua/b0;->b:I

    .line 2
    .line 3
    packed-switch p1, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    return-void

    .line 7
    :pswitch_0
    iget-object p1, p0, Lua/b0;->c:Lcom/yunpan/appmanage/ui/ActivityAppStorage;

    .line 8
    .line 9
    iget-object p1, p1, Lcom/yunpan/appmanage/ui/ActivityAppStorage;->G:Landroidx/constraintlayout/widget/ConstraintLayout;

    .line 10
    .line 11
    const/4 v0, 0x0

    .line 12
    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 13
    .line 14
    .line 15
    return-void

    .line 16
    nop

    .line 17
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method public onComplete()V
    .locals 3

    .line 1
    iget v0, p0, Lua/b0;->b:I

    .line 2
    .line 3
    packed-switch v0, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    return-void

    .line 7
    :pswitch_0
    iget-object v0, p0, Lua/b0;->c:Lcom/yunpan/appmanage/ui/ActivityAppStorage;

    .line 8
    .line 9
    iget-object v1, v0, Lcom/yunpan/appmanage/ui/ActivityAppStorage;->G:Landroidx/constraintlayout/widget/ConstraintLayout;

    .line 10
    .line 11
    const/16 v2, 0x8

    .line 12
    .line 13
    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 14
    .line 15
    .line 16
    iget-object v1, v0, Lcom/yunpan/appmanage/ui/ActivityAppStorage;->D:Lx9/x;

    .line 17
    .line 18
    iget-object v0, v0, Lcom/yunpan/appmanage/ui/ActivityAppStorage;->E:Ljava/util/ArrayList;

    .line 19
    .line 20
    invoke-virtual {v1, v0}, Lc6/g;->E(Ljava/util/List;)V

    .line 21
    .line 22
    .line 23
    return-void

    .line 24
    nop

    .line 25
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method
