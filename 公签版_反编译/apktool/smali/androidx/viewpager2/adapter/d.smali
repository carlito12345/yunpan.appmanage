.class public final Landroidx/viewpager2/adapter/d;
.super Landroidx/recyclerview/widget/o1;
.source "SourceFile"


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Landroidx/room/i;)V
    .locals 1

    const/4 v0, 0x1

    iput v0, p0, Landroidx/viewpager2/adapter/d;->a:I

    .line 1
    iput-object p1, p0, Landroidx/viewpager2/adapter/d;->b:Ljava/lang/Object;

    invoke-direct {p0}, Landroidx/recyclerview/widget/o1;-><init>()V

    return-void
.end method

.method public constructor <init>(Landroidx/viewpager2/adapter/e;)V
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, Landroidx/viewpager2/adapter/d;->a:I

    .line 2
    iput-object p1, p0, Landroidx/viewpager2/adapter/d;->b:Ljava/lang/Object;

    const/4 p1, 0x0

    iput p1, p0, Landroidx/viewpager2/adapter/d;->a:I

    .line 3
    invoke-direct {p0}, Landroidx/recyclerview/widget/o1;-><init>()V

    return-void
.end method


# virtual methods
.method public final onChanged()V
    .locals 2

    .line 1
    iget v0, p0, Landroidx/viewpager2/adapter/d;->a:I

    .line 2
    .line 3
    packed-switch v0, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Landroidx/viewpager2/adapter/d;->b:Ljava/lang/Object;

    .line 7
    .line 8
    check-cast v0, Landroidx/room/i;

    .line 9
    .line 10
    invoke-virtual {v0}, Landroidx/room/i;->g()V

    .line 11
    .line 12
    .line 13
    return-void

    .line 14
    :pswitch_0
    iget-object v0, p0, Landroidx/viewpager2/adapter/d;->b:Ljava/lang/Object;

    .line 15
    .line 16
    check-cast v0, Landroidx/viewpager2/adapter/e;

    .line 17
    .line 18
    const/4 v1, 0x1

    .line 19
    invoke-virtual {v0, v1}, Landroidx/viewpager2/adapter/e;->b(Z)V

    .line 20
    .line 21
    .line 22
    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public final onItemRangeChanged(II)V
    .locals 0

    iget p1, p0, Landroidx/viewpager2/adapter/d;->a:I

    packed-switch p1, :pswitch_data_0

    .line 1
    iget-object p1, p0, Landroidx/viewpager2/adapter/d;->b:Ljava/lang/Object;

    check-cast p1, Landroidx/room/i;

    invoke-virtual {p1}, Landroidx/room/i;->g()V

    return-void

    .line 2
    :pswitch_0
    invoke-virtual {p0}, Landroidx/recyclerview/widget/o1;->onChanged()V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public final onItemRangeChanged(IILjava/lang/Object;)V
    .locals 0

    iget p1, p0, Landroidx/viewpager2/adapter/d;->a:I

    packed-switch p1, :pswitch_data_0

    .line 3
    iget-object p1, p0, Landroidx/viewpager2/adapter/d;->b:Ljava/lang/Object;

    check-cast p1, Landroidx/room/i;

    invoke-virtual {p1}, Landroidx/room/i;->g()V

    return-void

    .line 4
    :pswitch_0
    invoke-virtual {p0}, Landroidx/recyclerview/widget/o1;->onChanged()V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public final onItemRangeInserted(II)V
    .locals 0

    .line 1
    iget p1, p0, Landroidx/viewpager2/adapter/d;->a:I

    .line 2
    .line 3
    packed-switch p1, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    iget-object p1, p0, Landroidx/viewpager2/adapter/d;->b:Ljava/lang/Object;

    .line 7
    .line 8
    check-cast p1, Landroidx/room/i;

    .line 9
    .line 10
    invoke-virtual {p1}, Landroidx/room/i;->g()V

    .line 11
    .line 12
    .line 13
    return-void

    .line 14
    :pswitch_0
    invoke-virtual {p0}, Landroidx/recyclerview/widget/o1;->onChanged()V

    .line 15
    .line 16
    .line 17
    return-void

    .line 18
    nop

    .line 19
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public final onItemRangeMoved(III)V
    .locals 0

    .line 1
    iget p1, p0, Landroidx/viewpager2/adapter/d;->a:I

    .line 2
    .line 3
    packed-switch p1, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    iget-object p1, p0, Landroidx/viewpager2/adapter/d;->b:Ljava/lang/Object;

    .line 7
    .line 8
    check-cast p1, Landroidx/room/i;

    .line 9
    .line 10
    invoke-virtual {p1}, Landroidx/room/i;->g()V

    .line 11
    .line 12
    .line 13
    return-void

    .line 14
    :pswitch_0
    invoke-virtual {p0}, Landroidx/recyclerview/widget/o1;->onChanged()V

    .line 15
    .line 16
    .line 17
    return-void

    .line 18
    nop

    .line 19
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public final onItemRangeRemoved(II)V
    .locals 0

    .line 1
    iget p1, p0, Landroidx/viewpager2/adapter/d;->a:I

    .line 2
    .line 3
    packed-switch p1, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    iget-object p1, p0, Landroidx/viewpager2/adapter/d;->b:Ljava/lang/Object;

    .line 7
    .line 8
    check-cast p1, Landroidx/room/i;

    .line 9
    .line 10
    invoke-virtual {p1}, Landroidx/room/i;->g()V

    .line 11
    .line 12
    .line 13
    return-void

    .line 14
    :pswitch_0
    invoke-virtual {p0}, Landroidx/recyclerview/widget/o1;->onChanged()V

    .line 15
    .line 16
    .line 17
    return-void

    .line 18
    nop

    .line 19
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
