.class public final Lha/p6;
.super Lha/a4;
.source "SourceFile"


# instance fields
.field public g:Lha/d7;

.field public h:Landroid/widget/TextView;

.field public i:Lcom/owen/tvrecyclerview/widget/TvRecyclerView;

.field public j:Lx9/i2;

.field public k:Lcom/hsae/autosdk/hmi/IHmi;

.field public final l:Lha/o6;


# direct methods
.method public constructor <init>(Landroid/app/Activity;Landroid/content/Context;)V
    .locals 1

    .line 1
    const v0, 0x7f0e00ad

    .line 2
    .line 3
    .line 4
    invoke-direct {p0, p1, p2, v0}, Lha/a4;-><init>(Landroid/app/Activity;Landroid/content/Context;I)V

    .line 5
    .line 6
    .line 7
    new-instance p1, Lha/o6;

    .line 8
    .line 9
    invoke-direct {p1, p0}, Lha/o6;-><init>(Lha/p6;)V

    .line 10
    .line 11
    .line 12
    iput-object p1, p0, Lha/p6;->l:Lha/o6;

    .line 13
    .line 14
    return-void
.end method


# virtual methods
.method public final dismiss()V
    .locals 2

    .line 1
    iget-object v0, p0, Lha/p6;->h:Landroid/widget/TextView;

    .line 2
    .line 3
    const-string v1, "\u5f00\u59cb\u76d1\u542c\u6309\u952e"

    .line 4
    .line 5
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 6
    .line 7
    .line 8
    iget-object v0, p0, Lha/p6;->k:Lcom/hsae/autosdk/hmi/IHmi;

    .line 9
    .line 10
    if-eqz v0, :cond_0

    .line 11
    .line 12
    :try_start_0
    iget-object v1, p0, Lha/p6;->l:Lha/o6;

    .line 13
    .line 14
    invoke-interface {v0, v1}, Lcom/hsae/autosdk/hmi/IHmi;->unregisterHmiCallback(Lcom/hsae/autosdk/hmi/IHmiCallback;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 15
    .line 16
    .line 17
    goto :goto_0

    .line 18
    :catch_0
    move-exception v0

    .line 19
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 20
    .line 21
    .line 22
    :cond_0
    :goto_0
    invoke-super {p0}, Landroid/app/Dialog;->dismiss()V

    .line 23
    .line 24
    .line 25
    return-void
.end method

.method public final onCreate(Landroid/os/Bundle;)V
    .locals 4

    .line 1
    invoke-super {p0, p1}, Lha/a4;->onCreate(Landroid/os/Bundle;)V

    .line 2
    .line 3
    .line 4
    const p1, 0x7f0b03d2

    .line 5
    .line 6
    .line 7
    invoke-virtual {p0, p1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    .line 8
    .line 9
    .line 10
    move-result-object p1

    .line 11
    check-cast p1, Landroid/widget/TextView;

    .line 12
    .line 13
    iput-object p1, p0, Lha/p6;->h:Landroid/widget/TextView;

    .line 14
    .line 15
    new-instance v0, Lcom/google/android/material/datepicker/l;

    .line 16
    .line 17
    const/16 v1, 0x13

    .line 18
    .line 19
    invoke-direct {v0, p0, v1}, Lcom/google/android/material/datepicker/l;-><init>(Landroid/view/View$OnCreateContextMenuListener;I)V

    .line 20
    .line 21
    .line 22
    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 23
    .line 24
    .line 25
    const p1, 0x7f0b04f1

    .line 26
    .line 27
    .line 28
    invoke-virtual {p0, p1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    .line 29
    .line 30
    .line 31
    move-result-object p1

    .line 32
    check-cast p1, Lcom/owen/tvrecyclerview/widget/TvRecyclerView;

    .line 33
    .line 34
    iput-object p1, p0, Lha/p6;->i:Lcom/owen/tvrecyclerview/widget/TvRecyclerView;

    .line 35
    .line 36
    new-instance v0, Lcom/owen/tvrecyclerview/widget/V7LinearLayoutManager;

    .line 37
    .line 38
    const/4 v1, 0x0

    .line 39
    iget-object v2, p0, Lha/a4;->b:Landroid/content/Context;

    .line 40
    .line 41
    const/4 v3, 0x1

    .line 42
    invoke-direct {v0, v2, v3, v1}, Lcom/owen/tvrecyclerview/widget/V7LinearLayoutManager;-><init>(Landroid/content/Context;IZ)V

    .line 43
    .line 44
    .line 45
    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 46
    .line 47
    .line 48
    new-instance p1, Lx9/i2;

    .line 49
    .line 50
    invoke-direct {p1}, Lx9/i2;-><init>()V

    .line 51
    .line 52
    .line 53
    iput-object p1, p0, Lha/p6;->j:Lx9/i2;

    .line 54
    .line 55
    iget-object v0, p0, Lha/p6;->i:Lcom/owen/tvrecyclerview/widget/TvRecyclerView;

    .line 56
    .line 57
    invoke-virtual {v0, p1}, Lcom/owen/tvrecyclerview/widget/TvRecyclerView;->setAdapter(Landroidx/recyclerview/widget/m1;)V

    .line 58
    .line 59
    .line 60
    iget-object p1, p0, Lha/p6;->j:Lx9/i2;

    .line 61
    .line 62
    new-instance v0, La1/d;

    .line 63
    .line 64
    const/16 v1, 0x1a

    .line 65
    .line 66
    invoke-direct {v0, v1, p0}, La1/d;-><init>(ILjava/lang/Object;)V

    .line 67
    .line 68
    .line 69
    iput-object v0, p1, Lc6/g;->e:Lc6/e;

    .line 70
    .line 71
    return-void
.end method
