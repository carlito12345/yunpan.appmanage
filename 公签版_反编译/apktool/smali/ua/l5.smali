.class public final synthetic Lua/l5;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Lcom/yunpan/appmanage/ui/ActivityPermissions;


# direct methods
.method public synthetic constructor <init>(Lcom/yunpan/appmanage/ui/ActivityPermissions;I)V
    .locals 0

    .line 1
    iput p2, p0, Lua/l5;->a:I

    iput-object p1, p0, Lua/l5;->b:Lcom/yunpan/appmanage/ui/ActivityPermissions;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 6

    .line 1
    iget-object p1, p0, Lua/l5;->b:Lcom/yunpan/appmanage/ui/ActivityPermissions;

    .line 2
    .line 3
    iget v0, p0, Lua/l5;->a:I

    .line 4
    .line 5
    packed-switch v0, :pswitch_data_0

    .line 6
    .line 7
    .line 8
    sget p1, Lcom/yunpan/appmanage/ui/ActivityPermissions;->L:I

    .line 9
    .line 10
    iget-object v1, p0, Lua/l5;->b:Lcom/yunpan/appmanage/ui/ActivityPermissions;

    .line 11
    .line 12
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 13
    .line 14
    .line 15
    new-instance v4, Ljava/util/ArrayList;

    .line 16
    .line 17
    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 18
    .line 19
    .line 20
    const-string p1, "\u60ac\u6d6e\u7a97"

    .line 21
    .line 22
    invoke-virtual {v4, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 23
    .line 24
    .line 25
    const-string p1, "\u5b89\u88c5\u5e94\u7528"

    .line 26
    .line 27
    invoke-virtual {v4, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 28
    .line 29
    .line 30
    const-string p1, "\u901a\u77e5\u4f7f\u7528\u6743"

    .line 31
    .line 32
    invoke-virtual {v4, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 33
    .line 34
    .line 35
    const-string p1, "\u5ffd\u7565\u7535\u6c60\u4f18\u5316"

    .line 36
    .line 37
    invoke-virtual {v4, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 38
    .line 39
    .line 40
    const-string p1, "\u4fee\u6539\u7cfb\u7edf\u8bbe\u7f6e"

    .line 41
    .line 42
    invoke-virtual {v4, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 43
    .line 44
    .line 45
    const-string p1, "\u4fee\u6539\u7cfb\u7edf\u5b89\u5168\u8bbe\u7f6e"

    .line 46
    .line 47
    invoke-virtual {v4, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 48
    .line 49
    .line 50
    const-string p1, "\u4f7f\u7528\u60c5\u51b5\u8bbf\u95ee\u6743\u9650"

    .line 51
    .line 52
    invoke-virtual {v4, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 53
    .line 54
    .line 55
    const-string p1, "\u7cfb\u7edf\u65e5\u5fd7(READ_LOGS)"

    .line 56
    .line 57
    invoke-virtual {v4, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 58
    .line 59
    .line 60
    iget-object p1, v1, Lcom/yunpan/appmanage/ui/ActivityPermissions;->D:Lcom/owen/tvrecyclerview/widget/TvRecyclerView;

    .line 61
    .line 62
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView;->stopScroll()V

    .line 63
    .line 64
    .line 65
    new-instance p1, Lha/fa;

    .line 66
    .line 67
    iget-object v2, v1, Lda/g;->A:Lda/g;

    .line 68
    .line 69
    new-instance v5, Lua/m5;

    .line 70
    .line 71
    invoke-direct {v5, v1}, Lua/m5;-><init>(Lcom/yunpan/appmanage/ui/ActivityPermissions;)V

    .line 72
    .line 73
    .line 74
    const/4 v3, 0x0

    .line 75
    move-object v0, p1

    .line 76
    invoke-direct/range {v0 .. v5}, Lha/fa;-><init>(Landroid/app/Activity;Landroid/content/Context;Ljava/lang/String;Ljava/util/List;Lha/ea;)V

    .line 77
    .line 78
    .line 79
    invoke-virtual {p1}, Lha/a4;->show()V

    .line 80
    .line 81
    .line 82
    return-void

    .line 83
    :pswitch_0
    sget v0, Lcom/yunpan/appmanage/ui/ActivityPermissions;->L:I

    .line 84
    .line 85
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 86
    .line 87
    .line 88
    new-instance v0, Lha/z6;

    .line 89
    .line 90
    const-string v1, "\u5982\u679c\u8fd9\u91cc\u5df2\u6388\u6743\uff0c\u4f46\u5e94\u7528\u5207\u63d0\u793a\u672a\u6388\u6743\u7684\u8bdd\uff0c\u8bf7\u53d6\u6d88\u52fe\u9009\uff0c\u7136\u540e\u91cd\u65b0\u52fe\u9009\u5373\u53ef"

    .line 91
    .line 92
    const-string v2, ""

    .line 93
    .line 94
    invoke-direct {v0, p1, p1, v1, v2}, Lha/z6;-><init>(Landroid/app/Activity;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 95
    .line 96
    .line 97
    invoke-virtual {v0}, Lha/a4;->show()V

    .line 98
    .line 99
    .line 100
    return-void

    .line 101
    :pswitch_1
    sget v0, Lcom/yunpan/appmanage/ui/ActivityPermissions;->L:I

    .line 102
    .line 103
    invoke-virtual {p1}, Landroid/app/Activity;->finish()V

    .line 104
    .line 105
    .line 106
    return-void

    .line 107
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
