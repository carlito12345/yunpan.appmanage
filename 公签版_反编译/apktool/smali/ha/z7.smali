.class public final Lha/z7;
.super Lha/a4;
.source "SourceFile"


# instance fields
.field public g:Lea/c;

.field public h:Lcom/owen/tvrecyclerview/widget/TvRecyclerView;

.field public i:Lx9/i2;


# direct methods
.method public constructor <init>(Landroid/app/Activity;Landroid/content/Context;)V
    .locals 1

    .line 1
    const v0, 0x7f0e00ac

    .line 2
    .line 3
    .line 4
    invoke-direct {p0, p1, p2, v0}, Lha/a4;-><init>(Landroid/app/Activity;Landroid/content/Context;I)V

    .line 5
    .line 6
    .line 7
    return-void
.end method


# virtual methods
.method public final a(Lea/c;)V
    .locals 6

    .line 1
    iput-object p1, p0, Lha/z7;->g:Lea/c;

    .line 2
    .line 3
    invoke-virtual {p0}, Lha/a4;->show()V

    .line 4
    .line 5
    .line 6
    :try_start_0
    sget-object v0, Lcom/yunpan/appmanage/carsdk/g0;->a:Lcom/yunpan/appmanage/carsdk/h0;

    .line 7
    .line 8
    iget-object v1, p0, Lha/a4;->b:Landroid/content/Context;

    .line 9
    .line 10
    const/4 v3, 0x0

    .line 11
    const/4 v4, 0x0

    .line 12
    const/4 v5, 0x0

    .line 13
    const/4 v2, 0x1

    .line 14
    invoke-virtual/range {v0 .. v5}, Lcom/yunpan/appmanage/carsdk/h0;->a(Landroid/content/Context;ZZZZ)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 15
    .line 16
    .line 17
    goto :goto_0

    .line 18
    :catch_0
    const-string p1, "\u4e0d\u652f\u6301\u60a8\u7684\u7cfb\u7edf"

    .line 19
    .line 20
    invoke-static {p1}, Lcom/yunpan/appmanage/util/a0;->u(Ljava/lang/CharSequence;)V

    .line 21
    .line 22
    .line 23
    invoke-virtual {p0}, Lha/z7;->dismiss()V

    .line 24
    .line 25
    .line 26
    :goto_0
    sget-object p1, Lcom/yunpan/appmanage/carsdk/g0;->a:Lcom/yunpan/appmanage/carsdk/h0;

    .line 27
    .line 28
    new-instance v0, Lha/y7;

    .line 29
    .line 30
    invoke-direct {v0, p0}, Lha/y7;-><init>(Lha/z7;)V

    .line 31
    .line 32
    .line 33
    iput-object v0, p1, Lcom/yunpan/appmanage/carsdk/h0;->g:Lcom/autolink/adapterinterface/IHardKeyCallback$Stub;

    .line 34
    .line 35
    return-void
.end method

.method public final dismiss()V
    .locals 1

    .line 1
    sget-object v0, Lcom/yunpan/appmanage/carsdk/g0;->a:Lcom/yunpan/appmanage/carsdk/h0;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/yunpan/appmanage/carsdk/h0;->d()V

    .line 4
    .line 5
    .line 6
    invoke-super {p0}, Landroid/app/Dialog;->dismiss()V

    .line 7
    .line 8
    .line 9
    return-void
.end method

.method public final onCreate(Landroid/os/Bundle;)V
    .locals 4

    .line 1
    invoke-super {p0, p1}, Lha/a4;->onCreate(Landroid/os/Bundle;)V

    .line 2
    .line 3
    .line 4
    const p1, 0x7f0b04f1

    .line 5
    .line 6
    .line 7
    invoke-virtual {p0, p1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    .line 8
    .line 9
    .line 10
    move-result-object p1

    .line 11
    check-cast p1, Lcom/owen/tvrecyclerview/widget/TvRecyclerView;

    .line 12
    .line 13
    iput-object p1, p0, Lha/z7;->h:Lcom/owen/tvrecyclerview/widget/TvRecyclerView;

    .line 14
    .line 15
    new-instance v0, Lcom/owen/tvrecyclerview/widget/V7LinearLayoutManager;

    .line 16
    .line 17
    const/4 v1, 0x0

    .line 18
    iget-object v2, p0, Lha/a4;->b:Landroid/content/Context;

    .line 19
    .line 20
    const/4 v3, 0x1

    .line 21
    invoke-direct {v0, v2, v3, v1}, Lcom/owen/tvrecyclerview/widget/V7LinearLayoutManager;-><init>(Landroid/content/Context;IZ)V

    .line 22
    .line 23
    .line 24
    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 25
    .line 26
    .line 27
    new-instance p1, Lx9/i2;

    .line 28
    .line 29
    invoke-direct {p1}, Lx9/i2;-><init>()V

    .line 30
    .line 31
    .line 32
    iput-object p1, p0, Lha/z7;->i:Lx9/i2;

    .line 33
    .line 34
    iget-object v0, p0, Lha/z7;->h:Lcom/owen/tvrecyclerview/widget/TvRecyclerView;

    .line 35
    .line 36
    invoke-virtual {v0, p1}, Lcom/owen/tvrecyclerview/widget/TvRecyclerView;->setAdapter(Landroidx/recyclerview/widget/m1;)V

    .line 37
    .line 38
    .line 39
    iget-object p1, p0, Lha/z7;->i:Lx9/i2;

    .line 40
    .line 41
    new-instance v0, Lha/p7;

    .line 42
    .line 43
    const/4 v1, 0x1

    .line 44
    invoke-direct {v0, v1, p0}, Lha/p7;-><init>(ILjava/lang/Object;)V

    .line 45
    .line 46
    .line 47
    iput-object v0, p1, Lc6/g;->e:Lc6/e;

    .line 48
    .line 49
    return-void
.end method
