.class public Lcom/yunpan/appmanage/ui/ActivityInputMethod;
.super Lda/g;
.source "SourceFile"


# static fields
.field public static final synthetic C:I


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
    const v0, 0x7f0e003f

    return v0
.end method

.method public final u()V
    .locals 7

    .line 1
    const v0, 0x7f0b05ba

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0, v0}, Lq/i;->findViewById(I)Landroid/view/View;

    .line 5
    .line 6
    .line 7
    move-result-object v0

    .line 8
    check-cast v0, Landroid/widget/TextView;

    .line 9
    .line 10
    const-string v1, "\u8bbe\u7f6e\u9ed8\u8ba4\u8f93\u5165\u6cd5"

    .line 11
    .line 12
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 13
    .line 14
    .line 15
    const/4 v1, 0x0

    .line 16
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 17
    .line 18
    .line 19
    const v0, 0x7f0b0500

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
    new-instance v2, Lcom/owen/tvrecyclerview/widget/V7LinearLayoutManager;

    .line 29
    .line 30
    invoke-direct {v2, p0, v1, v1}, Lcom/owen/tvrecyclerview/widget/V7LinearLayoutManager;-><init>(Landroid/content/Context;IZ)V

    .line 31
    .line 32
    .line 33
    invoke-virtual {v0, v2}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 34
    .line 35
    .line 36
    new-instance v2, Lx9/t0;

    .line 37
    .line 38
    const/4 v3, 0x0

    .line 39
    invoke-direct {v2, v3}, Lx9/t0;-><init>(I)V

    .line 40
    .line 41
    .line 42
    new-instance v3, Lcom/yunpan/appmanage/bean/NameIcoTypeBean;

    .line 43
    .line 44
    const v4, 0x7f0801d1

    .line 45
    .line 46
    .line 47
    const-string v5, "\u8fd4\u56de"

    .line 48
    .line 49
    const/4 v6, 0x1

    .line 50
    invoke-direct {v3, v4, v5, v6}, Lcom/yunpan/appmanage/bean/NameIcoTypeBean;-><init>(ILjava/lang/String;I)V

    .line 51
    .line 52
    .line 53
    invoke-virtual {v2, v3}, Lc6/g;->q(Ljava/lang/Object;)V

    .line 54
    .line 55
    .line 56
    new-instance v3, Lcom/yunpan/appmanage/bean/NameIcoTypeBean;

    .line 57
    .line 58
    const v4, 0x7f0801d3

    .line 59
    .line 60
    .line 61
    const-string v5, "\u7ba1\u7406\u952e\u76d8"

    .line 62
    .line 63
    invoke-direct {v3, v4, v5, v6}, Lcom/yunpan/appmanage/bean/NameIcoTypeBean;-><init>(ILjava/lang/String;I)V

    .line 64
    .line 65
    .line 66
    invoke-virtual {v2, v3}, Lc6/g;->q(Ljava/lang/Object;)V

    .line 67
    .line 68
    .line 69
    new-instance v3, Lcom/yunpan/appmanage/bean/NameIcoTypeBean;

    .line 70
    .line 71
    const v4, 0x7f08023f

    .line 72
    .line 73
    .line 74
    const-string v5, "\u9009\u62e9\u8f93\u5165\u6cd5"

    .line 75
    .line 76
    invoke-direct {v3, v4, v5, v6}, Lcom/yunpan/appmanage/bean/NameIcoTypeBean;-><init>(ILjava/lang/String;I)V

    .line 77
    .line 78
    .line 79
    invoke-virtual {v2, v3}, Lc6/g;->q(Ljava/lang/Object;)V

    .line 80
    .line 81
    .line 82
    invoke-virtual {v0, v2}, Lcom/owen/tvrecyclerview/widget/TvRecyclerView;->setAdapter(Landroidx/recyclerview/widget/m1;)V

    .line 83
    .line 84
    .line 85
    new-instance v0, Lph/j;

    .line 86
    .line 87
    const/16 v3, 0x13

    .line 88
    .line 89
    invoke-direct {v0, v3, p0}, Lph/j;-><init>(ILjava/lang/Object;)V

    .line 90
    .line 91
    .line 92
    iput-object v0, v2, Lc6/g;->e:Lc6/e;

    .line 93
    .line 94
    const v0, 0x7f0b04f1

    .line 95
    .line 96
    .line 97
    invoke-virtual {p0, v0}, Lq/i;->findViewById(I)Landroid/view/View;

    .line 98
    .line 99
    .line 100
    move-result-object v0

    .line 101
    check-cast v0, Lcom/owen/tvrecyclerview/widget/TvRecyclerView;

    .line 102
    .line 103
    new-instance v2, Lcom/owen/tvrecyclerview/widget/V7LinearLayoutManager;

    .line 104
    .line 105
    invoke-direct {v2, p0, v6, v1}, Lcom/owen/tvrecyclerview/widget/V7LinearLayoutManager;-><init>(Landroid/content/Context;IZ)V

    .line 106
    .line 107
    .line 108
    invoke-virtual {v0, v2}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 109
    .line 110
    .line 111
    new-instance v1, Lx9/p2;

    .line 112
    .line 113
    invoke-direct {v1, p0}, Lx9/p2;-><init>(Lcom/yunpan/appmanage/ui/ActivityInputMethod;)V

    .line 114
    .line 115
    .line 116
    invoke-virtual {v0, v1}, Lcom/owen/tvrecyclerview/widget/TvRecyclerView;->setAdapter(Landroidx/recyclerview/widget/m1;)V

    .line 117
    .line 118
    .line 119
    new-instance v0, Lma/b;

    .line 120
    .line 121
    const/16 v2, 0x13

    .line 122
    .line 123
    invoke-direct {v0, p0, v2, v1}, Lma/b;-><init>(Ljava/lang/Object;ILjava/lang/Object;)V

    .line 124
    .line 125
    .line 126
    iput-object v0, v1, Lc6/g;->e:Lc6/e;

    .line 127
    .line 128
    new-instance v0, Ljava/util/ArrayList;

    .line 129
    .line 130
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 131
    .line 132
    .line 133
    new-instance v2, Lma/b;

    .line 134
    .line 135
    const/16 v3, 0x14

    .line 136
    .line 137
    invoke-direct {v2, p0, v3, v0}, Lma/b;-><init>(Ljava/lang/Object;ILjava/lang/Object;)V

    .line 138
    .line 139
    .line 140
    new-instance v3, Lmc/c;

    .line 141
    .line 142
    const/4 v4, 0x0

    .line 143
    invoke-direct {v3, v4, v2}, Lmc/c;-><init>(ILjava/lang/Object;)V

    .line 144
    .line 145
    .line 146
    sget-object v2, Lrc/f;->b:Lec/j;

    .line 147
    .line 148
    invoke-virtual {v3, v2}, Lec/b;->d(Lec/j;)Lmc/p;

    .line 149
    .line 150
    .line 151
    move-result-object v2

    .line 152
    invoke-static {}, Lfc/b;->a()Lfc/e;

    .line 153
    .line 154
    .line 155
    move-result-object v3

    .line 156
    invoke-virtual {v2, v3}, Lec/b;->a(Lfc/e;)Lmc/g;

    .line 157
    .line 158
    .line 159
    move-result-object v2

    .line 160
    new-instance v3, Lha/h3;

    .line 161
    .line 162
    const/16 v4, 0xb

    .line 163
    .line 164
    invoke-direct {v3, v1, v4, v0}, Lha/h3;-><init>(Ljava/lang/Object;ILjava/lang/Object;)V

    .line 165
    .line 166
    .line 167
    invoke-virtual {v2, v3}, Lec/b;->b(Lec/e;)V

    .line 168
    .line 169
    .line 170
    return-void
.end method
