.class public final Lha/md;
.super Lha/a4;
.source "SourceFile"


# instance fields
.field public g:Lio/github/muntashirakon/adb/android/AdbMdns;

.field public h:Landroid/widget/EditText;

.field public i:Landroid/widget/TextView;

.field public j:Lcom/owen/tvrecyclerview/widget/TvRecyclerView;

.field public k:Z

.field public final l:Lx9/r2;


# direct methods
.method public constructor <init>(Lcom/yunpan/appmanage/ui/ActivityHome;Lcom/yunpan/appmanage/ui/ActivityHome;)V
    .locals 1

    .line 1
    const v0, 0x7f0e00fb

    .line 2
    .line 3
    .line 4
    invoke-direct {p0, p1, p2, v0}, Lha/a4;-><init>(Landroid/app/Activity;Landroid/content/Context;I)V

    .line 5
    .line 6
    .line 7
    const/4 p1, 0x0

    .line 8
    iput-boolean p1, p0, Lha/md;->k:Z

    .line 9
    .line 10
    new-instance p1, Lx9/r2;

    .line 11
    .line 12
    invoke-direct {p1}, Lx9/r2;-><init>()V

    .line 13
    .line 14
    .line 15
    iput-object p1, p0, Lha/md;->l:Lx9/r2;

    .line 16
    .line 17
    return-void
.end method


# virtual methods
.method public final dismiss()V
    .locals 1

    .line 1
    iget-object v0, p0, Lha/md;->g:Lio/github/muntashirakon/adb/android/AdbMdns;

    .line 2
    .line 3
    invoke-virtual {v0}, Lio/github/muntashirakon/adb/android/AdbMdns;->stop()V

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
    const p1, 0x7f0b0428

    .line 5
    .line 6
    .line 7
    invoke-virtual {p0, p1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    .line 8
    .line 9
    .line 10
    move-result-object p1

    .line 11
    check-cast p1, Landroid/widget/EditText;

    .line 12
    .line 13
    iput-object p1, p0, Lha/md;->h:Landroid/widget/EditText;

    .line 14
    .line 15
    const p1, 0x7f0b03f3

    .line 16
    .line 17
    .line 18
    invoke-virtual {p0, p1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    .line 19
    .line 20
    .line 21
    move-result-object p1

    .line 22
    check-cast p1, Landroid/widget/TextView;

    .line 23
    .line 24
    iput-object p1, p0, Lha/md;->i:Landroid/widget/TextView;

    .line 25
    .line 26
    const p1, 0x7f0b04f1

    .line 27
    .line 28
    .line 29
    invoke-virtual {p0, p1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    .line 30
    .line 31
    .line 32
    move-result-object p1

    .line 33
    check-cast p1, Lcom/owen/tvrecyclerview/widget/TvRecyclerView;

    .line 34
    .line 35
    iput-object p1, p0, Lha/md;->j:Lcom/owen/tvrecyclerview/widget/TvRecyclerView;

    .line 36
    .line 37
    new-instance v0, Lcom/owen/tvrecyclerview/widget/V7LinearLayoutManager;

    .line 38
    .line 39
    const/4 v1, 0x1

    .line 40
    const/4 v2, 0x0

    .line 41
    iget-object v3, p0, Lha/a4;->b:Landroid/content/Context;

    .line 42
    .line 43
    invoke-direct {v0, v3, v1, v2}, Lcom/owen/tvrecyclerview/widget/V7LinearLayoutManager;-><init>(Landroid/content/Context;IZ)V

    .line 44
    .line 45
    .line 46
    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 47
    .line 48
    .line 49
    iget-object p1, p0, Lha/md;->j:Lcom/owen/tvrecyclerview/widget/TvRecyclerView;

    .line 50
    .line 51
    iget-object v0, p0, Lha/md;->l:Lx9/r2;

    .line 52
    .line 53
    invoke-virtual {p1, v0}, Lcom/owen/tvrecyclerview/widget/TvRecyclerView;->setAdapter(Landroidx/recyclerview/widget/m1;)V

    .line 54
    .line 55
    .line 56
    new-instance p1, Lha/ld;

    .line 57
    .line 58
    invoke-direct {p1, p0}, Lha/ld;-><init>(Lha/md;)V

    .line 59
    .line 60
    .line 61
    iput-object p1, v0, Lc6/g;->e:Lc6/e;

    .line 62
    .line 63
    iget-object p1, p0, Lha/md;->i:Landroid/widget/TextView;

    .line 64
    .line 65
    new-instance v0, Lha/g9;

    .line 66
    .line 67
    const/16 v1, 0xf

    .line 68
    .line 69
    invoke-direct {v0, v1, p0}, Lha/g9;-><init>(ILjava/lang/Object;)V

    .line 70
    .line 71
    .line 72
    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 73
    .line 74
    .line 75
    new-instance p1, Lio/github/muntashirakon/adb/android/AdbMdns;

    .line 76
    .line 77
    new-instance v0, Lha/ld;

    .line 78
    .line 79
    invoke-direct {v0, p0}, Lha/ld;-><init>(Lha/md;)V

    .line 80
    .line 81
    .line 82
    const-string v1, "telnet"

    .line 83
    .line 84
    invoke-direct {p1, v3, v1, v0}, Lio/github/muntashirakon/adb/android/AdbMdns;-><init>(Landroid/content/Context;Ljava/lang/String;Lio/github/muntashirakon/adb/android/AdbMdns$OnAdbDaemonDiscoveredListener;)V

    .line 85
    .line 86
    .line 87
    iput-object p1, p0, Lha/md;->g:Lio/github/muntashirakon/adb/android/AdbMdns;

    .line 88
    .line 89
    invoke-virtual {p1}, Lio/github/muntashirakon/adb/android/AdbMdns;->start()V

    .line 90
    .line 91
    .line 92
    return-void
.end method
