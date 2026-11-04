.class public Lcom/yunpan/appmanage/ui/ActivityAutoClick;
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
    const v0, 0x7f0e0028

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
    new-instance v1, Lha/g9;

    .line 9
    .line 10
    const/16 v2, 0x1c

    .line 11
    .line 12
    invoke-direct {v1, v2, p0}, Lha/g9;-><init>(ILjava/lang/Object;)V

    .line 13
    .line 14
    .line 15
    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 16
    .line 17
    .line 18
    const v0, 0x7f0b04f1

    .line 19
    .line 20
    .line 21
    invoke-virtual {p0, v0}, Lq/i;->findViewById(I)Landroid/view/View;

    .line 22
    .line 23
    .line 24
    move-result-object v0

    .line 25
    check-cast v0, Lcom/owen/tvrecyclerview/widget/TvRecyclerView;

    .line 26
    .line 27
    iput-object v0, p0, Lcom/yunpan/appmanage/ui/ActivityAutoClick;->C:Lcom/owen/tvrecyclerview/widget/TvRecyclerView;

    .line 28
    .line 29
    new-instance v1, Lcom/owen/tvrecyclerview/widget/V7LinearLayoutManager;

    .line 30
    .line 31
    const/4 v2, 0x1

    .line 32
    const/4 v3, 0x0

    .line 33
    invoke-direct {v1, p0, v2, v3}, Lcom/owen/tvrecyclerview/widget/V7LinearLayoutManager;-><init>(Landroid/content/Context;IZ)V

    .line 34
    .line 35
    .line 36
    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 37
    .line 38
    .line 39
    new-instance v0, Lx9/k3;

    .line 40
    .line 41
    invoke-direct {v0}, Lx9/k3;-><init>()V

    .line 42
    .line 43
    .line 44
    iput-object v0, p0, Lcom/yunpan/appmanage/ui/ActivityAutoClick;->D:Lx9/k3;

    .line 45
    .line 46
    new-instance v1, Lx9/l3;

    .line 47
    .line 48
    sget-object v2, Lwa/t;->a:Lwa/u;

    .line 49
    .line 50
    iget-boolean v3, v2, Lwa/u;->V:Z

    .line 51
    .line 52
    const v4, 0x7f080237

    .line 53
    .line 54
    .line 55
    const v5, 0x7f080234

    .line 56
    .line 57
    .line 58
    if-eqz v3, :cond_0

    .line 59
    .line 60
    const v3, 0x7f080234

    .line 61
    .line 62
    .line 63
    goto :goto_0

    .line 64
    :cond_0
    const v3, 0x7f080237

    .line 65
    .line 66
    .line 67
    :goto_0
    const-string v6, "\u81ea\u52a8\u70b9\u786e\u8ba4 (USB\u8bf7\u6c42\u5f39\u7a97\u3001USB\u8c03\u8bd5\u6388\u6743\u3001OTG\u8bf7\u6c42\u5f39\u7a97\u3001\u65e0\u7ebf\u8c03\u8bd5\u5f39\u7a97)"

    .line 68
    .line 69
    invoke-direct {v1, v3, v6}, Lx9/l3;-><init>(ILjava/lang/String;)V

    .line 70
    .line 71
    .line 72
    invoke-virtual {v0, v1}, Lc6/g;->q(Ljava/lang/Object;)V

    .line 73
    .line 74
    .line 75
    iget-object v0, p0, Lcom/yunpan/appmanage/ui/ActivityAutoClick;->D:Lx9/k3;

    .line 76
    .line 77
    new-instance v1, Lx9/l3;

    .line 78
    .line 79
    iget-boolean v3, v2, Lwa/u;->Y:Z

    .line 80
    .line 81
    if-eqz v3, :cond_1

    .line 82
    .line 83
    const v3, 0x7f080234

    .line 84
    .line 85
    .line 86
    goto :goto_1

    .line 87
    :cond_1
    const v3, 0x7f080237

    .line 88
    .line 89
    .line 90
    :goto_1
    const-string v6, "\u81ea\u52a8\u9009\u684c\u9762 (\u5f39\u51fa\u684c\u9762\u9009\u62e9\u5668\u65f6\u81ea\u52a8\u70b9\u51fb)"

    .line 91
    .line 92
    invoke-direct {v1, v3, v6}, Lx9/l3;-><init>(ILjava/lang/String;)V

    .line 93
    .line 94
    .line 95
    invoke-virtual {v0, v1}, Lc6/g;->q(Ljava/lang/Object;)V

    .line 96
    .line 97
    .line 98
    iget-object v0, p0, Lcom/yunpan/appmanage/ui/ActivityAutoClick;->D:Lx9/k3;

    .line 99
    .line 100
    new-instance v1, Lx9/l3;

    .line 101
    .line 102
    iget-boolean v2, v2, Lwa/u;->b0:Z

    .line 103
    .line 104
    if-eqz v2, :cond_2

    .line 105
    .line 106
    const v4, 0x7f080234

    .line 107
    .line 108
    .line 109
    :cond_2
    const-string v2, "\u81ea\u52a8\u70b9\u5141\u8bb8\u8bbf\u95ee\u4e00\u6b21(\u8bfb\u53d6\u65e5\u5fd7\u8bf7\u6c42\u5f39\u7a97)"

    .line 110
    .line 111
    invoke-direct {v1, v4, v2}, Lx9/l3;-><init>(ILjava/lang/String;)V

    .line 112
    .line 113
    .line 114
    invoke-virtual {v0, v1}, Lc6/g;->q(Ljava/lang/Object;)V

    .line 115
    .line 116
    .line 117
    iget-object v0, p0, Lcom/yunpan/appmanage/ui/ActivityAutoClick;->C:Lcom/owen/tvrecyclerview/widget/TvRecyclerView;

    .line 118
    .line 119
    iget-object v1, p0, Lcom/yunpan/appmanage/ui/ActivityAutoClick;->D:Lx9/k3;

    .line 120
    .line 121
    invoke-virtual {v0, v1}, Lcom/owen/tvrecyclerview/widget/TvRecyclerView;->setAdapter(Landroidx/recyclerview/widget/m1;)V

    .line 122
    .line 123
    .line 124
    iget-object v0, p0, Lcom/yunpan/appmanage/ui/ActivityAutoClick;->D:Lx9/k3;

    .line 125
    .line 126
    new-instance v1, Lph/j;

    .line 127
    .line 128
    const/16 v2, 0xc

    .line 129
    .line 130
    invoke-direct {v1, v2, p0}, Lph/j;-><init>(ILjava/lang/Object;)V

    .line 131
    .line 132
    .line 133
    iput-object v1, v0, Lc6/g;->e:Lc6/e;

    .line 134
    .line 135
    return-void
.end method
