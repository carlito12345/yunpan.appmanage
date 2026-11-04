.class public final Lx9/f;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Lx9/g;


# direct methods
.method public synthetic constructor <init>(Lx9/g;I)V
    .locals 0

    .line 1
    iput p2, p0, Lx9/f;->a:I

    iput-object p1, p0, Lx9/f;->b:Lx9/g;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 7

    .line 1
    iget v0, p0, Lx9/f;->a:I

    .line 2
    .line 3
    packed-switch v0, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    new-instance v0, Lha/ha;

    .line 7
    .line 8
    iget-object v1, p0, Lx9/f;->b:Lx9/g;

    .line 9
    .line 10
    iget-object v2, v1, Lx9/g;->h:Landroid/app/Activity;

    .line 11
    .line 12
    iget-object v3, v1, Lx9/g;->i:Landroid/content/Context;

    .line 13
    .line 14
    iget-object v5, v1, Lx9/g;->j:Ljava/util/ArrayList;

    .line 15
    .line 16
    new-instance v6, Lua/g6;

    .line 17
    .line 18
    const/16 v1, 0xb

    .line 19
    .line 20
    invoke-direct {v6, p0, v1, p1}, Lua/g6;-><init>(Ljava/lang/Object;ILjava/lang/Object;)V

    .line 21
    .line 22
    .line 23
    const/4 v4, 0x0

    .line 24
    move-object v1, v0

    .line 25
    invoke-direct/range {v1 .. v6}, Lha/ha;-><init>(Landroid/app/Activity;Landroid/content/Context;Ljava/lang/String;Ljava/util/List;Lha/ga;)V

    .line 26
    .line 27
    .line 28
    invoke-virtual {v0}, Lha/a4;->show()V

    .line 29
    .line 30
    .line 31
    return-void

    .line 32
    :pswitch_0
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    .line 33
    .line 34
    .line 35
    move-result-object p1

    .line 36
    check-cast p1, Ljava/lang/Integer;

    .line 37
    .line 38
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    .line 39
    .line 40
    .line 41
    move-result p1

    .line 42
    iget-object v0, p0, Lx9/f;->b:Lx9/g;

    .line 43
    .line 44
    invoke-virtual {v0, p1}, Lc6/g;->C(I)V

    .line 45
    .line 46
    .line 47
    iget-object p1, v0, Landroidx/recyclerview/widget/m1;->a:Landroidx/recyclerview/widget/n1;

    .line 48
    .line 49
    invoke-virtual {p1}, Landroidx/recyclerview/widget/n1;->b()V

    .line 50
    .line 51
    .line 52
    return-void

    .line 53
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
