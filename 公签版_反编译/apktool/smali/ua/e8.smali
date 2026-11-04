.class public final synthetic Lua/e8;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnLongClickListener;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(ILjava/lang/Object;)V
    .locals 0

    .line 1
    iput p1, p0, Lua/e8;->a:I

    iput-object p2, p0, Lua/e8;->b:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onLongClick(Landroid/view/View;)Z
    .locals 4

    .line 1
    iget p1, p0, Lua/e8;->a:I

    .line 2
    .line 3
    packed-switch p1, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    iget-object p1, p0, Lua/e8;->b:Ljava/lang/Object;

    .line 7
    .line 8
    check-cast p1, Lya/l;

    .line 9
    .line 10
    iget-object p1, p1, Lya/l;->f:Ly1/x;

    .line 11
    .line 12
    if-eqz p1, :cond_0

    .line 13
    .line 14
    invoke-virtual {p1}, Ly1/x;->h0()V

    .line 15
    .line 16
    .line 17
    const/4 v0, 0x0

    .line 18
    invoke-virtual {p1, v0}, Ly1/x;->c0(Ly1/k;)V

    .line 19
    .line 20
    .line 21
    new-instance v0, Lt1/c;

    .line 22
    .line 23
    sget-object v1, Lu7/y0;->e:Lu7/y0;

    .line 24
    .line 25
    iget-object v2, p1, Ly1/x;->f1:Ly1/v0;

    .line 26
    .line 27
    iget-wide v2, v2, Ly1/v0;->s:J

    .line 28
    .line 29
    invoke-direct {v0, v1}, Lt1/c;-><init>(Ljava/util/List;)V

    .line 30
    .line 31
    .line 32
    iput-object v0, p1, Ly1/x;->V0:Lt1/c;

    .line 33
    .line 34
    :cond_0
    const/4 p1, 0x1

    .line 35
    return p1

    .line 36
    :pswitch_0
    iget-object p1, p0, Lua/e8;->b:Ljava/lang/Object;

    .line 37
    .line 38
    check-cast p1, Lua/q8;

    .line 39
    .line 40
    iget-object v0, p1, Lua/q8;->k:Lcom/owen/tvrecyclerview/widget/TvRecyclerView;

    .line 41
    .line 42
    invoke-virtual {v0}, Landroid/view/View;->requestFocus()Z

    .line 43
    .line 44
    .line 45
    iget-object v0, p1, Lua/q8;->I:Landroid/widget/LinearLayout;

    .line 46
    .line 47
    const/16 v1, 0x8

    .line 48
    .line 49
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 50
    .line 51
    .line 52
    iget-object p1, p1, Lua/q8;->K:Landroid/widget/TextView;

    .line 53
    .line 54
    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    .line 55
    .line 56
    .line 57
    const/4 p1, 0x1

    .line 58
    return p1

    .line 59
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
