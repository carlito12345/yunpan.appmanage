.class public final Lha/t4;
.super Lha/a4;
.source "SourceFile"


# instance fields
.field public g:Landroidx/recyclerview/widget/RecyclerView;

.field public h:Lx9/c0;

.field public i:Lua/u7;

.field public j:Landroid/widget/TextView;

.field public k:Z

.field public l:F


# direct methods
.method public constructor <init>(Landroid/app/Activity;Landroid/content/Context;)V
    .locals 1

    .line 1
    const v0, 0x7f0e0099

    .line 2
    .line 3
    .line 4
    invoke-direct {p0, p1, p2, v0}, Lha/a4;-><init>(Landroid/app/Activity;Landroid/content/Context;I)V

    .line 5
    .line 6
    .line 7
    const/4 p1, 0x0

    .line 8
    iput-boolean p1, p0, Lha/t4;->k:Z

    .line 9
    .line 10
    const/4 p1, 0x0

    .line 11
    iput p1, p0, Lha/t4;->l:F

    .line 12
    .line 13
    return-void
.end method


# virtual methods
.method public final dismiss()V
    .locals 1

    .line 1
    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Lha/t4;->k:Z

    .line 3
    .line 4
    invoke-super {p0}, Landroid/app/Dialog;->dismiss()V

    .line 5
    .line 6
    .line 7
    return-void
.end method

.method public final onCreate(Landroid/os/Bundle;)V
    .locals 2

    .line 1
    invoke-super {p0, p1}, Lha/a4;->onCreate(Landroid/os/Bundle;)V

    .line 2
    .line 3
    .line 4
    const p1, 0x7f0b0592

    .line 5
    .line 6
    .line 7
    invoke-virtual {p0, p1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    .line 8
    .line 9
    .line 10
    move-result-object p1

    .line 11
    check-cast p1, Landroid/widget/TextView;

    .line 12
    .line 13
    iput-object p1, p0, Lha/t4;->j:Landroid/widget/TextView;

    .line 14
    .line 15
    const p1, 0x7f0b035a

    .line 16
    .line 17
    .line 18
    invoke-virtual {p0, p1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    .line 19
    .line 20
    .line 21
    move-result-object p1

    .line 22
    new-instance v0, Lha/r4;

    .line 23
    .line 24
    const/4 v1, 0x0

    .line 25
    invoke-direct {v0, p0, v1}, Lha/r4;-><init>(Lha/t4;I)V

    .line 26
    .line 27
    .line 28
    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 29
    .line 30
    .line 31
    const p1, 0x7f0b03d2

    .line 32
    .line 33
    .line 34
    invoke-virtual {p0, p1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    .line 35
    .line 36
    .line 37
    move-result-object p1

    .line 38
    check-cast p1, Landroid/widget/TextView;

    .line 39
    .line 40
    invoke-virtual {p1}, Landroid/view/View;->requestFocus()Z

    .line 41
    .line 42
    .line 43
    new-instance v0, Lha/r4;

    .line 44
    .line 45
    const/4 v1, 0x1

    .line 46
    invoke-direct {v0, p0, v1}, Lha/r4;-><init>(Lha/t4;I)V

    .line 47
    .line 48
    .line 49
    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 50
    .line 51
    .line 52
    const p1, 0x7f0b050e

    .line 53
    .line 54
    .line 55
    invoke-virtual {p0, p1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    .line 56
    .line 57
    .line 58
    move-result-object p1

    .line 59
    check-cast p1, Landroidx/recyclerview/widget/RecyclerView;

    .line 60
    .line 61
    iput-object p1, p0, Lha/t4;->g:Landroidx/recyclerview/widget/RecyclerView;

    .line 62
    .line 63
    new-instance v0, Landroidx/recyclerview/widget/LinearLayoutManager;

    .line 64
    .line 65
    const/4 v1, 0x0

    .line 66
    invoke-direct {v0, v1, v1}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(IZ)V

    .line 67
    .line 68
    .line 69
    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 70
    .line 71
    .line 72
    new-instance p1, Lx9/c0;

    .line 73
    .line 74
    invoke-direct {p1}, Lx9/c0;-><init>()V

    .line 75
    .line 76
    .line 77
    iput-object p1, p0, Lha/t4;->h:Lx9/c0;

    .line 78
    .line 79
    const-string v0, "\u7ec8\u7ed3\u8005"

    .line 80
    .line 81
    invoke-static {v0, v1, p1}, Lg/b;->w(Ljava/lang/String;ZLx9/c0;)V

    .line 82
    .line 83
    .line 84
    iget-object p1, p0, Lha/t4;->h:Lx9/c0;

    .line 85
    .line 86
    const-string v0, "\u8f66\u673a\u6a21\u5f0f"

    .line 87
    .line 88
    invoke-static {v0, v1, p1}, Lg/b;->w(Ljava/lang/String;ZLx9/c0;)V

    .line 89
    .line 90
    .line 91
    iget-object p1, p0, Lha/t4;->h:Lx9/c0;

    .line 92
    .line 93
    const-string v0, "\u7a97\u53e3\u6a21\u5f0f"

    .line 94
    .line 95
    invoke-static {v0, v1, p1}, Lg/b;->w(Ljava/lang/String;ZLx9/c0;)V

    .line 96
    .line 97
    .line 98
    iget-object p1, p0, Lha/t4;->h:Lx9/c0;

    .line 99
    .line 100
    const-string v0, "\u6e29\u67d4\u6a21\u5f0f"

    .line 101
    .line 102
    invoke-static {v0, v1, p1}, Lg/b;->w(Ljava/lang/String;ZLx9/c0;)V

    .line 103
    .line 104
    .line 105
    iget-object p1, p0, Lha/t4;->h:Lx9/c0;

    .line 106
    .line 107
    const-string v0, "\u66b4\u529b\u6a21\u5f0f"

    .line 108
    .line 109
    invoke-static {v0, v1, p1}, Lg/b;->w(Ljava/lang/String;ZLx9/c0;)V

    .line 110
    .line 111
    .line 112
    iget-object p1, p0, Lha/t4;->h:Lx9/c0;

    .line 113
    .line 114
    const-string v0, "\u6781\u901f"

    .line 115
    .line 116
    invoke-static {v0, v1, p1}, Lg/b;->w(Ljava/lang/String;ZLx9/c0;)V

    .line 117
    .line 118
    .line 119
    iget-object p1, p0, Lha/t4;->g:Landroidx/recyclerview/widget/RecyclerView;

    .line 120
    .line 121
    iget-object v0, p0, Lha/t4;->h:Lx9/c0;

    .line 122
    .line 123
    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/m1;)V

    .line 124
    .line 125
    .line 126
    iget-object p1, p0, Lha/t4;->h:Lx9/c0;

    .line 127
    .line 128
    sget-object v0, Lcom/yunpan/appmanage/util/v;->a:Lcom/yunpan/appmanage/util/w;

    .line 129
    .line 130
    iget v0, v0, Lcom/yunpan/appmanage/util/w;->Z:I

    .line 131
    .line 132
    invoke-virtual {p1, v0}, Lx9/c0;->G(I)V

    .line 133
    .line 134
    .line 135
    new-instance p1, Lha/s4;

    .line 136
    .line 137
    invoke-direct {p1, p0}, Lha/s4;-><init>(Lha/t4;)V

    .line 138
    .line 139
    .line 140
    new-instance v0, Lmc/c;

    .line 141
    .line 142
    const/4 v1, 0x0

    .line 143
    invoke-direct {v0, v1, p1}, Lmc/c;-><init>(ILjava/lang/Object;)V

    .line 144
    .line 145
    .line 146
    sget-object p1, Lrc/f;->b:Lec/j;

    .line 147
    .line 148
    invoke-virtual {v0, p1}, Lec/b;->d(Lec/j;)Lmc/p;

    .line 149
    .line 150
    .line 151
    move-result-object p1

    .line 152
    invoke-static {}, Lfc/b;->a()Lfc/e;

    .line 153
    .line 154
    .line 155
    move-result-object v0

    .line 156
    invoke-virtual {p1, v0}, Lec/b;->a(Lfc/e;)Lmc/g;

    .line 157
    .line 158
    .line 159
    move-result-object p1

    .line 160
    new-instance v0, Lha/p0;

    .line 161
    .line 162
    const/4 v1, 0x7

    .line 163
    invoke-direct {v0, v1, p0}, Lha/p0;-><init>(ILjava/lang/Object;)V

    .line 164
    .line 165
    .line 166
    invoke-virtual {p1, v0}, Lec/b;->b(Lec/e;)V

    .line 167
    .line 168
    .line 169
    iget-object p1, p0, Lha/t4;->h:Lx9/c0;

    .line 170
    .line 171
    new-instance v0, Lha/s4;

    .line 172
    .line 173
    invoke-direct {v0, p0}, Lha/s4;-><init>(Lha/t4;)V

    .line 174
    .line 175
    .line 176
    iput-object v0, p1, Lc6/g;->e:Lc6/e;

    .line 177
    .line 178
    return-void
.end method
