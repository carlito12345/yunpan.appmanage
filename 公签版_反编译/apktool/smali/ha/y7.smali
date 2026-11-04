.class public final Lha/y7;
.super Lcom/autolink/adapterinterface/IHardKeyCallback$Stub;
.source "SourceFile"


# instance fields
.field public final synthetic e:Lha/z7;


# direct methods
.method public constructor <init>(Lha/z7;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lha/y7;->e:Lha/z7;

    .line 2
    .line 3
    invoke-direct {p0}, Lcom/autolink/adapterinterface/IHardKeyCallback$Stub;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final onKeyEvent(III)V
    .locals 0

    .line 1
    return-void
.end method

.method public final onKeyPressed(I)V
    .locals 4

    .line 1
    iget-object v0, p0, Lha/y7;->e:Lha/z7;

    .line 2
    .line 3
    iget-object v1, v0, Lha/z7;->i:Lx9/i2;

    .line 4
    .line 5
    new-instance v2, Lcom/yunpan/appmanage/bean/IntIntBean;

    .line 6
    .line 7
    const/4 v3, 0x0

    .line 8
    invoke-direct {v2, p1, v3}, Lcom/yunpan/appmanage/bean/IntIntBean;-><init>(II)V

    .line 9
    .line 10
    .line 11
    invoke-virtual {v1, v2}, Lc6/g;->q(Ljava/lang/Object;)V

    .line 12
    .line 13
    .line 14
    iget-object p1, v0, Lha/z7;->h:Lcom/owen/tvrecyclerview/widget/TvRecyclerView;

    .line 15
    .line 16
    iget-object v0, v0, Lha/z7;->i:Lx9/i2;

    .line 17
    .line 18
    invoke-virtual {v0}, Lc6/g;->b()I

    .line 19
    .line 20
    .line 21
    move-result v0

    .line 22
    add-int/lit8 v0, v0, -0x1

    .line 23
    .line 24
    invoke-virtual {p1, v0}, Lcom/owen/tvrecyclerview/widget/TvRecyclerView;->scrollToPosition(I)V

    .line 25
    .line 26
    .line 27
    return-void
.end method

.method public final onKeyReleased(I)V
    .locals 4

    .line 1
    iget-object v0, p0, Lha/y7;->e:Lha/z7;

    .line 2
    .line 3
    iget-object v1, v0, Lha/z7;->i:Lx9/i2;

    .line 4
    .line 5
    new-instance v2, Lcom/yunpan/appmanage/bean/IntIntBean;

    .line 6
    .line 7
    const/4 v3, 0x1

    .line 8
    invoke-direct {v2, p1, v3}, Lcom/yunpan/appmanage/bean/IntIntBean;-><init>(II)V

    .line 9
    .line 10
    .line 11
    invoke-virtual {v1, v2}, Lc6/g;->q(Ljava/lang/Object;)V

    .line 12
    .line 13
    .line 14
    iget-object p1, v0, Lha/z7;->h:Lcom/owen/tvrecyclerview/widget/TvRecyclerView;

    .line 15
    .line 16
    iget-object v0, v0, Lha/z7;->i:Lx9/i2;

    .line 17
    .line 18
    invoke-virtual {v0}, Lc6/g;->b()I

    .line 19
    .line 20
    .line 21
    move-result v0

    .line 22
    sub-int/2addr v0, v3

    .line 23
    invoke-virtual {p1, v0}, Lcom/owen/tvrecyclerview/widget/TvRecyclerView;->scrollToPosition(I)V

    .line 24
    .line 25
    .line 26
    return-void
.end method
