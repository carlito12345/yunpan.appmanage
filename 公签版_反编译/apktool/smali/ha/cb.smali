.class public final Lha/cb;
.super Lha/a4;
.source "SourceFile"


# instance fields
.field public g:Lcom/owen/tvrecyclerview/widget/TvRecyclerView;

.field public h:Lx9/j4;


# direct methods
.method public constructor <init>(Landroid/app/Activity;Landroid/content/Context;)V
    .locals 1

    .line 1
    const v0, 0x7f0e00e2

    .line 2
    .line 3
    .line 4
    invoke-direct {p0, p1, p2, v0}, Lha/a4;-><init>(Landroid/app/Activity;Landroid/content/Context;I)V

    .line 5
    .line 6
    .line 7
    return-void
.end method


# virtual methods
.method public final a(I)V
    .locals 3

    .line 1
    const/4 v0, 0x1

    .line 2
    iget-object v1, p0, Lha/cb;->h:Lx9/j4;

    .line 3
    .line 4
    invoke-virtual {v1, p1}, Lc6/g;->t(I)Ljava/lang/Object;

    .line 5
    .line 6
    .line 7
    move-result-object p1

    .line 8
    check-cast p1, Lx9/k4;

    .line 9
    .line 10
    iget-object p1, p1, Lx9/k4;->b:Ljava/lang/String;

    .line 11
    .line 12
    const-string v1, "adb shell "

    .line 13
    .line 14
    invoke-virtual {p1, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 15
    .line 16
    .line 17
    move-result v1

    .line 18
    if-eqz v1, :cond_0

    .line 19
    .line 20
    const/16 v0, 0xa

    .line 21
    .line 22
    invoke-virtual {p1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    .line 23
    .line 24
    .line 25
    move-result-object p1

    .line 26
    sget-object v0, Lfa/b0;->a:La2/w0;

    .line 27
    .line 28
    const/4 v1, 0x0

    .line 29
    invoke-virtual {v0, p1, v1}, La2/w0;->g(Ljava/lang/String;Lfa/z;)V

    .line 30
    .line 31
    .line 32
    goto :goto_2

    .line 33
    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    .line 34
    .line 35
    .line 36
    move-result v1

    .line 37
    const/16 v2, 0xb

    .line 38
    .line 39
    if-le v1, v2, :cond_1

    .line 40
    .line 41
    invoke-virtual {p1, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    .line 42
    .line 43
    .line 44
    move-result-object p1

    .line 45
    goto :goto_0

    .line 46
    :cond_1
    const-string p1, ""

    .line 47
    .line 48
    :goto_0
    sget-object v1, Lfa/g0;->a:Lfa/h0;

    .line 49
    .line 50
    invoke-virtual {v1}, Lfa/h0;->f()Z

    .line 51
    .line 52
    .line 53
    move-result v1

    .line 54
    if-nez v1, :cond_3

    .line 55
    .line 56
    sget-object v1, Lcom/yunpan/appmanage/util/k;->u0:Ljava/text/DecimalFormat;

    .line 57
    .line 58
    sget-object v1, Lcom/yunpan/appmanage/util/j;->a:Lcom/yunpan/appmanage/util/k;

    .line 59
    .line 60
    iget-boolean v2, v1, Lcom/yunpan/appmanage/util/k;->j:Z

    .line 61
    .line 62
    if-eqz v2, :cond_2

    .line 63
    .line 64
    goto :goto_1

    .line 65
    :cond_2
    const-string v2, "reboot:"

    .line 66
    .line 67
    invoke-static {v2, p1}, Lda/b;->c(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 68
    .line 69
    .line 70
    move-result-object p1

    .line 71
    iget-object v1, v1, Lcom/yunpan/appmanage/util/k;->g0:Ljava/util/concurrent/ExecutorService;

    .line 72
    .line 73
    new-instance v2, Lcom/yunpan/appmanage/db/a;

    .line 74
    .line 75
    invoke-direct {v2, p1, v0}, Lcom/yunpan/appmanage/db/a;-><init>(Ljava/lang/String;I)V

    .line 76
    .line 77
    .line 78
    invoke-interface {v1, v2}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    .line 79
    .line 80
    .line 81
    goto :goto_2

    .line 82
    :cond_3
    :goto_1
    const-string v1, "reboot "

    .line 83
    .line 84
    invoke-static {v1, p1}, Lda/b;->c(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 85
    .line 86
    .line 87
    move-result-object p1

    .line 88
    new-array v0, v0, [Ljava/lang/String;

    .line 89
    .line 90
    const/4 v1, 0x0

    .line 91
    aput-object p1, v0, v1

    .line 92
    .line 93
    invoke-static {v0}, Lu9/d;->r([Ljava/lang/String;)Lv9/e;

    .line 94
    .line 95
    .line 96
    move-result-object p1

    .line 97
    invoke-virtual {p1}, Lv9/e;->l0()Landroidx/room/s;

    .line 98
    .line 99
    .line 100
    :goto_2
    invoke-virtual {p0}, Landroid/app/Dialog;->dismiss()V

    .line 101
    .line 102
    .line 103
    return-void
.end method

.method public final onCreate(Landroid/os/Bundle;)V
    .locals 6

    .line 1
    invoke-super {p0, p1}, Lha/a4;->onCreate(Landroid/os/Bundle;)V

    .line 2
    .line 3
    .line 4
    const p1, 0x7f0b04f1

    .line 5
    .line 6
    .line 7
    invoke-virtual {p0, p1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    .line 8
    .line 9
    .line 10
    move-result-object p1

    .line 11
    check-cast p1, Lcom/owen/tvrecyclerview/widget/TvRecyclerView;

    .line 12
    .line 13
    iput-object p1, p0, Lha/cb;->g:Lcom/owen/tvrecyclerview/widget/TvRecyclerView;

    .line 14
    .line 15
    new-instance p1, Lx9/j4;

    .line 16
    .line 17
    invoke-direct {p1}, Lx9/j4;-><init>()V

    .line 18
    .line 19
    .line 20
    iput-object p1, p0, Lha/cb;->h:Lx9/j4;

    .line 21
    .line 22
    iget-object p1, p0, Lha/cb;->g:Lcom/owen/tvrecyclerview/widget/TvRecyclerView;

    .line 23
    .line 24
    new-instance v0, Lcom/owen/tvrecyclerview/widget/V7LinearLayoutManager;

    .line 25
    .line 26
    iget-object v1, p0, Lha/a4;->b:Landroid/content/Context;

    .line 27
    .line 28
    const/4 v2, 0x1

    .line 29
    const/4 v3, 0x0

    .line 30
    invoke-direct {v0, v1, v2, v3}, Lcom/owen/tvrecyclerview/widget/V7LinearLayoutManager;-><init>(Landroid/content/Context;IZ)V

    .line 31
    .line 32
    .line 33
    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 34
    .line 35
    .line 36
    new-instance p1, Ljava/util/ArrayList;

    .line 37
    .line 38
    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 39
    .line 40
    .line 41
    new-instance v0, Lx9/k4;

    .line 42
    .line 43
    const-string v2, "adb reboot"

    .line 44
    .line 45
    const-string v4, "\u91cd\u542f"

    .line 46
    .line 47
    invoke-direct {v0, v4, v2}, Lx9/k4;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 48
    .line 49
    .line 50
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 51
    .line 52
    .line 53
    new-instance v0, Lx9/k4;

    .line 54
    .line 55
    const-string v2, "adb reboot -p"

    .line 56
    .line 57
    const-string v5, "\u5173\u673a"

    .line 58
    .line 59
    invoke-direct {v0, v5, v2}, Lx9/k4;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 60
    .line 61
    .line 62
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 63
    .line 64
    .line 65
    new-instance v0, Lx9/k4;

    .line 66
    .line 67
    const-string v2, "adb shell reboot"

    .line 68
    .line 69
    invoke-direct {v0, v4, v2}, Lx9/k4;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 70
    .line 71
    .line 72
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 73
    .line 74
    .line 75
    new-instance v0, Lx9/k4;

    .line 76
    .line 77
    const-string v2, "adb shell reboot -p"

    .line 78
    .line 79
    invoke-direct {v0, v5, v2}, Lx9/k4;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 80
    .line 81
    .line 82
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 83
    .line 84
    .line 85
    new-instance v0, Lx9/k4;

    .line 86
    .line 87
    const-string v2, "adb shell svc power reboot"

    .line 88
    .line 89
    invoke-direct {v0, v4, v2}, Lx9/k4;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 90
    .line 91
    .line 92
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 93
    .line 94
    .line 95
    new-instance v0, Lx9/k4;

    .line 96
    .line 97
    const-string v2, "adb shell svc power shutdown"

    .line 98
    .line 99
    invoke-direct {v0, v5, v2}, Lx9/k4;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 100
    .line 101
    .line 102
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 103
    .line 104
    .line 105
    new-instance v0, Lx9/k4;

    .line 106
    .line 107
    const-string v2, "recovery"

    .line 108
    .line 109
    const-string v4, "adb reboot recovery"

    .line 110
    .line 111
    invoke-direct {v0, v2, v4}, Lx9/k4;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 112
    .line 113
    .line 114
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 115
    .line 116
    .line 117
    new-instance v0, Lx9/k4;

    .line 118
    .line 119
    const-string v2, "bootloader"

    .line 120
    .line 121
    const-string v4, "adb reboot bootloader"

    .line 122
    .line 123
    invoke-direct {v0, v2, v4}, Lx9/k4;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 124
    .line 125
    .line 126
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 127
    .line 128
    .line 129
    iget-object v0, p0, Lha/cb;->h:Lx9/j4;

    .line 130
    .line 131
    invoke-virtual {v0, p1}, Lc6/g;->r(Ljava/util/Collection;)V

    .line 132
    .line 133
    .line 134
    iget-object p1, p0, Lha/cb;->g:Lcom/owen/tvrecyclerview/widget/TvRecyclerView;

    .line 135
    .line 136
    iget-object v0, p0, Lha/cb;->h:Lx9/j4;

    .line 137
    .line 138
    invoke-virtual {p1, v0}, Lcom/owen/tvrecyclerview/widget/TvRecyclerView;->setAdapter(Landroidx/recyclerview/widget/m1;)V

    .line 139
    .line 140
    .line 141
    iget-object p1, p0, Lha/cb;->g:Lcom/owen/tvrecyclerview/widget/TvRecyclerView;

    .line 142
    .line 143
    invoke-virtual {p1}, Landroid/view/View;->requestFocus()Z

    .line 144
    .line 145
    .line 146
    iget-object p1, p0, Lha/cb;->g:Lcom/owen/tvrecyclerview/widget/TvRecyclerView;

    .line 147
    .line 148
    invoke-virtual {p1, v3}, Lcom/owen/tvrecyclerview/widget/TvRecyclerView;->setSelection(I)V

    .line 149
    .line 150
    .line 151
    new-instance p1, Landroidx/recyclerview/widget/y;

    .line 152
    .line 153
    invoke-direct {p1, v1}, Landroidx/recyclerview/widget/y;-><init>(Landroid/content/Context;)V

    .line 154
    .line 155
    .line 156
    const v0, 0x7f0800cb

    .line 157
    .line 158
    .line 159
    invoke-static {v1, v0}, Ln0/g;->e(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    .line 160
    .line 161
    .line 162
    move-result-object v0

    .line 163
    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/y;->e(Landroid/graphics/drawable/Drawable;)V

    .line 164
    .line 165
    .line 166
    iget-object v0, p0, Lha/cb;->g:Lcom/owen/tvrecyclerview/widget/TvRecyclerView;

    .line 167
    .line 168
    invoke-virtual {v0, p1}, Landroidx/recyclerview/widget/RecyclerView;->addItemDecoration(Landroidx/recyclerview/widget/v1;)V

    .line 169
    .line 170
    .line 171
    iget-object p1, p0, Lha/cb;->h:Lx9/j4;

    .line 172
    .line 173
    new-instance v0, Lha/p7;

    .line 174
    .line 175
    const/16 v1, 0xa

    .line 176
    .line 177
    invoke-direct {v0, v1, p0}, Lha/p7;-><init>(ILjava/lang/Object;)V

    .line 178
    .line 179
    .line 180
    iput-object v0, p1, Lc6/g;->e:Lc6/e;

    .line 181
    .line 182
    iget-object p1, p0, Lha/cb;->g:Lcom/owen/tvrecyclerview/widget/TvRecyclerView;

    .line 183
    .line 184
    new-instance v0, Lg2/c;

    .line 185
    .line 186
    const/16 v1, 0x17

    .line 187
    .line 188
    invoke-direct {v0, v1}, Lg2/c;-><init>(I)V

    .line 189
    .line 190
    .line 191
    invoke-virtual {p1, v0}, Lcom/owen/tvrecyclerview/widget/TvRecyclerView;->setOnInBorderKeyEventListener(Lcom/owen/tvrecyclerview/widget/TvRecyclerView$OnInBorderKeyEventListener;)V

    .line 192
    .line 193
    .line 194
    iget-object p1, p0, Lha/cb;->g:Lcom/owen/tvrecyclerview/widget/TvRecyclerView;

    .line 195
    .line 196
    new-instance v0, Lha/bb;

    .line 197
    .line 198
    invoke-direct {v0}, Lha/bb;-><init>()V

    .line 199
    .line 200
    .line 201
    invoke-virtual {p1, v0}, Lcom/owen/tvrecyclerview/widget/TvRecyclerView;->setOnItemListener(Lcom/owen/tvrecyclerview/widget/TvRecyclerView$OnItemListener;)V

    .line 202
    .line 203
    .line 204
    return-void
.end method
