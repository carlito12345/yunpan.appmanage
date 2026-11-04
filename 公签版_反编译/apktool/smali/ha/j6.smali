.class public final Lha/j6;
.super Lha/a4;
.source "SourceFile"


# instance fields
.field public final g:Landroid/os/Handler;

.field public final h:La2/k;

.field public i:Lea/c;

.field public j:Landroid/widget/TextView;

.field public k:Lcom/owen/tvrecyclerview/widget/TvRecyclerView;

.field public l:Lx9/i2;

.field public m:I


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
    new-instance p1, Landroid/os/Handler;

    .line 8
    .line 9
    invoke-direct {p1}, Landroid/os/Handler;-><init>()V

    .line 10
    .line 11
    .line 12
    iput-object p1, p0, Lha/j6;->g:Landroid/os/Handler;

    .line 13
    .line 14
    new-instance p1, La2/k;

    .line 15
    .line 16
    const/4 p2, 0x2

    .line 17
    invoke-direct {p1, p2, p0}, La2/k;-><init>(ILjava/lang/Object;)V

    .line 18
    .line 19
    .line 20
    iput-object p1, p0, Lha/j6;->h:La2/k;

    .line 21
    .line 22
    const/4 p1, 0x5

    .line 23
    iput p1, p0, Lha/j6;->m:I

    .line 24
    .line 25
    return-void
.end method


# virtual methods
.method public final a(Lea/c;)V
    .locals 3

    .line 1
    iput-object p1, p0, Lha/j6;->i:Lea/c;

    .line 2
    .line 3
    new-instance p1, Landroid/content/IntentFilter;

    .line 4
    .line 5
    invoke-direct {p1}, Landroid/content/IntentFilter;-><init>()V

    .line 6
    .line 7
    .line 8
    iget-object v0, p0, Lha/a4;->b:Landroid/content/Context;

    .line 9
    .line 10
    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    .line 11
    .line 12
    .line 13
    move-result-object v1

    .line 14
    new-instance v2, Ljava/lang/StringBuilder;

    .line 15
    .line 16
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 17
    .line 18
    .line 19
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 20
    .line 21
    .line 22
    const-string v1, ".BROADCAST_ACC_KEY_CODE"

    .line 23
    .line 24
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 25
    .line 26
    .line 27
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 28
    .line 29
    .line 30
    move-result-object v1

    .line 31
    invoke-virtual {p1, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 32
    .line 33
    .line 34
    iget-object v1, p0, Lha/j6;->h:La2/k;

    .line 35
    .line 36
    invoke-virtual {v0, v1, p1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 37
    .line 38
    .line 39
    invoke-virtual {p0}, Lha/a4;->show()V

    .line 40
    .line 41
    .line 42
    return-void
.end method

.method public final dismiss()V
    .locals 2

    .line 1
    iget-object v0, p0, Lha/j6;->g:Landroid/os/Handler;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 5
    .line 6
    .line 7
    iget-object v0, p0, Lha/j6;->j:Landroid/widget/TextView;

    .line 8
    .line 9
    const-string v1, "\u5f00\u59cb\u76d1\u542c\u6309\u952e"

    .line 10
    .line 11
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 12
    .line 13
    .line 14
    iget-object v0, p0, Lha/a4;->b:Landroid/content/Context;

    .line 15
    .line 16
    const/4 v1, 0x0

    .line 17
    invoke-static {v0, v1}, Lta/m;->b(Landroid/content/Context;Z)V

    .line 18
    .line 19
    .line 20
    iget-object v1, p0, Lha/j6;->h:La2/k;

    .line 21
    .line 22
    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 23
    .line 24
    .line 25
    invoke-super {p0}, Landroid/app/Dialog;->dismiss()V

    .line 26
    .line 27
    .line 28
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
    iput-object p1, p0, Lha/j6;->j:Landroid/widget/TextView;

    .line 14
    .line 15
    new-instance v0, Lcom/google/android/material/datepicker/l;

    .line 16
    .line 17
    const/16 v1, 0x12

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
    iput-object p1, p0, Lha/j6;->k:Lcom/owen/tvrecyclerview/widget/TvRecyclerView;

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
    iput-object p1, p0, Lha/j6;->l:Lx9/i2;

    .line 54
    .line 55
    iget-object v0, p0, Lha/j6;->k:Lcom/owen/tvrecyclerview/widget/TvRecyclerView;

    .line 56
    .line 57
    invoke-virtual {v0, p1}, Lcom/owen/tvrecyclerview/widget/TvRecyclerView;->setAdapter(Landroidx/recyclerview/widget/m1;)V

    .line 58
    .line 59
    .line 60
    iget-object p1, p0, Lha/j6;->l:Lx9/i2;

    .line 61
    .line 62
    new-instance v0, La1/d;

    .line 63
    .line 64
    const/16 v1, 0x19

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
