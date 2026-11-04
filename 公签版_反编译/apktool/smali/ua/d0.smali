.class public final synthetic Lua/d0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Lcom/yunpan/appmanage/ui/ActivityAppTraffic;


# direct methods
.method public synthetic constructor <init>(Lcom/yunpan/appmanage/ui/ActivityAppTraffic;I)V
    .locals 0

    .line 1
    iput p2, p0, Lua/d0;->a:I

    iput-object p1, p0, Lua/d0;->b:Lcom/yunpan/appmanage/ui/ActivityAppTraffic;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 8

    .line 1
    const-string p1, "\u5df2\u91cd\u65b0\u6392\u5e8f"

    .line 2
    .line 3
    iget-object v0, p0, Lua/d0;->b:Lcom/yunpan/appmanage/ui/ActivityAppTraffic;

    .line 4
    .line 5
    iget v1, p0, Lua/d0;->a:I

    .line 6
    .line 7
    packed-switch v1, :pswitch_data_0

    .line 8
    .line 9
    .line 10
    sget p1, Lcom/yunpan/appmanage/ui/ActivityAppTraffic;->K:I

    .line 11
    .line 12
    iget-object v2, p0, Lua/d0;->b:Lcom/yunpan/appmanage/ui/ActivityAppTraffic;

    .line 13
    .line 14
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 15
    .line 16
    .line 17
    new-instance p1, Lha/z6;

    .line 18
    .line 19
    new-instance v7, Ls5/c;

    .line 20
    .line 21
    const/4 v0, 0x3

    .line 22
    invoke-direct {v7, v0}, Ls5/c;-><init>(I)V

    .line 23
    .line 24
    .line 25
    const-string v5, "\u660e\u767d\u4e86"

    .line 26
    .line 27
    const-string v6, ""

    .line 28
    .line 29
    const-string v3, "\u6d41\u91cf\u7edf\u8ba1\u6570\u636e\u662f\u5b89\u5353\u7cfb\u7edf\u81ea\u5e26\u7684\u8bb0\u5f55\u5668\u8bb0\u5f55\u7684\uff0c\u7ba1\u5bb6\u53ea\u8d1f\u8d23\u4ece\u6570\u636e\u5e93\u91cc\u9762\u8bfb\u53d6\u7ed9\u4f60\n\u6ce8\uff1a\u6570\u636e\u6709\u65f6\u5019\u4f1a\u6709\u4e9b\u5ef6\u8fdf\uff0c\u56e0\u4e3a\u7cfb\u7edf\u8bb0\u5f55\u540e\u9700\u8981\u7b49\u5f85\u4e00\u6bb5\u65f6\u95f4\u624d\u4f1a\u4fdd\u5b58\u5230\u6570\u636e\u5e93\u4e2d\n\n\u4e0d\u7ba1\u662f\u5185\u7f51\u8fd8\u662f\u5916\u7f51\u7684\u6d41\u91cf\u90fd\u4f1a\u88ab\u7edf\u8ba1\u5230\uff0c\u6bd4\u5982\u7ba1\u5bb6\u5c40\u57df\u7f51\u4e92\u4f20\u4e5f\u4f1a\u88ab\u8bb0\u5f55"

    .line 30
    .line 31
    const-string v4, "uid=1000\uff1a\u662f\u7cfb\u7edf\u7b7e\u540d\u7684\u5e94\u7528\uff0c\u53ea\u80fd\u7edf\u8ba1\u4e3a\u4e00\u4e2a"

    .line 32
    .line 33
    move-object v0, p1

    .line 34
    move-object v1, v2

    .line 35
    invoke-direct/range {v0 .. v7}, Lha/z6;-><init>(Landroid/app/Activity;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lha/wd;)V

    .line 36
    .line 37
    .line 38
    invoke-virtual {p1}, Lha/a4;->show()V

    .line 39
    .line 40
    .line 41
    return-void

    .line 42
    :pswitch_0
    sget p1, Lcom/yunpan/appmanage/ui/ActivityAppTraffic;->K:I

    .line 43
    .line 44
    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    .line 45
    .line 46
    .line 47
    return-void

    .line 48
    :pswitch_1
    iget-object v1, v0, Lcom/yunpan/appmanage/ui/ActivityAppTraffic;->D:Lcom/owen/tvrecyclerview/widget/TvRecyclerView;

    .line 49
    .line 50
    invoke-virtual {v1}, Landroidx/recyclerview/widget/RecyclerView;->stopScroll()V

    .line 51
    .line 52
    .line 53
    iget-object v1, v0, Lcom/yunpan/appmanage/ui/ActivityAppTraffic;->F:Ljava/util/ArrayList;

    .line 54
    .line 55
    new-instance v2, Lqa/e;

    .line 56
    .line 57
    const/16 v3, 0x10

    .line 58
    .line 59
    invoke-direct {v2, v3}, Lqa/e;-><init>(I)V

    .line 60
    .line 61
    .line 62
    invoke-static {v1, v2}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 63
    .line 64
    .line 65
    iget-object v1, v0, Lcom/yunpan/appmanage/ui/ActivityAppTraffic;->E:Lx9/z;

    .line 66
    .line 67
    iget-object v0, v0, Lcom/yunpan/appmanage/ui/ActivityAppTraffic;->F:Ljava/util/ArrayList;

    .line 68
    .line 69
    invoke-virtual {v1, v0}, Lc6/g;->E(Ljava/util/List;)V

    .line 70
    .line 71
    .line 72
    invoke-static {p1}, Lcom/yunpan/appmanage/util/a0;->w(Ljava/lang/String;)V

    .line 73
    .line 74
    .line 75
    return-void

    .line 76
    :pswitch_2
    iget-object v1, v0, Lcom/yunpan/appmanage/ui/ActivityAppTraffic;->D:Lcom/owen/tvrecyclerview/widget/TvRecyclerView;

    .line 77
    .line 78
    invoke-virtual {v1}, Landroidx/recyclerview/widget/RecyclerView;->stopScroll()V

    .line 79
    .line 80
    .line 81
    iget-object v1, v0, Lcom/yunpan/appmanage/ui/ActivityAppTraffic;->F:Ljava/util/ArrayList;

    .line 82
    .line 83
    new-instance v2, Lqa/e;

    .line 84
    .line 85
    const/16 v3, 0xf

    .line 86
    .line 87
    invoke-direct {v2, v3}, Lqa/e;-><init>(I)V

    .line 88
    .line 89
    .line 90
    invoke-static {v1, v2}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 91
    .line 92
    .line 93
    iget-object v1, v0, Lcom/yunpan/appmanage/ui/ActivityAppTraffic;->E:Lx9/z;

    .line 94
    .line 95
    iget-object v0, v0, Lcom/yunpan/appmanage/ui/ActivityAppTraffic;->F:Ljava/util/ArrayList;

    .line 96
    .line 97
    invoke-virtual {v1, v0}, Lc6/g;->E(Ljava/util/List;)V

    .line 98
    .line 99
    .line 100
    invoke-static {p1}, Lcom/yunpan/appmanage/util/a0;->w(Ljava/lang/String;)V

    .line 101
    .line 102
    .line 103
    return-void

    .line 104
    :pswitch_3
    iget-object v1, v0, Lcom/yunpan/appmanage/ui/ActivityAppTraffic;->D:Lcom/owen/tvrecyclerview/widget/TvRecyclerView;

    .line 105
    .line 106
    invoke-virtual {v1}, Landroidx/recyclerview/widget/RecyclerView;->stopScroll()V

    .line 107
    .line 108
    .line 109
    iget-object v1, v0, Lcom/yunpan/appmanage/ui/ActivityAppTraffic;->F:Ljava/util/ArrayList;

    .line 110
    .line 111
    new-instance v2, Lqa/e;

    .line 112
    .line 113
    const/16 v3, 0x11

    .line 114
    .line 115
    invoke-direct {v2, v3}, Lqa/e;-><init>(I)V

    .line 116
    .line 117
    .line 118
    invoke-static {v1, v2}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 119
    .line 120
    .line 121
    iget-object v1, v0, Lcom/yunpan/appmanage/ui/ActivityAppTraffic;->E:Lx9/z;

    .line 122
    .line 123
    iget-object v0, v0, Lcom/yunpan/appmanage/ui/ActivityAppTraffic;->F:Ljava/util/ArrayList;

    .line 124
    .line 125
    invoke-virtual {v1, v0}, Lc6/g;->E(Ljava/util/List;)V

    .line 126
    .line 127
    .line 128
    invoke-static {p1}, Lcom/yunpan/appmanage/util/a0;->w(Ljava/lang/String;)V

    .line 129
    .line 130
    .line 131
    return-void

    .line 132
    nop

    .line 133
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
