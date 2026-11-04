.class public final Lha/s5;
.super Lha/a4;
.source "SourceFile"


# instance fields
.field public final synthetic g:I

.field public h:Landroid/widget/TextView;

.field public i:Ljava/lang/Object;

.field public j:Ljava/lang/Object;

.field public k:Ljava/lang/Object;

.field public l:Landroid/widget/TextView;

.field public m:Landroid/widget/TextView;

.field public n:Landroid/widget/TextView;

.field public p:Landroid/view/View;

.field public q:Landroid/view/View;

.field public r:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Landroid/app/Activity;Landroid/content/Context;)V
    .locals 2

    const/4 v0, 0x0

    iput v0, p0, Lha/s5;->g:I

    const v0, 0x7f0e00d0

    const/4 v1, 0x0

    .line 1
    invoke-direct {p0, p1, p2, v0, v1}, Lha/a4;-><init>(Landroid/app/Activity;Landroid/content/Context;IZ)V

    return-void
.end method

.method public constructor <init>(Landroid/app/Activity;Landroid/content/Context;Lx9/n5;Lha/i6;)V
    .locals 1

    const/4 v0, 0x1

    iput v0, p0, Lha/s5;->g:I

    const v0, 0x7f0e00ab

    .line 5
    invoke-direct {p0, p1, p2, v0}, Lha/a4;-><init>(Landroid/app/Activity;Landroid/content/Context;I)V

    .line 6
    iput-object p4, p0, Lha/s5;->j:Ljava/lang/Object;

    .line 7
    iput-object p3, p0, Lha/s5;->i:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Landroid/app/Activity;Landroid/content/Context;Lx9/n5;Lha/oc;)V
    .locals 1

    const/4 v0, 0x2

    iput v0, p0, Lha/s5;->g:I

    const v0, 0x7f0e00f3

    .line 2
    invoke-direct {p0, p1, p2, v0}, Lha/a4;-><init>(Landroid/app/Activity;Landroid/content/Context;I)V

    .line 3
    iput-object p4, p0, Lha/s5;->k:Ljava/lang/Object;

    .line 4
    iput-object p3, p0, Lha/s5;->j:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public a(Lja/b;)V
    .locals 4

    .line 1
    iput-object p1, p0, Lha/s5;->r:Ljava/lang/Object;

    .line 2
    .line 3
    iget-object v0, p0, Lha/s5;->h:Landroid/widget/TextView;

    .line 4
    .line 5
    iget-object p1, p1, Lja/b;->c:Ljava/lang/String;

    .line 6
    .line 7
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 8
    .line 9
    .line 10
    iget-object p1, p0, Lha/s5;->j:Ljava/lang/Object;

    .line 11
    .line 12
    check-cast p1, Landroid/widget/TextView;

    .line 13
    .line 14
    new-instance v0, Ljava/lang/StringBuilder;

    .line 15
    .line 16
    const-string v1, "\u6765\u81ea\uff1a"

    .line 17
    .line 18
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 19
    .line 20
    .line 21
    iget-object v1, p0, Lha/s5;->r:Ljava/lang/Object;

    .line 22
    .line 23
    check-cast v1, Lja/b;

    .line 24
    .line 25
    iget-object v1, v1, Lja/b;->a:Ljava/lang/String;

    .line 26
    .line 27
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 28
    .line 29
    .line 30
    const-string v1, "  ("

    .line 31
    .line 32
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 33
    .line 34
    .line 35
    iget-object v1, p0, Lha/s5;->r:Ljava/lang/Object;

    .line 36
    .line 37
    check-cast v1, Lja/b;

    .line 38
    .line 39
    iget v1, v1, Lja/b;->f:I

    .line 40
    .line 41
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 42
    .line 43
    .line 44
    const-string v1, ")\u4e2a\u6587\u4ef6"

    .line 45
    .line 46
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 47
    .line 48
    .line 49
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 50
    .line 51
    .line 52
    move-result-object v0

    .line 53
    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 54
    .line 55
    .line 56
    iget-object p1, p0, Lha/s5;->k:Ljava/lang/Object;

    .line 57
    .line 58
    check-cast p1, Landroid/widget/TextView;

    .line 59
    .line 60
    new-instance v0, Ljava/lang/StringBuilder;

    .line 61
    .line 62
    const-string v1, "\u76ee\u7684\uff1a"

    .line 63
    .line 64
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 65
    .line 66
    .line 67
    iget-object v1, p0, Lha/s5;->r:Ljava/lang/Object;

    .line 68
    .line 69
    check-cast v1, Lja/b;

    .line 70
    .line 71
    iget-object v1, v1, Lja/b;->b:Ljava/lang/String;

    .line 72
    .line 73
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 74
    .line 75
    .line 76
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 77
    .line 78
    .line 79
    move-result-object v0

    .line 80
    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 81
    .line 82
    .line 83
    iget-object p1, p0, Lha/s5;->i:Ljava/lang/Object;

    .line 84
    .line 85
    check-cast p1, Landroid/widget/TextView;

    .line 86
    .line 87
    new-instance v0, Ljava/lang/StringBuilder;

    .line 88
    .line 89
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 90
    .line 91
    .line 92
    iget-object v1, p0, Lha/s5;->r:Ljava/lang/Object;

    .line 93
    .line 94
    check-cast v1, Lja/b;

    .line 95
    .line 96
    iget-object v1, v1, Lja/b;->e:Ljava/lang/String;

    .line 97
    .line 98
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 99
    .line 100
    .line 101
    const-string v1, "%"

    .line 102
    .line 103
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 104
    .line 105
    .line 106
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 107
    .line 108
    .line 109
    move-result-object v0

    .line 110
    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 111
    .line 112
    .line 113
    iget-object p1, p0, Lha/s5;->q:Landroid/view/View;

    .line 114
    .line 115
    check-cast p1, Lcom/yunpan/appmanage/view/MyProgressViewTest;

    .line 116
    .line 117
    iget-object v0, p0, Lha/s5;->r:Ljava/lang/Object;

    .line 118
    .line 119
    check-cast v0, Lja/b;

    .line 120
    .line 121
    iget-object v0, v0, Lja/b;->e:Ljava/lang/String;

    .line 122
    .line 123
    invoke-static {v0}, Ljava/lang/Float;->valueOf(Ljava/lang/String;)Ljava/lang/Float;

    .line 124
    .line 125
    .line 126
    move-result-object v0

    .line 127
    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    .line 128
    .line 129
    .line 130
    move-result v0

    .line 131
    invoke-virtual {p1, v0}, Lcom/yunpan/appmanage/view/MyProgressViewTest;->setCurrentCount(F)V

    .line 132
    .line 133
    .line 134
    iget-object p1, p0, Lha/s5;->l:Landroid/widget/TextView;

    .line 135
    .line 136
    new-instance v0, Ljava/lang/StringBuilder;

    .line 137
    .line 138
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 139
    .line 140
    .line 141
    iget-object v1, p0, Lha/s5;->r:Ljava/lang/Object;

    .line 142
    .line 143
    check-cast v1, Lja/b;

    .line 144
    .line 145
    iget-object v1, v1, Lja/b;->i:Ljava/util/concurrent/atomic/AtomicLong;

    .line 146
    .line 147
    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    .line 148
    .line 149
    .line 150
    move-result-wide v1

    .line 151
    long-to-double v1, v1

    .line 152
    invoke-static {v1, v2}, Lif/a;->D0(D)Ljava/lang/String;

    .line 153
    .line 154
    .line 155
    move-result-object v1

    .line 156
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 157
    .line 158
    .line 159
    const-string v1, "/"

    .line 160
    .line 161
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 162
    .line 163
    .line 164
    iget-object v2, p0, Lha/s5;->r:Ljava/lang/Object;

    .line 165
    .line 166
    check-cast v2, Lja/b;

    .line 167
    .line 168
    iget-object v2, v2, Lja/b;->h:Ljava/util/concurrent/atomic/AtomicLong;

    .line 169
    .line 170
    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    .line 171
    .line 172
    .line 173
    move-result-wide v2

    .line 174
    long-to-double v2, v2

    .line 175
    invoke-static {v2, v3}, Lif/a;->D0(D)Ljava/lang/String;

    .line 176
    .line 177
    .line 178
    move-result-object v2

    .line 179
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 180
    .line 181
    .line 182
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 183
    .line 184
    .line 185
    move-result-object v0

    .line 186
    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 187
    .line 188
    .line 189
    iget-object p1, p0, Lha/s5;->n:Landroid/widget/TextView;

    .line 190
    .line 191
    new-instance v0, Ljava/lang/StringBuilder;

    .line 192
    .line 193
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 194
    .line 195
    .line 196
    iget-object v2, p0, Lha/s5;->r:Ljava/lang/Object;

    .line 197
    .line 198
    check-cast v2, Lja/b;

    .line 199
    .line 200
    iget-object v2, v2, Lja/b;->g:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 201
    .line 202
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 203
    .line 204
    .line 205
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 206
    .line 207
    .line 208
    iget-object v1, p0, Lha/s5;->r:Ljava/lang/Object;

    .line 209
    .line 210
    check-cast v1, Lja/b;

    .line 211
    .line 212
    iget v1, v1, Lja/b;->f:I

    .line 213
    .line 214
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 215
    .line 216
    .line 217
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 218
    .line 219
    .line 220
    move-result-object v0

    .line 221
    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 222
    .line 223
    .line 224
    iget-object p1, p0, Lha/s5;->p:Landroid/view/View;

    .line 225
    .line 226
    check-cast p1, Landroid/widget/TextView;

    .line 227
    .line 228
    iget-object v0, p0, Lha/s5;->r:Ljava/lang/Object;

    .line 229
    .line 230
    check-cast v0, Lja/b;

    .line 231
    .line 232
    iget-object v0, v0, Lja/b;->k:Ljava/lang/String;

    .line 233
    .line 234
    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 235
    .line 236
    .line 237
    iget-object p1, p0, Lha/s5;->m:Landroid/widget/TextView;

    .line 238
    .line 239
    iget-object v0, p0, Lha/s5;->r:Ljava/lang/Object;

    .line 240
    .line 241
    check-cast v0, Lja/b;

    .line 242
    .line 243
    iget-object v0, v0, Lja/b;->d:Ljava/lang/String;

    .line 244
    .line 245
    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 246
    .line 247
    .line 248
    return-void
.end method

.method public final onCreate(Landroid/os/Bundle;)V
    .locals 16

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    const-string v4, ""

    .line 4
    .line 5
    const/4 v5, 0x6

    .line 6
    const v6, 0x7f0b0390

    .line 7
    .line 8
    .line 9
    const v7, 0x7f0b0445

    .line 10
    .line 11
    .line 12
    const v8, 0x7f0b0453

    .line 13
    .line 14
    .line 15
    const v9, 0x7f0b0446

    .line 16
    .line 17
    .line 18
    const v10, 0x7f0b0437

    .line 19
    .line 20
    .line 21
    const/4 v11, 0x5

    .line 22
    const/4 v12, 0x3

    .line 23
    const/4 v13, 0x2

    .line 24
    const v14, 0x7f0b05ba

    .line 25
    .line 26
    .line 27
    const/4 v15, 0x4

    .line 28
    const/4 v1, 0x1

    .line 29
    const/4 v2, 0x0

    .line 30
    iget v3, v0, Lha/s5;->g:I

    .line 31
    .line 32
    packed-switch v3, :pswitch_data_0

    .line 33
    .line 34
    .line 35
    invoke-super/range {p0 .. p1}, Lha/a4;->onCreate(Landroid/os/Bundle;)V

    .line 36
    .line 37
    .line 38
    invoke-virtual {v0, v14}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    .line 39
    .line 40
    .line 41
    move-result-object v3

    .line 42
    check-cast v3, Landroid/widget/TextView;

    .line 43
    .line 44
    const-string v4, "SMB1\u3001SMB2\u3001SMB3"

    .line 45
    .line 46
    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 47
    .line 48
    .line 49
    invoke-virtual {v0, v10}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    .line 50
    .line 51
    .line 52
    move-result-object v3

    .line 53
    check-cast v3, Landroid/widget/EditText;

    .line 54
    .line 55
    iput-object v3, v0, Lha/s5;->l:Landroid/widget/TextView;

    .line 56
    .line 57
    invoke-virtual {v3}, Landroid/view/View;->requestFocus()Z

    .line 58
    .line 59
    .line 60
    invoke-virtual {v0, v9}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    .line 61
    .line 62
    .line 63
    move-result-object v3

    .line 64
    check-cast v3, Landroid/widget/EditText;

    .line 65
    .line 66
    iput-object v3, v0, Lha/s5;->m:Landroid/widget/TextView;

    .line 67
    .line 68
    invoke-virtual {v0, v8}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    .line 69
    .line 70
    .line 71
    move-result-object v3

    .line 72
    check-cast v3, Landroid/widget/EditText;

    .line 73
    .line 74
    iput-object v3, v0, Lha/s5;->n:Landroid/widget/TextView;

    .line 75
    .line 76
    invoke-virtual {v0, v7}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    .line 77
    .line 78
    .line 79
    move-result-object v3

    .line 80
    check-cast v3, Landroid/widget/EditText;

    .line 81
    .line 82
    iput-object v3, v0, Lha/s5;->p:Landroid/view/View;

    .line 83
    .line 84
    const v3, 0x7f0b0432

    .line 85
    .line 86
    .line 87
    invoke-virtual {v0, v3}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    .line 88
    .line 89
    .line 90
    move-result-object v3

    .line 91
    check-cast v3, Landroid/widget/EditText;

    .line 92
    .line 93
    iput-object v3, v0, Lha/s5;->q:Landroid/view/View;

    .line 94
    .line 95
    const v3, 0x7f0b044a

    .line 96
    .line 97
    .line 98
    invoke-virtual {v0, v3}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    .line 99
    .line 100
    .line 101
    move-result-object v3

    .line 102
    check-cast v3, Landroid/widget/EditText;

    .line 103
    .line 104
    iput-object v3, v0, Lha/s5;->r:Ljava/lang/Object;

    .line 105
    .line 106
    invoke-virtual {v0, v6}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    .line 107
    .line 108
    .line 109
    move-result-object v3

    .line 110
    check-cast v3, Landroid/widget/TextView;

    .line 111
    .line 112
    iput-object v3, v0, Lha/s5;->i:Ljava/lang/Object;

    .line 113
    .line 114
    const v3, 0x7f0b03b3

    .line 115
    .line 116
    .line 117
    invoke-virtual {v0, v3}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    .line 118
    .line 119
    .line 120
    move-result-object v3

    .line 121
    check-cast v3, Landroid/widget/TextView;

    .line 122
    .line 123
    iput-object v3, v0, Lha/s5;->h:Landroid/widget/TextView;

    .line 124
    .line 125
    iget-object v3, v0, Lha/s5;->l:Landroid/widget/TextView;

    .line 126
    .line 127
    check-cast v3, Landroid/widget/EditText;

    .line 128
    .line 129
    iget-object v4, v0, Lha/s5;->j:Ljava/lang/Object;

    .line 130
    .line 131
    check-cast v4, Lx9/n5;

    .line 132
    .line 133
    iget-object v6, v4, Lx9/n5;->c:Ljava/lang/String;

    .line 134
    .line 135
    invoke-virtual {v3, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 136
    .line 137
    .line 138
    iget-object v3, v0, Lha/s5;->m:Landroid/widget/TextView;

    .line 139
    .line 140
    check-cast v3, Landroid/widget/EditText;

    .line 141
    .line 142
    iget v6, v4, Lx9/n5;->d:I

    .line 143
    .line 144
    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 145
    .line 146
    .line 147
    move-result-object v6

    .line 148
    invoke-virtual {v3, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 149
    .line 150
    .line 151
    iget-object v3, v0, Lha/s5;->n:Landroid/widget/TextView;

    .line 152
    .line 153
    check-cast v3, Landroid/widget/EditText;

    .line 154
    .line 155
    iget-object v6, v4, Lx9/n5;->e:Ljava/lang/String;

    .line 156
    .line 157
    invoke-virtual {v3, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 158
    .line 159
    .line 160
    iget-object v3, v0, Lha/s5;->p:Landroid/view/View;

    .line 161
    .line 162
    check-cast v3, Landroid/widget/EditText;

    .line 163
    .line 164
    iget-object v6, v4, Lx9/n5;->f:Ljava/lang/String;

    .line 165
    .line 166
    invoke-virtual {v3, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 167
    .line 168
    .line 169
    iget-object v3, v0, Lha/s5;->q:Landroid/view/View;

    .line 170
    .line 171
    check-cast v3, Landroid/widget/EditText;

    .line 172
    .line 173
    iget-object v6, v4, Lx9/n5;->v:Ljava/lang/String;

    .line 174
    .line 175
    invoke-virtual {v3, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 176
    .line 177
    .line 178
    iget-object v3, v0, Lha/s5;->r:Ljava/lang/Object;

    .line 179
    .line 180
    check-cast v3, Landroid/widget/EditText;

    .line 181
    .line 182
    iget-object v4, v4, Lx9/n5;->w:Ljava/lang/String;

    .line 183
    .line 184
    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 185
    .line 186
    .line 187
    iget-object v3, v0, Lha/s5;->h:Landroid/widget/TextView;

    .line 188
    .line 189
    new-instance v4, Lha/mc;

    .line 190
    .line 191
    invoke-direct {v4, v0, v2}, Lha/mc;-><init>(Lha/s5;I)V

    .line 192
    .line 193
    .line 194
    invoke-virtual {v3, v4}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 195
    .line 196
    .line 197
    iget-object v3, v0, Lha/s5;->i:Ljava/lang/Object;

    .line 198
    .line 199
    check-cast v3, Landroid/widget/TextView;

    .line 200
    .line 201
    new-instance v4, Lha/mc;

    .line 202
    .line 203
    invoke-direct {v4, v0, v1}, Lha/mc;-><init>(Lha/s5;I)V

    .line 204
    .line 205
    .line 206
    invoke-virtual {v3, v4}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 207
    .line 208
    .line 209
    iget-object v3, v0, Lha/s5;->i:Ljava/lang/Object;

    .line 210
    .line 211
    check-cast v3, Landroid/widget/TextView;

    .line 212
    .line 213
    new-instance v4, Lha/nc;

    .line 214
    .line 215
    invoke-direct {v4, v0, v2}, Lha/nc;-><init>(Lha/s5;I)V

    .line 216
    .line 217
    .line 218
    invoke-virtual {v3, v4}, Landroid/view/View;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    .line 219
    .line 220
    .line 221
    iget-object v2, v0, Lha/s5;->l:Landroid/widget/TextView;

    .line 222
    .line 223
    check-cast v2, Landroid/widget/EditText;

    .line 224
    .line 225
    new-instance v3, Lha/nc;

    .line 226
    .line 227
    invoke-direct {v3, v0, v1}, Lha/nc;-><init>(Lha/s5;I)V

    .line 228
    .line 229
    .line 230
    invoke-virtual {v2, v3}, Landroid/view/View;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    .line 231
    .line 232
    .line 233
    iget-object v1, v0, Lha/s5;->m:Landroid/widget/TextView;

    .line 234
    .line 235
    check-cast v1, Landroid/widget/EditText;

    .line 236
    .line 237
    new-instance v2, Lha/nc;

    .line 238
    .line 239
    invoke-direct {v2, v0, v13}, Lha/nc;-><init>(Lha/s5;I)V

    .line 240
    .line 241
    .line 242
    invoke-virtual {v1, v2}, Landroid/view/View;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    .line 243
    .line 244
    .line 245
    iget-object v1, v0, Lha/s5;->n:Landroid/widget/TextView;

    .line 246
    .line 247
    check-cast v1, Landroid/widget/EditText;

    .line 248
    .line 249
    new-instance v2, Lha/nc;

    .line 250
    .line 251
    invoke-direct {v2, v0, v12}, Lha/nc;-><init>(Lha/s5;I)V

    .line 252
    .line 253
    .line 254
    invoke-virtual {v1, v2}, Landroid/view/View;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    .line 255
    .line 256
    .line 257
    iget-object v1, v0, Lha/s5;->p:Landroid/view/View;

    .line 258
    .line 259
    check-cast v1, Landroid/widget/EditText;

    .line 260
    .line 261
    new-instance v2, Lha/nc;

    .line 262
    .line 263
    invoke-direct {v2, v0, v15}, Lha/nc;-><init>(Lha/s5;I)V

    .line 264
    .line 265
    .line 266
    invoke-virtual {v1, v2}, Landroid/view/View;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    .line 267
    .line 268
    .line 269
    iget-object v1, v0, Lha/s5;->q:Landroid/view/View;

    .line 270
    .line 271
    check-cast v1, Landroid/widget/EditText;

    .line 272
    .line 273
    new-instance v2, Lha/nc;

    .line 274
    .line 275
    invoke-direct {v2, v0, v11}, Lha/nc;-><init>(Lha/s5;I)V

    .line 276
    .line 277
    .line 278
    invoke-virtual {v1, v2}, Landroid/view/View;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    .line 279
    .line 280
    .line 281
    iget-object v1, v0, Lha/s5;->r:Ljava/lang/Object;

    .line 282
    .line 283
    check-cast v1, Landroid/widget/EditText;

    .line 284
    .line 285
    new-instance v2, Lha/nc;

    .line 286
    .line 287
    invoke-direct {v2, v0, v5}, Lha/nc;-><init>(Lha/s5;I)V

    .line 288
    .line 289
    .line 290
    invoke-virtual {v1, v2}, Landroid/view/View;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    .line 291
    .line 292
    .line 293
    return-void

    .line 294
    :pswitch_0
    invoke-super/range {p0 .. p1}, Lha/a4;->onCreate(Landroid/os/Bundle;)V

    .line 295
    .line 296
    .line 297
    invoke-virtual {v0, v14}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    .line 298
    .line 299
    .line 300
    move-result-object v3

    .line 301
    check-cast v3, Landroid/widget/TextView;

    .line 302
    .line 303
    iget-object v14, v0, Lha/s5;->i:Ljava/lang/Object;

    .line 304
    .line 305
    check-cast v14, Lx9/n5;

    .line 306
    .line 307
    iget v5, v14, Lx9/n5;->a:I

    .line 308
    .line 309
    if-ne v5, v15, :cond_0

    .line 310
    .line 311
    const-string v5, "FTP"

    .line 312
    .line 313
    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 314
    .line 315
    .line 316
    goto :goto_0

    .line 317
    :cond_0
    if-ne v5, v11, :cond_1

    .line 318
    .line 319
    const-string v5, "FTPS"

    .line 320
    .line 321
    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 322
    .line 323
    .line 324
    :cond_1
    :goto_0
    invoke-virtual {v0, v10}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    .line 325
    .line 326
    .line 327
    move-result-object v3

    .line 328
    check-cast v3, Landroid/widget/EditText;

    .line 329
    .line 330
    iput-object v3, v0, Lha/s5;->k:Ljava/lang/Object;

    .line 331
    .line 332
    invoke-virtual {v3}, Landroid/view/View;->requestFocus()Z

    .line 333
    .line 334
    .line 335
    invoke-virtual {v0, v9}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    .line 336
    .line 337
    .line 338
    move-result-object v3

    .line 339
    check-cast v3, Landroid/widget/EditText;

    .line 340
    .line 341
    iput-object v3, v0, Lha/s5;->l:Landroid/widget/TextView;

    .line 342
    .line 343
    invoke-virtual {v0, v8}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    .line 344
    .line 345
    .line 346
    move-result-object v3

    .line 347
    check-cast v3, Landroid/widget/EditText;

    .line 348
    .line 349
    iput-object v3, v0, Lha/s5;->m:Landroid/widget/TextView;

    .line 350
    .line 351
    invoke-virtual {v0, v7}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    .line 352
    .line 353
    .line 354
    move-result-object v3

    .line 355
    check-cast v3, Landroid/widget/EditText;

    .line 356
    .line 357
    iput-object v3, v0, Lha/s5;->n:Landroid/widget/TextView;

    .line 358
    .line 359
    const v3, 0x7f0b0573

    .line 360
    .line 361
    .line 362
    invoke-virtual {v0, v3}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    .line 363
    .line 364
    .line 365
    move-result-object v3

    .line 366
    check-cast v3, Landroid/widget/Spinner;

    .line 367
    .line 368
    iput-object v3, v0, Lha/s5;->p:Landroid/view/View;

    .line 369
    .line 370
    const v3, 0x7f0b053e

    .line 371
    .line 372
    .line 373
    invoke-virtual {v0, v3}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    .line 374
    .line 375
    .line 376
    move-result-object v3

    .line 377
    check-cast v3, Landroid/widget/RadioGroup;

    .line 378
    .line 379
    iput-object v3, v0, Lha/s5;->q:Landroid/view/View;

    .line 380
    .line 381
    const v3, 0x7f0b053f

    .line 382
    .line 383
    .line 384
    invoke-virtual {v0, v3}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    .line 385
    .line 386
    .line 387
    move-result-object v3

    .line 388
    check-cast v3, Landroid/widget/RadioGroup;

    .line 389
    .line 390
    iput-object v3, v0, Lha/s5;->r:Ljava/lang/Object;

    .line 391
    .line 392
    invoke-virtual {v0, v6}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    .line 393
    .line 394
    .line 395
    move-result-object v3

    .line 396
    check-cast v3, Landroid/widget/TextView;

    .line 397
    .line 398
    iput-object v3, v0, Lha/s5;->h:Landroid/widget/TextView;

    .line 399
    .line 400
    iget-object v3, v0, Lha/s5;->k:Ljava/lang/Object;

    .line 401
    .line 402
    check-cast v3, Landroid/widget/EditText;

    .line 403
    .line 404
    iget-object v5, v14, Lx9/n5;->c:Ljava/lang/String;

    .line 405
    .line 406
    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 407
    .line 408
    .line 409
    iget-object v3, v0, Lha/s5;->l:Landroid/widget/TextView;

    .line 410
    .line 411
    check-cast v3, Landroid/widget/EditText;

    .line 412
    .line 413
    new-instance v5, Ljava/lang/StringBuilder;

    .line 414
    .line 415
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 416
    .line 417
    .line 418
    iget v6, v14, Lx9/n5;->d:I

    .line 419
    .line 420
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 421
    .line 422
    .line 423
    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 424
    .line 425
    .line 426
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 427
    .line 428
    .line 429
    move-result-object v4

    .line 430
    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 431
    .line 432
    .line 433
    iget-object v3, v0, Lha/s5;->m:Landroid/widget/TextView;

    .line 434
    .line 435
    check-cast v3, Landroid/widget/EditText;

    .line 436
    .line 437
    iget-object v4, v14, Lx9/n5;->e:Ljava/lang/String;

    .line 438
    .line 439
    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 440
    .line 441
    .line 442
    iget-object v3, v0, Lha/s5;->n:Landroid/widget/TextView;

    .line 443
    .line 444
    check-cast v3, Landroid/widget/EditText;

    .line 445
    .line 446
    iget-object v4, v14, Lx9/n5;->f:Ljava/lang/String;

    .line 447
    .line 448
    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 449
    .line 450
    .line 451
    iget-boolean v3, v14, Lx9/n5;->z:Z

    .line 452
    .line 453
    if-eqz v3, :cond_2

    .line 454
    .line 455
    iget-object v3, v0, Lha/s5;->q:Landroid/view/View;

    .line 456
    .line 457
    check-cast v3, Landroid/widget/RadioGroup;

    .line 458
    .line 459
    const v4, 0x7f0b0543

    .line 460
    .line 461
    .line 462
    invoke-virtual {v3, v4}, Landroid/widget/RadioGroup;->check(I)V

    .line 463
    .line 464
    .line 465
    goto :goto_1

    .line 466
    :cond_2
    iget-object v3, v0, Lha/s5;->q:Landroid/view/View;

    .line 467
    .line 468
    check-cast v3, Landroid/widget/RadioGroup;

    .line 469
    .line 470
    const v4, 0x7f0b0540

    .line 471
    .line 472
    .line 473
    invoke-virtual {v3, v4}, Landroid/widget/RadioGroup;->check(I)V

    .line 474
    .line 475
    .line 476
    :goto_1
    iget v3, v14, Lx9/n5;->a:I

    .line 477
    .line 478
    if-ne v3, v11, :cond_3

    .line 479
    .line 480
    iget-object v3, v0, Lha/s5;->r:Ljava/lang/Object;

    .line 481
    .line 482
    check-cast v3, Landroid/widget/RadioGroup;

    .line 483
    .line 484
    invoke-virtual {v3, v2}, Landroid/view/View;->setVisibility(I)V

    .line 485
    .line 486
    .line 487
    :cond_3
    iget-boolean v3, v14, Lx9/n5;->B:Z

    .line 488
    .line 489
    if-eqz v3, :cond_4

    .line 490
    .line 491
    iget-object v3, v0, Lha/s5;->r:Ljava/lang/Object;

    .line 492
    .line 493
    check-cast v3, Landroid/widget/RadioGroup;

    .line 494
    .line 495
    const v4, 0x7f0b0542

    .line 496
    .line 497
    .line 498
    invoke-virtual {v3, v4}, Landroid/widget/RadioGroup;->check(I)V

    .line 499
    .line 500
    .line 501
    goto :goto_2

    .line 502
    :cond_4
    iget-object v3, v0, Lha/s5;->r:Ljava/lang/Object;

    .line 503
    .line 504
    check-cast v3, Landroid/widget/RadioGroup;

    .line 505
    .line 506
    const v4, 0x7f0b0541

    .line 507
    .line 508
    .line 509
    invoke-virtual {v3, v4}, Landroid/widget/RadioGroup;->check(I)V

    .line 510
    .line 511
    .line 512
    :goto_2
    iget-object v3, v0, Lha/s5;->q:Landroid/view/View;

    .line 513
    .line 514
    check-cast v3, Landroid/widget/RadioGroup;

    .line 515
    .line 516
    new-instance v4, Lha/f6;

    .line 517
    .line 518
    invoke-direct {v4, v0, v2}, Lha/f6;-><init>(Lha/s5;I)V

    .line 519
    .line 520
    .line 521
    invoke-virtual {v3, v4}, Landroid/widget/RadioGroup;->setOnCheckedChangeListener(Landroid/widget/RadioGroup$OnCheckedChangeListener;)V

    .line 522
    .line 523
    .line 524
    iget-object v3, v0, Lha/s5;->r:Ljava/lang/Object;

    .line 525
    .line 526
    check-cast v3, Landroid/widget/RadioGroup;

    .line 527
    .line 528
    new-instance v4, Lha/f6;

    .line 529
    .line 530
    invoke-direct {v4, v0, v1}, Lha/f6;-><init>(Lha/s5;I)V

    .line 531
    .line 532
    .line 533
    invoke-virtual {v3, v4}, Landroid/widget/RadioGroup;->setOnCheckedChangeListener(Landroid/widget/RadioGroup$OnCheckedChangeListener;)V

    .line 534
    .line 535
    .line 536
    const/16 v3, 0x2b

    .line 537
    .line 538
    new-array v4, v3, [Ljava/lang/String;

    .line 539
    .line 540
    const-string v3, "\u81ea\u52a8"

    .line 541
    .line 542
    aput-object v3, v4, v2

    .line 543
    .line 544
    const-string v3, "UTF-8"

    .line 545
    .line 546
    aput-object v3, v4, v1

    .line 547
    .line 548
    const-string v3, "UTF-8-BOM"

    .line 549
    .line 550
    aput-object v3, v4, v13

    .line 551
    .line 552
    const-string v3, "GBK"

    .line 553
    .line 554
    aput-object v3, v4, v12

    .line 555
    .line 556
    const-string v3, "GB2312"

    .line 557
    .line 558
    aput-object v3, v4, v15

    .line 559
    .line 560
    const-string v3, "GB18030"

    .line 561
    .line 562
    aput-object v3, v4, v11

    .line 563
    .line 564
    const-string v3, "BIG5"

    .line 565
    .line 566
    const/4 v5, 0x6

    .line 567
    aput-object v3, v4, v5

    .line 568
    .line 569
    const-string v3, "BIG5-HKSCS"

    .line 570
    .line 571
    const/4 v5, 0x7

    .line 572
    aput-object v3, v4, v5

    .line 573
    .line 574
    const-string v3, "UTF-16"

    .line 575
    .line 576
    const/16 v5, 0x8

    .line 577
    .line 578
    aput-object v3, v4, v5

    .line 579
    .line 580
    const-string v3, "UTF-16BE"

    .line 581
    .line 582
    const/16 v5, 0x9

    .line 583
    .line 584
    aput-object v3, v4, v5

    .line 585
    .line 586
    const-string v3, "UTF-16LE"

    .line 587
    .line 588
    const/16 v5, 0xa

    .line 589
    .line 590
    aput-object v3, v4, v5

    .line 591
    .line 592
    const-string v3, "EUC-KR"

    .line 593
    .line 594
    const/16 v5, 0xb

    .line 595
    .line 596
    aput-object v3, v4, v5

    .line 597
    .line 598
    const-string v3, "EUC-JP"

    .line 599
    .line 600
    const/16 v5, 0xc

    .line 601
    .line 602
    aput-object v3, v4, v5

    .line 603
    .line 604
    const-string v3, "Shift_JIS"

    .line 605
    .line 606
    const/16 v5, 0xd

    .line 607
    .line 608
    aput-object v3, v4, v5

    .line 609
    .line 610
    const-string v3, "CESU-8"

    .line 611
    .line 612
    const/16 v5, 0xe

    .line 613
    .line 614
    aput-object v3, v4, v5

    .line 615
    .line 616
    const-string v3, "ISO-2022-JP"

    .line 617
    .line 618
    const/16 v5, 0xf

    .line 619
    .line 620
    aput-object v3, v4, v5

    .line 621
    .line 622
    const-string v3, "ISO-2022-KR"

    .line 623
    .line 624
    const/16 v5, 0x10

    .line 625
    .line 626
    aput-object v3, v4, v5

    .line 627
    .line 628
    const-string v3, "ISO-8859-1"

    .line 629
    .line 630
    const/16 v5, 0x11

    .line 631
    .line 632
    aput-object v3, v4, v5

    .line 633
    .line 634
    const-string v3, "ISO-8859-2"

    .line 635
    .line 636
    const/16 v5, 0x12

    .line 637
    .line 638
    aput-object v3, v4, v5

    .line 639
    .line 640
    const-string v3, "ISO-8859-3"

    .line 641
    .line 642
    const/16 v5, 0x13

    .line 643
    .line 644
    aput-object v3, v4, v5

    .line 645
    .line 646
    const-string v3, "ISO-8859-4"

    .line 647
    .line 648
    const/16 v5, 0x14

    .line 649
    .line 650
    aput-object v3, v4, v5

    .line 651
    .line 652
    const-string v3, "ISO-8859-5"

    .line 653
    .line 654
    const/16 v5, 0x15

    .line 655
    .line 656
    aput-object v3, v4, v5

    .line 657
    .line 658
    const-string v3, "ISO-8859-6"

    .line 659
    .line 660
    const/16 v5, 0x16

    .line 661
    .line 662
    aput-object v3, v4, v5

    .line 663
    .line 664
    const-string v3, "ISO-8859-7"

    .line 665
    .line 666
    const/16 v5, 0x17

    .line 667
    .line 668
    aput-object v3, v4, v5

    .line 669
    .line 670
    const-string v3, "ISO-8859-8"

    .line 671
    .line 672
    const/16 v5, 0x18

    .line 673
    .line 674
    aput-object v3, v4, v5

    .line 675
    .line 676
    const-string v3, "ISO-8859-9"

    .line 677
    .line 678
    const/16 v5, 0x19

    .line 679
    .line 680
    aput-object v3, v4, v5

    .line 681
    .line 682
    const-string v3, "ISO-8859-10"

    .line 683
    .line 684
    const/16 v5, 0x1a

    .line 685
    .line 686
    aput-object v3, v4, v5

    .line 687
    .line 688
    const-string v3, "ISO-8859-11"

    .line 689
    .line 690
    const/16 v5, 0x1b

    .line 691
    .line 692
    aput-object v3, v4, v5

    .line 693
    .line 694
    const-string v3, "ISO-8859-12"

    .line 695
    .line 696
    const/16 v5, 0x1c

    .line 697
    .line 698
    aput-object v3, v4, v5

    .line 699
    .line 700
    const-string v3, "ISO-8859-13"

    .line 701
    .line 702
    const/16 v5, 0x1d

    .line 703
    .line 704
    aput-object v3, v4, v5

    .line 705
    .line 706
    const-string v3, "ISO-8859-14"

    .line 707
    .line 708
    const/16 v5, 0x1e

    .line 709
    .line 710
    aput-object v3, v4, v5

    .line 711
    .line 712
    const-string v3, "ISO-8859-15"

    .line 713
    .line 714
    const/16 v5, 0x1f

    .line 715
    .line 716
    aput-object v3, v4, v5

    .line 717
    .line 718
    const-string v3, "KOI8-R"

    .line 719
    .line 720
    const/16 v5, 0x20

    .line 721
    .line 722
    aput-object v3, v4, v5

    .line 723
    .line 724
    const-string v3, "KOI8-U"

    .line 725
    .line 726
    const/16 v5, 0x21

    .line 727
    .line 728
    aput-object v3, v4, v5

    .line 729
    .line 730
    const-string v3, "Windows-1250"

    .line 731
    .line 732
    const/16 v5, 0x22

    .line 733
    .line 734
    aput-object v3, v4, v5

    .line 735
    .line 736
    const-string v3, "Windows-1251"

    .line 737
    .line 738
    const/16 v5, 0x23

    .line 739
    .line 740
    aput-object v3, v4, v5

    .line 741
    .line 742
    const-string v3, "Windows-1252"

    .line 743
    .line 744
    const/16 v5, 0x24

    .line 745
    .line 746
    aput-object v3, v4, v5

    .line 747
    .line 748
    const-string v3, "Windows-1253"

    .line 749
    .line 750
    const/16 v5, 0x25

    .line 751
    .line 752
    aput-object v3, v4, v5

    .line 753
    .line 754
    const-string v3, "Windows-1254"

    .line 755
    .line 756
    const/16 v5, 0x26

    .line 757
    .line 758
    aput-object v3, v4, v5

    .line 759
    .line 760
    const-string v3, "Windows-1255"

    .line 761
    .line 762
    const/16 v5, 0x27

    .line 763
    .line 764
    aput-object v3, v4, v5

    .line 765
    .line 766
    const-string v3, "Windows-1256"

    .line 767
    .line 768
    const/16 v5, 0x28

    .line 769
    .line 770
    aput-object v3, v4, v5

    .line 771
    .line 772
    const-string v3, "Windows-1257"

    .line 773
    .line 774
    const/16 v5, 0x29

    .line 775
    .line 776
    aput-object v3, v4, v5

    .line 777
    .line 778
    const-string v3, "Windows-1258"

    .line 779
    .line 780
    const/16 v5, 0x2a

    .line 781
    .line 782
    aput-object v3, v4, v5

    .line 783
    .line 784
    new-instance v3, Landroid/widget/ArrayAdapter;

    .line 785
    .line 786
    iget-object v5, v0, Lha/a4;->b:Landroid/content/Context;

    .line 787
    .line 788
    const v6, 0x1090008

    .line 789
    .line 790
    .line 791
    invoke-direct {v3, v5, v6, v4}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;I[Ljava/lang/Object;)V

    .line 792
    .line 793
    .line 794
    const v5, 0x1090009

    .line 795
    .line 796
    .line 797
    invoke-virtual {v3, v5}, Landroid/widget/ArrayAdapter;->setDropDownViewResource(I)V

    .line 798
    .line 799
    .line 800
    iget-object v5, v0, Lha/s5;->p:Landroid/view/View;

    .line 801
    .line 802
    check-cast v5, Landroid/widget/Spinner;

    .line 803
    .line 804
    invoke-virtual {v5, v3}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 805
    .line 806
    .line 807
    const/4 v3, 0x0

    .line 808
    const/16 v5, 0x2b

    .line 809
    .line 810
    :goto_3
    if-ge v3, v5, :cond_6

    .line 811
    .line 812
    aget-object v6, v4, v3

    .line 813
    .line 814
    iget-object v7, v14, Lx9/n5;->y:Ljava/lang/String;

    .line 815
    .line 816
    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 817
    .line 818
    .line 819
    move-result v6

    .line 820
    if-eqz v6, :cond_5

    .line 821
    .line 822
    iget-object v4, v0, Lha/s5;->p:Landroid/view/View;

    .line 823
    .line 824
    check-cast v4, Landroid/widget/Spinner;

    .line 825
    .line 826
    invoke-virtual {v4, v3}, Landroid/widget/AdapterView;->setSelection(I)V

    .line 827
    .line 828
    .line 829
    goto :goto_4

    .line 830
    :cond_5
    add-int/2addr v3, v1

    .line 831
    goto :goto_3

    .line 832
    :cond_6
    :goto_4
    iget-object v3, v0, Lha/s5;->p:Landroid/view/View;

    .line 833
    .line 834
    check-cast v3, Landroid/widget/Spinner;

    .line 835
    .line 836
    new-instance v4, Lha/h6;

    .line 837
    .line 838
    invoke-direct {v4}, Lha/h6;-><init>()V

    .line 839
    .line 840
    .line 841
    invoke-virtual {v3, v4}, Landroid/widget/AdapterView;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    .line 842
    .line 843
    .line 844
    iget-object v3, v0, Lha/s5;->h:Landroid/widget/TextView;

    .line 845
    .line 846
    new-instance v4, Lcom/google/android/material/datepicker/l;

    .line 847
    .line 848
    const/16 v5, 0x11

    .line 849
    .line 850
    invoke-direct {v4, v0, v5}, Lcom/google/android/material/datepicker/l;-><init>(Landroid/view/View$OnCreateContextMenuListener;I)V

    .line 851
    .line 852
    .line 853
    invoke-virtual {v3, v4}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 854
    .line 855
    .line 856
    iget-object v3, v0, Lha/s5;->h:Landroid/widget/TextView;

    .line 857
    .line 858
    new-instance v4, Lha/g6;

    .line 859
    .line 860
    invoke-direct {v4, v0, v2}, Lha/g6;-><init>(Lha/s5;I)V

    .line 861
    .line 862
    .line 863
    invoke-virtual {v3, v4}, Landroid/view/View;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    .line 864
    .line 865
    .line 866
    iget-object v2, v0, Lha/s5;->k:Ljava/lang/Object;

    .line 867
    .line 868
    check-cast v2, Landroid/widget/EditText;

    .line 869
    .line 870
    new-instance v3, Lha/g6;

    .line 871
    .line 872
    invoke-direct {v3, v0, v1}, Lha/g6;-><init>(Lha/s5;I)V

    .line 873
    .line 874
    .line 875
    invoke-virtual {v2, v3}, Landroid/view/View;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    .line 876
    .line 877
    .line 878
    iget-object v1, v0, Lha/s5;->l:Landroid/widget/TextView;

    .line 879
    .line 880
    check-cast v1, Landroid/widget/EditText;

    .line 881
    .line 882
    new-instance v2, Lha/g6;

    .line 883
    .line 884
    invoke-direct {v2, v0, v13}, Lha/g6;-><init>(Lha/s5;I)V

    .line 885
    .line 886
    .line 887
    invoke-virtual {v1, v2}, Landroid/view/View;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    .line 888
    .line 889
    .line 890
    iget-object v1, v0, Lha/s5;->m:Landroid/widget/TextView;

    .line 891
    .line 892
    check-cast v1, Landroid/widget/EditText;

    .line 893
    .line 894
    new-instance v2, Lha/g6;

    .line 895
    .line 896
    invoke-direct {v2, v0, v12}, Lha/g6;-><init>(Lha/s5;I)V

    .line 897
    .line 898
    .line 899
    invoke-virtual {v1, v2}, Landroid/view/View;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    .line 900
    .line 901
    .line 902
    iget-object v1, v0, Lha/s5;->n:Landroid/widget/TextView;

    .line 903
    .line 904
    check-cast v1, Landroid/widget/EditText;

    .line 905
    .line 906
    new-instance v2, Lha/g6;

    .line 907
    .line 908
    invoke-direct {v2, v0, v15}, Lha/g6;-><init>(Lha/s5;I)V

    .line 909
    .line 910
    .line 911
    invoke-virtual {v1, v2}, Landroid/view/View;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    .line 912
    .line 913
    .line 914
    return-void

    .line 915
    :pswitch_1
    invoke-super/range {p0 .. p1}, Lha/a4;->onCreate(Landroid/os/Bundle;)V

    .line 916
    .line 917
    .line 918
    invoke-virtual {v0, v14}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    .line 919
    .line 920
    .line 921
    move-result-object v1

    .line 922
    check-cast v1, Landroid/widget/TextView;

    .line 923
    .line 924
    iput-object v1, v0, Lha/s5;->h:Landroid/widget/TextView;

    .line 925
    .line 926
    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 927
    .line 928
    .line 929
    const v1, 0x7f0b032c

    .line 930
    .line 931
    .line 932
    invoke-virtual {v0, v1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    .line 933
    .line 934
    .line 935
    move-result-object v1

    .line 936
    check-cast v1, Landroid/widget/TextView;

    .line 937
    .line 938
    iput-object v1, v0, Lha/s5;->i:Ljava/lang/Object;

    .line 939
    .line 940
    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 941
    .line 942
    .line 943
    const v1, 0x7f0b057d

    .line 944
    .line 945
    .line 946
    invoke-virtual {v0, v1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    .line 947
    .line 948
    .line 949
    move-result-object v1

    .line 950
    check-cast v1, Landroid/widget/TextView;

    .line 951
    .line 952
    iput-object v1, v0, Lha/s5;->j:Ljava/lang/Object;

    .line 953
    .line 954
    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 955
    .line 956
    .line 957
    const v1, 0x7f0b057e

    .line 958
    .line 959
    .line 960
    invoke-virtual {v0, v1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    .line 961
    .line 962
    .line 963
    move-result-object v1

    .line 964
    check-cast v1, Landroid/widget/TextView;

    .line 965
    .line 966
    iput-object v1, v0, Lha/s5;->k:Ljava/lang/Object;

    .line 967
    .line 968
    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 969
    .line 970
    .line 971
    const v1, 0x7f0b0580

    .line 972
    .line 973
    .line 974
    invoke-virtual {v0, v1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    .line 975
    .line 976
    .line 977
    move-result-object v1

    .line 978
    check-cast v1, Landroid/widget/TextView;

    .line 979
    .line 980
    iput-object v1, v0, Lha/s5;->l:Landroid/widget/TextView;

    .line 981
    .line 982
    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 983
    .line 984
    .line 985
    const v1, 0x7f0b0581

    .line 986
    .line 987
    .line 988
    invoke-virtual {v0, v1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    .line 989
    .line 990
    .line 991
    move-result-object v1

    .line 992
    check-cast v1, Landroid/widget/TextView;

    .line 993
    .line 994
    iput-object v1, v0, Lha/s5;->m:Landroid/widget/TextView;

    .line 995
    .line 996
    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 997
    .line 998
    .line 999
    const v1, 0x7f0b0538

    .line 1000
    .line 1001
    .line 1002
    invoke-virtual {v0, v1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    .line 1003
    .line 1004
    .line 1005
    move-result-object v1

    .line 1006
    check-cast v1, Lcom/yunpan/appmanage/view/MyProgressViewTest;

    .line 1007
    .line 1008
    iput-object v1, v0, Lha/s5;->q:Landroid/view/View;

    .line 1009
    .line 1010
    const/high16 v2, 0x42c80000    # 100.0f

    .line 1011
    .line 1012
    invoke-virtual {v1, v2}, Lcom/yunpan/appmanage/view/MyProgressViewTest;->setMaxCount(F)V

    .line 1013
    .line 1014
    .line 1015
    const v1, 0x7f0b057f

    .line 1016
    .line 1017
    .line 1018
    invoke-virtual {v0, v1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    .line 1019
    .line 1020
    .line 1021
    move-result-object v1

    .line 1022
    check-cast v1, Landroid/widget/TextView;

    .line 1023
    .line 1024
    iput-object v1, v0, Lha/s5;->n:Landroid/widget/TextView;

    .line 1025
    .line 1026
    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1027
    .line 1028
    .line 1029
    const v1, 0x7f0b0582

    .line 1030
    .line 1031
    .line 1032
    invoke-virtual {v0, v1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    .line 1033
    .line 1034
    .line 1035
    move-result-object v1

    .line 1036
    check-cast v1, Landroid/widget/TextView;

    .line 1037
    .line 1038
    iput-object v1, v0, Lha/s5;->p:Landroid/view/View;

    .line 1039
    .line 1040
    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1041
    .line 1042
    .line 1043
    const v1, 0x7f0b035e

    .line 1044
    .line 1045
    .line 1046
    invoke-virtual {v0, v1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    .line 1047
    .line 1048
    .line 1049
    move-result-object v1

    .line 1050
    check-cast v1, Landroid/widget/TextView;

    .line 1051
    .line 1052
    new-instance v2, Lcom/google/android/material/datepicker/l;

    .line 1053
    .line 1054
    const/16 v3, 0xf

    .line 1055
    .line 1056
    invoke-direct {v2, v0, v3}, Lcom/google/android/material/datepicker/l;-><init>(Landroid/view/View$OnCreateContextMenuListener;I)V

    .line 1057
    .line 1058
    .line 1059
    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1060
    .line 1061
    .line 1062
    return-void

    .line 1063
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
