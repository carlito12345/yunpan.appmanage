.class public final Lha/f0;
.super Lha/a4;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final g:I

.field public final h:Ljava/lang/String;

.field public final i:Lha/e8;

.field public j:Landroid/widget/EditText;

.field public k:Landroid/widget/TextView;

.field public l:Landroid/widget/TextView;

.field public m:Lcom/owen/tvrecyclerview/widget/TvRecyclerView;

.field public n:Landroid/widget/TextView;

.field public p:Lcom/owen/tvrecyclerview/widget/TvRecyclerView;

.field public q:Lx9/t2;

.field public r:Lx9/t2;

.field public s:Lc1/a;

.field public t:Landroid/hardware/SensorManager;


# direct methods
.method public constructor <init>(Landroid/app/Activity;Landroid/content/Context;ILha/e8;)V
    .locals 1

    .line 1
    const v0, 0x7f0e007f

    .line 2
    .line 3
    .line 4
    invoke-direct {p0, p1, p2, v0}, Lha/a4;-><init>(Landroid/app/Activity;Landroid/content/Context;I)V

    .line 5
    .line 6
    .line 7
    const/4 p1, 0x0

    .line 8
    iput-object p1, p0, Lha/f0;->s:Lc1/a;

    .line 9
    .line 10
    iput-object p1, p0, Lha/f0;->t:Landroid/hardware/SensorManager;

    .line 11
    .line 12
    iput p3, p0, Lha/f0;->g:I

    .line 13
    .line 14
    iput-object p4, p0, Lha/f0;->i:Lha/e8;

    .line 15
    .line 16
    const/16 p1, 0x1b58

    .line 17
    .line 18
    if-ne p3, p1, :cond_0

    .line 19
    .line 20
    const-string p1, "\u5149\u7167\u4eae\u5ea6"

    .line 21
    .line 22
    iput-object p1, p0, Lha/f0;->h:Ljava/lang/String;

    .line 23
    .line 24
    goto :goto_0

    .line 25
    :cond_0
    const/16 p1, 0x1b59

    .line 26
    .line 27
    if-ne p3, p1, :cond_1

    .line 28
    .line 29
    const-string p1, "\u5c4f\u5e55\u4eae\u5ea6"

    .line 30
    .line 31
    iput-object p1, p0, Lha/f0;->h:Ljava/lang/String;

    .line 32
    .line 33
    goto :goto_0

    .line 34
    :cond_1
    const-string p1, ""

    .line 35
    .line 36
    iput-object p1, p0, Lha/f0;->h:Ljava/lang/String;

    .line 37
    .line 38
    :goto_0
    return-void
.end method


# virtual methods
.method public final dismiss()V
    .locals 2

    .line 1
    invoke-super {p0}, Landroid/app/Dialog;->dismiss()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lha/f0;->s:Lc1/a;

    .line 5
    .line 6
    if-eqz v0, :cond_0

    .line 7
    .line 8
    iget-object v0, p0, Lha/a4;->b:Landroid/content/Context;

    .line 9
    .line 10
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    iget-object v1, p0, Lha/f0;->s:Lc1/a;

    .line 15
    .line 16
    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 17
    .line 18
    .line 19
    :cond_0
    iget-object v0, p0, Lha/f0;->t:Landroid/hardware/SensorManager;

    .line 20
    .line 21
    if-eqz v0, :cond_1

    .line 22
    .line 23
    const/4 v1, 0x0

    .line 24
    invoke-virtual {v0, v1}, Landroid/hardware/SensorManager;->unregisterListener(Landroid/hardware/SensorEventListener;)V

    .line 25
    .line 26
    .line 27
    :cond_1
    return-void
.end method

.method public final onClick(Landroid/view/View;)V
    .locals 5

    .line 1
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const v1, 0x7f0b031c

    .line 6
    .line 7
    .line 8
    const/4 v2, 0x0

    .line 9
    if-eq v0, v1, :cond_6

    .line 10
    .line 11
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    .line 12
    .line 13
    .line 14
    move-result v0

    .line 15
    const v1, 0x7f0b031d

    .line 16
    .line 17
    .line 18
    if-ne v0, v1, :cond_0

    .line 19
    .line 20
    goto/16 :goto_3

    .line 21
    .line 22
    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    .line 23
    .line 24
    .line 25
    move-result p1

    .line 26
    const v0, 0x7f0b03f3

    .line 27
    .line 28
    .line 29
    if-ne p1, v0, :cond_7

    .line 30
    .line 31
    iget-object p1, p0, Lha/f0;->j:Landroid/widget/EditText;

    .line 32
    .line 33
    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    .line 34
    .line 35
    .line 36
    move-result-object p1

    .line 37
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 38
    .line 39
    .line 40
    move-result-object p1

    .line 41
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    .line 42
    .line 43
    .line 44
    move-result p1

    .line 45
    iget-object v0, p0, Lha/f0;->h:Ljava/lang/String;

    .line 46
    .line 47
    if-eqz p1, :cond_1

    .line 48
    .line 49
    new-instance p1, Ljava/lang/StringBuilder;

    .line 50
    .line 51
    const-string v1, "\u8bf7\u8bbe\u7f6e"

    .line 52
    .line 53
    invoke-direct {p1, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 54
    .line 55
    .line 56
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 57
    .line 58
    .line 59
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 60
    .line 61
    .line 62
    move-result-object p1

    .line 63
    invoke-static {p1}, Lcom/yunpan/appmanage/util/a0;->u(Ljava/lang/CharSequence;)V

    .line 64
    .line 65
    .line 66
    return-void

    .line 67
    :cond_1
    iget-object p1, p0, Lha/f0;->q:Lx9/t2;

    .line 68
    .line 69
    invoke-virtual {p1}, Lc6/g;->b()I

    .line 70
    .line 71
    .line 72
    move-result p1

    .line 73
    if-eqz p1, :cond_5

    .line 74
    .line 75
    iget-object p1, p0, Lha/f0;->r:Lx9/t2;

    .line 76
    .line 77
    invoke-virtual {p1}, Lc6/g;->b()I

    .line 78
    .line 79
    .line 80
    move-result p1

    .line 81
    if-nez p1, :cond_2

    .line 82
    .line 83
    goto/16 :goto_2

    .line 84
    .line 85
    :cond_2
    new-instance p1, Lz7/s;

    .line 86
    .line 87
    invoke-direct {p1}, Lz7/s;-><init>()V

    .line 88
    .line 89
    .line 90
    new-instance v1, Lz7/o;

    .line 91
    .line 92
    invoke-direct {v1}, Lz7/o;-><init>()V

    .line 93
    .line 94
    .line 95
    iget-object v3, p0, Lha/f0;->j:Landroid/widget/EditText;

    .line 96
    .line 97
    invoke-virtual {v3}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    .line 98
    .line 99
    .line 100
    move-result-object v3

    .line 101
    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 102
    .line 103
    .line 104
    move-result-object v3

    .line 105
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    .line 106
    .line 107
    .line 108
    move-result-object v3

    .line 109
    const-string v4, "int1"

    .line 110
    .line 111
    invoke-virtual {p1, v4, v3}, Lz7/s;->l(Ljava/lang/String;Ljava/lang/Number;)V

    .line 112
    .line 113
    .line 114
    const/4 v3, 0x0

    .line 115
    :goto_0
    iget-object v4, p0, Lha/f0;->q:Lx9/t2;

    .line 116
    .line 117
    invoke-virtual {v4}, Lc6/g;->b()I

    .line 118
    .line 119
    .line 120
    move-result v4

    .line 121
    if-ge v3, v4, :cond_3

    .line 122
    .line 123
    iget-object v4, p0, Lha/f0;->q:Lx9/t2;

    .line 124
    .line 125
    invoke-virtual {v4, v3}, Lc6/g;->t(I)Ljava/lang/Object;

    .line 126
    .line 127
    .line 128
    move-result-object v4

    .line 129
    check-cast v4, Lz7/p;

    .line 130
    .line 131
    invoke-virtual {v1, v4}, Lz7/o;->k(Lz7/p;)V

    .line 132
    .line 133
    .line 134
    add-int/lit8 v3, v3, 0x1

    .line 135
    .line 136
    goto :goto_0

    .line 137
    :cond_3
    const-string v3, "maps1"

    .line 138
    .line 139
    invoke-virtual {p1, v3, v1}, Lz7/s;->j(Ljava/lang/String;Lz7/p;)V

    .line 140
    .line 141
    .line 142
    new-instance v1, Lz7/o;

    .line 143
    .line 144
    invoke-direct {v1}, Lz7/o;-><init>()V

    .line 145
    .line 146
    .line 147
    :goto_1
    iget-object v3, p0, Lha/f0;->r:Lx9/t2;

    .line 148
    .line 149
    invoke-virtual {v3}, Lc6/g;->b()I

    .line 150
    .line 151
    .line 152
    move-result v3

    .line 153
    if-ge v2, v3, :cond_4

    .line 154
    .line 155
    iget-object v3, p0, Lha/f0;->r:Lx9/t2;

    .line 156
    .line 157
    invoke-virtual {v3, v2}, Lc6/g;->t(I)Ljava/lang/Object;

    .line 158
    .line 159
    .line 160
    move-result-object v3

    .line 161
    check-cast v3, Lz7/p;

    .line 162
    .line 163
    invoke-virtual {v1, v3}, Lz7/o;->k(Lz7/p;)V

    .line 164
    .line 165
    .line 166
    add-int/lit8 v2, v2, 0x1

    .line 167
    .line 168
    goto :goto_1

    .line 169
    :cond_4
    const-string v2, "maps2"

    .line 170
    .line 171
    invoke-virtual {p1, v2, v1}, Lz7/s;->j(Ljava/lang/String;Lz7/p;)V

    .line 172
    .line 173
    .line 174
    new-instance v1, Ljava/lang/StringBuilder;

    .line 175
    .line 176
    const-string v2, "\u5224\u65ad"

    .line 177
    .line 178
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 179
    .line 180
    .line 181
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 182
    .line 183
    .line 184
    const-string v0, "\uff08"

    .line 185
    .line 186
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 187
    .line 188
    .line 189
    iget-object v0, p0, Lha/f0;->j:Landroid/widget/EditText;

    .line 190
    .line 191
    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    .line 192
    .line 193
    .line 194
    move-result-object v0

    .line 195
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 196
    .line 197
    .line 198
    move-result-object v0

    .line 199
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 200
    .line 201
    .line 202
    const-string v0, "\uff09"

    .line 203
    .line 204
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 205
    .line 206
    .line 207
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 208
    .line 209
    .line 210
    move-result-object v0

    .line 211
    const-string v1, "name"

    .line 212
    .line 213
    invoke-virtual {p1, v1, v0}, Lz7/s;->m(Ljava/lang/String;Ljava/lang/String;)V

    .line 214
    .line 215
    .line 216
    iget-object v0, p0, Lha/f0;->i:Lha/e8;

    .line 217
    .line 218
    invoke-virtual {v0, p1}, Lha/e8;->k(Lz7/s;)V

    .line 219
    .line 220
    .line 221
    invoke-virtual {p0}, Lha/f0;->dismiss()V

    .line 222
    .line 223
    .line 224
    goto :goto_4

    .line 225
    :cond_5
    :goto_2
    const-string p1, "\u8bf7\u6dfb\u52a0\u64cd\u4f5c"

    .line 226
    .line 227
    invoke-static {p1}, Lcom/yunpan/appmanage/util/a0;->u(Ljava/lang/CharSequence;)V

    .line 228
    .line 229
    .line 230
    return-void

    .line 231
    :cond_6
    :goto_3
    new-instance v0, Ld2/w;

    .line 232
    .line 233
    const/4 v1, 0x7

    .line 234
    invoke-direct {v0, p0, v1, p1}, Ld2/w;-><init>(Ljava/lang/Object;ILjava/lang/Object;)V

    .line 235
    .line 236
    .line 237
    iget-object p1, p0, Lha/a4;->a:Landroid/app/Activity;

    .line 238
    .line 239
    iget-object v1, p0, Lha/a4;->b:Landroid/content/Context;

    .line 240
    .line 241
    const/16 v3, -0xa

    .line 242
    .line 243
    invoke-static {p1, v1, v3, v2, v0}, Lha/t8;->a(Landroid/app/Activity;Landroid/content/Context;IZLea/e;)V

    .line 244
    .line 245
    .line 246
    :cond_7
    :goto_4
    return-void
.end method

.method public final onCreate(Landroid/os/Bundle;)V
    .locals 5

    .line 1
    invoke-super {p0, p1}, Lha/a4;->onCreate(Landroid/os/Bundle;)V

    .line 2
    .line 3
    .line 4
    const p1, 0x7f0b0412

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
    iput-object p1, p0, Lha/f0;->l:Landroid/widget/TextView;

    .line 14
    .line 15
    const p1, 0x7f0b0428

    .line 16
    .line 17
    .line 18
    invoke-virtual {p0, p1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    .line 19
    .line 20
    .line 21
    move-result-object p1

    .line 22
    check-cast p1, Landroid/widget/EditText;

    .line 23
    .line 24
    iput-object p1, p0, Lha/f0;->j:Landroid/widget/EditText;

    .line 25
    .line 26
    const p1, 0x7f0b031c

    .line 27
    .line 28
    .line 29
    invoke-virtual {p0, p1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    .line 30
    .line 31
    .line 32
    move-result-object p1

    .line 33
    check-cast p1, Landroid/widget/TextView;

    .line 34
    .line 35
    iput-object p1, p0, Lha/f0;->k:Landroid/widget/TextView;

    .line 36
    .line 37
    const p1, 0x7f0b04f2

    .line 38
    .line 39
    .line 40
    invoke-virtual {p0, p1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    .line 41
    .line 42
    .line 43
    move-result-object p1

    .line 44
    check-cast p1, Lcom/owen/tvrecyclerview/widget/TvRecyclerView;

    .line 45
    .line 46
    iput-object p1, p0, Lha/f0;->m:Lcom/owen/tvrecyclerview/widget/TvRecyclerView;

    .line 47
    .line 48
    const p1, 0x7f0b031d

    .line 49
    .line 50
    .line 51
    invoke-virtual {p0, p1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    .line 52
    .line 53
    .line 54
    move-result-object p1

    .line 55
    check-cast p1, Landroid/widget/TextView;

    .line 56
    .line 57
    iput-object p1, p0, Lha/f0;->n:Landroid/widget/TextView;

    .line 58
    .line 59
    const p1, 0x7f0b04f3

    .line 60
    .line 61
    .line 62
    invoke-virtual {p0, p1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    .line 63
    .line 64
    .line 65
    move-result-object p1

    .line 66
    check-cast p1, Lcom/owen/tvrecyclerview/widget/TvRecyclerView;

    .line 67
    .line 68
    iput-object p1, p0, Lha/f0;->p:Lcom/owen/tvrecyclerview/widget/TvRecyclerView;

    .line 69
    .line 70
    const p1, 0x7f0b03f3

    .line 71
    .line 72
    .line 73
    invoke-virtual {p0, p1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    .line 74
    .line 75
    .line 76
    move-result-object p1

    .line 77
    check-cast p1, Landroid/widget/TextView;

    .line 78
    .line 79
    invoke-virtual {p1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 80
    .line 81
    .line 82
    iget-object p1, p0, Lha/f0;->k:Landroid/widget/TextView;

    .line 83
    .line 84
    invoke-virtual {p1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 85
    .line 86
    .line 87
    iget-object p1, p0, Lha/f0;->n:Landroid/widget/TextView;

    .line 88
    .line 89
    invoke-virtual {p1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 90
    .line 91
    .line 92
    iget-object p1, p0, Lha/f0;->j:Landroid/widget/EditText;

    .line 93
    .line 94
    new-instance v0, Lha/c0;

    .line 95
    .line 96
    const/4 v1, 0x0

    .line 97
    invoke-direct {v0, p0, v1}, Lha/c0;-><init>(Landroid/view/KeyEvent$Callback;I)V

    .line 98
    .line 99
    .line 100
    invoke-virtual {p1, v0}, Landroid/view/View;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    .line 101
    .line 102
    .line 103
    iget-object p1, p0, Lha/f0;->m:Lcom/owen/tvrecyclerview/widget/TvRecyclerView;

    .line 104
    .line 105
    new-instance v0, Lcom/owen/tvrecyclerview/widget/V7LinearLayoutManager;

    .line 106
    .line 107
    iget-object v1, p0, Lha/a4;->b:Landroid/content/Context;

    .line 108
    .line 109
    const/4 v2, 0x1

    .line 110
    const/4 v3, 0x0

    .line 111
    invoke-direct {v0, v1, v2, v3}, Lcom/owen/tvrecyclerview/widget/V7LinearLayoutManager;-><init>(Landroid/content/Context;IZ)V

    .line 112
    .line 113
    .line 114
    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 115
    .line 116
    .line 117
    new-instance p1, Lx9/t2;

    .line 118
    .line 119
    invoke-direct {p1}, Lx9/t2;-><init>()V

    .line 120
    .line 121
    .line 122
    iput-object p1, p0, Lha/f0;->q:Lx9/t2;

    .line 123
    .line 124
    iget-object v0, p0, Lha/f0;->m:Lcom/owen/tvrecyclerview/widget/TvRecyclerView;

    .line 125
    .line 126
    invoke-virtual {v0, p1}, Lcom/owen/tvrecyclerview/widget/TvRecyclerView;->setAdapter(Landroidx/recyclerview/widget/m1;)V

    .line 127
    .line 128
    .line 129
    iget-object p1, p0, Lha/f0;->q:Lx9/t2;

    .line 130
    .line 131
    new-instance v0, Lha/d0;

    .line 132
    .line 133
    const/4 v4, 0x0

    .line 134
    invoke-direct {v0, p0, v4}, Lha/d0;-><init>(Lha/f0;I)V

    .line 135
    .line 136
    .line 137
    iput-object v0, p1, Lc6/g;->e:Lc6/e;

    .line 138
    .line 139
    iget-object p1, p0, Lha/f0;->p:Lcom/owen/tvrecyclerview/widget/TvRecyclerView;

    .line 140
    .line 141
    new-instance v0, Lcom/owen/tvrecyclerview/widget/V7LinearLayoutManager;

    .line 142
    .line 143
    invoke-direct {v0, v1, v2, v3}, Lcom/owen/tvrecyclerview/widget/V7LinearLayoutManager;-><init>(Landroid/content/Context;IZ)V

    .line 144
    .line 145
    .line 146
    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 147
    .line 148
    .line 149
    new-instance p1, Lx9/t2;

    .line 150
    .line 151
    invoke-direct {p1}, Lx9/t2;-><init>()V

    .line 152
    .line 153
    .line 154
    iput-object p1, p0, Lha/f0;->r:Lx9/t2;

    .line 155
    .line 156
    iget-object v0, p0, Lha/f0;->p:Lcom/owen/tvrecyclerview/widget/TvRecyclerView;

    .line 157
    .line 158
    invoke-virtual {v0, p1}, Lcom/owen/tvrecyclerview/widget/TvRecyclerView;->setAdapter(Landroidx/recyclerview/widget/m1;)V

    .line 159
    .line 160
    .line 161
    iget-object p1, p0, Lha/f0;->r:Lx9/t2;

    .line 162
    .line 163
    new-instance v0, Lha/d0;

    .line 164
    .line 165
    const/4 v3, 0x1

    .line 166
    invoke-direct {v0, p0, v3}, Lha/d0;-><init>(Lha/f0;I)V

    .line 167
    .line 168
    .line 169
    iput-object v0, p1, Lc6/g;->e:Lc6/e;

    .line 170
    .line 171
    iget p1, p0, Lha/f0;->g:I

    .line 172
    .line 173
    const/16 v0, 0x1b58

    .line 174
    .line 175
    if-ne p1, v0, :cond_0

    .line 176
    .line 177
    new-instance p1, Lha/u;

    .line 178
    .line 179
    const/4 v0, 0x1

    .line 180
    invoke-direct {p1, v0, p0}, Lha/u;-><init>(ILjava/lang/Object;)V

    .line 181
    .line 182
    .line 183
    :try_start_0
    const-string v0, "sensor"

    .line 184
    .line 185
    invoke-virtual {v1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 186
    .line 187
    .line 188
    move-result-object v0

    .line 189
    check-cast v0, Landroid/hardware/SensorManager;

    .line 190
    .line 191
    iput-object v0, p0, Lha/f0;->t:Landroid/hardware/SensorManager;

    .line 192
    .line 193
    const/4 v1, 0x5

    .line 194
    invoke-virtual {v0, v1}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    .line 195
    .line 196
    .line 197
    move-result-object v0

    .line 198
    iget-object v1, p0, Lha/f0;->t:Landroid/hardware/SensorManager;

    .line 199
    .line 200
    const/4 v2, 0x3

    .line 201
    invoke-virtual {v1, p1, v0, v2}, Landroid/hardware/SensorManager;->registerListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;I)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 202
    .line 203
    .line 204
    goto :goto_0

    .line 205
    :catch_0
    const-string p1, "\u6b64\u8bbe\u5907\u65e0\u6cd5\u4f7f\u7528\u6b64\u529f\u80fd"

    .line 206
    .line 207
    invoke-static {p1}, Lcom/yunpan/appmanage/util/a0;->u(Ljava/lang/CharSequence;)V

    .line 208
    .line 209
    .line 210
    invoke-virtual {p0}, Lha/f0;->dismiss()V

    .line 211
    .line 212
    .line 213
    return-void

    .line 214
    :cond_0
    const/16 v0, 0x1b59

    .line 215
    .line 216
    if-ne p1, v0, :cond_1

    .line 217
    .line 218
    iget-object p1, p0, Lha/f0;->l:Landroid/widget/TextView;

    .line 219
    .line 220
    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 221
    .line 222
    .line 223
    move-result-object v0

    .line 224
    const-string v3, "screen_brightness"

    .line 225
    .line 226
    const/16 v4, 0xff

    .line 227
    .line 228
    invoke-static {v0, v3, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    .line 229
    .line 230
    .line 231
    move-result v0

    .line 232
    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 233
    .line 234
    .line 235
    move-result-object v0

    .line 236
    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 237
    .line 238
    .line 239
    new-instance p1, Lc1/a;

    .line 240
    .line 241
    new-instance v0, Landroid/os/Handler;

    .line 242
    .line 243
    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    .line 244
    .line 245
    .line 246
    const/4 v4, 0x2

    .line 247
    invoke-direct {p1, p0, v0, v4}, Lc1/a;-><init>(Ljava/lang/Object;Landroid/os/Handler;I)V

    .line 248
    .line 249
    .line 250
    iput-object p1, p0, Lha/f0;->s:Lc1/a;

    .line 251
    .line 252
    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 253
    .line 254
    .line 255
    move-result-object p1

    .line 256
    invoke-static {v3}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    .line 257
    .line 258
    .line 259
    move-result-object v0

    .line 260
    iget-object v1, p0, Lha/f0;->s:Lc1/a;

    .line 261
    .line 262
    invoke-virtual {p1, v0, v2, v1}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 263
    .line 264
    .line 265
    :cond_1
    :goto_0
    return-void
.end method
