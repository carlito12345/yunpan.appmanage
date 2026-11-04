.class public final synthetic Lha/s7;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Lha/t7;


# direct methods
.method public synthetic constructor <init>(Lha/t7;I)V
    .locals 0

    .line 1
    iput p2, p0, Lha/s7;->a:I

    iput-object p1, p0, Lha/s7;->b:Lha/t7;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 5

    .line 1
    iget p1, p0, Lha/s7;->a:I

    .line 2
    .line 3
    packed-switch p1, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    iget-object p1, p0, Lha/s7;->b:Lha/t7;

    .line 7
    .line 8
    iget v0, p1, Lha/t7;->j:I

    .line 9
    .line 10
    iget-object v1, p1, Lha/t7;->g:Ll5/y;

    .line 11
    .line 12
    iget-object v1, v1, Ll5/y;->b:Ljava/lang/Object;

    .line 13
    .line 14
    check-cast v1, Lcom/yunpan/appmanage/ui/ActivityBootStartTask;

    .line 15
    .line 16
    iget-object v2, v1, Lcom/yunpan/appmanage/ui/ActivityBootStartTask;->F:Lz7/o;

    .line 17
    .line 18
    invoke-virtual {v2, v0}, Lz7/o;->l(I)Lz7/p;

    .line 19
    .line 20
    .line 21
    move-result-object v2

    .line 22
    invoke-virtual {v2}, Lz7/p;->g()Lz7/s;

    .line 23
    .line 24
    .line 25
    move-result-object v2

    .line 26
    iget-object v3, v1, Lcom/yunpan/appmanage/ui/ActivityBootStartTask;->E:Lx9/i0;

    .line 27
    .line 28
    invoke-virtual {v3, v0}, Lc6/g;->t(I)Ljava/lang/Object;

    .line 29
    .line 30
    .line 31
    move-result-object v3

    .line 32
    check-cast v3, Lcom/yunpan/appmanage/bean/StringBoolBean;

    .line 33
    .line 34
    iget-boolean v3, v3, Lcom/yunpan/appmanage/bean/StringBoolBean;->isCheck:Z

    .line 35
    .line 36
    xor-int/lit8 v3, v3, 0x1

    .line 37
    .line 38
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 39
    .line 40
    .line 41
    move-result-object v3

    .line 42
    const-string v4, "isOpen"

    .line 43
    .line 44
    invoke-virtual {v2, v4, v3}, Lz7/s;->k(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 45
    .line 46
    .line 47
    iget-object v2, v1, Lcom/yunpan/appmanage/ui/ActivityBootStartTask;->E:Lx9/i0;

    .line 48
    .line 49
    invoke-virtual {v2, v0}, Lc6/g;->t(I)Ljava/lang/Object;

    .line 50
    .line 51
    .line 52
    move-result-object v2

    .line 53
    check-cast v2, Lcom/yunpan/appmanage/bean/StringBoolBean;

    .line 54
    .line 55
    iget-object v3, v1, Lcom/yunpan/appmanage/ui/ActivityBootStartTask;->E:Lx9/i0;

    .line 56
    .line 57
    invoke-virtual {v3, v0}, Lc6/g;->t(I)Ljava/lang/Object;

    .line 58
    .line 59
    .line 60
    move-result-object v3

    .line 61
    check-cast v3, Lcom/yunpan/appmanage/bean/StringBoolBean;

    .line 62
    .line 63
    iget-boolean v3, v3, Lcom/yunpan/appmanage/bean/StringBoolBean;->isCheck:Z

    .line 64
    .line 65
    xor-int/lit8 v3, v3, 0x1

    .line 66
    .line 67
    iput-boolean v3, v2, Lcom/yunpan/appmanage/bean/StringBoolBean;->isCheck:Z

    .line 68
    .line 69
    iget-object v2, v1, Lcom/yunpan/appmanage/ui/ActivityBootStartTask;->E:Lx9/i0;

    .line 70
    .line 71
    invoke-virtual {v2, v0}, Landroidx/recyclerview/widget/m1;->e(I)V

    .line 72
    .line 73
    .line 74
    iget-object v0, v1, Lda/g;->A:Lda/g;

    .line 75
    .line 76
    iget-object v1, v1, Lcom/yunpan/appmanage/ui/ActivityBootStartTask;->F:Lz7/o;

    .line 77
    .line 78
    invoke-static {v0, v1}, Lq4/a;->P(Lda/g;Lz7/o;)V

    .line 79
    .line 80
    .line 81
    invoke-virtual {p1}, Landroid/app/Dialog;->dismiss()V

    .line 82
    .line 83
    .line 84
    return-void

    .line 85
    :pswitch_0
    iget-object p1, p0, Lha/s7;->b:Lha/t7;

    .line 86
    .line 87
    iget v0, p1, Lha/t7;->j:I

    .line 88
    .line 89
    iget v1, p1, Lha/t7;->i:I

    .line 90
    .line 91
    add-int/lit8 v2, v1, -0x1

    .line 92
    .line 93
    if-eq v0, v2, :cond_1

    .line 94
    .line 95
    const/4 v3, 0x1

    .line 96
    if-ne v1, v3, :cond_0

    .line 97
    .line 98
    goto :goto_0

    .line 99
    :cond_0
    iget-object v1, p1, Lha/t7;->g:Ll5/y;

    .line 100
    .line 101
    iget-object v1, v1, Ll5/y;->b:Ljava/lang/Object;

    .line 102
    .line 103
    check-cast v1, Lcom/yunpan/appmanage/ui/ActivityBootStartTask;

    .line 104
    .line 105
    iget-object v3, v1, Lcom/yunpan/appmanage/ui/ActivityBootStartTask;->E:Lx9/i0;

    .line 106
    .line 107
    invoke-virtual {v3, v0, v2}, Lc6/g;->y(II)V

    .line 108
    .line 109
    .line 110
    invoke-static {v1, v0, v2}, Lcom/yunpan/appmanage/ui/ActivityBootStartTask;->x(Lcom/yunpan/appmanage/ui/ActivityBootStartTask;II)V

    .line 111
    .line 112
    .line 113
    iput v2, p1, Lha/t7;->j:I

    .line 114
    .line 115
    :cond_1
    :goto_0
    return-void

    .line 116
    :pswitch_1
    iget-object p1, p0, Lha/s7;->b:Lha/t7;

    .line 117
    .line 118
    iget v0, p1, Lha/t7;->j:I

    .line 119
    .line 120
    iget v1, p1, Lha/t7;->i:I

    .line 121
    .line 122
    add-int/lit8 v2, v1, -0x1

    .line 123
    .line 124
    if-eq v0, v2, :cond_3

    .line 125
    .line 126
    const/4 v2, 0x1

    .line 127
    if-ne v1, v2, :cond_2

    .line 128
    .line 129
    goto :goto_1

    .line 130
    :cond_2
    add-int/lit8 v1, v0, 0x1

    .line 131
    .line 132
    iput v1, p1, Lha/t7;->j:I

    .line 133
    .line 134
    iget-object p1, p1, Lha/t7;->g:Ll5/y;

    .line 135
    .line 136
    iget-object p1, p1, Ll5/y;->b:Ljava/lang/Object;

    .line 137
    .line 138
    check-cast p1, Lcom/yunpan/appmanage/ui/ActivityBootStartTask;

    .line 139
    .line 140
    iget-object v2, p1, Lcom/yunpan/appmanage/ui/ActivityBootStartTask;->E:Lx9/i0;

    .line 141
    .line 142
    invoke-virtual {v2, v0, v1}, Lc6/g;->y(II)V

    .line 143
    .line 144
    .line 145
    invoke-static {p1, v0, v1}, Lcom/yunpan/appmanage/ui/ActivityBootStartTask;->x(Lcom/yunpan/appmanage/ui/ActivityBootStartTask;II)V

    .line 146
    .line 147
    .line 148
    :cond_3
    :goto_1
    return-void

    .line 149
    :pswitch_2
    iget-object p1, p0, Lha/s7;->b:Lha/t7;

    .line 150
    .line 151
    iget v0, p1, Lha/t7;->j:I

    .line 152
    .line 153
    if-eqz v0, :cond_5

    .line 154
    .line 155
    iget v1, p1, Lha/t7;->i:I

    .line 156
    .line 157
    const/4 v2, 0x1

    .line 158
    if-ne v1, v2, :cond_4

    .line 159
    .line 160
    goto :goto_2

    .line 161
    :cond_4
    iget-object v1, p1, Lha/t7;->g:Ll5/y;

    .line 162
    .line 163
    iget-object v1, v1, Ll5/y;->b:Ljava/lang/Object;

    .line 164
    .line 165
    check-cast v1, Lcom/yunpan/appmanage/ui/ActivityBootStartTask;

    .line 166
    .line 167
    iget-object v2, v1, Lcom/yunpan/appmanage/ui/ActivityBootStartTask;->E:Lx9/i0;

    .line 168
    .line 169
    const/4 v3, 0x0

    .line 170
    invoke-virtual {v2, v0, v3}, Lc6/g;->y(II)V

    .line 171
    .line 172
    .line 173
    invoke-static {v1, v0, v3}, Lcom/yunpan/appmanage/ui/ActivityBootStartTask;->x(Lcom/yunpan/appmanage/ui/ActivityBootStartTask;II)V

    .line 174
    .line 175
    .line 176
    iput v3, p1, Lha/t7;->j:I

    .line 177
    .line 178
    :cond_5
    :goto_2
    return-void

    .line 179
    :pswitch_3
    iget-object p1, p0, Lha/s7;->b:Lha/t7;

    .line 180
    .line 181
    iget v0, p1, Lha/t7;->j:I

    .line 182
    .line 183
    if-eqz v0, :cond_7

    .line 184
    .line 185
    iget v1, p1, Lha/t7;->i:I

    .line 186
    .line 187
    const/4 v2, 0x1

    .line 188
    if-ne v1, v2, :cond_6

    .line 189
    .line 190
    goto :goto_3

    .line 191
    :cond_6
    add-int/lit8 v1, v0, -0x1

    .line 192
    .line 193
    iput v1, p1, Lha/t7;->j:I

    .line 194
    .line 195
    iget-object p1, p1, Lha/t7;->g:Ll5/y;

    .line 196
    .line 197
    iget-object p1, p1, Ll5/y;->b:Ljava/lang/Object;

    .line 198
    .line 199
    check-cast p1, Lcom/yunpan/appmanage/ui/ActivityBootStartTask;

    .line 200
    .line 201
    iget-object v2, p1, Lcom/yunpan/appmanage/ui/ActivityBootStartTask;->E:Lx9/i0;

    .line 202
    .line 203
    invoke-virtual {v2, v0, v1}, Lc6/g;->y(II)V

    .line 204
    .line 205
    .line 206
    invoke-static {p1, v0, v1}, Lcom/yunpan/appmanage/ui/ActivityBootStartTask;->x(Lcom/yunpan/appmanage/ui/ActivityBootStartTask;II)V

    .line 207
    .line 208
    .line 209
    :cond_7
    :goto_3
    return-void

    .line 210
    :pswitch_4
    iget-object p1, p0, Lha/s7;->b:Lha/t7;

    .line 211
    .line 212
    iget v0, p1, Lha/t7;->j:I

    .line 213
    .line 214
    iget-object v1, p1, Lha/t7;->g:Ll5/y;

    .line 215
    .line 216
    iget-object v1, v1, Ll5/y;->b:Ljava/lang/Object;

    .line 217
    .line 218
    check-cast v1, Lcom/yunpan/appmanage/ui/ActivityBootStartTask;

    .line 219
    .line 220
    iget-object v2, v1, Lcom/yunpan/appmanage/ui/ActivityBootStartTask;->E:Lx9/i0;

    .line 221
    .line 222
    invoke-virtual {v2}, Lc6/g;->b()I

    .line 223
    .line 224
    .line 225
    move-result v2

    .line 226
    const/4 v3, 0x1

    .line 227
    if-ne v2, v3, :cond_8

    .line 228
    .line 229
    iget-object v2, v1, Lcom/yunpan/appmanage/ui/ActivityBootStartTask;->C:Landroidx/constraintlayout/widget/ConstraintLayout;

    .line 230
    .line 231
    invoke-virtual {v2}, Landroid/view/View;->requestFocus()Z

    .line 232
    .line 233
    .line 234
    :cond_8
    iget-object v2, v1, Lcom/yunpan/appmanage/ui/ActivityBootStartTask;->F:Lz7/o;

    .line 235
    .line 236
    invoke-virtual {v2, v0}, Lz7/o;->n(I)V

    .line 237
    .line 238
    .line 239
    iget-object v2, v1, Lcom/yunpan/appmanage/ui/ActivityBootStartTask;->E:Lx9/i0;

    .line 240
    .line 241
    invoke-virtual {v2, v0}, Lc6/g;->C(I)V

    .line 242
    .line 243
    .line 244
    iget-object v0, v1, Lda/g;->A:Lda/g;

    .line 245
    .line 246
    iget-object v1, v1, Lcom/yunpan/appmanage/ui/ActivityBootStartTask;->F:Lz7/o;

    .line 247
    .line 248
    invoke-static {v0, v1}, Lq4/a;->P(Lda/g;Lz7/o;)V

    .line 249
    .line 250
    .line 251
    invoke-virtual {p1}, Landroid/app/Dialog;->dismiss()V

    .line 252
    .line 253
    .line 254
    return-void

    .line 255
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
