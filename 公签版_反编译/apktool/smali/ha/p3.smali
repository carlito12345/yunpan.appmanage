.class public final synthetic Lha/p3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Lha/r3;


# direct methods
.method public synthetic constructor <init>(Lha/r3;I)V
    .locals 0

    .line 1
    iput p2, p0, Lha/p3;->a:I

    iput-object p1, p0, Lha/p3;->b:Lha/r3;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 13

    .line 1
    iget p1, p0, Lha/p3;->a:I

    .line 2
    .line 3
    packed-switch p1, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    iget-object p1, p0, Lha/p3;->b:Lha/r3;

    .line 7
    .line 8
    invoke-static {p1}, Lha/r3;->a(Lha/r3;)V

    .line 9
    .line 10
    .line 11
    return-void

    .line 12
    :pswitch_0
    iget-object p1, p0, Lha/p3;->b:Lha/r3;

    .line 13
    .line 14
    iget-object v0, p1, Lha/r3;->x:Lx9/d0;

    .line 15
    .line 16
    invoke-virtual {v0}, Lc6/g;->b()I

    .line 17
    .line 18
    .line 19
    move-result v0

    .line 20
    if-nez v0, :cond_0

    .line 21
    .line 22
    const-string p1, "\u8bf7\u9009\u62e9\u6587\u4ef6"

    .line 23
    .line 24
    invoke-static {p1}, Lcom/yunpan/appmanage/util/a0;->u(Ljava/lang/CharSequence;)V

    .line 25
    .line 26
    .line 27
    goto/16 :goto_1

    .line 28
    .line 29
    :cond_0
    iget-object v0, p1, Lha/r3;->x:Lx9/d0;

    .line 30
    .line 31
    invoke-virtual {v0}, Lc6/g;->b()I

    .line 32
    .line 33
    .line 34
    move-result v0

    .line 35
    const/4 v1, 0x1

    .line 36
    if-ne v0, v1, :cond_1

    .line 37
    .line 38
    iget-object v0, p1, Lha/r3;->x:Lx9/d0;

    .line 39
    .line 40
    const/4 v1, 0x0

    .line 41
    invoke-virtual {v0, v1}, Lc6/g;->t(I)Ljava/lang/Object;

    .line 42
    .line 43
    .line 44
    move-result-object v0

    .line 45
    check-cast v0, Lx9/w3;

    .line 46
    .line 47
    iget-boolean v0, v0, Lx9/w3;->c:Z

    .line 48
    .line 49
    if-nez v0, :cond_1

    .line 50
    .line 51
    const-string p1, "\u4ec5\u6709\u4e00\u4e2a\u6587\u4ef6"

    .line 52
    .line 53
    invoke-static {p1}, Lcom/yunpan/appmanage/util/a0;->u(Ljava/lang/CharSequence;)V

    .line 54
    .line 55
    .line 56
    goto/16 :goto_1

    .line 57
    .line 58
    :cond_1
    iget-object v0, p1, Lha/r3;->x:Lx9/d0;

    .line 59
    .line 60
    invoke-virtual {v0}, Lc6/g;->v()Ljava/util/List;

    .line 61
    .line 62
    .line 63
    move-result-object v0

    .line 64
    iget-object v1, p1, Lha/r3;->s:Lcom/yunpan/appmanage/bean/KeyMapSelectBean;

    .line 65
    .line 66
    iget v1, v1, Lcom/yunpan/appmanage/bean/KeyMapSelectBean;->gn_type:I

    .line 67
    .line 68
    iget-object v2, p1, Lha/r3;->i:Landroidx/appcompat/widget/AppCompatSeekBar;

    .line 69
    .line 70
    invoke-virtual {v2}, Landroid/widget/ProgressBar;->getProgress()I

    .line 71
    .line 72
    .line 73
    move-result v2

    .line 74
    iget-object v3, p1, Lha/r3;->p:Lcom/yunpan/appmanage/bean/KeyMapSelectBean;

    .line 75
    .line 76
    iget-object v4, p1, Lha/r3;->q:Lcom/yunpan/appmanage/bean/KeyMapSelectBean;

    .line 77
    .line 78
    iget-object v5, p1, Lha/r3;->r:Lcom/yunpan/appmanage/bean/KeyMapSelectBean;

    .line 79
    .line 80
    iget-object v6, p1, Lha/r3;->j:Landroidx/appcompat/widget/AppCompatSeekBar;

    .line 81
    .line 82
    invoke-virtual {v6}, Landroid/widget/ProgressBar;->getProgress()I

    .line 83
    .line 84
    .line 85
    move-result v6

    .line 86
    mul-int/lit8 v6, v6, 0x64

    .line 87
    .line 88
    iget-object v7, p1, Lha/r3;->g:Lha/h8;

    .line 89
    .line 90
    iget v8, v7, Lha/h8;->b:I

    .line 91
    .line 92
    iget v9, v7, Lha/h8;->c:I

    .line 93
    .line 94
    iget-object v10, v7, Lha/h8;->d:Ljava/lang/String;

    .line 95
    .line 96
    iget-object v7, v7, Lha/h8;->e:Lea/e;

    .line 97
    .line 98
    :try_start_0
    new-instance v11, Lz7/s;

    .line 99
    .line 100
    invoke-direct {v11}, Lz7/s;-><init>()V

    .line 101
    .line 102
    .line 103
    const-string v12, "keyType"

    .line 104
    .line 105
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 106
    .line 107
    .line 108
    move-result-object v8

    .line 109
    invoke-virtual {v11, v12, v8}, Lz7/s;->l(Ljava/lang/String;Ljava/lang/Number;)V

    .line 110
    .line 111
    .line 112
    const-string v8, "gnType"

    .line 113
    .line 114
    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 115
    .line 116
    .line 117
    move-result-object v9

    .line 118
    invoke-virtual {v11, v8, v9}, Lz7/s;->l(Ljava/lang/String;Ljava/lang/Number;)V

    .line 119
    .line 120
    .line 121
    const-string v8, "name"

    .line 122
    .line 123
    invoke-virtual {v11, v8, v10}, Lz7/s;->m(Ljava/lang/String;Ljava/lang/String;)V

    .line 124
    .line 125
    .line 126
    new-instance v8, Lz7/o;

    .line 127
    .line 128
    invoke-direct {v8}, Lz7/o;-><init>()V

    .line 129
    .line 130
    .line 131
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 132
    .line 133
    .line 134
    move-result-object v0

    .line 135
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 136
    .line 137
    .line 138
    move-result v9

    .line 139
    if-eqz v9, :cond_2

    .line 140
    .line 141
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 142
    .line 143
    .line 144
    move-result-object v9

    .line 145
    check-cast v9, Lx9/w3;

    .line 146
    .line 147
    iget-object v9, v9, Lx9/w3;->b:Ljava/lang/String;

    .line 148
    .line 149
    invoke-virtual {v8, v9}, Lz7/o;->j(Ljava/lang/String;)V

    .line 150
    .line 151
    .line 152
    goto :goto_0

    .line 153
    :cond_2
    const-string v0, "list"

    .line 154
    .line 155
    invoke-virtual {v11, v0, v8}, Lz7/s;->j(Ljava/lang/String;Lz7/p;)V

    .line 156
    .line 157
    .line 158
    const-string v0, "int1"

    .line 159
    .line 160
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 161
    .line 162
    .line 163
    move-result-object v2

    .line 164
    invoke-virtual {v11, v0, v2}, Lz7/s;->l(Ljava/lang/String;Ljava/lang/Number;)V

    .line 165
    .line 166
    .line 167
    const-string v0, "volumeType"

    .line 168
    .line 169
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 170
    .line 171
    .line 172
    move-result-object v1

    .line 173
    invoke-virtual {v11, v0, v1}, Lz7/s;->l(Ljava/lang/String;Ljava/lang/Number;)V

    .line 174
    .line 175
    .line 176
    const-string v0, "tdType"

    .line 177
    .line 178
    iget v1, v3, Lcom/yunpan/appmanage/bean/KeyMapSelectBean;->gn_type:I

    .line 179
    .line 180
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 181
    .line 182
    .line 183
    move-result-object v1

    .line 184
    invoke-virtual {v11, v0, v1}, Lz7/s;->l(Ljava/lang/String;Ljava/lang/Number;)V

    .line 185
    .line 186
    .line 187
    const-string v0, "focusType"

    .line 188
    .line 189
    iget v1, v4, Lcom/yunpan/appmanage/bean/KeyMapSelectBean;->gn_type:I

    .line 190
    .line 191
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 192
    .line 193
    .line 194
    move-result-object v1

    .line 195
    invoke-virtual {v11, v0, v1}, Lz7/s;->l(Ljava/lang/String;Ljava/lang/Number;)V

    .line 196
    .line 197
    .line 198
    const-string v0, "speakerId"

    .line 199
    .line 200
    iget v1, v5, Lcom/yunpan/appmanage/bean/KeyMapSelectBean;->gn_type:I

    .line 201
    .line 202
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 203
    .line 204
    .line 205
    move-result-object v1

    .line 206
    invoke-virtual {v11, v0, v1}, Lz7/s;->l(Ljava/lang/String;Ljava/lang/Number;)V

    .line 207
    .line 208
    .line 209
    const-string v0, "volumeGain"

    .line 210
    .line 211
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 212
    .line 213
    .line 214
    move-result-object v1

    .line 215
    invoke-virtual {v11, v0, v1}, Lz7/s;->l(Ljava/lang/String;Ljava/lang/Number;)V

    .line 216
    .line 217
    .line 218
    invoke-interface {v7, v11}, Lea/e;->k(Lz7/s;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 219
    .line 220
    .line 221
    :catch_0
    invoke-virtual {p1}, Lha/r3;->dismiss()V

    .line 222
    .line 223
    .line 224
    :goto_1
    return-void

    .line 225
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
