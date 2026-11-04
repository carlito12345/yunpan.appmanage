.class public final Lha/y3;
.super Lha/a4;
.source "SourceFile"


# instance fields
.field public g:Ljava/lang/String;

.field public h:Lz7/s;

.field public final i:Ljava/util/HashMap;

.field public j:Landroid/widget/TextView;

.field public k:Landroidx/recyclerview/widget/RecyclerView;

.field public l:Lx9/v0;


# direct methods
.method public constructor <init>(Landroid/app/Activity;Landroid/content/Context;)V
    .locals 1

    .line 1
    const v0, 0x7f0e0096

    .line 2
    .line 3
    .line 4
    invoke-direct {p0, p1, p2, v0}, Lha/a4;-><init>(Landroid/app/Activity;Landroid/content/Context;I)V

    .line 5
    .line 6
    .line 7
    const-string p1, ""

    .line 8
    .line 9
    iput-object p1, p0, Lha/y3;->g:Ljava/lang/String;

    .line 10
    .line 11
    new-instance p1, Ljava/util/HashMap;

    .line 12
    .line 13
    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    .line 14
    .line 15
    .line 16
    iput-object p1, p0, Lha/y3;->i:Ljava/util/HashMap;

    .line 17
    .line 18
    return-void
.end method


# virtual methods
.method public final onCreate(Landroid/os/Bundle;)V
    .locals 3

    .line 1
    invoke-super {p0, p1}, Lha/a4;->onCreate(Landroid/os/Bundle;)V

    .line 2
    .line 3
    .line 4
    iget-object p1, p0, Lha/y3;->i:Ljava/util/HashMap;

    .line 5
    .line 6
    const-string v0, "config.json"

    .line 7
    .line 8
    const-string v1, "\u7ba1\u5bb6\u8bbe\u7f6e"

    .line 9
    .line 10
    invoke-virtual {p1, v1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 11
    .line 12
    .line 13
    const-string v0, "AutoInit.json"

    .line 14
    .line 15
    const-string v1, "\u81ea\u52a8\u5316\u8bbe\u7f6e"

    .line 16
    .line 17
    invoke-virtual {p1, v1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 18
    .line 19
    .line 20
    const-string v0, "urlList.json"

    .line 21
    .line 22
    const-string v1, "\u6587\u4ef6\u4e0b\u8f7d"

    .line 23
    .line 24
    invoke-virtual {p1, v1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 25
    .line 26
    .line 27
    const-string v0, "wpList.json"

    .line 28
    .line 29
    const-string v1, "\u7f51\u7edc\u5b58\u50a8"

    .line 30
    .line 31
    invoke-virtual {p1, v1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 32
    .line 33
    .line 34
    const-string v0, "\u5f00\u673a\u4efb\u52a1.json"

    .line 35
    .line 36
    const-string v1, "\u5f00\u673a\u4efb\u52a1"

    .line 37
    .line 38
    invoke-virtual {p1, v1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 39
    .line 40
    .line 41
    const-string v0, "KeyMapAcc.json"

    .line 42
    .line 43
    const-string v1, "\u6309\u952e\u6620\u5c04"

    .line 44
    .line 45
    invoke-virtual {p1, v1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 46
    .line 47
    .line 48
    const-string v0, "KeyMapLogcatSuper.json"

    .line 49
    .line 50
    const-string v1, "\u65e5\u5fd7\u6620\u5c04"

    .line 51
    .line 52
    invoke-virtual {p1, v1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 53
    .line 54
    .line 55
    const-string v0, "KeyMapEvent.json"

    .line 56
    .line 57
    const-string v1, "\u4e8b\u4ef6\u6620\u5c04"

    .line 58
    .line 59
    invoke-virtual {p1, v1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 60
    .line 61
    .line 62
    const-string v0, "FloatButton.json"

    .line 63
    .line 64
    const-string v1, "\u60ac\u6d6e\u6309\u94ae"

    .line 65
    .line 66
    invoke-virtual {p1, v1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 67
    .line 68
    .line 69
    const-string v0, "Sidebar.json"

    .line 70
    .line 71
    const-string v1, "\u4fa7\u8fb9\u624b\u52bf"

    .line 72
    .line 73
    invoke-virtual {p1, v1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 74
    .line 75
    .line 76
    const-string v0, "KeyMapNissan.json"

    .line 77
    .line 78
    const-string v1, "\u65e5\u4ea7\u6309\u952e\u6620\u5c04"

    .line 79
    .line 80
    invoke-virtual {p1, v1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 81
    .line 82
    .line 83
    const-string v0, "KeyMapJieT.json"

    .line 84
    .line 85
    const-string v1, "\u6377\u9014\u8f66\u673a\u6620\u5c04"

    .line 86
    .line 87
    invoke-virtual {p1, v1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 88
    .line 89
    .line 90
    const-string v0, "KeyMapAiOnY.json"

    .line 91
    .line 92
    const-string v1, "\u5e7f\u6c7d\u8f66\u673a\u6620\u5c04"

    .line 93
    .line 94
    invoke-virtual {p1, v1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 95
    .line 96
    .line 97
    const-string v0, "MapFleOS18.json"

    .line 98
    .line 99
    const-string v1, "\u661f\u613f\u8f66\u673a\u6620\u5c04"

    .line 100
    .line 101
    invoke-virtual {p1, v1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 102
    .line 103
    .line 104
    const p1, 0x7f0b04f1

    .line 105
    .line 106
    .line 107
    invoke-virtual {p0, p1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    .line 108
    .line 109
    .line 110
    move-result-object p1

    .line 111
    check-cast p1, Landroidx/recyclerview/widget/RecyclerView;

    .line 112
    .line 113
    iput-object p1, p0, Lha/y3;->k:Landroidx/recyclerview/widget/RecyclerView;

    .line 114
    .line 115
    new-instance v0, Landroidx/recyclerview/widget/LinearLayoutManager;

    .line 116
    .line 117
    const/4 v1, 0x0

    .line 118
    const/4 v2, 0x1

    .line 119
    invoke-direct {v0, v2, v1}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(IZ)V

    .line 120
    .line 121
    .line 122
    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 123
    .line 124
    .line 125
    new-instance p1, Lx9/v0;

    .line 126
    .line 127
    invoke-direct {p1}, Lx9/v0;-><init>()V

    .line 128
    .line 129
    .line 130
    iput-object p1, p0, Lha/y3;->l:Lx9/v0;

    .line 131
    .line 132
    iget-object v0, p0, Lha/y3;->k:Landroidx/recyclerview/widget/RecyclerView;

    .line 133
    .line 134
    invoke-virtual {v0, p1}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/m1;)V

    .line 135
    .line 136
    .line 137
    iget-object p1, p0, Lha/y3;->l:Lx9/v0;

    .line 138
    .line 139
    new-instance v0, Lha/w3;

    .line 140
    .line 141
    invoke-direct {v0, p0, v1}, Lha/w3;-><init>(Lha/y3;I)V

    .line 142
    .line 143
    .line 144
    iput-object v0, p1, Lc6/g;->e:Lc6/e;

    .line 145
    .line 146
    const p1, 0x7f0b0334

    .line 147
    .line 148
    .line 149
    invoke-virtual {p0, p1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    .line 150
    .line 151
    .line 152
    move-result-object p1

    .line 153
    check-cast p1, Landroid/widget/TextView;

    .line 154
    .line 155
    iput-object p1, p0, Lha/y3;->j:Landroid/widget/TextView;

    .line 156
    .line 157
    iget-object v0, p0, Lha/y3;->g:Ljava/lang/String;

    .line 158
    .line 159
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    .line 160
    .line 161
    .line 162
    move-result v0

    .line 163
    if-eqz v0, :cond_0

    .line 164
    .line 165
    const-string v0, "\u786e\u5b9a\u5bfc\u51fa"

    .line 166
    .line 167
    goto :goto_0

    .line 168
    :cond_0
    const-string v0, "\u786e\u5b9a\u5bfc\u5165"

    .line 169
    .line 170
    :goto_0
    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 171
    .line 172
    .line 173
    iget-object p1, p0, Lha/y3;->j:Landroid/widget/TextView;

    .line 174
    .line 175
    new-instance v0, Lcom/google/android/material/datepicker/l;

    .line 176
    .line 177
    const/16 v1, 0xa

    .line 178
    .line 179
    invoke-direct {v0, p0, v1}, Lcom/google/android/material/datepicker/l;-><init>(Landroid/view/View$OnCreateContextMenuListener;I)V

    .line 180
    .line 181
    .line 182
    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 183
    .line 184
    .line 185
    new-instance p1, Lha/w3;

    .line 186
    .line 187
    const/4 v0, 0x1

    .line 188
    invoke-direct {p1, p0, v0}, Lha/w3;-><init>(Lha/y3;I)V

    .line 189
    .line 190
    .line 191
    new-instance v0, Lmc/c;

    .line 192
    .line 193
    const/4 v1, 0x0

    .line 194
    invoke-direct {v0, v1, p1}, Lmc/c;-><init>(ILjava/lang/Object;)V

    .line 195
    .line 196
    .line 197
    sget-object p1, Lrc/f;->b:Lec/j;

    .line 198
    .line 199
    invoke-virtual {v0, p1}, Lec/b;->d(Lec/j;)Lmc/p;

    .line 200
    .line 201
    .line 202
    move-result-object p1

    .line 203
    invoke-static {}, Lfc/b;->a()Lfc/e;

    .line 204
    .line 205
    .line 206
    move-result-object v0

    .line 207
    invoke-virtual {p1, v0}, Lec/b;->a(Lfc/e;)Lmc/g;

    .line 208
    .line 209
    .line 210
    move-result-object p1

    .line 211
    new-instance v0, Lha/x3;

    .line 212
    .line 213
    const/4 v1, 0x1

    .line 214
    invoke-direct {v0, p0, v1}, Lha/x3;-><init>(Lha/y3;I)V

    .line 215
    .line 216
    .line 217
    invoke-virtual {p1, v0}, Lec/b;->b(Lec/e;)V

    .line 218
    .line 219
    .line 220
    return-void
.end method
