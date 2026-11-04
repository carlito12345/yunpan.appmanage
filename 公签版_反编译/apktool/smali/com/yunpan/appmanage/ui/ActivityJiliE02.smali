.class public Lcom/yunpan/appmanage/ui/ActivityJiliE02;
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
    const v0, 0x7f0e0045

    return v0
.end method

.method public final u()V
    .locals 7

    .line 1
    iget-object v0, p0, Lda/g;->A:Lda/g;

    .line 2
    .line 3
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 4
    .line 5
    .line 6
    const v0, 0x7f0b05ba

    .line 7
    .line 8
    .line 9
    invoke-virtual {p0, v0}, Lq/i;->findViewById(I)Landroid/view/View;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    check-cast v0, Landroid/widget/TextView;

    .line 14
    .line 15
    const-string v1, "\u5409\u5229E02\u7cfb\u7edf\u4e13\u7528\u529f\u80fd\uff0c\u7981\u6b62\u7528\u4e8e\u975e\u6cd5\u7528\u9014\u3001\u5546\u4e1a\u7528\u9014"

    .line 16
    .line 17
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 18
    .line 19
    .line 20
    new-instance v0, Lha/u9;

    .line 21
    .line 22
    iget-object v1, p0, Lda/g;->A:Lda/g;

    .line 23
    .line 24
    invoke-direct {v0, p0, v1}, Lha/u9;-><init>(Landroid/app/Activity;Landroid/content/Context;)V

    .line 25
    .line 26
    .line 27
    const v0, 0x7f0b03ad

    .line 28
    .line 29
    .line 30
    invoke-virtual {p0, v0}, Lq/i;->findViewById(I)Landroid/view/View;

    .line 31
    .line 32
    .line 33
    move-result-object v0

    .line 34
    check-cast v0, Landroidx/constraintlayout/widget/ConstraintLayout;

    .line 35
    .line 36
    new-instance v1, Lua/g1;

    .line 37
    .line 38
    const/16 v2, 0x9

    .line 39
    .line 40
    invoke-direct {v1, p0, v2}, Lua/g1;-><init>(Lda/g;I)V

    .line 41
    .line 42
    .line 43
    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 44
    .line 45
    .line 46
    const v0, 0x7f0b04f1

    .line 47
    .line 48
    .line 49
    invoke-virtual {p0, v0}, Lq/i;->findViewById(I)Landroid/view/View;

    .line 50
    .line 51
    .line 52
    move-result-object v0

    .line 53
    check-cast v0, Lcom/owen/tvrecyclerview/widget/TvRecyclerView;

    .line 54
    .line 55
    iput-object v0, p0, Lcom/yunpan/appmanage/ui/ActivityJiliE02;->C:Lcom/owen/tvrecyclerview/widget/TvRecyclerView;

    .line 56
    .line 57
    new-instance v1, Lcom/owen/tvrecyclerview/widget/V7GridLayoutManager;

    .line 58
    .line 59
    const/4 v2, 0x2

    .line 60
    invoke-direct {v1, p0, v2}, Lcom/owen/tvrecyclerview/widget/V7GridLayoutManager;-><init>(Landroid/content/Context;I)V

    .line 61
    .line 62
    .line 63
    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 64
    .line 65
    .line 66
    new-instance v0, Lx9/k3;

    .line 67
    .line 68
    invoke-direct {v0}, Lx9/k3;-><init>()V

    .line 69
    .line 70
    .line 71
    iput-object v0, p0, Lcom/yunpan/appmanage/ui/ActivityJiliE02;->D:Lx9/k3;

    .line 72
    .line 73
    new-instance v1, Lx9/l3;

    .line 74
    .line 75
    sget-object v2, Lcom/yunpan/appmanage/util/v;->a:Lcom/yunpan/appmanage/util/w;

    .line 76
    .line 77
    iget-boolean v3, v2, Lcom/yunpan/appmanage/util/w;->K:Z

    .line 78
    .line 79
    const v4, 0x7f080237

    .line 80
    .line 81
    .line 82
    const v5, 0x7f080234

    .line 83
    .line 84
    .line 85
    if-eqz v3, :cond_0

    .line 86
    .line 87
    const v3, 0x7f080234

    .line 88
    .line 89
    .line 90
    goto :goto_0

    .line 91
    :cond_0
    const v3, 0x7f080237

    .line 92
    .line 93
    .line 94
    :goto_0
    const-string v6, "\u6253\u5f00\u7ba1\u5bb6\u65f6\u81ea\u52a8\u89e3\u9664\u5b89\u88c5\u9650\u5236"

    .line 95
    .line 96
    invoke-direct {v1, v3, v6}, Lx9/l3;-><init>(ILjava/lang/String;)V

    .line 97
    .line 98
    .line 99
    invoke-virtual {v0, v1}, Lc6/g;->q(Ljava/lang/Object;)V

    .line 100
    .line 101
    .line 102
    iget-object v0, p0, Lcom/yunpan/appmanage/ui/ActivityJiliE02;->D:Lx9/k3;

    .line 103
    .line 104
    new-instance v1, Lx9/l3;

    .line 105
    .line 106
    iget-boolean v2, v2, Lcom/yunpan/appmanage/util/w;->L:Z

    .line 107
    .line 108
    if-eqz v2, :cond_1

    .line 109
    .line 110
    const v4, 0x7f080234

    .line 111
    .line 112
    .line 113
    :cond_1
    const-string v2, "\u5173\u95ed\u7ba1\u5bb6\u65f6\u81ea\u52a8\u6062\u590d\u5b89\u88c5\u9650\u5236"

    .line 114
    .line 115
    invoke-direct {v1, v4, v2}, Lx9/l3;-><init>(ILjava/lang/String;)V

    .line 116
    .line 117
    .line 118
    invoke-virtual {v0, v1}, Lc6/g;->q(Ljava/lang/Object;)V

    .line 119
    .line 120
    .line 121
    iget-object v0, p0, Lcom/yunpan/appmanage/ui/ActivityJiliE02;->D:Lx9/k3;

    .line 122
    .line 123
    const v1, 0x7f080258

    .line 124
    .line 125
    .line 126
    const-string v2, "\u539f\u8f66\u5e94\u7528\u5e02\u573a\uff1a\u7981\u7528/\u6062\u590d"

    .line 127
    .line 128
    invoke-static {v1, v2, v0}, Lg/b;->p(ILjava/lang/String;Lx9/k3;)V

    .line 129
    .line 130
    .line 131
    iget-object v0, p0, Lcom/yunpan/appmanage/ui/ActivityJiliE02;->D:Lx9/k3;

    .line 132
    .line 133
    const-string v2, "\u5e94\u7528\u5b89\u88c5\u9650\u5236\uff1a\u89e3\u9664/\u6062\u590d"

    .line 134
    .line 135
    invoke-static {v1, v2, v0}, Lg/b;->p(ILjava/lang/String;Lx9/k3;)V

    .line 136
    .line 137
    .line 138
    iget-object v0, p0, Lcom/yunpan/appmanage/ui/ActivityJiliE02;->D:Lx9/k3;

    .line 139
    .line 140
    const-string v2, "\u4e34\u65f6\uff1a\u6062\u590d\u6574\u8f66\u8bbe\u7f6e\u7f3a\u5931\u529f\u80fd"

    .line 141
    .line 142
    invoke-static {v1, v2, v0}, Lg/b;->p(ILjava/lang/String;Lx9/k3;)V

    .line 143
    .line 144
    .line 145
    iget-object v0, p0, Lcom/yunpan/appmanage/ui/ActivityJiliE02;->D:Lx9/k3;

    .line 146
    .line 147
    const-string v2, "\u5b8c\u5168\uff1a\u6062\u590d\u6574\u8f66\u8bbe\u7f6e\u7f3a\u5931\u529f\u80fd"

    .line 148
    .line 149
    invoke-static {v1, v2, v0}, Lg/b;->p(ILjava/lang/String;Lx9/k3;)V

    .line 150
    .line 151
    .line 152
    iget-object v0, p0, Lcom/yunpan/appmanage/ui/ActivityJiliE02;->C:Lcom/owen/tvrecyclerview/widget/TvRecyclerView;

    .line 153
    .line 154
    iget-object v1, p0, Lcom/yunpan/appmanage/ui/ActivityJiliE02;->D:Lx9/k3;

    .line 155
    .line 156
    invoke-virtual {v0, v1}, Lcom/owen/tvrecyclerview/widget/TvRecyclerView;->setAdapter(Landroidx/recyclerview/widget/m1;)V

    .line 157
    .line 158
    .line 159
    iget-object v0, p0, Lcom/yunpan/appmanage/ui/ActivityJiliE02;->D:Lx9/k3;

    .line 160
    .line 161
    new-instance v1, Lph/j;

    .line 162
    .line 163
    const/16 v2, 0x14

    .line 164
    .line 165
    invoke-direct {v1, v2, p0}, Lph/j;-><init>(ILjava/lang/Object;)V

    .line 166
    .line 167
    .line 168
    iput-object v1, v0, Lc6/g;->e:Lc6/e;

    .line 169
    .line 170
    return-void
.end method
