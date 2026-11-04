.class public Lua/x7;
.super Lda/h;
.source "SourceFile"


# instance fields
.field public g:Lcom/owen/tvrecyclerview/widget/TvRecyclerView;

.field public final h:Lx9/b1;

.field public final i:Lx9/b1;

.field public j:Landroid/widget/TextView;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lda/h;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Lx9/b1;

    .line 5
    .line 6
    invoke-direct {v0}, Lx9/b1;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Lua/x7;->h:Lx9/b1;

    .line 10
    .line 11
    new-instance v0, Lx9/b1;

    .line 12
    .line 13
    invoke-direct {v0}, Lx9/b1;-><init>()V

    .line 14
    .line 15
    .line 16
    iput-object v0, p0, Lua/x7;->i:Lx9/b1;

    .line 17
    .line 18
    return-void
.end method


# virtual methods
.method public final j()I
    .locals 1

    .line 1
    const v0, 0x7f0e0114

    .line 2
    .line 3
    .line 4
    return v0
.end method

.method public final k()V
    .locals 4

    .line 1
    const v0, 0x7f0b05c0

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0, v0}, Lda/h;->i(I)Landroid/view/View;

    .line 5
    .line 6
    .line 7
    move-result-object v0

    .line 8
    check-cast v0, Landroid/widget/TextView;

    .line 9
    .line 10
    iput-object v0, p0, Lua/x7;->j:Landroid/widget/TextView;

    .line 11
    .line 12
    const v0, 0x7f0b04f1

    .line 13
    .line 14
    .line 15
    invoke-virtual {p0, v0}, Lda/h;->i(I)Landroid/view/View;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    check-cast v0, Lcom/owen/tvrecyclerview/widget/TvRecyclerView;

    .line 20
    .line 21
    iput-object v0, p0, Lua/x7;->g:Lcom/owen/tvrecyclerview/widget/TvRecyclerView;

    .line 22
    .line 23
    new-instance v1, Lcom/owen/tvrecyclerview/widget/V7GridLayoutManager;

    .line 24
    .line 25
    iget-object v2, p0, Lda/h;->e:Landroid/content/Context;

    .line 26
    .line 27
    const/16 v3, 0x8

    .line 28
    .line 29
    invoke-direct {v1, v2, v3}, Lcom/owen/tvrecyclerview/widget/V7GridLayoutManager;-><init>(Landroid/content/Context;I)V

    .line 30
    .line 31
    .line 32
    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 33
    .line 34
    .line 35
    iget-object v0, p0, Lua/x7;->g:Lcom/owen/tvrecyclerview/widget/TvRecyclerView;

    .line 36
    .line 37
    new-instance v1, Lua/w7;

    .line 38
    .line 39
    invoke-direct {v1}, Lua/w7;-><init>()V

    .line 40
    .line 41
    .line 42
    invoke-virtual {v0, v1}, Lcom/owen/tvrecyclerview/widget/TvRecyclerView;->setOnItemListener(Lcom/owen/tvrecyclerview/widget/TvRecyclerView$OnItemListener;)V

    .line 43
    .line 44
    .line 45
    new-instance v0, Lua/u7;

    .line 46
    .line 47
    const/4 v1, 0x4

    .line 48
    invoke-direct {v0, p0, v1}, Lua/u7;-><init>(Lua/x7;I)V

    .line 49
    .line 50
    .line 51
    iget-object v1, p0, Lua/x7;->h:Lx9/b1;

    .line 52
    .line 53
    iput-object v0, v1, Lc6/g;->f:Lc6/f;

    .line 54
    .line 55
    new-instance v0, Lua/u7;

    .line 56
    .line 57
    const/4 v2, 0x5

    .line 58
    invoke-direct {v0, p0, v2}, Lua/u7;-><init>(Lua/x7;I)V

    .line 59
    .line 60
    .line 61
    iput-object v0, v1, Lc6/g;->e:Lc6/e;

    .line 62
    .line 63
    iget-object v0, p0, Lua/x7;->g:Lcom/owen/tvrecyclerview/widget/TvRecyclerView;

    .line 64
    .line 65
    new-instance v1, Lua/t6;

    .line 66
    .line 67
    const/4 v2, 0x5

    .line 68
    invoke-direct {v1, v2}, Lua/t6;-><init>(I)V

    .line 69
    .line 70
    .line 71
    invoke-virtual {v0, v1}, Lcom/owen/tvrecyclerview/widget/TvRecyclerView;->setOnInBorderKeyEventListener(Lcom/owen/tvrecyclerview/widget/TvRecyclerView$OnInBorderKeyEventListener;)V

    .line 72
    .line 73
    .line 74
    new-instance v0, Lua/u7;

    .line 75
    .line 76
    const/4 v1, 0x3

    .line 77
    invoke-direct {v0, p0, v1}, Lua/u7;-><init>(Lua/x7;I)V

    .line 78
    .line 79
    .line 80
    new-instance v1, Lmc/c;

    .line 81
    .line 82
    const/4 v2, 0x0

    .line 83
    invoke-direct {v1, v2, v0}, Lmc/c;-><init>(ILjava/lang/Object;)V

    .line 84
    .line 85
    .line 86
    sget-object v0, Lrc/f;->b:Lec/j;

    .line 87
    .line 88
    invoke-virtual {v1, v0}, Lec/b;->d(Lec/j;)Lmc/p;

    .line 89
    .line 90
    .line 91
    move-result-object v0

    .line 92
    invoke-static {}, Lfc/b;->a()Lfc/e;

    .line 93
    .line 94
    .line 95
    move-result-object v1

    .line 96
    invoke-virtual {v0, v1}, Lec/b;->a(Lfc/e;)Lmc/g;

    .line 97
    .line 98
    .line 99
    move-result-object v0

    .line 100
    new-instance v1, Lua/v7;

    .line 101
    .line 102
    const/4 v2, 0x0

    .line 103
    invoke-direct {v1, p0, v2}, Lua/v7;-><init>(Lua/x7;I)V

    .line 104
    .line 105
    .line 106
    invoke-virtual {v0, v1}, Lec/b;->b(Lec/e;)V

    .line 107
    .line 108
    .line 109
    return-void
.end method

.method public final n(Landroid/hardware/usb/UsbManager;Landroid/hardware/usb/UsbDevice;Landroid/hardware/usb/UsbInterface;Z)V
    .locals 3

    .line 1
    invoke-virtual {p1, p2}, Landroid/hardware/usb/UsbManager;->hasPermission(Landroid/hardware/usb/UsbDevice;)Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_2

    .line 6
    .line 7
    sget-object p1, Lfa/a;->b:Lfa/e0;

    .line 8
    .line 9
    invoke-virtual {p1}, Lfa/e0;->c()Z

    .line 10
    .line 11
    .line 12
    move-result v0

    .line 13
    if-eqz v0, :cond_0

    .line 14
    .line 15
    new-instance p1, Lha/sa;

    .line 16
    .line 17
    iget-object p2, p0, Lda/h;->f:Landroid/app/Activity;

    .line 18
    .line 19
    iget-object p3, p0, Lda/h;->e:Landroid/content/Context;

    .line 20
    .line 21
    invoke-direct {p1, p2, p3}, Lha/sa;-><init>(Landroid/app/Activity;Landroid/content/Context;)V

    .line 22
    .line 23
    .line 24
    invoke-virtual {p1}, Lha/a4;->show()V

    .line 25
    .line 26
    .line 27
    return-void

    .line 28
    :cond_0
    iget-boolean v0, p1, Lfa/e0;->f:Z

    .line 29
    .line 30
    if-eqz v0, :cond_1

    .line 31
    .line 32
    iget-object p1, p1, Lfa/e0;->e:Landroid/hardware/usb/UsbDevice;

    .line 33
    .line 34
    invoke-virtual {p1}, Landroid/hardware/usb/UsbDevice;->getDeviceId()I

    .line 35
    .line 36
    .line 37
    move-result p1

    .line 38
    invoke-virtual {p2}, Landroid/hardware/usb/UsbDevice;->getDeviceId()I

    .line 39
    .line 40
    .line 41
    move-result v0

    .line 42
    if-ne p1, v0, :cond_1

    .line 43
    .line 44
    new-instance p1, Lha/o1;

    .line 45
    .line 46
    iget-object v0, p0, Lda/h;->f:Landroid/app/Activity;

    .line 47
    .line 48
    iget-object v1, p0, Lda/h;->e:Landroid/content/Context;

    .line 49
    .line 50
    new-instance v2, Lh2/d;

    .line 51
    .line 52
    invoke-direct {v2, p0, p2, p3, p4}, Lh2/d;-><init>(Lua/x7;Landroid/hardware/usb/UsbDevice;Landroid/hardware/usb/UsbInterface;Z)V

    .line 53
    .line 54
    .line 55
    invoke-direct {p1, v0, v1, v2}, Lha/o1;-><init>(Landroid/app/Activity;Landroid/content/Context;Lh2/d;)V

    .line 56
    .line 57
    .line 58
    invoke-virtual {p1}, Lha/a4;->show()V

    .line 59
    .line 60
    .line 61
    goto :goto_0

    .line 62
    :cond_1
    invoke-virtual {p0, p2, p3, p4}, Lua/x7;->o(Landroid/hardware/usb/UsbDevice;Landroid/hardware/usb/UsbInterface;Z)V

    .line 63
    .line 64
    .line 65
    goto :goto_0

    .line 66
    :cond_2
    iget-object p3, p0, Lda/h;->e:Landroid/content/Context;

    .line 67
    .line 68
    invoke-virtual {p3}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    .line 69
    .line 70
    .line 71
    move-result-object p3

    .line 72
    new-instance p4, Landroid/content/Intent;

    .line 73
    .line 74
    const-string v0, "appmanage.usb.permission"

    .line 75
    .line 76
    invoke-direct {p4, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 77
    .line 78
    .line 79
    const/high16 v0, 0x4000000

    .line 80
    .line 81
    const/4 v1, 0x0

    .line 82
    invoke-static {p3, v1, p4, v0}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    .line 83
    .line 84
    .line 85
    move-result-object p3

    .line 86
    invoke-virtual {p1, p2, p3}, Landroid/hardware/usb/UsbManager;->requestPermission(Landroid/hardware/usb/UsbDevice;Landroid/app/PendingIntent;)V

    .line 87
    .line 88
    .line 89
    :goto_0
    return-void
.end method

.method public final o(Landroid/hardware/usb/UsbDevice;Landroid/hardware/usb/UsbInterface;Z)V
    .locals 4

    .line 1
    const/4 v0, 0x0

    .line 2
    sget-object v1, Lfa/a;->b:Lfa/e0;

    .line 3
    .line 4
    sget-object v2, Lcom/yunpan/appmanage/util/k;->u0:Ljava/text/DecimalFormat;

    .line 5
    .line 6
    sget-object v2, Lcom/yunpan/appmanage/util/j;->a:Lcom/yunpan/appmanage/util/k;

    .line 7
    .line 8
    iget-object v2, v2, Lcom/yunpan/appmanage/util/k;->a:Landroid/content/ContextWrapper;

    .line 9
    .line 10
    const-string v3, "usb"

    .line 11
    .line 12
    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 13
    .line 14
    .line 15
    move-result-object v2

    .line 16
    check-cast v2, Landroid/hardware/usb/UsbManager;

    .line 17
    .line 18
    iput-object v2, v1, Lfa/e0;->a:Landroid/hardware/usb/UsbManager;

    .line 19
    .line 20
    iput-object p1, v1, Lfa/e0;->e:Landroid/hardware/usb/UsbDevice;

    .line 21
    .line 22
    new-instance v1, Lfa/c0;

    .line 23
    .line 24
    invoke-direct {v1, v0, p1, p2, p3}, Lfa/c0;-><init>(ILjava/lang/Object;Ljava/lang/Object;Z)V

    .line 25
    .line 26
    .line 27
    new-instance p1, Lmc/c;

    .line 28
    .line 29
    invoke-direct {p1, v0, v1}, Lmc/c;-><init>(ILjava/lang/Object;)V

    .line 30
    .line 31
    .line 32
    sget-object p2, Lrc/f;->b:Lec/j;

    .line 33
    .line 34
    invoke-virtual {p1, p2}, Lec/b;->d(Lec/j;)Lmc/p;

    .line 35
    .line 36
    .line 37
    move-result-object p1

    .line 38
    invoke-static {}, Lfc/b;->a()Lfc/e;

    .line 39
    .line 40
    .line 41
    move-result-object p2

    .line 42
    invoke-virtual {p1, p2}, Lec/b;->a(Lfc/e;)Lmc/g;

    .line 43
    .line 44
    .line 45
    move-result-object p1

    .line 46
    new-instance p2, Lua/v7;

    .line 47
    .line 48
    const/4 p3, 0x3

    .line 49
    invoke-direct {p2, p0, p3}, Lua/v7;-><init>(Lua/x7;I)V

    .line 50
    .line 51
    .line 52
    invoke-virtual {p1, p2}, Lec/b;->b(Lec/e;)V

    .line 53
    .line 54
    .line 55
    return-void
.end method

.method public final p()V
    .locals 7

    .line 1
    new-instance v4, Ljava/util/ArrayList;

    .line 2
    .line 3
    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 4
    .line 5
    .line 6
    const-string v0, "\u5e94\u7528 | \u5360\u7528\u7a7a\u95f4\u5206\u6790"

    .line 7
    .line 8
    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 9
    .line 10
    .line 11
    const-string v0, "\u5e94\u7528 | \u4f7f\u7528\u6d41\u91cf\u5206\u6790"

    .line 12
    .line 13
    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 14
    .line 15
    .line 16
    const-string v0, "\u5e94\u7528 | \u5b89\u88c5\u65f6\u95f4\u6392\u5e8f"

    .line 17
    .line 18
    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 19
    .line 20
    .line 21
    const-string v0, "\u5e94\u7528 | \u8fd1\u671f\u4f7f\u7528\u8bb0\u5f55"

    .line 22
    .line 23
    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 24
    .line 25
    .line 26
    const-string v0, "\u8bbe\u5907 | \u8be6\u7ec6\u4f7f\u7528\u8bb0\u5f55"

    .line 27
    .line 28
    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 29
    .line 30
    .line 31
    const-string v0, "\u8bbe\u5907 | \u7cfb\u7edf\u65e5\u5fd7\u5206\u6790"

    .line 32
    .line 33
    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 34
    .line 35
    .line 36
    new-instance v6, Lha/fa;

    .line 37
    .line 38
    iget-object v1, p0, Lda/h;->f:Landroid/app/Activity;

    .line 39
    .line 40
    iget-object v2, p0, Lda/h;->e:Landroid/content/Context;

    .line 41
    .line 42
    new-instance v5, Lua/u7;

    .line 43
    .line 44
    const/4 v0, 0x2

    .line 45
    invoke-direct {v5, p0, v0}, Lua/u7;-><init>(Lua/x7;I)V

    .line 46
    .line 47
    .line 48
    const/4 v3, 0x0

    .line 49
    move-object v0, v6

    .line 50
    invoke-direct/range {v0 .. v5}, Lha/fa;-><init>(Landroid/app/Activity;Landroid/content/Context;Ljava/lang/String;Ljava/util/List;Lha/ea;)V

    .line 51
    .line 52
    .line 53
    invoke-virtual {v6}, Lha/a4;->show()V

    .line 54
    .line 55
    .line 56
    return-void
.end method

.method public final q()V
    .locals 14

    .line 1
    iget-object v0, p0, Lua/x7;->j:Landroid/widget/TextView;

    .line 2
    .line 3
    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    .line 16
    .line 17
    .line 18
    move-result v0

    .line 19
    if-nez v0, :cond_0

    .line 20
    .line 21
    return-void

    .line 22
    :cond_0
    new-instance v0, Ljava/lang/StringBuffer;

    .line 23
    .line 24
    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 25
    .line 26
    .line 27
    new-instance v1, Ljava/lang/StringBuilder;

    .line 28
    .line 29
    const-string v2, "\u5f53\u524d\u4f7f\u7528\u7684\u7248\u672c\uff1av"

    .line 30
    .line 31
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 32
    .line 33
    .line 34
    sget-object v2, Lcom/yunpan/appmanage/util/v;->a:Lcom/yunpan/appmanage/util/w;

    .line 35
    .line 36
    iget-object v3, v2, Lcom/yunpan/appmanage/util/w;->c:Ljava/lang/String;

    .line 37
    .line 38
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 39
    .line 40
    .line 41
    const-string v3, "_"

    .line 42
    .line 43
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 44
    .line 45
    .line 46
    iget v2, v2, Lcom/yunpan/appmanage/util/w;->d:I

    .line 47
    .line 48
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 49
    .line 50
    .line 51
    const-string v2, " "

    .line 52
    .line 53
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 54
    .line 55
    .line 56
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 57
    .line 58
    .line 59
    move-result-object v1

    .line 60
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 61
    .line 62
    .line 63
    invoke-static {}, Ld/b;->H()Ljava/lang/String;

    .line 64
    .line 65
    .line 66
    move-result-object v1

    .line 67
    const/4 v2, 0x0

    .line 68
    const/4 v3, 0x1

    .line 69
    :try_start_0
    sget-object v4, Lcom/yunpan/appmanage/util/k;->u0:Ljava/text/DecimalFormat;

    .line 70
    .line 71
    sget-object v4, Lcom/yunpan/appmanage/util/j;->a:Lcom/yunpan/appmanage/util/k;

    .line 72
    .line 73
    iget-object v5, v4, Lcom/yunpan/appmanage/util/k;->a:Landroid/content/ContextWrapper;

    .line 74
    .line 75
    invoke-virtual {v5}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 76
    .line 77
    .line 78
    move-result-object v5

    .line 79
    new-instance v6, Landroid/content/ComponentName;

    .line 80
    .line 81
    iget-object v4, v4, Lcom/yunpan/appmanage/util/k;->a:Landroid/content/ContextWrapper;

    .line 82
    .line 83
    const-class v7, Lcom/yunpan/appmanage/ui/ActivityHome;

    .line 84
    .line 85
    invoke-direct {v6, v4, v7}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 86
    .line 87
    .line 88
    const/16 v4, 0x80

    .line 89
    .line 90
    invoke-virtual {v5, v6, v4}, Landroid/content/pm/PackageManager;->getActivityInfo(Landroid/content/ComponentName;I)Landroid/content/pm/ActivityInfo;

    .line 91
    .line 92
    .line 93
    move-result-object v4

    .line 94
    iget v4, v4, Landroid/content/pm/ActivityInfo;->screenOrientation:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 95
    .line 96
    if-ne v4, v3, :cond_1

    .line 97
    .line 98
    const/4 v4, 0x1

    .line 99
    goto :goto_0

    .line 100
    :catch_0
    nop

    .line 101
    :cond_1
    const/4 v4, 0x0

    .line 102
    :goto_0
    sget v5, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 103
    .line 104
    const/16 v6, 0x13

    .line 105
    .line 106
    const-string v7, ""

    .line 107
    .line 108
    const-string v8, "x86"

    .line 109
    .line 110
    if-lt v5, v6, :cond_2

    .line 111
    .line 112
    sget-object v2, Lcom/yunpan/appmanage/util/k;->u0:Ljava/text/DecimalFormat;

    .line 113
    .line 114
    sget-object v2, Lcom/yunpan/appmanage/util/j;->a:Lcom/yunpan/appmanage/util/k;

    .line 115
    .line 116
    iget-object v2, v2, Lcom/yunpan/appmanage/util/k;->a:Landroid/content/ContextWrapper;

    .line 117
    .line 118
    invoke-virtual {v2}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    .line 119
    .line 120
    .line 121
    move-result-object v2

    .line 122
    iget-object v2, v2, Landroid/content/pm/ApplicationInfo;->nativeLibraryDir:Ljava/lang/String;

    .line 123
    .line 124
    invoke-virtual {v2, v8}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 125
    .line 126
    .line 127
    move-result v2

    .line 128
    goto :goto_1

    .line 129
    :cond_2
    new-instance v5, Ljava/lang/StringBuilder;

    .line 130
    .line 131
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 132
    .line 133
    .line 134
    sget-object v6, Landroid/os/Build;->CPU_ABI:Ljava/lang/String;

    .line 135
    .line 136
    invoke-static {v6, v7, v5}, Lg/b;->l(Ljava/lang/String;Ljava/lang/String;Ljava/lang/StringBuilder;)Ljava/lang/String;

    .line 137
    .line 138
    .line 139
    move-result-object v5

    .line 140
    invoke-virtual {v5, v8}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 141
    .line 142
    .line 143
    move-result v6

    .line 144
    if-eqz v6, :cond_3

    .line 145
    .line 146
    const-string v6, "v"

    .line 147
    .line 148
    invoke-virtual {v5, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 149
    .line 150
    .line 151
    move-result v5

    .line 152
    if-nez v5, :cond_3

    .line 153
    .line 154
    const/4 v2, 0x1

    .line 155
    :cond_3
    :goto_1
    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    .line 156
    .line 157
    .line 158
    move-result v3

    .line 159
    const-string v5, "c8e2fec5ee08adf5"

    .line 160
    .line 161
    const-string v6, "dd9f672ad5cb3cb2"

    .line 162
    .line 163
    const-string v8, "92a528c773d7a141"

    .line 164
    .line 165
    const-string v9, "936eacbe07f201df"

    .line 166
    .line 167
    const-string v10, "b3998086d056cffa"

    .line 168
    .line 169
    const-string v11, "d2cba57296ebebe2"

    .line 170
    .line 171
    const-string v12, "\u516c\u7b7e\u7248"

    .line 172
    .line 173
    if-eqz v3, :cond_4

    .line 174
    .line 175
    goto/16 :goto_8

    .line 176
    .line 177
    :cond_4
    iget-object v3, p0, Lda/h;->e:Landroid/content/Context;

    .line 178
    .line 179
    invoke-virtual {v3}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    .line 180
    .line 181
    .line 182
    move-result-object v3

    .line 183
    const-string v13, "com.huawei.gjservice"

    .line 184
    .line 185
    invoke-virtual {v3, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 186
    .line 187
    .line 188
    move-result v3

    .line 189
    if-eqz v3, :cond_5

    .line 190
    .line 191
    const-string v1, "\u6d77\u4fe1\u7248"

    .line 192
    .line 193
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 194
    .line 195
    .line 196
    goto/16 :goto_8

    .line 197
    .line 198
    :cond_5
    iget-object v3, p0, Lda/h;->e:Landroid/content/Context;

    .line 199
    .line 200
    invoke-virtual {v3}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    .line 201
    .line 202
    .line 203
    move-result-object v3

    .line 204
    const-string v13, "com.yunpan.appmanage"

    .line 205
    .line 206
    invoke-virtual {v3, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 207
    .line 208
    .line 209
    move-result v3

    .line 210
    if-nez v3, :cond_6

    .line 211
    .line 212
    const-string v1, "\u4fee\u6539\u7248"

    .line 213
    .line 214
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 215
    .line 216
    .line 217
    goto/16 :goto_8

    .line 218
    .line 219
    :cond_6
    invoke-virtual {v1, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 220
    .line 221
    .line 222
    move-result v3

    .line 223
    const-string v13, "\u516c\u7b7eUID\u7248"

    .line 224
    .line 225
    if-eqz v3, :cond_8

    .line 226
    .line 227
    sget-object v1, Lcom/yunpan/appmanage/util/k;->u0:Ljava/text/DecimalFormat;

    .line 228
    .line 229
    sget-object v1, Lcom/yunpan/appmanage/util/j;->a:Lcom/yunpan/appmanage/util/k;

    .line 230
    .line 231
    iget-boolean v1, v1, Lcom/yunpan/appmanage/util/k;->k:Z

    .line 232
    .line 233
    if-eqz v1, :cond_7

    .line 234
    .line 235
    goto :goto_2

    .line 236
    :cond_7
    move-object v13, v12

    .line 237
    :goto_2
    invoke-virtual {v0, v13}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 238
    .line 239
    .line 240
    const-string v1, "(\u98de\u601d\u5361\u5c14)"

    .line 241
    .line 242
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 243
    .line 244
    .line 245
    goto/16 :goto_8

    .line 246
    .line 247
    :cond_8
    invoke-virtual {v1, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 248
    .line 249
    .line 250
    move-result v3

    .line 251
    if-eqz v3, :cond_b

    .line 252
    .line 253
    if-eqz v4, :cond_9

    .line 254
    .line 255
    const-string v1, "\u54ea\u5412v(\u5f3a\u5236\u7ad6\u5c4f)"

    .line 256
    .line 257
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 258
    .line 259
    .line 260
    goto/16 :goto_8

    .line 261
    .line 262
    :cond_9
    sget-object v1, Lcom/yunpan/appmanage/util/k;->u0:Ljava/text/DecimalFormat;

    .line 263
    .line 264
    sget-object v1, Lcom/yunpan/appmanage/util/j;->a:Lcom/yunpan/appmanage/util/k;

    .line 265
    .line 266
    iget-boolean v1, v1, Lcom/yunpan/appmanage/util/k;->k:Z

    .line 267
    .line 268
    if-eqz v1, :cond_a

    .line 269
    .line 270
    const-string v1, "\u516c\u7b7eUID\u7248(\u539f\u751f\u5b89\u5353)"

    .line 271
    .line 272
    goto :goto_3

    .line 273
    :cond_a
    move-object v1, v12

    .line 274
    :goto_3
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 275
    .line 276
    .line 277
    goto/16 :goto_8

    .line 278
    .line 279
    :cond_b
    invoke-virtual {v1, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 280
    .line 281
    .line 282
    move-result v3

    .line 283
    if-eqz v3, :cond_d

    .line 284
    .line 285
    sget-object v1, Lcom/yunpan/appmanage/util/k;->u0:Ljava/text/DecimalFormat;

    .line 286
    .line 287
    sget-object v1, Lcom/yunpan/appmanage/util/j;->a:Lcom/yunpan/appmanage/util/k;

    .line 288
    .line 289
    iget-boolean v1, v1, Lcom/yunpan/appmanage/util/k;->k:Z

    .line 290
    .line 291
    if-eqz v1, :cond_c

    .line 292
    .line 293
    goto :goto_4

    .line 294
    :cond_c
    move-object v13, v12

    .line 295
    :goto_4
    invoke-virtual {v0, v13}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 296
    .line 297
    .line 298
    const-string v1, "(\u5c55\u8bafSC9853)"

    .line 299
    .line 300
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 301
    .line 302
    .line 303
    goto :goto_8

    .line 304
    :cond_d
    invoke-virtual {v1, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 305
    .line 306
    .line 307
    move-result v3

    .line 308
    if-eqz v3, :cond_f

    .line 309
    .line 310
    sget-object v1, Lcom/yunpan/appmanage/util/k;->u0:Ljava/text/DecimalFormat;

    .line 311
    .line 312
    sget-object v1, Lcom/yunpan/appmanage/util/j;->a:Lcom/yunpan/appmanage/util/k;

    .line 313
    .line 314
    iget-boolean v1, v1, Lcom/yunpan/appmanage/util/k;->k:Z

    .line 315
    .line 316
    if-eqz v1, :cond_e

    .line 317
    .line 318
    goto :goto_5

    .line 319
    :cond_e
    move-object v13, v12

    .line 320
    :goto_5
    invoke-virtual {v0, v13}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 321
    .line 322
    .line 323
    const-string v1, "(\u745e\u82af\u5faeRK3288)"

    .line 324
    .line 325
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 326
    .line 327
    .line 328
    goto :goto_8

    .line 329
    :cond_f
    invoke-virtual {v1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 330
    .line 331
    .line 332
    move-result v3

    .line 333
    if-eqz v3, :cond_11

    .line 334
    .line 335
    sget-object v1, Lcom/yunpan/appmanage/util/k;->u0:Ljava/text/DecimalFormat;

    .line 336
    .line 337
    sget-object v1, Lcom/yunpan/appmanage/util/j;->a:Lcom/yunpan/appmanage/util/k;

    .line 338
    .line 339
    iget-boolean v1, v1, Lcom/yunpan/appmanage/util/k;->k:Z

    .line 340
    .line 341
    if-eqz v1, :cond_10

    .line 342
    .line 343
    goto :goto_6

    .line 344
    :cond_10
    move-object v13, v12

    .line 345
    :goto_6
    invoke-virtual {v0, v13}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 346
    .line 347
    .line 348
    const-string v1, "(\u9ad8\u901a)"

    .line 349
    .line 350
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 351
    .line 352
    .line 353
    goto :goto_8

    .line 354
    :cond_11
    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 355
    .line 356
    .line 357
    move-result v1

    .line 358
    if-eqz v1, :cond_13

    .line 359
    .line 360
    sget-object v1, Lcom/yunpan/appmanage/util/k;->u0:Ljava/text/DecimalFormat;

    .line 361
    .line 362
    sget-object v1, Lcom/yunpan/appmanage/util/j;->a:Lcom/yunpan/appmanage/util/k;

    .line 363
    .line 364
    iget-boolean v1, v1, Lcom/yunpan/appmanage/util/k;->k:Z

    .line 365
    .line 366
    if-eqz v1, :cond_12

    .line 367
    .line 368
    goto :goto_7

    .line 369
    :cond_12
    move-object v13, v12

    .line 370
    :goto_7
    invoke-virtual {v0, v13}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 371
    .line 372
    .line 373
    const-string v1, "(\u8bfa\u5a01\u8fbe)"

    .line 374
    .line 375
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 376
    .line 377
    .line 378
    :cond_13
    :goto_8
    sget-object v1, Lcom/yunpan/appmanage/util/k;->u0:Ljava/text/DecimalFormat;

    .line 379
    .line 380
    sget-object v1, Lcom/yunpan/appmanage/util/j;->a:Lcom/yunpan/appmanage/util/k;

    .line 381
    .line 382
    iget-boolean v3, v1, Lcom/yunpan/appmanage/util/k;->j:Z

    .line 383
    .line 384
    const-string v4, "-x86"

    .line 385
    .line 386
    if-nez v3, :cond_1c

    .line 387
    .line 388
    iget-object v3, v1, Lcom/yunpan/appmanage/util/k;->q:Lcom/yunpan/appmanage/bean/SignatureBean;

    .line 389
    .line 390
    if-eqz v3, :cond_1c

    .line 391
    .line 392
    iget-object v3, v3, Lcom/yunpan/appmanage/bean/SignatureBean;->str_number:Ljava/lang/String;

    .line 393
    .line 394
    invoke-virtual {v3, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 395
    .line 396
    .line 397
    move-result v3

    .line 398
    if-eqz v3, :cond_14

    .line 399
    .line 400
    move-object v7, v12

    .line 401
    goto :goto_9

    .line 402
    :cond_14
    iget-object v3, v1, Lcom/yunpan/appmanage/util/k;->q:Lcom/yunpan/appmanage/bean/SignatureBean;

    .line 403
    .line 404
    iget-object v3, v3, Lcom/yunpan/appmanage/bean/SignatureBean;->str_number:Ljava/lang/String;

    .line 405
    .line 406
    const-string v10, "ea73f1e4d2cbcee0"

    .line 407
    .line 408
    invoke-virtual {v3, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 409
    .line 410
    .line 411
    move-result v3

    .line 412
    if-eqz v3, :cond_15

    .line 413
    .line 414
    const-string v7, "\u516c\u7b7e\u7248(\u65b9\u6613\u901a7870)"

    .line 415
    .line 416
    goto :goto_9

    .line 417
    :cond_15
    iget-object v3, v1, Lcom/yunpan/appmanage/util/k;->q:Lcom/yunpan/appmanage/bean/SignatureBean;

    .line 418
    .line 419
    iget-object v3, v3, Lcom/yunpan/appmanage/bean/SignatureBean;->str_number:Ljava/lang/String;

    .line 420
    .line 421
    invoke-virtual {v3, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 422
    .line 423
    .line 424
    move-result v3

    .line 425
    if-eqz v3, :cond_16

    .line 426
    .line 427
    const-string v7, "\u516c\u7b7e\u7248(\u98de\u601d\u5361\u5c14)"

    .line 428
    .line 429
    goto :goto_9

    .line 430
    :cond_16
    iget-object v3, v1, Lcom/yunpan/appmanage/util/k;->q:Lcom/yunpan/appmanage/bean/SignatureBean;

    .line 431
    .line 432
    iget-object v3, v3, Lcom/yunpan/appmanage/bean/SignatureBean;->str_number:Ljava/lang/String;

    .line 433
    .line 434
    invoke-virtual {v3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 435
    .line 436
    .line 437
    move-result v3

    .line 438
    if-eqz v3, :cond_17

    .line 439
    .line 440
    const-string v7, "\u516c\u7b7e\u7248(\u9ad8\u901a)"

    .line 441
    .line 442
    goto :goto_9

    .line 443
    :cond_17
    iget-object v3, v1, Lcom/yunpan/appmanage/util/k;->q:Lcom/yunpan/appmanage/bean/SignatureBean;

    .line 444
    .line 445
    iget-object v3, v3, Lcom/yunpan/appmanage/bean/SignatureBean;->str_number:Ljava/lang/String;

    .line 446
    .line 447
    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 448
    .line 449
    .line 450
    move-result v3

    .line 451
    if-eqz v3, :cond_18

    .line 452
    .line 453
    const-string v7, "\u516c\u7b7e\u7248(\u8bfa\u5a01\u8fbe)"

    .line 454
    .line 455
    goto :goto_9

    .line 456
    :cond_18
    iget-object v3, v1, Lcom/yunpan/appmanage/util/k;->q:Lcom/yunpan/appmanage/bean/SignatureBean;

    .line 457
    .line 458
    iget-object v3, v3, Lcom/yunpan/appmanage/bean/SignatureBean;->str_number:Ljava/lang/String;

    .line 459
    .line 460
    invoke-virtual {v3, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 461
    .line 462
    .line 463
    move-result v3

    .line 464
    if-eqz v3, :cond_19

    .line 465
    .line 466
    const-string v7, "\u516c\u7b7e\u7248(\u5c55\u8bafSC9853)"

    .line 467
    .line 468
    goto :goto_9

    .line 469
    :cond_19
    iget-object v1, v1, Lcom/yunpan/appmanage/util/k;->q:Lcom/yunpan/appmanage/bean/SignatureBean;

    .line 470
    .line 471
    iget-object v1, v1, Lcom/yunpan/appmanage/bean/SignatureBean;->str_number:Ljava/lang/String;

    .line 472
    .line 473
    invoke-virtual {v1, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 474
    .line 475
    .line 476
    move-result v1

    .line 477
    if-eqz v1, :cond_1a

    .line 478
    .line 479
    const-string v7, "\u516c\u7b7e\u7248(\u745e\u82af\u5faeRK3288)"

    .line 480
    .line 481
    :cond_1a
    :goto_9
    if-eqz v2, :cond_1b

    .line 482
    .line 483
    invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 484
    .line 485
    .line 486
    :cond_1b
    invoke-virtual {v7}, Ljava/lang/String;->isEmpty()Z

    .line 487
    .line 488
    .line 489
    move-result v1

    .line 490
    if-nez v1, :cond_1d

    .line 491
    .line 492
    const-string v1, "    "

    .line 493
    .line 494
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 495
    .line 496
    .line 497
    const-string v1, "\u60a8\u7684\u7cfb\u7edf\u9002\u5408\u5b89\u88c5\uff1a"

    .line 498
    .line 499
    invoke-virtual {v1, v7}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 500
    .line 501
    .line 502
    move-result-object v1

    .line 503
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 504
    .line 505
    .line 506
    goto :goto_a

    .line 507
    :cond_1c
    if-eqz v2, :cond_1d

    .line 508
    .line 509
    invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 510
    .line 511
    .line 512
    :cond_1d
    :goto_a
    iget-object v1, p0, Lua/x7;->j:Landroid/widget/TextView;

    .line 513
    .line 514
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    .line 515
    .line 516
    .line 517
    move-result-object v0

    .line 518
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 519
    .line 520
    .line 521
    return-void
.end method

.method public final r(Ljava/lang/String;)V
    .locals 9

    .line 1
    new-instance v8, Lha/z6;

    .line 2
    .line 3
    iget-object v1, p0, Lda/h;->f:Landroid/app/Activity;

    .line 4
    .line 5
    iget-object v2, p0, Lda/h;->e:Landroid/content/Context;

    .line 6
    .line 7
    new-instance v7, Ls9/a;

    .line 8
    .line 9
    const/16 v0, 0xf

    .line 10
    .line 11
    const/4 v3, 0x0

    .line 12
    invoke-direct {v7, v0, v3}, Ls9/a;-><init>(IZ)V

    .line 13
    .line 14
    .line 15
    const-string v5, "\u77e5\u9053\u4e86"

    .line 16
    .line 17
    const-string v6, ""

    .line 18
    .line 19
    const-string v4, ""

    .line 20
    .line 21
    move-object v0, v8

    .line 22
    move-object v3, p1

    .line 23
    invoke-direct/range {v0 .. v7}, Lha/z6;-><init>(Landroid/app/Activity;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lha/wd;)V

    .line 24
    .line 25
    .line 26
    invoke-virtual {v8}, Lha/a4;->show()V

    .line 27
    .line 28
    .line 29
    return-void
.end method
