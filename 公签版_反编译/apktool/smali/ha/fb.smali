.class public final Lha/fb;
.super Lha/a4;
.source "SourceFile"


# instance fields
.field public final g:Ljava/util/ArrayList;

.field public final h:Ljava/lang/String;

.field public i:Lcom/owen/tvrecyclerview/widget/TvRecyclerView;

.field public j:Lx9/l4;

.field public k:Landroid/widget/TextView;

.field public l:Z

.field public final m:Ljava/lang/String;

.field public final n:Lua/h;

.field public final p:I

.field public final q:Lcom/yunpan/appmanage/carsdk/u;


# direct methods
.method public constructor <init>(Landroid/app/Activity;Lda/g;Ljava/util/ArrayList;Ljava/lang/String;Lua/h;)V
    .locals 1

    .line 1
    const v0, 0x7f0e008e

    .line 2
    .line 3
    .line 4
    invoke-direct {p0, p1, p2, v0}, Lha/a4;-><init>(Landroid/app/Activity;Landroid/content/Context;I)V

    .line 5
    .line 6
    .line 7
    const/4 p1, 0x0

    .line 8
    iput-boolean p1, p0, Lha/fb;->l:Z

    .line 9
    .line 10
    const-string p1, ""

    .line 11
    .line 12
    iput-object p1, p0, Lha/fb;->m:Ljava/lang/String;

    .line 13
    .line 14
    const/4 p1, 0x1

    .line 15
    iput p1, p0, Lha/fb;->p:I

    .line 16
    .line 17
    new-instance p1, Lcom/yunpan/appmanage/carsdk/u;

    .line 18
    .line 19
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    .line 20
    .line 21
    .line 22
    move-result-object p2

    .line 23
    const/16 v0, 0x9

    .line 24
    .line 25
    invoke-direct {p1, p0, p2, v0}, Lcom/yunpan/appmanage/carsdk/u;-><init>(Ljava/lang/Object;Landroid/os/Looper;I)V

    .line 26
    .line 27
    .line 28
    iput-object p1, p0, Lha/fb;->q:Lcom/yunpan/appmanage/carsdk/u;

    .line 29
    .line 30
    iput-object p3, p0, Lha/fb;->g:Ljava/util/ArrayList;

    .line 31
    .line 32
    iput-object p4, p0, Lha/fb;->h:Ljava/lang/String;

    .line 33
    .line 34
    iput-object p5, p0, Lha/fb;->n:Lua/h;

    .line 35
    .line 36
    sget-object p1, Lfa/g0;->a:Lfa/h0;

    .line 37
    .line 38
    invoke-virtual {p1}, Lfa/h0;->d()Ljava/lang/String;

    .line 39
    .line 40
    .line 41
    move-result-object p2

    .line 42
    invoke-virtual {p2}, Ljava/lang/String;->isEmpty()Z

    .line 43
    .line 44
    .line 45
    move-result p2

    .line 46
    const-string p3, "/Download"

    .line 47
    .line 48
    if-nez p2, :cond_0

    .line 49
    .line 50
    new-instance p2, Ljava/lang/StringBuilder;

    .line 51
    .line 52
    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    .line 53
    .line 54
    .line 55
    invoke-static {p1, p2, p3}, Lg/b;->g(Lfa/h0;Ljava/lang/StringBuilder;Ljava/lang/String;)Ljava/lang/String;

    .line 56
    .line 57
    .line 58
    move-result-object p1

    .line 59
    iput-object p1, p0, Lha/fb;->m:Ljava/lang/String;

    .line 60
    .line 61
    goto :goto_0

    .line 62
    :cond_0
    sget-object p1, Lcom/yunpan/appmanage/util/k;->u0:Ljava/text/DecimalFormat;

    .line 63
    .line 64
    sget-object p1, Lcom/yunpan/appmanage/util/j;->a:Lcom/yunpan/appmanage/util/k;

    .line 65
    .line 66
    iget-object p1, p1, Lcom/yunpan/appmanage/util/k;->v:Ljava/util/HashSet;

    .line 67
    .line 68
    invoke-virtual {p1}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    .line 69
    .line 70
    .line 71
    move-result-object p1

    .line 72
    :cond_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 73
    .line 74
    .line 75
    move-result p2

    .line 76
    if-eqz p2, :cond_2

    .line 77
    .line 78
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 79
    .line 80
    .line 81
    move-result-object p2

    .line 82
    check-cast p2, Ljava/lang/String;

    .line 83
    .line 84
    invoke-static {p2}, Lcom/yunpan/appmanage/util/a0;->d(Ljava/lang/String;)Z

    .line 85
    .line 86
    .line 87
    move-result p4

    .line 88
    if-eqz p4, :cond_1

    .line 89
    .line 90
    invoke-static {p2, p3}, Lg/b;->j(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 91
    .line 92
    .line 93
    move-result-object p1

    .line 94
    iput-object p1, p0, Lha/fb;->m:Ljava/lang/String;

    .line 95
    .line 96
    :cond_2
    :goto_0
    iget-object p1, p0, Lha/fb;->m:Ljava/lang/String;

    .line 97
    .line 98
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    .line 99
    .line 100
    .line 101
    move-result p1

    .line 102
    if-eqz p1, :cond_3

    .line 103
    .line 104
    new-instance p1, Ljava/io/File;

    .line 105
    .line 106
    iget-object p2, p0, Lha/fb;->m:Ljava/lang/String;

    .line 107
    .line 108
    invoke-direct {p1, p2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 109
    .line 110
    .line 111
    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    .line 112
    .line 113
    .line 114
    move-result p1

    .line 115
    if-nez p1, :cond_3

    .line 116
    .line 117
    new-instance p1, Ljava/io/File;

    .line 118
    .line 119
    iget-object p2, p0, Lha/fb;->m:Ljava/lang/String;

    .line 120
    .line 121
    invoke-direct {p1, p2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 122
    .line 123
    .line 124
    invoke-virtual {p1}, Ljava/io/File;->mkdir()Z

    .line 125
    .line 126
    .line 127
    :cond_3
    return-void
.end method

.method public static a(Lha/fb;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lha/fb;->k:Landroid/widget/TextView;

    .line 2
    .line 3
    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    const-string v1, "\u53d6\u6d88"

    .line 12
    .line 13
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 14
    .line 15
    .line 16
    move-result v0

    .line 17
    if-eqz v0, :cond_0

    .line 18
    .line 19
    const/4 v0, 0x1

    .line 20
    iput-boolean v0, p0, Lha/fb;->l:Z

    .line 21
    .line 22
    :cond_0
    invoke-super {p0}, Landroid/app/Dialog;->dismiss()V

    .line 23
    .line 24
    .line 25
    iget-object v0, p0, Lha/fb;->h:Ljava/lang/String;

    .line 26
    .line 27
    const-string v1, "\u5378\u8f7d"

    .line 28
    .line 29
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 30
    .line 31
    .line 32
    move-result v0

    .line 33
    if-eqz v0, :cond_1

    .line 34
    .line 35
    iget-object p0, p0, Lha/fb;->n:Lua/h;

    .line 36
    .line 37
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 38
    .line 39
    .line 40
    sget v0, Lcom/yunpan/appmanage/ui/ActivityAppBatch;->G:I

    .line 41
    .line 42
    iget-object p0, p0, Lua/h;->b:Lcom/yunpan/appmanage/ui/ActivityAppBatch;

    .line 43
    .line 44
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 45
    .line 46
    .line 47
    new-instance v0, Ltb/v;

    .line 48
    .line 49
    const/16 v1, 0x12

    .line 50
    .line 51
    invoke-direct {v0, v1}, Ltb/v;-><init>(I)V

    .line 52
    .line 53
    .line 54
    new-instance v1, Lmc/c;

    .line 55
    .line 56
    const/4 v2, 0x0

    .line 57
    invoke-direct {v1, v2, v0}, Lmc/c;-><init>(ILjava/lang/Object;)V

    .line 58
    .line 59
    .line 60
    sget-object v0, Lrc/f;->b:Lec/j;

    .line 61
    .line 62
    invoke-virtual {v1, v0}, Lec/b;->d(Lec/j;)Lmc/p;

    .line 63
    .line 64
    .line 65
    move-result-object v0

    .line 66
    invoke-static {}, Lfc/b;->a()Lfc/e;

    .line 67
    .line 68
    .line 69
    move-result-object v1

    .line 70
    invoke-virtual {v0, v1}, Lec/b;->a(Lfc/e;)Lmc/g;

    .line 71
    .line 72
    .line 73
    move-result-object v0

    .line 74
    new-instance v1, Lka/c;

    .line 75
    .line 76
    const/4 v2, 0x6

    .line 77
    invoke-direct {v1, v2, p0}, Lka/c;-><init>(ILjava/lang/Object;)V

    .line 78
    .line 79
    .line 80
    invoke-virtual {v0, v1}, Lec/b;->b(Lec/e;)V

    .line 81
    .line 82
    .line 83
    :cond_1
    return-void
.end method


# virtual methods
.method public final b(ILjava/lang/String;)V
    .locals 2

    .line 1
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    iget v1, p0, Lha/fb;->p:I

    .line 6
    .line 7
    iput v1, v0, Landroid/os/Message;->what:I

    .line 8
    .line 9
    new-instance v1, Lha/eb;

    .line 10
    .line 11
    invoke-direct {v1, p1, p2}, Lha/eb;-><init>(ILjava/lang/String;)V

    .line 12
    .line 13
    .line 14
    iput-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 15
    .line 16
    iget-object p1, p0, Lha/fb;->q:Lcom/yunpan/appmanage/carsdk/u;

    .line 17
    .line 18
    invoke-virtual {p1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 19
    .line 20
    .line 21
    return-void
.end method

.method public final dismiss()V
    .locals 0

    .line 1
    return-void
.end method

.method public final onBackPressed()V
    .locals 0

    .line 1
    return-void
.end method

.method public final onCreate(Landroid/os/Bundle;)V
    .locals 4

    .line 1
    invoke-super {p0, p1}, Lha/a4;->onCreate(Landroid/os/Bundle;)V

    .line 2
    .line 3
    .line 4
    new-instance p1, Lx9/l4;

    .line 5
    .line 6
    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    invoke-direct {p1, v0}, Lx9/l4;-><init>(Landroid/content/Context;)V

    .line 11
    .line 12
    .line 13
    iput-object p1, p0, Lha/fb;->j:Lx9/l4;

    .line 14
    .line 15
    const p1, 0x7f0b04f4

    .line 16
    .line 17
    .line 18
    invoke-virtual {p0, p1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    .line 19
    .line 20
    .line 21
    move-result-object p1

    .line 22
    check-cast p1, Lcom/owen/tvrecyclerview/widget/TvRecyclerView;

    .line 23
    .line 24
    iput-object p1, p0, Lha/fb;->i:Lcom/owen/tvrecyclerview/widget/TvRecyclerView;

    .line 25
    .line 26
    new-instance v0, Lcom/owen/tvrecyclerview/widget/V7LinearLayoutManager;

    .line 27
    .line 28
    iget-object v1, p0, Lha/a4;->b:Landroid/content/Context;

    .line 29
    .line 30
    const/4 v2, 0x1

    .line 31
    const/4 v3, 0x0

    .line 32
    invoke-direct {v0, v1, v2, v3}, Lcom/owen/tvrecyclerview/widget/V7LinearLayoutManager;-><init>(Landroid/content/Context;IZ)V

    .line 33
    .line 34
    .line 35
    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 36
    .line 37
    .line 38
    iget-object p1, p0, Lha/fb;->i:Lcom/owen/tvrecyclerview/widget/TvRecyclerView;

    .line 39
    .line 40
    iget-object v0, p0, Lha/fb;->j:Lx9/l4;

    .line 41
    .line 42
    invoke-virtual {p1, v0}, Lcom/owen/tvrecyclerview/widget/TvRecyclerView;->setAdapter(Landroidx/recyclerview/widget/m1;)V

    .line 43
    .line 44
    .line 45
    iget-object p1, p0, Lha/fb;->j:Lx9/l4;

    .line 46
    .line 47
    iget-object v0, p0, Lha/fb;->g:Ljava/util/ArrayList;

    .line 48
    .line 49
    invoke-virtual {p1, v0}, Lc6/g;->E(Ljava/util/List;)V

    .line 50
    .line 51
    .line 52
    iget-object p1, p0, Lha/fb;->i:Lcom/owen/tvrecyclerview/widget/TvRecyclerView;

    .line 53
    .line 54
    new-instance v0, Lg2/c;

    .line 55
    .line 56
    const/16 v1, 0x18

    .line 57
    .line 58
    invoke-direct {v0, v1}, Lg2/c;-><init>(I)V

    .line 59
    .line 60
    .line 61
    invoke-virtual {p1, v0}, Lcom/owen/tvrecyclerview/widget/TvRecyclerView;->setOnInBorderKeyEventListener(Lcom/owen/tvrecyclerview/widget/TvRecyclerView$OnInBorderKeyEventListener;)V

    .line 62
    .line 63
    .line 64
    const p1, 0x7f0b05ba

    .line 65
    .line 66
    .line 67
    invoke-virtual {p0, p1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    .line 68
    .line 69
    .line 70
    move-result-object p1

    .line 71
    check-cast p1, Landroid/widget/TextView;

    .line 72
    .line 73
    new-instance v0, Ljava/lang/StringBuilder;

    .line 74
    .line 75
    const-string v1, "\u6279\u91cf"

    .line 76
    .line 77
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 78
    .line 79
    .line 80
    iget-object v1, p0, Lha/fb;->h:Ljava/lang/String;

    .line 81
    .line 82
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 83
    .line 84
    .line 85
    const-string v2, "\u5e94\u7528"

    .line 86
    .line 87
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 88
    .line 89
    .line 90
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 91
    .line 92
    .line 93
    move-result-object v0

    .line 94
    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 95
    .line 96
    .line 97
    const p1, 0x7f0b05c0

    .line 98
    .line 99
    .line 100
    invoke-virtual {p0, p1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    .line 101
    .line 102
    .line 103
    move-result-object p1

    .line 104
    check-cast p1, Landroid/widget/TextView;

    .line 105
    .line 106
    const-string v0, "\u91cd\u7f6e"

    .line 107
    .line 108
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 109
    .line 110
    .line 111
    move-result v0

    .line 112
    if-eqz v0, :cond_0

    .line 113
    .line 114
    const-string v0, "\u91cd\u7f6e\uff1a\u662f\u6307\u6e05\u7406APP\u6240\u6709\u914d\u7f6e\u548c\u7f13\u5b58\u6570\u636e"

    .line 115
    .line 116
    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 117
    .line 118
    .line 119
    goto :goto_1

    .line 120
    :cond_0
    const-string v0, "\u63d0\u53d6"

    .line 121
    .line 122
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 123
    .line 124
    .line 125
    move-result v0

    .line 126
    if-eqz v0, :cond_1

    .line 127
    .line 128
    const-string v0, "\u63d0\u53d6\uff1a\u662f\u6307\u5c06APP\u7684\u5b89\u88c5\u5305\u63d0\u53d6\u51fa\u6765\uff0c\u5e76\u4fdd\u5b58\u5230SD\u5361\u7684Download\u76ee\u5f55\u4e0b"

    .line 129
    .line 130
    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 131
    .line 132
    .line 133
    goto :goto_1

    .line 134
    :cond_1
    const-string v0, "\u7f13\u5b58"

    .line 135
    .line 136
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 137
    .line 138
    .line 139
    move-result v0

    .line 140
    if-eqz v0, :cond_2

    .line 141
    .line 142
    const-string v0, "\u7f13\u5b58\uff1a\u662f\u6307\u5c06APP\u7684\u7f13\u5b58\u5168\u90e8\u6e05\u7406"

    .line 143
    .line 144
    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 145
    .line 146
    .line 147
    goto :goto_1

    .line 148
    :cond_2
    const-string v0, "\u5378\u8f7d"

    .line 149
    .line 150
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 151
    .line 152
    .line 153
    move-result v0

    .line 154
    if-eqz v0, :cond_6

    .line 155
    .line 156
    sget-object v0, Lfa/g0;->a:Lfa/h0;

    .line 157
    .line 158
    invoke-virtual {v0}, Lfa/h0;->f()Z

    .line 159
    .line 160
    .line 161
    move-result v0

    .line 162
    if-eqz v0, :cond_3

    .line 163
    .line 164
    const-string v0, "\u7cfb\u7edf\u62e5\u6709root\u6743\u9650\u5168\u81ea\u52a8\u5378\u8f7d"

    .line 165
    .line 166
    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 167
    .line 168
    .line 169
    goto :goto_1

    .line 170
    :cond_3
    sget-object v0, Lfa/h;->a:Lfa/j;

    .line 171
    .line 172
    invoke-virtual {v0}, Lfa/j;->i()Z

    .line 173
    .line 174
    .line 175
    move-result v0

    .line 176
    if-nez v0, :cond_5

    .line 177
    .line 178
    sget-object v0, Lfa/l;->a:Lfa/m;

    .line 179
    .line 180
    invoke-virtual {v0}, Lio/github/muntashirakon/adb/AbsAdbConnectionManager;->isConnected()Z

    .line 181
    .line 182
    .line 183
    move-result v0

    .line 184
    if-eqz v0, :cond_4

    .line 185
    .line 186
    goto :goto_0

    .line 187
    :cond_4
    const-string v0, "\u9700\u8981\u624b\u52a8\u786e\u8ba4\u5378\u8f7d"

    .line 188
    .line 189
    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 190
    .line 191
    .line 192
    goto :goto_1

    .line 193
    :cond_5
    :goto_0
    const-string v0, "\u5c06\u91c7\u7528adb\u547d\u4ee4\u65b9\u5f0f\u81ea\u52a8\u5378\u8f7d"

    .line 194
    .line 195
    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 196
    .line 197
    .line 198
    :cond_6
    :goto_1
    const p1, 0x7f0b03f3

    .line 199
    .line 200
    .line 201
    invoke-virtual {p0, p1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    .line 202
    .line 203
    .line 204
    move-result-object p1

    .line 205
    check-cast p1, Landroid/widget/LinearLayout;

    .line 206
    .line 207
    const v0, 0x7f0b0397

    .line 208
    .line 209
    .line 210
    invoke-virtual {p0, v0}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    .line 211
    .line 212
    .line 213
    move-result-object v0

    .line 214
    check-cast v0, Landroid/widget/LinearLayout;

    .line 215
    .line 216
    const v1, 0x7f0b0398

    .line 217
    .line 218
    .line 219
    invoke-virtual {p0, v1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    .line 220
    .line 221
    .line 222
    move-result-object v1

    .line 223
    check-cast v1, Landroid/widget/TextView;

    .line 224
    .line 225
    iput-object v1, p0, Lha/fb;->k:Landroid/widget/TextView;

    .line 226
    .line 227
    new-instance v1, Lha/g9;

    .line 228
    .line 229
    const/4 v2, 0x6

    .line 230
    invoke-direct {v1, v2, p0}, Lha/g9;-><init>(ILjava/lang/Object;)V

    .line 231
    .line 232
    .line 233
    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 234
    .line 235
    .line 236
    new-instance v0, Lc6/c;

    .line 237
    .line 238
    const/16 v1, 0x14

    .line 239
    .line 240
    invoke-direct {v0, p0, v1, p1}, Lc6/c;-><init>(Ljava/lang/Object;ILjava/lang/Object;)V

    .line 241
    .line 242
    .line 243
    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 244
    .line 245
    .line 246
    return-void
.end method
