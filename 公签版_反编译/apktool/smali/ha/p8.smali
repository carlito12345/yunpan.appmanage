.class public final synthetic Lha/p8;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lea/c;
.implements Lea/e;
.implements Lec/d;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:I

.field public final synthetic c:Ljava/lang/Object;

.field public final synthetic d:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(IILcom/yunpan/appmanage/bean/KeyMapSelectBean;Lea/e;)V
    .locals 0

    .line 1
    iput p1, p0, Lha/p8;->a:I

    iput p2, p0, Lha/p8;->b:I

    iput-object p3, p0, Lha/p8;->c:Ljava/lang/Object;

    iput-object p4, p0, Lha/p8;->d:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/yunpan/appmanage/ui/ActivityDisplayStartApp;IILjava/util/ArrayList;)V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lha/p8;->c:Ljava/lang/Object;

    iput p2, p0, Lha/p8;->a:I

    iput p3, p0, Lha/p8;->b:I

    iput-object p4, p0, Lha/p8;->d:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public e(I)V
    .locals 4

    .line 1
    new-instance v0, Lz7/s;

    .line 2
    .line 3
    invoke-direct {v0}, Lz7/s;-><init>()V

    .line 4
    .line 5
    .line 6
    iget v1, p0, Lha/p8;->a:I

    .line 7
    .line 8
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 9
    .line 10
    .line 11
    move-result-object v1

    .line 12
    const-string v2, "keyType"

    .line 13
    .line 14
    invoke-virtual {v0, v2, v1}, Lz7/s;->l(Ljava/lang/String;Ljava/lang/Number;)V

    .line 15
    .line 16
    .line 17
    iget v1, p0, Lha/p8;->b:I

    .line 18
    .line 19
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 20
    .line 21
    .line 22
    move-result-object v1

    .line 23
    const-string v2, "gnType"

    .line 24
    .line 25
    invoke-virtual {v0, v2, v1}, Lz7/s;->l(Ljava/lang/String;Ljava/lang/Number;)V

    .line 26
    .line 27
    .line 28
    new-instance v1, Ljava/lang/StringBuilder;

    .line 29
    .line 30
    const-string v2, "\u8bbe\u7f6e"

    .line 31
    .line 32
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 33
    .line 34
    .line 35
    iget-object v2, p0, Lha/p8;->c:Ljava/lang/Object;

    .line 36
    .line 37
    check-cast v2, Lcom/yunpan/appmanage/bean/KeyMapSelectBean;

    .line 38
    .line 39
    iget-object v3, v2, Lcom/yunpan/appmanage/bean/KeyMapSelectBean;->gn_name:Ljava/lang/String;

    .line 40
    .line 41
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 42
    .line 43
    .line 44
    const-string v3, "\uff1a"

    .line 45
    .line 46
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 47
    .line 48
    .line 49
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 50
    .line 51
    .line 52
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 53
    .line 54
    .line 55
    move-result-object v1

    .line 56
    const-string v3, "name"

    .line 57
    .line 58
    invoke-virtual {v0, v3, v1}, Lz7/s;->m(Ljava/lang/String;Ljava/lang/String;)V

    .line 59
    .line 60
    .line 61
    iget v1, v2, Lcom/yunpan/appmanage/bean/KeyMapSelectBean;->gn_type:I

    .line 62
    .line 63
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 64
    .line 65
    .line 66
    move-result-object v1

    .line 67
    const-string v2, "streamType"

    .line 68
    .line 69
    invoke-virtual {v0, v2, v1}, Lz7/s;->l(Ljava/lang/String;Ljava/lang/Number;)V

    .line 70
    .line 71
    .line 72
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 73
    .line 74
    .line 75
    move-result-object p1

    .line 76
    const-string v1, "volume"

    .line 77
    .line 78
    invoke-virtual {v0, v1, p1}, Lz7/s;->l(Ljava/lang/String;Ljava/lang/Number;)V

    .line 79
    .line 80
    .line 81
    iget-object p1, p0, Lha/p8;->d:Ljava/lang/Object;

    .line 82
    .line 83
    check-cast p1, Lea/e;

    .line 84
    .line 85
    invoke-interface {p1, v0}, Lea/e;->k(Lz7/s;)V

    .line 86
    .line 87
    .line 88
    return-void
.end method

.method public g(Lmc/b;)V
    .locals 7

    .line 1
    iget-object v0, p0, Lha/p8;->c:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast v0, Lcom/yunpan/appmanage/ui/ActivityDisplayStartApp;

    .line 4
    .line 5
    iget-object v1, v0, Lcom/yunpan/appmanage/ui/ActivityDisplayStartApp;->D:Lx9/a0;

    .line 6
    .line 7
    iget v2, p0, Lha/p8;->a:I

    .line 8
    .line 9
    invoke-virtual {v1, v2}, Lc6/g;->t(I)Ljava/lang/Object;

    .line 10
    .line 11
    .line 12
    move-result-object v1

    .line 13
    check-cast v1, Lcom/yunpan/appmanage/db/AppBean;

    .line 14
    .line 15
    iget-boolean v2, v0, Lcom/yunpan/appmanage/ui/ActivityDisplayStartApp;->E:Z

    .line 16
    .line 17
    iget v3, p0, Lha/p8;->b:I

    .line 18
    .line 19
    if-nez v2, :cond_0

    .line 20
    .line 21
    if-nez v3, :cond_0

    .line 22
    .line 23
    sget-object v0, Lfa/b0;->a:La2/w0;

    .line 24
    .line 25
    new-instance v2, Ljava/lang/StringBuilder;

    .line 26
    .line 27
    const-string v3, "am force-stop \'"

    .line 28
    .line 29
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 30
    .line 31
    .line 32
    iget-object v1, v1, Lcom/yunpan/appmanage/db/AppBean;->pack:Ljava/lang/String;

    .line 33
    .line 34
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 35
    .line 36
    .line 37
    const-string v1, "\'"

    .line 38
    .line 39
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 40
    .line 41
    .line 42
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 43
    .line 44
    .line 45
    move-result-object v1

    .line 46
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 47
    .line 48
    .line 49
    invoke-static {v1}, La2/w0;->h(Ljava/lang/String;)Lfa/a0;

    .line 50
    .line 51
    .line 52
    invoke-virtual {p1}, Lmc/b;->b()V

    .line 53
    .line 54
    .line 55
    goto/16 :goto_2

    .line 56
    .line 57
    :cond_0
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 58
    .line 59
    const/16 v4, 0x15

    .line 60
    .line 61
    if-lt v2, v4, :cond_1

    .line 62
    .line 63
    iget-object v4, v0, Lda/g;->A:Lda/g;

    .line 64
    .line 65
    invoke-virtual {v4}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 66
    .line 67
    .line 68
    move-result-object v4

    .line 69
    iget-object v5, v1, Lcom/yunpan/appmanage/db/AppBean;->pack:Ljava/lang/String;

    .line 70
    .line 71
    invoke-static {v4, v5}, Lg7/d;->g(Landroid/content/pm/PackageManager;Ljava/lang/String;)Landroid/content/Intent;

    .line 72
    .line 73
    .line 74
    move-result-object v4

    .line 75
    goto :goto_0

    .line 76
    :cond_1
    const/4 v4, 0x0

    .line 77
    :goto_0
    if-nez v4, :cond_2

    .line 78
    .line 79
    iget-object v4, v0, Lda/g;->A:Lda/g;

    .line 80
    .line 81
    invoke-virtual {v4}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 82
    .line 83
    .line 84
    move-result-object v4

    .line 85
    iget-object v1, v1, Lcom/yunpan/appmanage/db/AppBean;->pack:Ljava/lang/String;

    .line 86
    .line 87
    invoke-virtual {v4, v1}, Landroid/content/pm/PackageManager;->getLaunchIntentForPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 88
    .line 89
    .line 90
    move-result-object v4

    .line 91
    :cond_2
    if-eqz v4, :cond_5

    .line 92
    .line 93
    iget-boolean v1, v0, Lcom/yunpan/appmanage/ui/ActivityDisplayStartApp;->E:Z

    .line 94
    .line 95
    iget-object v5, p0, Lha/p8;->d:Ljava/lang/Object;

    .line 96
    .line 97
    check-cast v5, Ljava/util/ArrayList;

    .line 98
    .line 99
    const-string v6, "\u542f\u52a8\u5931\u8d25"

    .line 100
    .line 101
    if-eqz v1, :cond_4

    .line 102
    .line 103
    const/16 v1, 0x1a

    .line 104
    .line 105
    if-lt v2, v1, :cond_3

    .line 106
    .line 107
    :try_start_0
    invoke-static {}, Ld2/c;->f()Landroid/app/ActivityOptions;

    .line 108
    .line 109
    .line 110
    move-result-object v1

    .line 111
    invoke-virtual {v5, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 112
    .line 113
    .line 114
    move-result-object v2

    .line 115
    check-cast v2, Landroid/view/Display;

    .line 116
    .line 117
    invoke-virtual {v2}, Landroid/view/Display;->getDisplayId()I

    .line 118
    .line 119
    .line 120
    move-result v2

    .line 121
    invoke-static {v1, v2}, Leg/a;->j(Landroid/app/ActivityOptions;I)V

    .line 122
    .line 123
    .line 124
    invoke-virtual {v1}, Landroid/app/ActivityOptions;->toBundle()Landroid/os/Bundle;

    .line 125
    .line 126
    .line 127
    move-result-object v1

    .line 128
    invoke-virtual {v0, v4, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;Landroid/os/Bundle;)V

    .line 129
    .line 130
    .line 131
    goto :goto_1

    .line 132
    :cond_3
    invoke-virtual {v0, v4}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 133
    .line 134
    .line 135
    goto :goto_1

    .line 136
    :catch_0
    invoke-static {v6}, Lcom/yunpan/appmanage/util/a0;->u(Ljava/lang/CharSequence;)V

    .line 137
    .line 138
    .line 139
    goto :goto_1

    .line 140
    :cond_4
    sget-object v0, Lfa/b0;->a:La2/w0;

    .line 141
    .line 142
    new-instance v1, Ljava/lang/StringBuilder;

    .line 143
    .line 144
    const-string v2, "am start -n \'"

    .line 145
    .line 146
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 147
    .line 148
    .line 149
    invoke-virtual {v4}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    .line 150
    .line 151
    .line 152
    move-result-object v2

    .line 153
    invoke-virtual {v2}, Landroid/content/ComponentName;->flattenToString()Ljava/lang/String;

    .line 154
    .line 155
    .line 156
    move-result-object v2

    .line 157
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 158
    .line 159
    .line 160
    const-string v2, "\' --display "

    .line 161
    .line 162
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 163
    .line 164
    .line 165
    add-int/lit8 v3, v3, -0x1

    .line 166
    .line 167
    invoke-virtual {v5, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 168
    .line 169
    .line 170
    move-result-object v2

    .line 171
    check-cast v2, Landroid/view/Display;

    .line 172
    .line 173
    invoke-virtual {v2}, Landroid/view/Display;->getDisplayId()I

    .line 174
    .line 175
    .line 176
    move-result v2

    .line 177
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 178
    .line 179
    .line 180
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 181
    .line 182
    .line 183
    move-result-object v1

    .line 184
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 185
    .line 186
    .line 187
    invoke-static {v1}, La2/w0;->h(Ljava/lang/String;)Lfa/a0;

    .line 188
    .line 189
    .line 190
    move-result-object v0

    .line 191
    iget v0, v0, Lfa/a0;->a:I

    .line 192
    .line 193
    if-eqz v0, :cond_6

    .line 194
    .line 195
    invoke-static {v6}, Lcom/yunpan/appmanage/util/a0;->u(Ljava/lang/CharSequence;)V

    .line 196
    .line 197
    .line 198
    goto :goto_1

    .line 199
    :cond_5
    const-string v0, "\u6b64\u5e94\u7528\u65e0\u6cd5\u542f\u52a8"

    .line 200
    .line 201
    invoke-static {v0}, Lcom/yunpan/appmanage/util/a0;->u(Ljava/lang/CharSequence;)V

    .line 202
    .line 203
    .line 204
    :cond_6
    :goto_1
    invoke-virtual {p1}, Lmc/b;->b()V

    .line 205
    .line 206
    .line 207
    :goto_2
    return-void
.end method

.method public k(Lz7/s;)V
    .locals 5

    .line 1
    iget v0, p0, Lha/p8;->a:I

    .line 2
    .line 3
    iget v1, p0, Lha/p8;->b:I

    .line 4
    .line 5
    iget-object v2, p0, Lha/p8;->c:Ljava/lang/Object;

    .line 6
    .line 7
    check-cast v2, Lcom/yunpan/appmanage/bean/KeyMapSelectBean;

    .line 8
    .line 9
    iget-object v3, p0, Lha/p8;->d:Ljava/lang/Object;

    .line 10
    .line 11
    check-cast v3, Lea/e;

    .line 12
    .line 13
    :try_start_0
    const-string v4, "keyType"

    .line 14
    .line 15
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    invoke-virtual {p1, v4, v0}, Lz7/s;->l(Ljava/lang/String;Ljava/lang/Number;)V

    .line 20
    .line 21
    .line 22
    const-string v0, "gnType"

    .line 23
    .line 24
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 25
    .line 26
    .line 27
    move-result-object v1

    .line 28
    invoke-virtual {p1, v0, v1}, Lz7/s;->l(Ljava/lang/String;Ljava/lang/Number;)V

    .line 29
    .line 30
    .line 31
    const-string v0, "name"

    .line 32
    .line 33
    iget-object v1, v2, Lcom/yunpan/appmanage/bean/KeyMapSelectBean;->gn_name:Ljava/lang/String;

    .line 34
    .line 35
    invoke-virtual {p1, v0, v1}, Lz7/s;->m(Ljava/lang/String;Ljava/lang/String;)V

    .line 36
    .line 37
    .line 38
    const-string v0, "int1"

    .line 39
    .line 40
    iget v1, v2, Lcom/yunpan/appmanage/bean/KeyMapSelectBean;->gn_type:I

    .line 41
    .line 42
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 43
    .line 44
    .line 45
    move-result-object v1

    .line 46
    invoke-virtual {p1, v0, v1}, Lz7/s;->l(Ljava/lang/String;Ljava/lang/Number;)V

    .line 47
    .line 48
    .line 49
    invoke-interface {v3, p1}, Lea/e;->k(Lz7/s;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 50
    .line 51
    .line 52
    :catch_0
    return-void
.end method
