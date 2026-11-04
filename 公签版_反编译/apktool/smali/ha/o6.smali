.class public final Lha/o6;
.super Lcom/hsae/autosdk/hmi/IHmiCallback$Stub;
.source "SourceFile"


# instance fields
.field public final synthetic e:Lha/p6;


# direct methods
.method public constructor <init>(Lha/p6;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lha/o6;->e:Lha/p6;

    .line 2
    .line 3
    invoke-direct {p0}, Lcom/hsae/autosdk/hmi/IHmiCallback$Stub;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final onAirConditionerInputKeyEvent(IZ)V
    .locals 3

    .line 1
    iget-object v0, p0, Lha/o6;->e:Lha/p6;

    .line 2
    .line 3
    iget-object v1, v0, Lha/p6;->j:Lx9/i2;

    .line 4
    .line 5
    new-instance v2, Lcom/yunpan/appmanage/bean/IntIntBean;

    .line 6
    .line 7
    xor-int/lit8 p2, p2, 0x1

    .line 8
    .line 9
    invoke-direct {v2, p1, p2}, Lcom/yunpan/appmanage/bean/IntIntBean;-><init>(II)V

    .line 10
    .line 11
    .line 12
    invoke-virtual {v1, v2}, Lc6/g;->q(Ljava/lang/Object;)V

    .line 13
    .line 14
    .line 15
    iget-object p1, v0, Lha/p6;->i:Lcom/owen/tvrecyclerview/widget/TvRecyclerView;

    .line 16
    .line 17
    iget-object p2, v0, Lha/p6;->j:Lx9/i2;

    .line 18
    .line 19
    invoke-virtual {p2}, Lc6/g;->b()I

    .line 20
    .line 21
    .line 22
    move-result p2

    .line 23
    add-int/lit8 p2, p2, -0x1

    .line 24
    .line 25
    invoke-virtual {p1, p2}, Lcom/owen/tvrecyclerview/widget/TvRecyclerView;->scrollToPosition(I)V

    .line 26
    .line 27
    .line 28
    return-void
.end method

.method public final onVirtualInputKeyEvent(IZ)V
    .locals 3

    .line 1
    iget-object v0, p0, Lha/o6;->e:Lha/p6;

    .line 2
    .line 3
    iget-object v1, v0, Lha/p6;->j:Lx9/i2;

    .line 4
    .line 5
    new-instance v2, Lcom/yunpan/appmanage/bean/IntIntBean;

    .line 6
    .line 7
    xor-int/lit8 p2, p2, 0x1

    .line 8
    .line 9
    invoke-direct {v2, p1, p2}, Lcom/yunpan/appmanage/bean/IntIntBean;-><init>(II)V

    .line 10
    .line 11
    .line 12
    invoke-virtual {v1, v2}, Lc6/g;->q(Ljava/lang/Object;)V

    .line 13
    .line 14
    .line 15
    iget-object p1, v0, Lha/p6;->i:Lcom/owen/tvrecyclerview/widget/TvRecyclerView;

    .line 16
    .line 17
    iget-object p2, v0, Lha/p6;->j:Lx9/i2;

    .line 18
    .line 19
    invoke-virtual {p2}, Lc6/g;->b()I

    .line 20
    .line 21
    .line 22
    move-result p2

    .line 23
    add-int/lit8 p2, p2, -0x1

    .line 24
    .line 25
    invoke-virtual {p1, p2}, Lcom/owen/tvrecyclerview/widget/TvRecyclerView;->scrollToPosition(I)V

    .line 26
    .line 27
    .line 28
    return-void
.end method
