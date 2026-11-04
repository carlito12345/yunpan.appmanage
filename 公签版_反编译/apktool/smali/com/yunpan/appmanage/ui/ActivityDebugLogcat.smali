.class public Lcom/yunpan/appmanage/ui/ActivityDebugLogcat;
.super Lda/g;
.source "SourceFile"


# static fields
.field public static final synthetic E:I


# instance fields
.field public C:Lcom/owen/tvrecyclerview/widget/TvRecyclerView;

.field public D:Lx9/k3;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lda/g;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method


# virtual methods
.method public final t()I
    .locals 1

    .line 1
    const v0, 0x7f0e0046

    return v0
.end method

.method public final u()V
    .locals 7

    .line 1
    const v0, 0x7f0b03ad

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0, v0}, Lq/i;->findViewById(I)Landroid/view/View;

    .line 5
    .line 6
    .line 7
    move-result-object v0

    .line 8
    check-cast v0, Landroidx/constraintlayout/widget/ConstraintLayout;

    .line 9
    .line 10
    new-instance v1, Lua/g1;

    .line 11
    .line 12
    const/4 v2, 0x0

    .line 13
    invoke-direct {v1, p0, v2}, Lua/g1;-><init>(Lda/g;I)V

    .line 14
    .line 15
    .line 16
    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 17
    .line 18
    .line 19
    const v0, 0x7f0b04f1

    .line 20
    .line 21
    .line 22
    invoke-virtual {p0, v0}, Lq/i;->findViewById(I)Landroid/view/View;

    .line 23
    .line 24
    .line 25
    move-result-object v0

    .line 26
    check-cast v0, Lcom/owen/tvrecyclerview/widget/TvRecyclerView;

    .line 27
    .line 28
    iput-object v0, p0, Lcom/yunpan/appmanage/ui/ActivityDebugLogcat;->C:Lcom/owen/tvrecyclerview/widget/TvRecyclerView;

    .line 29
    .line 30
    new-instance v1, Lcom/owen/tvrecyclerview/widget/V7LinearLayoutManager;

    .line 31
    .line 32
    const/4 v2, 0x1

    .line 33
    const/4 v3, 0x0

    .line 34
    invoke-direct {v1, p0, v2, v3}, Lcom/owen/tvrecyclerview/widget/V7LinearLayoutManager;-><init>(Landroid/content/Context;IZ)V

    .line 35
    .line 36
    .line 37
    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 38
    .line 39
    .line 40
    new-instance v0, Lx9/k3;

    .line 41
    .line 42
    invoke-direct {v0}, Lx9/k3;-><init>()V

    .line 43
    .line 44
    .line 45
    iput-object v0, p0, Lcom/yunpan/appmanage/ui/ActivityDebugLogcat;->D:Lx9/k3;

    .line 46
    .line 47
    new-instance v1, Lx9/l3;

    .line 48
    .line 49
    sget-object v2, Lwa/t;->a:Lwa/u;

    .line 50
    .line 51
    iget-boolean v3, v2, Lwa/u;->t:Z

    .line 52
    .line 53
    const v4, 0x7f080237

    .line 54
    .line 55
    .line 56
    const v5, 0x7f080234

    .line 57
    .line 58
    .line 59
    if-eqz v3, :cond_0

    .line 60
    .line 61
    const v3, 0x7f080234

    .line 62
    .line 63
    .line 64
    goto :goto_0

    .line 65
    :cond_0
    const v3, 0x7f080237

    .line 66
    .line 67
    .line 68
    :goto_0
    const-string v6, "\u5f00\u673a\u4efb\u52a1\u8c03\u8bd5\u65e5\u5fd7\uff08\u4f1a\u5728[\u5185\u90e8\u5b58\u50a8]\u91cc\u751f\u6210\u65e5\u5fd7\u6587\u4ef6\uff1alog-\u5f00\u673a\u65e5\u5fd7.txt\uff09"

    .line 69
    .line 70
    invoke-direct {v1, v3, v6}, Lx9/l3;-><init>(ILjava/lang/String;)V

    .line 71
    .line 72
    .line 73
    invoke-virtual {v0, v1}, Lc6/g;->q(Ljava/lang/Object;)V

    .line 74
    .line 75
    .line 76
    iget-object v0, p0, Lcom/yunpan/appmanage/ui/ActivityDebugLogcat;->D:Lx9/k3;

    .line 77
    .line 78
    new-instance v1, Lx9/l3;

    .line 79
    .line 80
    iget-boolean v3, v2, Lwa/u;->u:Z

    .line 81
    .line 82
    if-eqz v3, :cond_1

    .line 83
    .line 84
    const v3, 0x7f080234

    .line 85
    .line 86
    .line 87
    goto :goto_1

    .line 88
    :cond_1
    const v3, 0x7f080237

    .line 89
    .line 90
    .line 91
    :goto_1
    const-string v6, "\u65e5\u5fd7\u6620\u5c04\u8c03\u8bd5\u65e5\u5fd7\uff08\u4f1a\u5728[\u5185\u90e8\u5b58\u50a8]\u91cc\u751f\u6210\u65e5\u5fd7\u6587\u4ef6\uff1alog-\u65e5\u5fd7\u6620\u5c04.txt\uff09"

    .line 92
    .line 93
    invoke-direct {v1, v3, v6}, Lx9/l3;-><init>(ILjava/lang/String;)V

    .line 94
    .line 95
    .line 96
    invoke-virtual {v0, v1}, Lc6/g;->q(Ljava/lang/Object;)V

    .line 97
    .line 98
    .line 99
    iget-object v0, p0, Lcom/yunpan/appmanage/ui/ActivityDebugLogcat;->D:Lx9/k3;

    .line 100
    .line 101
    new-instance v1, Lx9/l3;

    .line 102
    .line 103
    iget-boolean v2, v2, Lwa/u;->v:Z

    .line 104
    .line 105
    if-eqz v2, :cond_2

    .line 106
    .line 107
    const v4, 0x7f080234

    .line 108
    .line 109
    .line 110
    :cond_2
    const-string v2, "adb\u8fde\u63a5\u8c03\u8bd5\u65e5\u5fd7\uff08\u4f1a\u5728[\u5185\u90e8\u5b58\u50a8]\u91cc\u751f\u6210\u65e5\u5fd7\u6587\u4ef6\uff1alog-adb.txt\uff09"

    .line 111
    .line 112
    invoke-direct {v1, v4, v2}, Lx9/l3;-><init>(ILjava/lang/String;)V

    .line 113
    .line 114
    .line 115
    invoke-virtual {v0, v1}, Lc6/g;->q(Ljava/lang/Object;)V

    .line 116
    .line 117
    .line 118
    iget-object v0, p0, Lcom/yunpan/appmanage/ui/ActivityDebugLogcat;->C:Lcom/owen/tvrecyclerview/widget/TvRecyclerView;

    .line 119
    .line 120
    iget-object v1, p0, Lcom/yunpan/appmanage/ui/ActivityDebugLogcat;->D:Lx9/k3;

    .line 121
    .line 122
    invoke-virtual {v0, v1}, Lcom/owen/tvrecyclerview/widget/TvRecyclerView;->setAdapter(Landroidx/recyclerview/widget/m1;)V

    .line 123
    .line 124
    .line 125
    iget-object v0, p0, Lcom/yunpan/appmanage/ui/ActivityDebugLogcat;->D:Lx9/k3;

    .line 126
    .line 127
    new-instance v1, Lph/j;

    .line 128
    .line 129
    const/16 v2, 0xf

    .line 130
    .line 131
    invoke-direct {v1, v2, p0}, Lph/j;-><init>(ILjava/lang/Object;)V

    .line 132
    .line 133
    .line 134
    iput-object v1, v0, Lc6/g;->e:Lc6/e;

    .line 135
    .line 136
    return-void
.end method
