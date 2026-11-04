.class public final synthetic Lha/jb;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lc6/e;
.implements Lha/ea;


# instance fields
.field public final synthetic a:Lha/kb;


# direct methods
.method public synthetic constructor <init>(Lha/kb;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lha/jb;->a:Lha/kb;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public b(I)V
    .locals 4

    .line 1
    iget-object v0, p0, Lha/jb;->a:Lha/kb;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4
    .line 5
    .line 6
    sget-object v1, Lwa/t;->a:Lwa/u;

    .line 7
    .line 8
    iget v2, v1, Lwa/u;->U:I

    .line 9
    .line 10
    if-eq v2, p1, :cond_0

    .line 11
    .line 12
    :try_start_0
    iput p1, v1, Lwa/u;->U:I

    .line 13
    .line 14
    iget-object v2, v1, Lwa/u;->b:Lz7/s;

    .line 15
    .line 16
    const-string v3, "AutoRotationDefault"

    .line 17
    .line 18
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 19
    .line 20
    .line 21
    move-result-object p1

    .line 22
    invoke-virtual {v2, v3, p1}, Lz7/s;->l(Ljava/lang/String;Ljava/lang/Number;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 23
    .line 24
    .line 25
    :catch_0
    invoke-virtual {v1}, Lwa/u;->i()V

    .line 26
    .line 27
    .line 28
    iget-object p1, v0, Lha/a4;->b:Landroid/content/Context;

    .line 29
    .line 30
    invoke-static {p1}, Lta/m;->e(Landroid/content/Context;)V

    .line 31
    .line 32
    .line 33
    invoke-virtual {v0}, Lha/kb;->a()V

    .line 34
    .line 35
    .line 36
    :cond_0
    return-void
.end method

.method public x(Lc6/g;Landroid/view/View;I)V
    .locals 5

    .line 1
    iget-object p2, p0, Lha/jb;->a:Lha/kb;

    .line 2
    .line 3
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4
    .line 5
    .line 6
    invoke-virtual {p1, p3}, Lc6/g;->t(I)Ljava/lang/Object;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    check-cast v0, Lcom/yunpan/appmanage/bean/NameContentSelectBean;

    .line 11
    .line 12
    iget-object p2, p2, Lha/a4;->b:Landroid/content/Context;

    .line 13
    .line 14
    const/4 v1, 0x1

    .line 15
    if-nez p3, :cond_0

    .line 16
    .line 17
    sget-object v2, Lwa/t;->a:Lwa/u;

    .line 18
    .line 19
    iget-boolean v3, v2, Lwa/u;->P:Z

    .line 20
    .line 21
    xor-int/2addr v1, v3

    .line 22
    :try_start_0
    iput-boolean v1, v2, Lwa/u;->P:Z

    .line 23
    .line 24
    iget-object v3, v2, Lwa/u;->b:Lz7/s;

    .line 25
    .line 26
    const-string v4, "AutoRotationEmergencyOne"

    .line 27
    .line 28
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 29
    .line 30
    .line 31
    move-result-object v1

    .line 32
    invoke-virtual {v3, v4, v1}, Lz7/s;->k(Ljava/lang/String;Ljava/lang/Boolean;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 33
    .line 34
    .line 35
    :catch_0
    invoke-virtual {v2}, Lwa/u;->i()V

    .line 36
    .line 37
    .line 38
    sget-object v1, Lwa/t;->a:Lwa/u;

    .line 39
    .line 40
    iget-boolean v1, v1, Lwa/u;->P:Z

    .line 41
    .line 42
    iput-boolean v1, v0, Lcom/yunpan/appmanage/bean/NameContentSelectBean;->isSelect:Z

    .line 43
    .line 44
    invoke-virtual {p1, p3}, Landroidx/recyclerview/widget/m1;->e(I)V

    .line 45
    .line 46
    .line 47
    invoke-static {p2}, Lta/m;->e(Landroid/content/Context;)V

    .line 48
    .line 49
    .line 50
    goto/16 :goto_0

    .line 51
    .line 52
    :cond_0
    if-ne p3, v1, :cond_1

    .line 53
    .line 54
    sget-object v2, Lwa/t;->a:Lwa/u;

    .line 55
    .line 56
    iget-boolean v3, v2, Lwa/u;->Q:Z

    .line 57
    .line 58
    xor-int/2addr v1, v3

    .line 59
    :try_start_1
    iput-boolean v1, v2, Lwa/u;->Q:Z

    .line 60
    .line 61
    iget-object v3, v2, Lwa/u;->b:Lz7/s;

    .line 62
    .line 63
    const-string v4, "AutoRotationEmergencyTwo"

    .line 64
    .line 65
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 66
    .line 67
    .line 68
    move-result-object v1

    .line 69
    invoke-virtual {v3, v4, v1}, Lz7/s;->k(Ljava/lang/String;Ljava/lang/Boolean;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 70
    .line 71
    .line 72
    :catch_1
    invoke-virtual {v2}, Lwa/u;->i()V

    .line 73
    .line 74
    .line 75
    sget-object v1, Lwa/t;->a:Lwa/u;

    .line 76
    .line 77
    iget-boolean v2, v1, Lwa/u;->Q:Z

    .line 78
    .line 79
    iput-boolean v2, v0, Lcom/yunpan/appmanage/bean/NameContentSelectBean;->isSelect:Z

    .line 80
    .line 81
    invoke-virtual {p1, p3}, Landroidx/recyclerview/widget/m1;->e(I)V

    .line 82
    .line 83
    .line 84
    :try_start_2
    new-instance p1, Landroid/content/Intent;

    .line 85
    .line 86
    new-instance p3, Ljava/lang/StringBuilder;

    .line 87
    .line 88
    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    .line 89
    .line 90
    .line 91
    invoke-virtual {p2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    .line 92
    .line 93
    .line 94
    move-result-object v0

    .line 95
    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 96
    .line 97
    .line 98
    const-string v0, ".BROADCAST_AUTO_RORATION_UP_TWO"

    .line 99
    .line 100
    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 101
    .line 102
    .line 103
    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 104
    .line 105
    .line 106
    move-result-object p3

    .line 107
    invoke-direct {p1, p3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 108
    .line 109
    .line 110
    const-string p3, "bool"

    .line 111
    .line 112
    iget-boolean v0, v1, Lwa/u;->Q:Z

    .line 113
    .line 114
    invoke-virtual {p1, p3, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 115
    .line 116
    .line 117
    invoke-virtual {p2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    .line 118
    .line 119
    .line 120
    move-result-object p3

    .line 121
    invoke-virtual {p1, p3}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 122
    .line 123
    .line 124
    invoke-virtual {p2, p1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_5

    .line 125
    .line 126
    .line 127
    goto :goto_0

    .line 128
    :cond_1
    const/4 v2, 0x2

    .line 129
    if-ne p3, v2, :cond_2

    .line 130
    .line 131
    sget-object v2, Lwa/t;->a:Lwa/u;

    .line 132
    .line 133
    iget-boolean v3, v2, Lwa/u;->R:Z

    .line 134
    .line 135
    xor-int/2addr v1, v3

    .line 136
    :try_start_3
    iput-boolean v1, v2, Lwa/u;->R:Z

    .line 137
    .line 138
    iget-object v3, v2, Lwa/u;->b:Lz7/s;

    .line 139
    .line 140
    const-string v4, "AutoRotationEmergencyThree"

    .line 141
    .line 142
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 143
    .line 144
    .line 145
    move-result-object v1

    .line 146
    invoke-virtual {v3, v4, v1}, Lz7/s;->k(Ljava/lang/String;Ljava/lang/Boolean;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    .line 147
    .line 148
    .line 149
    :catch_2
    invoke-virtual {v2}, Lwa/u;->i()V

    .line 150
    .line 151
    .line 152
    sget-object v1, Lwa/t;->a:Lwa/u;

    .line 153
    .line 154
    iget-boolean v1, v1, Lwa/u;->R:Z

    .line 155
    .line 156
    iput-boolean v1, v0, Lcom/yunpan/appmanage/bean/NameContentSelectBean;->isSelect:Z

    .line 157
    .line 158
    invoke-virtual {p1, p3}, Landroidx/recyclerview/widget/m1;->e(I)V

    .line 159
    .line 160
    .line 161
    invoke-static {p2}, Lta/m;->e(Landroid/content/Context;)V

    .line 162
    .line 163
    .line 164
    goto :goto_0

    .line 165
    :cond_2
    const/4 v2, 0x3

    .line 166
    if-ne p3, v2, :cond_3

    .line 167
    .line 168
    sget-object v2, Lwa/t;->a:Lwa/u;

    .line 169
    .line 170
    iget-boolean v3, v2, Lwa/u;->S:Z

    .line 171
    .line 172
    xor-int/2addr v1, v3

    .line 173
    :try_start_4
    iput-boolean v1, v2, Lwa/u;->S:Z

    .line 174
    .line 175
    iget-object v3, v2, Lwa/u;->b:Lz7/s;

    .line 176
    .line 177
    const-string v4, "AutoRotationGlobalHorizontal"

    .line 178
    .line 179
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 180
    .line 181
    .line 182
    move-result-object v1

    .line 183
    invoke-virtual {v3, v4, v1}, Lz7/s;->k(Ljava/lang/String;Ljava/lang/Boolean;)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_3

    .line 184
    .line 185
    .line 186
    :catch_3
    invoke-virtual {v2}, Lwa/u;->i()V

    .line 187
    .line 188
    .line 189
    iget-boolean v1, v2, Lwa/u;->S:Z

    .line 190
    .line 191
    iput-boolean v1, v0, Lcom/yunpan/appmanage/bean/NameContentSelectBean;->isSelect:Z

    .line 192
    .line 193
    invoke-virtual {p1, p3}, Landroidx/recyclerview/widget/m1;->e(I)V

    .line 194
    .line 195
    .line 196
    invoke-static {p2}, Lta/m;->e(Landroid/content/Context;)V

    .line 197
    .line 198
    .line 199
    goto :goto_0

    .line 200
    :cond_3
    const/4 v2, 0x4

    .line 201
    if-ne p3, v2, :cond_4

    .line 202
    .line 203
    sget-object v2, Lwa/t;->a:Lwa/u;

    .line 204
    .line 205
    iget-boolean v3, v2, Lwa/u;->T:Z

    .line 206
    .line 207
    xor-int/2addr v1, v3

    .line 208
    :try_start_5
    iput-boolean v1, v2, Lwa/u;->T:Z

    .line 209
    .line 210
    iget-object v3, v2, Lwa/u;->b:Lz7/s;

    .line 211
    .line 212
    const-string v4, "AutoRotationGlobalVertical"

    .line 213
    .line 214
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 215
    .line 216
    .line 217
    move-result-object v1

    .line 218
    invoke-virtual {v3, v4, v1}, Lz7/s;->k(Ljava/lang/String;Ljava/lang/Boolean;)V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_4

    .line 219
    .line 220
    .line 221
    :catch_4
    invoke-virtual {v2}, Lwa/u;->i()V

    .line 222
    .line 223
    .line 224
    iget-boolean v1, v2, Lwa/u;->T:Z

    .line 225
    .line 226
    iput-boolean v1, v0, Lcom/yunpan/appmanage/bean/NameContentSelectBean;->isSelect:Z

    .line 227
    .line 228
    invoke-virtual {p1, p3}, Landroidx/recyclerview/widget/m1;->e(I)V

    .line 229
    .line 230
    .line 231
    invoke-static {p2}, Lta/m;->e(Landroid/content/Context;)V

    .line 232
    .line 233
    .line 234
    :catch_5
    :cond_4
    :goto_0
    return-void
.end method
