.class public final synthetic Lua/z;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Lcom/yunpan/appmanage/ui/ActivityAppStorage;


# direct methods
.method public synthetic constructor <init>(Lcom/yunpan/appmanage/ui/ActivityAppStorage;I)V
    .locals 0

    .line 1
    iput p2, p0, Lua/z;->a:I

    iput-object p1, p0, Lua/z;->b:Lcom/yunpan/appmanage/ui/ActivityAppStorage;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 4

    .line 1
    const-string p1, "\u5df2\u91cd\u65b0\u6392\u5e8f"

    .line 2
    .line 3
    iget-object v0, p0, Lua/z;->b:Lcom/yunpan/appmanage/ui/ActivityAppStorage;

    .line 4
    .line 5
    iget v1, p0, Lua/z;->a:I

    .line 6
    .line 7
    packed-switch v1, :pswitch_data_0

    .line 8
    .line 9
    .line 10
    iget-object v1, v0, Lcom/yunpan/appmanage/ui/ActivityAppStorage;->C:Lcom/owen/tvrecyclerview/widget/TvRecyclerView;

    .line 11
    .line 12
    invoke-virtual {v1}, Landroidx/recyclerview/widget/RecyclerView;->stopScroll()V

    .line 13
    .line 14
    .line 15
    iget-object v1, v0, Lcom/yunpan/appmanage/ui/ActivityAppStorage;->E:Ljava/util/ArrayList;

    .line 16
    .line 17
    new-instance v2, Lqa/e;

    .line 18
    .line 19
    const/16 v3, 0xa

    .line 20
    .line 21
    invoke-direct {v2, v3}, Lqa/e;-><init>(I)V

    .line 22
    .line 23
    .line 24
    invoke-static {v1, v2}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 25
    .line 26
    .line 27
    iget-object v1, v0, Lcom/yunpan/appmanage/ui/ActivityAppStorage;->D:Lx9/x;

    .line 28
    .line 29
    iget-object v0, v0, Lcom/yunpan/appmanage/ui/ActivityAppStorage;->E:Ljava/util/ArrayList;

    .line 30
    .line 31
    invoke-virtual {v1, v0}, Lc6/g;->E(Ljava/util/List;)V

    .line 32
    .line 33
    .line 34
    invoke-static {p1}, Lcom/yunpan/appmanage/util/a0;->w(Ljava/lang/String;)V

    .line 35
    .line 36
    .line 37
    return-void

    .line 38
    :pswitch_0
    iget-object v1, v0, Lcom/yunpan/appmanage/ui/ActivityAppStorage;->C:Lcom/owen/tvrecyclerview/widget/TvRecyclerView;

    .line 39
    .line 40
    invoke-virtual {v1}, Landroidx/recyclerview/widget/RecyclerView;->stopScroll()V

    .line 41
    .line 42
    .line 43
    iget-object v1, v0, Lcom/yunpan/appmanage/ui/ActivityAppStorage;->E:Ljava/util/ArrayList;

    .line 44
    .line 45
    new-instance v2, Lqa/e;

    .line 46
    .line 47
    const/16 v3, 0xb

    .line 48
    .line 49
    invoke-direct {v2, v3}, Lqa/e;-><init>(I)V

    .line 50
    .line 51
    .line 52
    invoke-static {v1, v2}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 53
    .line 54
    .line 55
    iget-object v1, v0, Lcom/yunpan/appmanage/ui/ActivityAppStorage;->D:Lx9/x;

    .line 56
    .line 57
    iget-object v0, v0, Lcom/yunpan/appmanage/ui/ActivityAppStorage;->E:Ljava/util/ArrayList;

    .line 58
    .line 59
    invoke-virtual {v1, v0}, Lc6/g;->E(Ljava/util/List;)V

    .line 60
    .line 61
    .line 62
    invoke-static {p1}, Lcom/yunpan/appmanage/util/a0;->w(Ljava/lang/String;)V

    .line 63
    .line 64
    .line 65
    return-void

    .line 66
    :pswitch_1
    iget-object v1, v0, Lcom/yunpan/appmanage/ui/ActivityAppStorage;->C:Lcom/owen/tvrecyclerview/widget/TvRecyclerView;

    .line 67
    .line 68
    invoke-virtual {v1}, Landroidx/recyclerview/widget/RecyclerView;->stopScroll()V

    .line 69
    .line 70
    .line 71
    iget-object v1, v0, Lcom/yunpan/appmanage/ui/ActivityAppStorage;->E:Ljava/util/ArrayList;

    .line 72
    .line 73
    new-instance v2, Lqa/e;

    .line 74
    .line 75
    const/16 v3, 0xe

    .line 76
    .line 77
    invoke-direct {v2, v3}, Lqa/e;-><init>(I)V

    .line 78
    .line 79
    .line 80
    invoke-static {v1, v2}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 81
    .line 82
    .line 83
    iget-object v1, v0, Lcom/yunpan/appmanage/ui/ActivityAppStorage;->D:Lx9/x;

    .line 84
    .line 85
    iget-object v0, v0, Lcom/yunpan/appmanage/ui/ActivityAppStorage;->E:Ljava/util/ArrayList;

    .line 86
    .line 87
    invoke-virtual {v1, v0}, Lc6/g;->E(Ljava/util/List;)V

    .line 88
    .line 89
    .line 90
    invoke-static {p1}, Lcom/yunpan/appmanage/util/a0;->w(Ljava/lang/String;)V

    .line 91
    .line 92
    .line 93
    return-void

    .line 94
    :pswitch_2
    iget-object v1, v0, Lcom/yunpan/appmanage/ui/ActivityAppStorage;->C:Lcom/owen/tvrecyclerview/widget/TvRecyclerView;

    .line 95
    .line 96
    invoke-virtual {v1}, Landroidx/recyclerview/widget/RecyclerView;->stopScroll()V

    .line 97
    .line 98
    .line 99
    iget-object v1, v0, Lcom/yunpan/appmanage/ui/ActivityAppStorage;->E:Ljava/util/ArrayList;

    .line 100
    .line 101
    new-instance v2, Lqa/e;

    .line 102
    .line 103
    const/16 v3, 0xc

    .line 104
    .line 105
    invoke-direct {v2, v3}, Lqa/e;-><init>(I)V

    .line 106
    .line 107
    .line 108
    invoke-static {v1, v2}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 109
    .line 110
    .line 111
    iget-object v1, v0, Lcom/yunpan/appmanage/ui/ActivityAppStorage;->D:Lx9/x;

    .line 112
    .line 113
    iget-object v0, v0, Lcom/yunpan/appmanage/ui/ActivityAppStorage;->E:Ljava/util/ArrayList;

    .line 114
    .line 115
    invoke-virtual {v1, v0}, Lc6/g;->E(Ljava/util/List;)V

    .line 116
    .line 117
    .line 118
    invoke-static {p1}, Lcom/yunpan/appmanage/util/a0;->w(Ljava/lang/String;)V

    .line 119
    .line 120
    .line 121
    return-void

    .line 122
    :pswitch_3
    sget p1, Lcom/yunpan/appmanage/ui/ActivityAppStorage;->H:I

    .line 123
    .line 124
    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    .line 125
    .line 126
    .line 127
    return-void

    .line 128
    nop

    .line 129
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
