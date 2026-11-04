.class public Lcom/yunpan/appmanage/ui/ActivityOuShangWhitelist;
.super Lda/g;
.source "SourceFile"


# static fields
.field public static final synthetic G:I


# instance fields
.field public C:Landroid/widget/TextView;

.field public D:Lcom/owen/tvrecyclerview/widget/TvRecyclerView;

.field public E:Lx9/v3;

.field public F:Landroid/content/ContentResolver;


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
    const v0, 0x7f0e004b

    return v0
.end method

.method public final u()V
    .locals 4

    .line 1
    iget-object v0, p0, Lda/g;->A:Lda/g;

    .line 2
    .line 3
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    iput-object v0, p0, Lcom/yunpan/appmanage/ui/ActivityOuShangWhitelist;->F:Landroid/content/ContentResolver;

    .line 8
    .line 9
    const v0, 0x7f0b03ad

    .line 10
    .line 11
    .line 12
    invoke-virtual {p0, v0}, Lq/i;->findViewById(I)Landroid/view/View;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    check-cast v0, Landroid/widget/TextView;

    .line 17
    .line 18
    iput-object v0, p0, Lcom/yunpan/appmanage/ui/ActivityOuShangWhitelist;->C:Landroid/widget/TextView;

    .line 19
    .line 20
    new-instance v1, Lua/h5;

    .line 21
    .line 22
    const/4 v2, 0x0

    .line 23
    invoke-direct {v1, p0, v2}, Lua/h5;-><init>(Lcom/yunpan/appmanage/ui/ActivityOuShangWhitelist;I)V

    .line 24
    .line 25
    .line 26
    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 27
    .line 28
    .line 29
    iget-object v0, p0, Lcom/yunpan/appmanage/ui/ActivityOuShangWhitelist;->C:Landroid/widget/TextView;

    .line 30
    .line 31
    invoke-virtual {v0}, Landroid/view/View;->requestFocus()Z

    .line 32
    .line 33
    .line 34
    const v0, 0x7f0b0373

    .line 35
    .line 36
    .line 37
    invoke-virtual {p0, v0}, Lq/i;->findViewById(I)Landroid/view/View;

    .line 38
    .line 39
    .line 40
    move-result-object v0

    .line 41
    new-instance v1, Lua/h5;

    .line 42
    .line 43
    const/4 v2, 0x1

    .line 44
    invoke-direct {v1, p0, v2}, Lua/h5;-><init>(Lcom/yunpan/appmanage/ui/ActivityOuShangWhitelist;I)V

    .line 45
    .line 46
    .line 47
    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 48
    .line 49
    .line 50
    const v0, 0x7f0b034a

    .line 51
    .line 52
    .line 53
    invoke-virtual {p0, v0}, Lq/i;->findViewById(I)Landroid/view/View;

    .line 54
    .line 55
    .line 56
    move-result-object v0

    .line 57
    check-cast v0, Landroid/widget/TextView;

    .line 58
    .line 59
    const v1, 0x7f0b0444

    .line 60
    .line 61
    .line 62
    invoke-virtual {p0, v1}, Lq/i;->findViewById(I)Landroid/view/View;

    .line 63
    .line 64
    .line 65
    move-result-object v1

    .line 66
    check-cast v1, Landroid/widget/EditText;

    .line 67
    .line 68
    new-instance v2, Lha/x6;

    .line 69
    .line 70
    const/16 v3, 0xb

    .line 71
    .line 72
    invoke-direct {v2, v0, v3}, Lha/x6;-><init>(Landroid/widget/TextView;I)V

    .line 73
    .line 74
    .line 75
    invoke-virtual {v1, v2}, Landroid/view/View;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    .line 76
    .line 77
    .line 78
    new-instance v2, Lua/i5;

    .line 79
    .line 80
    const/4 v3, 0x0

    .line 81
    invoke-direct {v2, p0, v1, v3}, Lua/i5;-><init>(Lda/g;Ljava/lang/Object;I)V

    .line 82
    .line 83
    .line 84
    invoke-virtual {v0, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 85
    .line 86
    .line 87
    const v0, 0x7f0b04f1

    .line 88
    .line 89
    .line 90
    invoke-virtual {p0, v0}, Lq/i;->findViewById(I)Landroid/view/View;

    .line 91
    .line 92
    .line 93
    move-result-object v0

    .line 94
    check-cast v0, Lcom/owen/tvrecyclerview/widget/TvRecyclerView;

    .line 95
    .line 96
    iput-object v0, p0, Lcom/yunpan/appmanage/ui/ActivityOuShangWhitelist;->D:Lcom/owen/tvrecyclerview/widget/TvRecyclerView;

    .line 97
    .line 98
    new-instance v1, Lcom/owen/tvrecyclerview/widget/V7LinearLayoutManager;

    .line 99
    .line 100
    const/4 v2, 0x1

    .line 101
    invoke-direct {v1, p0, v2, v3}, Lcom/owen/tvrecyclerview/widget/V7LinearLayoutManager;-><init>(Landroid/content/Context;IZ)V

    .line 102
    .line 103
    .line 104
    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 105
    .line 106
    .line 107
    new-instance v0, Lx9/v3;

    .line 108
    .line 109
    invoke-direct {v0, p0}, Lx9/v3;-><init>(Lcom/yunpan/appmanage/ui/ActivityOuShangWhitelist;)V

    .line 110
    .line 111
    .line 112
    iput-object v0, p0, Lcom/yunpan/appmanage/ui/ActivityOuShangWhitelist;->E:Lx9/v3;

    .line 113
    .line 114
    iget-object v1, p0, Lcom/yunpan/appmanage/ui/ActivityOuShangWhitelist;->D:Lcom/owen/tvrecyclerview/widget/TvRecyclerView;

    .line 115
    .line 116
    invoke-virtual {v1, v0}, Lcom/owen/tvrecyclerview/widget/TvRecyclerView;->setAdapter(Landroidx/recyclerview/widget/m1;)V

    .line 117
    .line 118
    .line 119
    iget-object v0, p0, Lcom/yunpan/appmanage/ui/ActivityOuShangWhitelist;->E:Lx9/v3;

    .line 120
    .line 121
    new-instance v1, Lua/j5;

    .line 122
    .line 123
    invoke-direct {v1, p0}, Lua/j5;-><init>(Lcom/yunpan/appmanage/ui/ActivityOuShangWhitelist;)V

    .line 124
    .line 125
    .line 126
    iput-object v1, v0, Lc6/g;->e:Lc6/e;

    .line 127
    .line 128
    new-instance v0, Ljava/util/ArrayList;

    .line 129
    .line 130
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 131
    .line 132
    .line 133
    new-instance v1, Lha/a3;

    .line 134
    .line 135
    const/4 v2, 0x6

    .line 136
    invoke-direct {v1, v2, v0}, Lha/a3;-><init>(ILjava/util/ArrayList;)V

    .line 137
    .line 138
    .line 139
    new-instance v2, Lmc/c;

    .line 140
    .line 141
    const/4 v3, 0x0

    .line 142
    invoke-direct {v2, v3, v1}, Lmc/c;-><init>(ILjava/lang/Object;)V

    .line 143
    .line 144
    .line 145
    sget-object v1, Lrc/f;->b:Lec/j;

    .line 146
    .line 147
    invoke-virtual {v2, v1}, Lec/b;->d(Lec/j;)Lmc/p;

    .line 148
    .line 149
    .line 150
    move-result-object v1

    .line 151
    invoke-static {}, Lfc/b;->a()Lfc/e;

    .line 152
    .line 153
    .line 154
    move-result-object v2

    .line 155
    invoke-virtual {v1, v2}, Lec/b;->a(Lfc/e;)Lmc/g;

    .line 156
    .line 157
    .line 158
    move-result-object v1

    .line 159
    new-instance v2, Lha/h3;

    .line 160
    .line 161
    const/16 v3, 0xf

    .line 162
    .line 163
    invoke-direct {v2, p0, v3, v0}, Lha/h3;-><init>(Ljava/lang/Object;ILjava/lang/Object;)V

    .line 164
    .line 165
    .line 166
    invoke-virtual {v1, v2}, Lec/b;->b(Lec/e;)V

    .line 167
    .line 168
    .line 169
    return-void
.end method
