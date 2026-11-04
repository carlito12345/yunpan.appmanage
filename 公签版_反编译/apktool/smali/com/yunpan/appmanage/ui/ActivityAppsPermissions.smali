.class public Lcom/yunpan/appmanage/ui/ActivityAppsPermissions;
.super Lda/g;
.source "SourceFile"


# static fields
.field public static final synthetic K:I


# instance fields
.field public C:Landroidx/recyclerview/widget/RecyclerView;

.field public D:Lx9/c0;

.field public E:Lcom/owen/tvrecyclerview/widget/TvRecyclerView;

.field public F:Lx9/a0;

.field public G:Landroid/widget/LinearLayout;

.field public H:Landroid/widget/EditText;

.field public I:Ljava/lang/String;


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
.method public final onDestroy()V
    .locals 1

    .line 1
    iget-object v0, p0, Lda/g;->A:Lda/g;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/bumptech/glide/b;->b(Landroid/content/Context;)Lcom/bumptech/glide/b;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-virtual {v0}, Lcom/bumptech/glide/b;->a()V

    .line 8
    .line 9
    .line 10
    invoke-super {p0}, Lda/g;->onDestroy()V

    .line 11
    .line 12
    .line 13
    invoke-static {}, Ljava/lang/System;->gc()V

    .line 14
    .line 15
    .line 16
    return-void
.end method

.method public final t()I
    .locals 1

    .line 1
    const v0, 0x7f0e0026

    return v0
.end method

.method public final u()V
    .locals 4

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
    check-cast v0, Landroid/widget/TextView;

    .line 9
    .line 10
    new-instance v1, Lha/g9;

    .line 11
    .line 12
    const/16 v2, 0x1b

    .line 13
    .line 14
    invoke-direct {v1, v2, p0}, Lha/g9;-><init>(ILjava/lang/Object;)V

    .line 15
    .line 16
    .line 17
    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 18
    .line 19
    .line 20
    const v1, 0x7f0b0549

    .line 21
    .line 22
    .line 23
    invoke-virtual {p0, v1}, Lq/i;->findViewById(I)Landroid/view/View;

    .line 24
    .line 25
    .line 26
    move-result-object v1

    .line 27
    check-cast v1, Landroid/widget/LinearLayout;

    .line 28
    .line 29
    iput-object v1, p0, Lcom/yunpan/appmanage/ui/ActivityAppsPermissions;->G:Landroid/widget/LinearLayout;

    .line 30
    .line 31
    const/16 v2, 0x8

    .line 32
    .line 33
    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 34
    .line 35
    .line 36
    const v1, 0x7f0b055f

    .line 37
    .line 38
    .line 39
    invoke-virtual {p0, v1}, Lq/i;->findViewById(I)Landroid/view/View;

    .line 40
    .line 41
    .line 42
    move-result-object v1

    .line 43
    check-cast v1, Landroid/widget/EditText;

    .line 44
    .line 45
    iput-object v1, p0, Lcom/yunpan/appmanage/ui/ActivityAppsPermissions;->H:Landroid/widget/EditText;

    .line 46
    .line 47
    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 48
    .line 49
    .line 50
    iget-object v1, p0, Lcom/yunpan/appmanage/ui/ActivityAppsPermissions;->H:Landroid/widget/EditText;

    .line 51
    .line 52
    new-instance v2, Lha/e2;

    .line 53
    .line 54
    const/4 v3, 0x6

    .line 55
    invoke-direct {v2, p0, v0, v3}, Lha/e2;-><init>(Landroid/view/KeyEvent$Callback;Landroid/view/View;I)V

    .line 56
    .line 57
    .line 58
    invoke-virtual {v1, v2}, Landroid/view/View;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    .line 59
    .line 60
    .line 61
    iget-object v0, p0, Lcom/yunpan/appmanage/ui/ActivityAppsPermissions;->H:Landroid/widget/EditText;

    .line 62
    .line 63
    new-instance v1, Lha/aa;

    .line 64
    .line 65
    const/4 v2, 0x4

    .line 66
    invoke-direct {v1, p0, v2}, Lha/aa;-><init>(Landroid/view/KeyEvent$Callback;I)V

    .line 67
    .line 68
    .line 69
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 70
    .line 71
    .line 72
    const v0, 0x7f0b050e

    .line 73
    .line 74
    .line 75
    invoke-virtual {p0, v0}, Lq/i;->findViewById(I)Landroid/view/View;

    .line 76
    .line 77
    .line 78
    move-result-object v0

    .line 79
    check-cast v0, Landroidx/recyclerview/widget/RecyclerView;

    .line 80
    .line 81
    iput-object v0, p0, Lcom/yunpan/appmanage/ui/ActivityAppsPermissions;->C:Landroidx/recyclerview/widget/RecyclerView;

    .line 82
    .line 83
    new-instance v1, Landroidx/recyclerview/widget/LinearLayoutManager;

    .line 84
    .line 85
    const/4 v2, 0x0

    .line 86
    invoke-direct {v1, v2, v2}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(IZ)V

    .line 87
    .line 88
    .line 89
    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 90
    .line 91
    .line 92
    new-instance v0, Lx9/c0;

    .line 93
    .line 94
    invoke-direct {v0}, Lx9/c0;-><init>()V

    .line 95
    .line 96
    .line 97
    iput-object v0, p0, Lcom/yunpan/appmanage/ui/ActivityAppsPermissions;->D:Lx9/c0;

    .line 98
    .line 99
    const-string v1, "\u641c\u7d22"

    .line 100
    .line 101
    invoke-static {v1, v2, v0}, Lg/b;->w(Ljava/lang/String;ZLx9/c0;)V

    .line 102
    .line 103
    .line 104
    iget-object v0, p0, Lcom/yunpan/appmanage/ui/ActivityAppsPermissions;->D:Lx9/c0;

    .line 105
    .line 106
    const-string v1, "\u5168\u90e8\u5e94\u7528"

    .line 107
    .line 108
    invoke-static {v1, v2, v0}, Lg/b;->w(Ljava/lang/String;ZLx9/c0;)V

    .line 109
    .line 110
    .line 111
    iget-object v0, p0, Lcom/yunpan/appmanage/ui/ActivityAppsPermissions;->D:Lx9/c0;

    .line 112
    .line 113
    const-string v1, "\u4e2a\u4eba\u5e94\u7528"

    .line 114
    .line 115
    const/4 v3, 0x1

    .line 116
    invoke-static {v1, v3, v0}, Lg/b;->w(Ljava/lang/String;ZLx9/c0;)V

    .line 117
    .line 118
    .line 119
    iget-object v0, p0, Lcom/yunpan/appmanage/ui/ActivityAppsPermissions;->D:Lx9/c0;

    .line 120
    .line 121
    const-string v1, "\u7cfb\u7edf\u5e94\u7528"

    .line 122
    .line 123
    invoke-static {v1, v2, v0}, Lg/b;->w(Ljava/lang/String;ZLx9/c0;)V

    .line 124
    .line 125
    .line 126
    iget-object v0, p0, Lcom/yunpan/appmanage/ui/ActivityAppsPermissions;->D:Lx9/c0;

    .line 127
    .line 128
    const-string v1, "\u670d\u52a1\u63d2\u4ef6"

    .line 129
    .line 130
    invoke-static {v1, v2, v0}, Lg/b;->w(Ljava/lang/String;ZLx9/c0;)V

    .line 131
    .line 132
    .line 133
    iget-object v0, p0, Lcom/yunpan/appmanage/ui/ActivityAppsPermissions;->C:Landroidx/recyclerview/widget/RecyclerView;

    .line 134
    .line 135
    iget-object v1, p0, Lcom/yunpan/appmanage/ui/ActivityAppsPermissions;->D:Lx9/c0;

    .line 136
    .line 137
    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/m1;)V

    .line 138
    .line 139
    .line 140
    const v0, 0x7f0b04f4

    .line 141
    .line 142
    .line 143
    invoke-virtual {p0, v0}, Lq/i;->findViewById(I)Landroid/view/View;

    .line 144
    .line 145
    .line 146
    move-result-object v0

    .line 147
    check-cast v0, Lcom/owen/tvrecyclerview/widget/TvRecyclerView;

    .line 148
    .line 149
    iput-object v0, p0, Lcom/yunpan/appmanage/ui/ActivityAppsPermissions;->E:Lcom/owen/tvrecyclerview/widget/TvRecyclerView;

    .line 150
    .line 151
    new-instance v1, Lcom/owen/tvrecyclerview/widget/V7GridLayoutManager;

    .line 152
    .line 153
    const/4 v2, 0x7

    .line 154
    invoke-direct {v1, p0, v2}, Lcom/owen/tvrecyclerview/widget/V7GridLayoutManager;-><init>(Landroid/content/Context;I)V

    .line 155
    .line 156
    .line 157
    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 158
    .line 159
    .line 160
    new-instance v0, Lx9/a0;

    .line 161
    .line 162
    invoke-direct {v0, p0}, Lx9/a0;-><init>(Lda/g;)V

    .line 163
    .line 164
    .line 165
    iput-object v0, p0, Lcom/yunpan/appmanage/ui/ActivityAppsPermissions;->F:Lx9/a0;

    .line 166
    .line 167
    iget-object v1, p0, Lcom/yunpan/appmanage/ui/ActivityAppsPermissions;->E:Lcom/owen/tvrecyclerview/widget/TvRecyclerView;

    .line 168
    .line 169
    invoke-virtual {v1, v0}, Lcom/owen/tvrecyclerview/widget/TvRecyclerView;->setAdapter(Landroidx/recyclerview/widget/m1;)V

    .line 170
    .line 171
    .line 172
    iget-object v0, p0, Lcom/yunpan/appmanage/ui/ActivityAppsPermissions;->D:Lx9/c0;

    .line 173
    .line 174
    new-instance v1, Lua/l0;

    .line 175
    .line 176
    const/4 v2, 0x0

    .line 177
    invoke-direct {v1, p0, v2}, Lua/l0;-><init>(Lcom/yunpan/appmanage/ui/ActivityAppsPermissions;I)V

    .line 178
    .line 179
    .line 180
    iput-object v1, v0, Lc6/g;->e:Lc6/e;

    .line 181
    .line 182
    iget-object v0, p0, Lcom/yunpan/appmanage/ui/ActivityAppsPermissions;->F:Lx9/a0;

    .line 183
    .line 184
    new-instance v1, Lua/l0;

    .line 185
    .line 186
    const/4 v2, 0x1

    .line 187
    invoke-direct {v1, p0, v2}, Lua/l0;-><init>(Lcom/yunpan/appmanage/ui/ActivityAppsPermissions;I)V

    .line 188
    .line 189
    .line 190
    iput-object v1, v0, Lc6/g;->e:Lc6/e;

    .line 191
    .line 192
    const/4 v0, 0x2

    .line 193
    invoke-virtual {p0, v0}, Lcom/yunpan/appmanage/ui/ActivityAppsPermissions;->x(I)V

    .line 194
    .line 195
    .line 196
    return-void
.end method

.method public final x(I)V
    .locals 2

    .line 1
    new-instance v0, Lha/o;

    .line 2
    .line 3
    const/16 v1, 0x9

    .line 4
    .line 5
    invoke-direct {v0, p1, v1, p0}, Lha/o;-><init>(IILjava/lang/Object;)V

    .line 6
    .line 7
    .line 8
    new-instance p1, Lmc/c;

    .line 9
    .line 10
    const/4 v1, 0x0

    .line 11
    invoke-direct {p1, v1, v0}, Lmc/c;-><init>(ILjava/lang/Object;)V

    .line 12
    .line 13
    .line 14
    sget-object v0, Lrc/f;->b:Lec/j;

    .line 15
    .line 16
    invoke-virtual {p1, v0}, Lec/b;->d(Lec/j;)Lmc/p;

    .line 17
    .line 18
    .line 19
    move-result-object p1

    .line 20
    invoke-static {}, Lfc/b;->a()Lfc/e;

    .line 21
    .line 22
    .line 23
    move-result-object v0

    .line 24
    invoke-virtual {p1, v0}, Lec/b;->a(Lfc/e;)Lmc/g;

    .line 25
    .line 26
    .line 27
    move-result-object p1

    .line 28
    new-instance v0, Lka/c;

    .line 29
    .line 30
    const/16 v1, 0xa

    .line 31
    .line 32
    invoke-direct {v0, v1, p0}, Lka/c;-><init>(ILjava/lang/Object;)V

    .line 33
    .line 34
    .line 35
    invoke-virtual {p1, v0}, Lec/b;->b(Lec/e;)V

    .line 36
    .line 37
    .line 38
    return-void
.end method
